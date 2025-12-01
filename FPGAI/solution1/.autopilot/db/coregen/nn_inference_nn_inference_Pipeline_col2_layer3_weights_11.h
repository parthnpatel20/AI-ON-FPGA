// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_H__
#define __nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_ram) {
        ram[0] = "0b00111110111011010100100100000010";
        ram[1] = "0b10111111011111101011110010100000";
        ram[2] = "0b00111111100101110110101001100111";
        ram[3] = "0b10111110010111110100101010011010";
        ram[4] = "0b00111101100101100010110100010001";
        ram[5] = "0b10111111011111000111111011100100";
        ram[6] = "0b10111111101110100110111111010001";
        ram[7] = "0b10111111001010011101110111011110";
        ram[8] = "0b00111110101111011011100000011110";
        ram[9] = "0b00111111100100010111010111001001";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col2_layer3_weights_11) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_11) {
meminst = new nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_ram("nn_inference_nn_inference_Pipeline_col2_layer3_weights_11_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col2_layer3_weights_11() {
    delete meminst;
}


};//endmodule
#endif
