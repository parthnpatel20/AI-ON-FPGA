// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_16_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_16_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_16_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_16_ram) {
        ram[0] = "0b00111110100100001101001101100111";
        ram[1] = "0b00111110101011000111101011101011";
        ram[2] = "0b10111111000111001001110001100111";
        ram[3] = "0b10111111100010000011111100111010";
        ram[4] = "0b00111101110101101010011101101001";
        ram[5] = "0b00111110101111110001111000111100";
        ram[6] = "0b10111101101001100110100010011001";
        ram[7] = "0b00111110101101100111101001010110";
        ram[8] = "0b10111110010001011100000000111010";
        ram[9] = "0b00111100110101111110011110101011";
        ram[10] = "0b00111111010100001000110110101011";
        ram[11] = "0b10111111100011110001001100101100";
        ram[12] = "0b00111111001110011101100100001101";
        ram[13] = "0b10111111101111101110111110011101";
        ram[14] = "0b00111111010100000011000010101101";
        ram[15] = "0b10111111100111010101100100101111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_16) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_16_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_16) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_16_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_16_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_16() {
    delete meminst;
}


};//endmodule
#endif
