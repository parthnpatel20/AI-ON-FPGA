// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_23_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_23_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_23_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_23_ram) {
        ram[0] = "0b00111110111010010001110110111011";
        ram[1] = "0b00111111001001101010101000010111";
        ram[2] = "0b10111110010100010000011111100101";
        ram[3] = "0b00111111000111000110010010100001";
        ram[4] = "0b10111110000000111001110001000111";
        ram[5] = "0b10111111000100010101111001001100";
        ram[6] = "0b10111111001110010111000001011011";
        ram[7] = "0b10111101100011010010100111011000";
        ram[8] = "0b10111110101111000110110101110110";
        ram[9] = "0b00111111000111001000100001100011";
        ram[10] = "0b00111101000000010101111111011000";
        ram[11] = "0b00111111000101010110100000000000";
        ram[12] = "0b00111110101110001010110101000010";
        ram[13] = "0b00111110110101100110101110110011";
        ram[14] = "0b10111110100001110010011101001000";
        ram[15] = "0b00111110101010110110101001100011";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_23) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_23_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_23) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_23_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_23_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_23() {
    delete meminst;
}


};//endmodule
#endif
