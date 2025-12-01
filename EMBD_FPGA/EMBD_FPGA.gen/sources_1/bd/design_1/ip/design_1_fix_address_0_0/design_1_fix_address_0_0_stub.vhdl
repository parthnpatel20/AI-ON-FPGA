-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Nov 25 22:20:08 2025
-- Host        : Parth_Legion running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/University_of_Colorado_Boulder/Fall2025/Embedded_AI/Prj/EMBD_FPGA/EMBD_FPGA.gen/sources_1/bd/design_1/ip/design_1_fix_address_0_0/design_1_fix_address_0_0_stub.vhdl
-- Design      : design_1_fix_address_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fix_address_0_0 is
  Port ( 
    addr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_fix_address_0_0;

architecture stub of design_1_fix_address_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addr_in[6:0],addr_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fix_address,Vivado 2021.1";
begin
end;
