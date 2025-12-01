// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_21_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_21_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_21_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_21_ram) {
        ram[0] = "0b00111111001101100010110010010000";
        ram[1] = "0b00111111001111010001000111010110";
        ram[2] = "0b00111111011001000111011000110111";
        ram[3] = "0b10111101110101000110110001010011";
        ram[4] = "0b10111111010111111011010000100110";
        ram[5] = "0b00111111101001010110110111111010";
        ram[6] = "0b00111101011110101101010110111000";
        ram[7] = "0b00111111000111001000111011000111";
        ram[8] = "0b10111110110001000011011010100000";
        ram[9] = "0b10111111100100110000111000111110";
        ram[10] = "0b10111111101111101001000101100101";
        ram[11] = "0b00111110001010001001010111101100";
        ram[12] = "0b11000000000110001010011001000110";
        ram[13] = "0b00111110100011010001010100101110";
        ram[14] = "0b10111111000001000111011111101111";
        ram[15] = "0b10111110110111011100011001111000";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_21) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_21_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_21) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_21_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_21_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_21() {
    delete meminst;
}


};//endmodule
#endif
