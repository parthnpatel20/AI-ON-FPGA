// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Nov 25 22:20:21 2025
// Host        : Parth_Legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/University_of_Colorado_Boulder/Fall2025/Embedded_AI/Prj/EMBD_FPGA/EMBD_FPGA.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
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
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59984)
`pragma protect data_block
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
ZBsp50mxf93RkUM7Sttq1C9J+Sg=
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
