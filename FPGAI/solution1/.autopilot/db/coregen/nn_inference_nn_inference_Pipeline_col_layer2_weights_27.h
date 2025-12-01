// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nn_inference_nn_inference_Pipeline_col_layer2_weights_27_H__
#define __nn_inference_nn_inference_Pipeline_col_layer2_weights_27_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct nn_inference_nn_inference_Pipeline_col_layer2_weights_27_ram : public sc_core::sc_module {

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


   SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_27_ram) {
        ram[0] = "0b00111110101010110111111011010011";
        ram[1] = "0b00111110110101001010001000000111";
        ram[2] = "0b10111111101010001100101101101110";
        ram[3] = "0b00111111001010111101000100001100";
        ram[4] = "0b10111101100110011011111000000001";
        ram[5] = "0b00111111000000000101111101000001";
        ram[6] = "0b10111111101101100001110001100011";
        ram[7] = "0b10111111011000000010101011110101";
        ram[8] = "0b00111110000111110111111111010000";
        ram[9] = "0b00111111000011100010010100111010";
        ram[10] = "0b00111101000000110001111011001000";
        ram[11] = "0b10111110011111000100101111111111";
        ram[12] = "0b00111111000001111100001000001011";
        ram[13] = "0b10111100010010100100101000100100";
        ram[14] = "0b00111111000110010111110100101100";
        ram[15] = "0b10111111001000010011001100111101";


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


SC_MODULE(nn_inference_nn_inference_Pipeline_col_layer2_weights_27) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


nn_inference_nn_inference_Pipeline_col_layer2_weights_27_ram* meminst;


SC_CTOR(nn_inference_nn_inference_Pipeline_col_layer2_weights_27) {
meminst = new nn_inference_nn_inference_Pipeline_col_layer2_weights_27_ram("nn_inference_nn_inference_Pipeline_col_layer2_weights_27_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~nn_inference_nn_inference_Pipeline_col_layer2_weights_27() {
    delete meminst;
}


};//endmodule
#endif
