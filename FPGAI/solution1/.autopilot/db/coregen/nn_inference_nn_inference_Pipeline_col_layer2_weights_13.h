// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_13_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_13_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_13_ram) {
        ram[0] = "0b00111111110010101010000001111100";
        ram[1] = "0b10111111110011101001100011111101";
        ram[2] = "0b00111111001111110001111000100010";
        ram[3] = "0b10111111010001010011011101101011";
        ram[4] = "0b00111110110111011010011100111101";
        ram[5] = "0b10111101111010010100011101111100";
        ram[6] = "0b00111111100111100110001111111100";
        ram[7] = "0b10111100110111111111011001100000";
        ram[8] = "0b00111101101101010001111111011000";
        ram[9] = "0b00111110110011011111100101001000";
        ram[10] = "0b00111111100111011000101001001111";
        ram[11] = "0b10111100110011000001010000100111";
        ram[12] = "0b10111110000001100001101011110111";
        ram[13] = "0b10111110011011010010011101011101";
        ram[14] = "0b00111101110110100011011010000110";
        ram[15] = "0b00111111110011100001101011110100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_13) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_13_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_13) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_13_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_13() {
    delete meminst;
}


};//endmodule
#endif
