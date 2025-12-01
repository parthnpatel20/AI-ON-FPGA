set clock_constraint { \
    name clk \
    module nn_inference \
    port ap_clk \
    period 30 \
    uncertainty 0.2 \
}

set all_path {}

set false_path {}

