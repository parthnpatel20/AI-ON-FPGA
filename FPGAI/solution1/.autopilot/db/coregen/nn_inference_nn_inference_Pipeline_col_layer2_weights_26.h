// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_26_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_26_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_26_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_26_ram) {
        ram[0] = "0b00111111000011010100000011101010";
        ram[1] = "0b00111110111000000011111010100000";
        ram[2] = "0b10111101111001101010111011000011";
        ram[3] = "0b00111101010000011001000110000000";
        ram[4] = "0b10111111100110100010111010101010";
        ram[5] = "0b10111101110110010111110110110100";
        ram[6] = "0b10111111100001001011110010010000";
        ram[7] = "0b10111111011010100011111010100111";
        ram[8] = "0b00111101110000111101010111101000";
        ram[9] = "0b00111101010110101000101110011000";
        ram[10] = "0b00111111001010011001000010011100";
        ram[11] = "0b00111110001111011110100000110100";
        ram[12] = "0b10111110010011001101001010001110";
        ram[13] = "0b00111111000011010011001111100110";
        ram[14] = "0b00111110000001100000101011011010";
        ram[15] = "0b10111110101011010011010110101111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_26) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_26_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_26) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_26_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_26_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_26() {
    delete meminst;
}


};//endmodule
#endif
