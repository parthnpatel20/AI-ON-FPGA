// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_0_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_0_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_0_ram) {
        ram[0] = "0b10111111001101001100111101101101";
        ram[1] = "0b00111111001000010110101111111111";
        ram[2] = "0b00111110010000101000011001101001";
        ram[3] = "0b10111111101110100011001101110010";
        ram[4] = "0b00111101100101000010010011011000";
        ram[5] = "0b10111111100101011100011011101101";
        ram[6] = "0b00111111100101110100011111110101";
        ram[7] = "0b00111110111011111000101010100001";
        ram[8] = "0b10111101000011010101000010011100";
        ram[9] = "0b00111111010011000000100011010111";
        ram[10] = "0b00111101010000110010000010010110";
        ram[11] = "0b10111111100000001110011001111110";
        ram[12] = "0b00111110111110001111101010001111";
        ram[13] = "0b00111111110001110111100101110100";
        ram[14] = "0b10111111001111110110101000110000";
        ram[15] = "0b10111101101100101100100101001110";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_0_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_0) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_0_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_0() {
    delete meminst;
}


};//endmodule
#endif
