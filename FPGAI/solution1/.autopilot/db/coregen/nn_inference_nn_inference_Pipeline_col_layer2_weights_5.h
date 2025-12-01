// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_5_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_5_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_5_ram) {
        ram[0] = "0b10111110101111010100100010001010";
        ram[1] = "0b10111110110101100001110000101001";
        ram[2] = "0b00111110101100110000110111010001";
        ram[3] = "0b10111111100101010110010001001010";
        ram[4] = "0b10111111101111010001101001111100";
        ram[5] = "0b01000000000111111111010110001100";
        ram[6] = "0b00111111010100100000001110111101";
        ram[7] = "0b10111111100000011101000101111011";
        ram[8] = "0b00111111101100101010000010000011";
        ram[9] = "0b00111110110111100101000100001000";
        ram[10] = "0b10111110011011110111100101001111";
        ram[11] = "0b10111111100010001100001101110011";
        ram[12] = "0b10111111010101110100011100011111";
        ram[13] = "0b00111110110101110010110111101000";
        ram[14] = "0b10111110000010101001010000010100";
        ram[15] = "0b10111111100111010000100000110010";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_5_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_5) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_5_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_5() {
    delete meminst;
}


};//endmodule
#endif
