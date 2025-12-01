// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_H__
#define __nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_ram) {
        ram[0] = "0b10111111000001101011110111001001";
        ram[1] = "0b10111110000110000011000111111111";
        ram[2] = "0b10111111101100001100001110011000";
        ram[3] = "0b00111111000010011011001100101110";
        ram[4] = "0b10111111110010011000000001000101";
        ram[5] = "0b00111111110100001011101000101011";
        ram[6] = "0b00111110000111110000001001011100";
        ram[7] = "0b11000000000101110111011101001110";
        ram[8] = "0b10111110010100101101100111000010";
        ram[9] = "0b00111101110010110100011101100111";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col2_layer3_weights_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_9) {
meminst = new nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_ram("nn_inference_nn_inference_Pipeline_col2_layer3_weights_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col2_layer3_weights_9() {
    delete meminst;
}


};//endmodule
#endif
