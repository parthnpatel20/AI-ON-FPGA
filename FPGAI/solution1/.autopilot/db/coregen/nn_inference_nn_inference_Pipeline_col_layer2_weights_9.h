// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_9_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_9_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_9_ram) {
        ram[0] = "0b00111111000111110001110011110100";
        ram[1] = "0b00111101010000101111000100100000";
        ram[2] = "0b00111111101000101110011100001101";
        ram[3] = "0b10111111011000100111111001100001";
        ram[4] = "0b00111110001000011111110011100110";
        ram[5] = "0b00111101010001001001011011111101";
        ram[6] = "0b00111111100111001010010010011001";
        ram[7] = "0b00111111001010011001101100010011";
        ram[8] = "0b10111110100110111101000001101010";
        ram[9] = "0b10111111000110100100101010011111";
        ram[10] = "0b10111111011110001111111101110110";
        ram[11] = "0b00111111001010111001101011011100";
        ram[12] = "0b00111110011111011110010111000110";
        ram[13] = "0b10111111100101101101001100110011";
        ram[14] = "0b10111101100110111011011011110111";
        ram[15] = "0b00111110010110101100111111000010";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_9_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_9) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_9_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_9() {
    delete meminst;
}


};//endmodule
#endif
