############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FPGAI
set_top nn_inference
add_files FPGA_AI/src/hls/matmul.cpp
add_files FPGA_AI/src/hls/matmul.hpp
add_files -tb FPGA_AI/src/hls/matmul_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 30 -name default
set_clock_uncertainty 0.2
#source "./FPGAI/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/University_of_Colorado_Boulder/Fall2025/Embedded_AI/Prj/FPGA_AI/src/hls/nn_inference.zip
