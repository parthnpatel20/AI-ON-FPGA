// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_4_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_4_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_4_ram) {
        ram[0] = "0b10111110101011010101001101000100";
        ram[1] = "0b00111111000010010001101111101000";
        ram[2] = "0b00111111001101001100110010100001";
        ram[3] = "0b00111111001010111110000000100110";
        ram[4] = "0b00111110111000011110000001000000";
        ram[5] = "0b10111011010011010001110001100010";
        ram[6] = "0b00111110010001111111001011101100";
        ram[7] = "0b10111110011001111000100100010111";
        ram[8] = "0b00111110100010110111100000101011";
        ram[9] = "0b10111111011000111110001001111010";
        ram[10] = "0b00111101111011101111110001100000";
        ram[11] = "0b00111110110110010001101111011101";
        ram[12] = "0b00111110100001110001110000000110";
        ram[13] = "0b00111110110000100010111111101100";
        ram[14] = "0b00111110100001011000000110100011";
        ram[15] = "0b10111111011101010000000010110100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_4_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_4) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_4_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_4() {
    delete meminst;
}


};//endmodule
#endif
