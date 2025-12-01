// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_28_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_28_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_28_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_28_ram) {
        ram[0] = "0b10111101000011000010101111110011";
        ram[1] = "0b00111111001100100111101100001000";
        ram[2] = "0b00111111001110010001101010011010";
        ram[3] = "0b10111101011001101000000111101010";
        ram[4] = "0b00111111001011110101111011011000";
        ram[5] = "0b10111111010111001000000111010111";
        ram[6] = "0b00111111010101010001000100000100";
        ram[7] = "0b00111111000000101100010101100100";
        ram[8] = "0b10111111000111000010101111111110";
        ram[9] = "0b10111101000011011010000010000011";
        ram[10] = "0b00111111010001110111010000010000";
        ram[11] = "0b10111011101010000000111000100101";
        ram[12] = "0b00111111011001001100101010001011";
        ram[13] = "0b00111111000000110011101011110111";
        ram[14] = "0b00111111010011110001010111111000";
        ram[15] = "0b00111101111111010011011111100100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_28) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_28_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_28) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_28_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_28_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_28() {
    delete meminst;
}


};//endmodule
#endif
