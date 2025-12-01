// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_18_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_18_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_18_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_18_ram) {
        ram[0] = "0b00111101001110010000000001001101";
        ram[1] = "0b00111111000010001101011010010111";
        ram[2] = "0b00111111001110100001100000011000";
        ram[3] = "0b10111111101010110110101100010111";
        ram[4] = "0b00111110111100001110110110111000";
        ram[5] = "0b10111111100001100111011010001001";
        ram[6] = "0b00111111000110101100001101011100";
        ram[7] = "0b10111110100100001111101011111010";
        ram[8] = "0b10111110100110001111111001110100";
        ram[9] = "0b10111111011001001110111011000111";
        ram[10] = "0b00111011101000010000001010010001";
        ram[11] = "0b10111111001111100110000101111001";
        ram[12] = "0b10111101111011011011011101001111";
        ram[13] = "0b00111111101010101001000111000000";
        ram[14] = "0b10111111010010110100000011110000";
        ram[15] = "0b00111111001011000001110110101111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_18) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_18_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_18) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_18_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_18_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_18() {
    delete meminst;
}


};//endmodule
#endif
