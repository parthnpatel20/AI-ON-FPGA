// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_10_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_10_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_10_ram) {
        ram[0] = "0b10111111010011111010110101011011";
        ram[1] = "0b10111111111111000110010111000111";
        ram[2] = "0b00111100000101000011110010001100";
        ram[3] = "0b00111110111101000111100110000010";
        ram[4] = "0b11000000001110001110011100100010";
        ram[5] = "0b00111111100101000111000010100100";
        ram[6] = "0b10111111000101010100011100111100";
        ram[7] = "0b10111101011001110011001001110111";
        ram[8] = "0b00111111000110101110001111001100";
        ram[9] = "0b00111111111010100101100101100111";
        ram[10] = "0b00111111110110000011100111011101";
        ram[11] = "0b10111111101001100011101000011100";
        ram[12] = "0b10111110000010011100101100101111";
        ram[13] = "0b00111111100100100110000000000101";
        ram[14] = "0b00111110110010101100100001001100";
        ram[15] = "0b00111110100101010011010000001110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_10) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_10_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_10) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_10_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_10() {
    delete meminst;
}


};//endmodule
#endif
