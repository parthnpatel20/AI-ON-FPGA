// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_17_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_17_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_17_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_17_ram) {
        ram[0] = "0b00111101111001101010101010101000";
        ram[1] = "0b00111111000000100001100110010101";
        ram[2] = "0b10111100010000010001111101100101";
        ram[3] = "0b00111011100000000011001010110011";
        ram[4] = "0b10111101101111010011010101000100";
        ram[5] = "0b00111110101100001001010011111110";
        ram[6] = "0b10111111010000000010001101011110";
        ram[7] = "0b10111110110110010001001010011100";
        ram[8] = "0b00111110111111011001010110001111";
        ram[9] = "0b00111110100011001111001000001111";
        ram[10] = "0b00111111000011011100001101011110";
        ram[11] = "0b00111110101010110111001101111110";
        ram[12] = "0b00111111011011000000100011010000";
        ram[13] = "0b10111110111011000011101100010111";
        ram[14] = "0b00111110100010000011010111010001";
        ram[15] = "0b10111110111101010000101010111100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_17) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_17_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_17) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_17_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_17_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_17() {
    delete meminst;
}


};//endmodule
#endif
