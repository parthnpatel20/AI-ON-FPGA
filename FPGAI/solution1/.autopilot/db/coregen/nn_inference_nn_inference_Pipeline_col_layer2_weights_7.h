// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_7_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_7_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_7_ram) {
        ram[0] = "0b00111111001000000001110111101111";
        ram[1] = "0b10111110001110110101111000000111";
        ram[2] = "0b00111110111111101110101100011100";
        ram[3] = "0b00111110100001011110010101101001";
        ram[4] = "0b10111110110001011010000111110010";
        ram[5] = "0b10111101010101110000000110001100";
        ram[6] = "0b00111111001101010000010011101000";
        ram[7] = "0b10111110110011010111001100101101";
        ram[8] = "0b00111111000111011110101110011111";
        ram[9] = "0b00111111011010111100101110100011";
        ram[10] = "0b10111110110001101000101101101110";
        ram[11] = "0b10111111010100111011110111001111";
        ram[12] = "0b10111101000111100000000000110000";
        ram[13] = "0b00111111010011110110011000011011";
        ram[14] = "0b00111110101111011000001011111011";
        ram[15] = "0b10111110100110010011011110100000";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_7_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_7) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_7_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_7() {
    delete meminst;
}


};//endmodule
#endif
