// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_20_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_20_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_20_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_20_ram) {
        ram[0] = "0b00111111010010101010110111011111";
        ram[1] = "0b00111110111001010110110110101101";
        ram[2] = "0b00111111000111001011110111100110";
        ram[3] = "0b10111111101011011001100110001010";
        ram[4] = "0b00111101111011110101000001101100";
        ram[5] = "0b00111111110010001011111000010100";
        ram[6] = "0b00111111001011111010010100011110";
        ram[7] = "0b10111110100110100010111001011101";
        ram[8] = "0b10111110010001001011010011101001";
        ram[9] = "0b10111111000001110010000111101110";
        ram[10] = "0b10111111100100000001010100100011";
        ram[11] = "0b00111110010000101101010001010001";
        ram[12] = "0b00111111010110110111111110011011";
        ram[13] = "0b10111111100101101111000101101011";
        ram[14] = "0b10111110010001000000010001100011";
        ram[15] = "0b00111101000001100101011101110100";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_20) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_20_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_20) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_20_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_20_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_20() {
    delete meminst;
}


};//endmodule
#endif
