// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_15_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_15_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_15_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_15_ram) {
        ram[0] = "0b10111111000100101111000101110001";
        ram[1] = "0b00111110000001011100100101000001";
        ram[2] = "0b10111111100011100111011010101111";
        ram[3] = "0b10111111010000000101010110010100";
        ram[4] = "0b10111100000011000011101010000111";
        ram[5] = "0b01000000000101011010010111111110";
        ram[6] = "0b00111101100100111001000001101011";
        ram[7] = "0b10111111001010000101111101000101";
        ram[8] = "0b00111111000001001011001010000111";
        ram[9] = "0b10111110000011000101010110101010";
        ram[10] = "0b10111110001000101110100111101010";
        ram[11] = "0b10111100101100000111000101001100";
        ram[12] = "0b00111111000110101011000110001100";
        ram[13] = "0b00111101111000000001101000001101";
        ram[14] = "0b00111110000111111000000000100000";
        ram[15] = "0b10111111011101001110011110011001";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_15) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_15_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_15) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_15_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_15_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_15() {
    delete meminst;
}


};//endmodule
#endif
