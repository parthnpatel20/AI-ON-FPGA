// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_14_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_14_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_14_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_14_ram) {
        ram[0] = "0b10111110011101010110000101001100";
        ram[1] = "0b00111101111110011110110001110110";
        ram[2] = "0b10111110011101111100100111010010";
        ram[3] = "0b00111111001010101000010011001110";
        ram[4] = "0b00111111011101001010111111001100";
        ram[5] = "0b00111111000010011000100110101101";
        ram[6] = "0b10111110011001010111001000100000";
        ram[7] = "0b00111110100011011001001110101011";
        ram[8] = "0b10111111000001110100101011011110";
        ram[9] = "0b00111111001001110011001000011110";
        ram[10] = "0b10111111000001100111011100000100";
        ram[11] = "0b00111110001001010011010011010100";
        ram[12] = "0b00111111000000000111100010010110";
        ram[13] = "0b00111110111001000100110101111011";
        ram[14] = "0b00111110100001110100010111010101";
        ram[15] = "0b00111111011000101101111011011111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_14) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_14_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_14) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_14_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_14_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_14() {
    delete meminst;
}


};//endmodule
#endif
