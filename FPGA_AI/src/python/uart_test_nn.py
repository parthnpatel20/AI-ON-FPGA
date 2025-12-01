import serial
import os
import random
import cv2
import numpy as np
import struct
import time
import sys

def main():
    args = sys.argv[1:]
    if len(args) == 2 and args[0] == '-port':
        port = str(args[1])
    else:
        print("Usage: python uart_test_nn.py -port COM6")
        return

    dims = (10, 10)

    randomint = random.randrange(10)
    read_dir = os.path.expanduser("~") + '/Downloads/MNIST_Dataset_JPG/MNIST_JPG_testing/' + str(randomint) + '/'
    read_file = random.choice(os.listdir(read_dir))
    
    img = cv2.imread(os.path.join(read_dir, read_file), 0)
    img = cv2.resize(img, dims, interpolation=cv2.INTER_AREA)
    img = (img / 255).astype('float32')

    print("Label:", randomint, "File:", read_file, "Port:", port)

    # ---- OPEN PORT WRITE-ONLY STYLE ----
    ser = serial.Serial(
        port=port,
        baudrate=115200,
        bytesize=serial.EIGHTBITS,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        timeout=0,
        write_timeout=0
    )

    ser.reset_input_buffer()
    ser.reset_output_buffer()
    time.sleep(0.05)

    # ---- SEND DATA ----
    for i in range(dims[1]):
        for j in range(dims[0]):
            ser.write(struct.pack("f", img[i][j]))

    # Keep port alive a little
    time.sleep(0.2)

if __name__ == "__main__":
    main()
