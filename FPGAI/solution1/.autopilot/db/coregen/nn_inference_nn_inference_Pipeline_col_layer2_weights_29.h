// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_29_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_29_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_29_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_29_ram) {
        ram[0] = "0b00111111011000111011000000100001";
        ram[1] = "0b00111010010010111011100000111010";
        ram[2] = "0b00111111000000110110110010111010";
        ram[3] = "0b00111110101111011111110111011100";
        ram[4] = "0b00111110101001101110100000000110";
        ram[5] = "0b10111111010001010101100111010111";
        ram[6] = "0b00111100010010011111111001011000";
        ram[7] = "0b10111100001011101110100011000110";
        ram[8] = "0b00111111011010000011111111101011";
        ram[9] = "0b00111110101010010001111011110000";
        ram[10] = "0b00111111011001001100101000111001";
        ram[11] = "0b00111100111011100010101111111000";
        ram[12] = "0b10111011101101001101001111101110";
        ram[13] = "0b10111110110111010110101011011011";
        ram[14] = "0b00111111100011010000110010100111";
        ram[15] = "0b10111101000111010100010010111111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_29) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_29_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_29) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_29_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_29_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_29() {
    delete meminst;
}


};//endmodule
#endif
