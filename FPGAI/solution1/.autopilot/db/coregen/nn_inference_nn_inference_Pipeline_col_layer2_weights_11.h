// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_11_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_11_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_11_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_11_ram) {
        ram[0] = "0b00111111110000011111010101010001";
        ram[1] = "0b00111110111001010111111110001000";
        ram[2] = "0b10111111000000111000010111000101";
        ram[3] = "0b00111111101100011001010010101100";
        ram[4] = "0b10111111111100010001000110100000";
        ram[5] = "0b10111110100011111101001011000101";
        ram[6] = "0b10111111110010011101001011010000";
        ram[7] = "0b00111110111110011000100001101000";
        ram[8] = "0b00111111100011001011011111000100";
        ram[9] = "0b00111111101000010011111010010100";
        ram[10] = "0b00111111101000110001110100001010";
        ram[11] = "0b00111110001101111110111010000000";
        ram[12] = "0b00111110010110000000101100111101";
        ram[13] = "0b10111111001111011000010110011100";
        ram[14] = "0b10111111000001010111010100010001";
        ram[15] = "0b10111110110001100110010011010011";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_11) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_11_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_11) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_11_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_11_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_11() {
    delete meminst;
}


};//endmodule
#endif
