// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_25_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_25_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_25_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_25_ram) {
        ram[0] = "0b00111101100001000100000011011111";
        ram[1] = "0b00111110000110110001111010010010";
        ram[2] = "0b10111110110001101100101010000011";
        ram[3] = "0b00111111001111011011100011111100";
        ram[4] = "0b10111101010101100001101101000110";
        ram[5] = "0b00111111010010100111100101111010";
        ram[6] = "0b00111110000111001001100010010000";
        ram[7] = "0b10111111000110000101111011000111";
        ram[8] = "0b00111110000010010110011001001100";
        ram[9] = "0b00111101100000001100111101110100";
        ram[10] = "0b00111111001001010000010010010100";
        ram[11] = "0b00111101010101010100001010011101";
        ram[12] = "0b10111110101011100010010010011001";
        ram[13] = "0b00111110111101001111000110000001";
        ram[14] = "0b00111111011011000010110100001111";
        ram[15] = "0b00111101000110101100100011100010";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_25) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_25_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_25) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_25_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_25_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_25() {
    delete meminst;
}


};//endmodule
#endif
