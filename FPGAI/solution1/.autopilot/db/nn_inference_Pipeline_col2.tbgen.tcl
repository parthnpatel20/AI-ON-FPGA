set moduleName nn_inference_Pipeline_col2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nn_inference_Pipeline_col2}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp_output2_0_load_1 float 32 regular  }
	{ temp_output2_0_load_2 float 32 regular  }
	{ temp_output2_0_load_3 float 32 regular  }
	{ temp_output2_0_load_4 float 32 regular  }
	{ temp_output2_0_load_5 float 32 regular  }
	{ temp_output2_0_load_6 float 32 regular  }
	{ temp_output2_0_load_7 float 32 regular  }
	{ temp_output2_0_load_8 float 32 regular  }
	{ temp_output2_0_load_9 float 32 regular  }
	{ temp_output2_0_load_10 float 32 regular  }
	{ temp_output2_0_load_11 float 32 regular  }
	{ temp_output2_0_load_12 float 32 regular  }
	{ temp_output2_0_load_13 float 32 regular  }
	{ temp_output2_0_load_14 float 32 regular  }
	{ temp_output2_0_load_15 float 32 regular  }
	{ temp_output2_0_load_16 float 32 regular  }
	{ temp_output3_0 float 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp_output2_0_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output2_0_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_output3_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 170
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp_output2_0_load_1 sc_in sc_lv 32 signal 0 } 
	{ temp_output2_0_load_2 sc_in sc_lv 32 signal 1 } 
	{ temp_output2_0_load_3 sc_in sc_lv 32 signal 2 } 
	{ temp_output2_0_load_4 sc_in sc_lv 32 signal 3 } 
	{ temp_output2_0_load_5 sc_in sc_lv 32 signal 4 } 
	{ temp_output2_0_load_6 sc_in sc_lv 32 signal 5 } 
	{ temp_output2_0_load_7 sc_in sc_lv 32 signal 6 } 
	{ temp_output2_0_load_8 sc_in sc_lv 32 signal 7 } 
	{ temp_output2_0_load_9 sc_in sc_lv 32 signal 8 } 
	{ temp_output2_0_load_10 sc_in sc_lv 32 signal 9 } 
	{ temp_output2_0_load_11 sc_in sc_lv 32 signal 10 } 
	{ temp_output2_0_load_12 sc_in sc_lv 32 signal 11 } 
	{ temp_output2_0_load_13 sc_in sc_lv 32 signal 12 } 
	{ temp_output2_0_load_14 sc_in sc_lv 32 signal 13 } 
	{ temp_output2_0_load_15 sc_in sc_lv 32 signal 14 } 
	{ temp_output2_0_load_16 sc_in sc_lv 32 signal 15 } 
	{ temp_output3_0_address0 sc_out sc_lv 4 signal 16 } 
	{ temp_output3_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ temp_output3_0_we0 sc_out sc_logic 1 signal 16 } 
	{ temp_output3_0_d0 sc_out sc_lv 32 signal 16 } 
	{ grp_fu_1448_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1448_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1448_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1448_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1448_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1452_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1452_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1452_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1452_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1452_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1456_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1456_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1456_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1456_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1456_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1460_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1460_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1460_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1460_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1460_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1464_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1464_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1464_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1464_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1464_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1468_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1468_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1468_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1468_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1468_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1472_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1472_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1476_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1476_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1480_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1480_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1484_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1484_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1488_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1488_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1492_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1492_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1496_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1496_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1500_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1500_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1504_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1504_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1508_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1508_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1576_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1580_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1584_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1588_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1592_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1596_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1600_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1604_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1608_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1612_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1612_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1612_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1612_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1616_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1616_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1616_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1616_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1620_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1620_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1620_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1620_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1624_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1624_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1624_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1624_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1628_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1628_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1628_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1628_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1632_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1632_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1632_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1632_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1636_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1636_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1636_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1636_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_1", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_2", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_3", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_4", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_5", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_6", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_7", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_8", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_9", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_10", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_11", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_12", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_13", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_14", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_15", "role": "default" }} , 
 	{ "name": "temp_output2_0_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output2_0_load_16", "role": "default" }} , 
 	{ "name": "temp_output3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "temp_output3_0", "role": "address0" }} , 
 	{ "name": "temp_output3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_output3_0", "role": "ce0" }} , 
 	{ "name": "temp_output3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_output3_0", "role": "we0" }} , 
 	{ "name": "temp_output3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_output3_0", "role": "d0" }} , 
 	{ "name": "grp_fu_1448_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1448_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1448_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1448_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1448_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1448_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1448_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1448_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1448_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1448_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1452_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1452_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1452_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1452_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1452_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1452_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1456_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1456_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1456_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1456_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1456_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1456_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1456_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1456_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1456_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1456_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1460_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1460_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1460_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1460_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1460_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1460_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1460_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1460_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1460_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1460_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1464_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1464_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1464_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1464_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1464_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1464_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1464_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1464_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1464_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1464_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1468_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1468_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1468_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1468_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1468_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1468_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1468_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1468_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1468_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1468_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1472_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1472_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1476_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1476_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1480_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1480_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1484_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1484_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1488_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1488_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1492_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1492_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1496_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1496_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1500_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1500_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1504_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1504_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1508_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1508_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1576_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1580_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1584_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1588_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1592_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1596_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1600_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1604_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1608_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1612_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1612_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1612_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1612_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1612_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1612_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1612_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1612_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1616_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1616_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1616_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1616_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1616_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1616_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1616_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1616_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1620_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1620_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1620_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1620_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1620_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1620_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1620_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1620_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1624_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1624_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1624_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1624_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1624_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1624_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1624_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1624_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1628_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1628_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1628_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1628_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1628_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1628_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1628_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1628_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1632_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1632_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1632_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1632_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1632_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1632_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1632_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1632_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1636_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1636_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1636_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1636_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1636_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1636_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1636_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1636_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "nn_inference_Pipeline_col2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output2_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer3_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter34", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter34", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nn_inference_Pipeline_col2 {
		temp_output2_0_load_1 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_2 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_3 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_4 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_5 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_6 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_7 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_8 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_9 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_10 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_11 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_12 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_13 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_14 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_15 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0_load_16 {Type I LastRead 0 FirstWrite -1}
		temp_output3_0 {Type O LastRead -1 FirstWrite 34}
		layer3_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "45", "Max" : "45"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp_output2_0_load_1 { ap_none {  { temp_output2_0_load_1 in_data 0 32 } } }
	temp_output2_0_load_2 { ap_none {  { temp_output2_0_load_2 in_data 0 32 } } }
	temp_output2_0_load_3 { ap_none {  { temp_output2_0_load_3 in_data 0 32 } } }
	temp_output2_0_load_4 { ap_none {  { temp_output2_0_load_4 in_data 0 32 } } }
	temp_output2_0_load_5 { ap_none {  { temp_output2_0_load_5 in_data 0 32 } } }
	temp_output2_0_load_6 { ap_none {  { temp_output2_0_load_6 in_data 0 32 } } }
	temp_output2_0_load_7 { ap_none {  { temp_output2_0_load_7 in_data 0 32 } } }
	temp_output2_0_load_8 { ap_none {  { temp_output2_0_load_8 in_data 0 32 } } }
	temp_output2_0_load_9 { ap_none {  { temp_output2_0_load_9 in_data 0 32 } } }
	temp_output2_0_load_10 { ap_none {  { temp_output2_0_load_10 in_data 0 32 } } }
	temp_output2_0_load_11 { ap_none {  { temp_output2_0_load_11 in_data 0 32 } } }
	temp_output2_0_load_12 { ap_none {  { temp_output2_0_load_12 in_data 0 32 } } }
	temp_output2_0_load_13 { ap_none {  { temp_output2_0_load_13 in_data 0 32 } } }
	temp_output2_0_load_14 { ap_none {  { temp_output2_0_load_14 in_data 0 32 } } }
	temp_output2_0_load_15 { ap_none {  { temp_output2_0_load_15 in_data 0 32 } } }
	temp_output2_0_load_16 { ap_none {  { temp_output2_0_load_16 in_data 0 32 } } }
	temp_output3_0 { ap_memory {  { temp_output3_0_address0 mem_address 1 4 }  { temp_output3_0_ce0 mem_ce 1 1 }  { temp_output3_0_we0 mem_we 1 1 }  { temp_output3_0_d0 mem_din 1 32 } } }
}
