// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_H__
#define __nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_ram) {
        ram[0] = "0b00111111001100010111100010110000";
        ram[1] = "0b00111111000100110100001011010001";
        ram[2] = "0b00111101011111111111010111110110";
        ram[3] = "0b10111111000001001110101000011010";
        ram[4] = "0b10111110010001101100100000101001";
        ram[5] = "0b10111111001011111111011111000111";
        ram[6] = "0b00111111011100101100001011100111";
        ram[7] = "0b10111110011000001101001100001110";
        ram[8] = "0b00111110011110100110000011110011";
        ram[9] = "0b10111111000101111000001000010110";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col2_layer3_weights_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_1) {
meminst = new nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_ram("nn_inference_nn_inference_Pipeline_col2_layer3_weights_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col2_layer3_weights_1() {
    delete meminst;
}


};//endmodule
#endif
