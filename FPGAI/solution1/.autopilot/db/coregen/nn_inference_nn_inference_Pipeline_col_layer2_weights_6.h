// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_6_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_6_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_6_ram) {
        ram[0] = "0b00111111010101001010100101001010";
        ram[1] = "0b00111110100000000101110100001100";
        ram[2] = "0b00111111110000001100000110001100";
        ram[3] = "0b10111110000110111111111110011010";
        ram[4] = "0b10111111001100001101100000011100";
        ram[5] = "0b00111101100101100101010000011001";
        ram[6] = "0b00111111000010101010101111101010";
        ram[7] = "0b00111110101000011100100001010011";
        ram[8] = "0b10111111000010111010101010110010";
        ram[9] = "0b10111111110011000011100001011110";
        ram[10] = "0b10111110001010011111011001010101";
        ram[11] = "0b00111111010111001100011000010000";
        ram[12] = "0b10111111011110110111111011010101";
        ram[13] = "0b10111111001110010000100100101101";
        ram[14] = "0b10111111001101100010101001110001";
        ram[15] = "0b10111110101001101001101111110010";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_6_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_6) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_6_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_6() {
    delete meminst;
}


};//endmodule
#endif
