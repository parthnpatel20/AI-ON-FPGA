// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_24_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_24_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_24_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_24_ram) {
        ram[0] = "0b00111111000101010000010100100000";
        ram[1] = "0b10111100100101101101100110100100";
        ram[2] = "0b10111111011000000011001000010100";
        ram[3] = "0b10111110001000111010101010001101";
        ram[4] = "0b00111110110111101011110011101011";
        ram[5] = "0b00111110111011000010010000110101";
        ram[6] = "0b10111110111101110111001000100101";
        ram[7] = "0b00111110101011010001110011000111";
        ram[8] = "0b10111110101110001110001010100111";
        ram[9] = "0b10111110110101011101011101010100";
        ram[10] = "0b00111101101000000011001100000101";
        ram[11] = "0b00111111000000100110010110010100";
        ram[12] = "0b10111110101101101010000001011011";
        ram[13] = "0b00111110010111101000101110000001";
        ram[14] = "0b10111111001000010111100011011011";
        ram[15] = "0b10111110000111000100000010001111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_24) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_24_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_24) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_24_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_24_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_24() {
    delete meminst;
}


};//endmodule
#endif
