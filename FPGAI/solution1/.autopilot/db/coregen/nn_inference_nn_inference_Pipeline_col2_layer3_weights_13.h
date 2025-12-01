// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_H__
#define __nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_ram) {
        ram[0] = "0b10111110010010110111101101010011";
        ram[1] = "0b00111111100111011100000000110010";
        ram[2] = "0b10111111100010100110111001000000";
        ram[3] = "0b10111110101111100101010100111111";
        ram[4] = "0b10111110000110011010101101110101";
        ram[5] = "0b00111110011111101001110000000001";
        ram[6] = "0b10111110010011110101011000011001";
        ram[7] = "0b00111110001110110001011000101011";
        ram[8] = "0b00111110111001101001011000010111";
        ram[9] = "0b00111111000100001100100111000000";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col2_layer3_weights_13) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col2_layer3_weights_13) {
meminst = new nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_ram("nn_inference_nn_inference_Pipeline_col2_layer3_weights_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col2_layer3_weights_13() {
    delete meminst;
}


};//endmodule
#endif
