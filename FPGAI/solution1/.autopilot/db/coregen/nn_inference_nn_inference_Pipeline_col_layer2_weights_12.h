// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_12_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_12_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_12_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_12_ram) {
        ram[0] = "0b10111110000110100000110011001001";
        ram[1] = "0b00111111100011111111011110011010";
        ram[2] = "0b00111111000100000010010100011111";
        ram[3] = "0b10111111010100010111101110000111";
        ram[4] = "0b10111101101010000010101111011100";
        ram[5] = "0b00111111011111010100000110100110";
        ram[6] = "0b00111111000011010001110010011101";
        ram[7] = "0b00111110101110111000001111100100";
        ram[8] = "0b10111101100110000100101101110010";
        ram[9] = "0b10111111011110101101111110100101";
        ram[10] = "0b10111111001101000110101001110101";
        ram[11] = "0b10111110101111001010001011011110";
        ram[12] = "0b10111110101110111100001000110010";
        ram[13] = "0b00111110011110010000110000100100";
        ram[14] = "0b00111100111000010011001001011100";
        ram[15] = "0b10111111010001100000001111001101";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_12) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_12_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_12) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_12_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_12_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_12() {
    delete meminst;
}


};//endmodule
#endif
