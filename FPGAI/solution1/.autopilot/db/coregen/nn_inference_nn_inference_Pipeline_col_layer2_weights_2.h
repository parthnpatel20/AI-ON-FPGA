// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_2_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_2_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_2_ram) {
        ram[0] = "0b10111110111010101011000111011100";
        ram[1] = "0b00111111010110101100100010010110";
        ram[2] = "0b00111111000101100001011110111100";
        ram[3] = "0b00111110011011110000111101111011";
        ram[4] = "0b00111110100001100000100010110101";
        ram[5] = "0b00111111010001000010010011110110";
        ram[6] = "0b00111101101100110011000110000110";
        ram[7] = "0b00111101101001001110110000001011";
        ram[8] = "0b10111110010001011010100011010101";
        ram[9] = "0b10111110100001111001101110001101";
        ram[10] = "0b00111101110011100011110100110110";
        ram[11] = "0b10111110111111110000000111100100";
        ram[12] = "0b00111101100001111111000010001110";
        ram[13] = "0b00111110110001110011011111101101";
        ram[14] = "0b00111110100011011011011101100011";
        ram[15] = "0b10111101110110000110000010000100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_2_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_2) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_2_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_2() {
    delete meminst;
}


};//endmodule
#endif
