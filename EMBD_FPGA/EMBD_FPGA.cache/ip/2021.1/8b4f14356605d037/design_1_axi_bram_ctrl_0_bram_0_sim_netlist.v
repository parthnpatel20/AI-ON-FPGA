// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Nov 25 22:20:21 2025
// Host        : Parth_Legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
YmlmKvpu
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
