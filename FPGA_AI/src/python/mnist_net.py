import numpy as np
import cv2
import os
import time
import tensorflow as tf
import struct
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Flatten, Dense
import sys
import matplotlib.pyplot as plt


# ----------------------------------------------------------
# NUMPY CONFUSION MATRIX (NO sklearn required)
# ----------------------------------------------------------
def compute_confusion_matrix(labels, predictions, num_classes=10):
    cm = np.zeros((num_classes, num_classes), dtype=int)
    for t, p in zip(labels, predictions):
        cm[t][p] += 1
    return cm


def main():
    args = sys.argv[1:]
    if len(args) == 2 and args[0] == '-dataset_dir':
        dataset_dir = str(args[1])
    else:
        print("Usage: py -3 mnist_net.py -dataset_dir <folder>")
        return

    ## Use CPU only
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

    ## Load MNIST dataset
    print("Loading dataset")
    train_images = []
    train_labels = []
    test_images = []
    test_labels = []

    dims = (10, 10)  # resized dimensions of mnist

    for j in range(2):  # train + test folders
        for i in range(10):  # digits 0–9
            if j == 0:
                read_folder = dataset_dir + '/MNIST_JPG_training/' + str(i) + '/'
            else:
                read_folder = dataset_dir + '/MNIST_JPG_testing/' + str(i) + '/'

            for filename in os.listdir(read_folder):
                img = cv2.imread(os.path.join(read_folder, filename), 0)
                img = cv2.resize(img, dims, interpolation=cv2.INTER_AREA)
                img = img / 255.0

                if j == 0:
                    train_images.append(img)
                    train_labels.append(i)
                else:
                    test_images.append(img)
                    test_labels.append(i)

    ## Convert to numpy arrays
    train_images = np.asarray(train_images).astype('float32')
    test_images = np.asarray(test_images).astype('float32')
    train_labels = np.asarray(train_labels).astype('uint8')
    test_labels = np.asarray(test_labels).astype('uint8')

    # Shuffle train set
    idx = np.random.permutation(len(train_images))
    train_images = train_images[idx]
    train_labels = train_labels[idx]

    # Shuffle test set
    idx = np.random.permutation(len(test_images))
    test_images = test_images[idx]
    test_labels = test_labels[idx]

    ## Model architecture (same as your FPGA version)
    model = Sequential([
        Flatten(input_shape=dims),               # 100 inputs
        Dense(32, activation='relu', use_bias=False),
        Dense(16, activation='relu', use_bias=False),
        Dense(10, activation='softmax', use_bias=False),
    ])

    model.compile(
        optimizer='adam',
        loss='sparse_categorical_crossentropy',
        metrics=['accuracy']
    )

    ## Train
    history = model.fit(
        train_images,
        train_labels,
        epochs=50,
        batch_size=2000,
        validation_split=0.1
    )

    model.summary()

    ## Evaluate inference time
    start = time.time()
    results = model.evaluate(test_images, test_labels, verbose=0)
    elapsed = time.time() - start

    print("Inference time for", len(test_images), "test images:", elapsed, "seconds")
    print("test loss, test acc:", results)

    # ----------------------------------------------------------
    # PLOTS FOR YOUR REPORT
    # ----------------------------------------------------------

    # Accuracy curve
    plt.figure()
    plt.plot(history.history['accuracy'])
    plt.plot(history.history['val_accuracy'])
    plt.title("Training Accuracy")
    plt.xlabel("Epoch")
    plt.ylabel("Accuracy")
    plt.legend(["Train", "Validation"])
    plt.grid()
    plt.tight_layout()
    plt.savefig("training_accuracy.png")
    plt.close()

    # Loss curve
    plt.figure()
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title("Training Loss")
    plt.xlabel("Epoch")
    plt.ylabel("Loss")
    plt.legend(["Train", "Validation"])
    plt.grid()
    plt.tight_layout()
    plt.savefig("training_loss.png")
    plt.close()

    # Pixel histogram
    plt.figure()
    plt.hist(train_images.flatten(), bins=20, color='blue', alpha=0.7)
    plt.title("Pixel Intensity Distribution")
    plt.xlabel("Pixel Value")
    plt.ylabel("Frequency")
    plt.tight_layout()
    plt.savefig("pixel_histogram.png")
    plt.close()

    # ----------------------------------------------------------
    # Confusion Matrix (NumPy version)
    # ----------------------------------------------------------
    pred_probs = model.predict(test_images)
    pred_labels = np.argmax(pred_probs, axis=1)

    cm = compute_confusion_matrix(test_labels, pred_labels)

    plt.figure(figsize=(8, 6))
    plt.imshow(cm, cmap='Blues')
    plt.title("Confusion Matrix")
    plt.xlabel("Predicted Label")
    plt.ylabel("True Label")
    plt.colorbar()

    for i in range(10):
        for j in range(10):
            plt.text(j, i, cm[i, j], ha='center', va='center', color='black')

    plt.tight_layout()
    plt.savefig("confusion_matrix.png")
    plt.close()

    # ----------------------------------------------------------
    # Sample Predictions Grid
    # ----------------------------------------------------------
    plt.figure(figsize=(8, 8))
    for i in range(9):
        rand = np.random.randint(0, len(test_images))
        img = test_images[rand]

        plt.subplot(3, 3, i+1)
        plt.imshow(img, cmap='gray')
        plt.title("Label={} Pred={}".format(test_labels[rand], pred_labels[rand]))
        plt.axis('off')

    plt.tight_layout()
    plt.savefig("example_predictions_grid.png")
    plt.close()

    print("test_image[0] label:", test_labels[0])
    x = np.expand_dims(test_images[0], axis=0)
    print("NN Prediction:", np.argmax(model.predict(x)))

    print("Finished")


if __name__ == "__main__":
    main()
