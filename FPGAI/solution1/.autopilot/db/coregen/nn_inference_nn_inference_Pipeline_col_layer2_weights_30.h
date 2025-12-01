// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_30_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_30_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_30_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_30_ram) {
        ram[0] = "0b00111111000110001011010010011000";
        ram[1] = "0b00111010001100101110101010011100";
        ram[2] = "0b00111111011001001110111001111001";
        ram[3] = "0b00111111001100010001010100111001";
        ram[4] = "0b00111111010001001110110111011101";
        ram[5] = "0b00111101111000111010010101100110";
        ram[6] = "0b00111111001110011111110101101101";
        ram[7] = "0b10111101000110011100000111001001";
        ram[8] = "0b10111110101001101110100001011010";
        ram[9] = "0b10111111001011000000101100011000";
        ram[10] = "0b10111110111001100011111000101111";
        ram[11] = "0b00111111001110101111101101100101";
        ram[12] = "0b10111101111011010100010010011100";
        ram[13] = "0b10111101000110011100100110110001";
        ram[14] = "0b00111110111010001110010000000111";
        ram[15] = "0b00111110101010110101110010001110";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_30) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_30_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_30) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_30_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_30_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_30() {
    delete meminst;
}


};//endmodule
#endif
