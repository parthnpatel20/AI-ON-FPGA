// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_19_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_19_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_19_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_19_ram) {
        ram[0] = "0b10111110011000100101101111100101";
        ram[1] = "0b00111110110111000000100110001100";
        ram[2] = "0b00111111010100110011000010011110";
        ram[3] = "0b00111111011000100001101010110110";
        ram[4] = "0b00111101100110100011100010001010";
        ram[5] = "0b00111110110001011011110111111111";
        ram[6] = "0b00111110111100000010001000011010";
        ram[7] = "0b00111110101001010100110011000101";
        ram[8] = "0b10111110101101010111111001110000";
        ram[9] = "0b10111110101101011000001111010110";
        ram[10] = "0b10111101010100101111000010101111";
        ram[11] = "0b00111111000101000111000100111100";
        ram[12] = "0b10111110100111100001010111101000";
        ram[13] = "0b00111111011000100101010010001011";
        ram[14] = "0b10111110101101111101010100100011";
        ram[15] = "0b00111111001011010010110110100110";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_19) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_19_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_19) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_19_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_19_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_19() {
    delete meminst;
}


};//endmodule
#endif
