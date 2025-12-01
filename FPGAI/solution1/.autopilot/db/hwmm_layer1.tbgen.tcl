set moduleName hwmm_layer1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hwmm_layer1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_img int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ output_0 float 32 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_img_address0 sc_out sc_lv 7 signal 0 } 
	{ input_img_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_img_q0 sc_in sc_lv 32 signal 0 } 
	{ output_0_address0 sc_out sc_lv 5 signal 1 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_0_we0 sc_out sc_logic 1 signal 1 } 
	{ output_0_d0 sc_out sc_lv 32 signal 1 } 
	{ output_0_address1 sc_out sc_lv 5 signal 1 } 
	{ output_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_0_we1 sc_out sc_logic 1 signal 1 } 
	{ output_0_d1 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_img", "role": "address0" }} , 
 	{ "name": "input_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_img", "role": "ce0" }} , 
 	{ "name": "input_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_img", "role": "q0" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_0", "role": "address1" }} , 
 	{ "name": "output_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce1" }} , 
 	{ "name": "output_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we1" }} , 
 	{ "name": "output_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "16", "19", "22", "25", "28", "31", "34", "37", "40", "43", "46", "49", "52", "55", "58", "61", "64", "67", "70", "73", "76", "79", "82", "85", "88", "91", "94", "97", "98"],
		"CDFG" : "hwmm_layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3424", "EstimateLatencyMax" : "3424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod24_fu_820", "Port" : "input_img", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "79", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod29_fu_865", "Port" : "input_img", "Inst_start_state" : "53", "Inst_end_state" : "54"},
					{"ID" : "13", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod7_fu_667", "Port" : "input_img", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "25", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod11_fu_703", "Port" : "input_img", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "46", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod18_fu_766", "Port" : "input_img", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "76", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod28_fu_856", "Port" : "input_img", "Inst_start_state" : "51", "Inst_end_state" : "52"},
					{"ID" : "85", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod31_fu_883", "Port" : "input_img", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "1", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod_fu_631", "Port" : "input_img", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "34", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod14_fu_730", "Port" : "input_img", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "43", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod17_fu_757", "Port" : "input_img", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "61", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod23_fu_811", "Port" : "input_img", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "22", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod10_fu_694", "Port" : "input_img", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "55", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod21_fu_793", "Port" : "input_img", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "70", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod26_fu_838", "Port" : "input_img", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "88", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod32_fu_892", "Port" : "input_img", "Inst_start_state" : "59", "Inst_end_state" : "60"},
					{"ID" : "31", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod13_fu_721", "Port" : "input_img", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "82", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod30_fu_874", "Port" : "input_img", "Inst_start_state" : "55", "Inst_end_state" : "56"},
					{"ID" : "94", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod34_fu_910", "Port" : "input_img", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "91", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod33_fu_901", "Port" : "input_img", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "16", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod8_fu_676", "Port" : "input_img", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "7", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod5_fu_649", "Port" : "input_img", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "19", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod9_fu_685", "Port" : "input_img", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "28", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod12_fu_712", "Port" : "input_img", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "40", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod16_fu_748", "Port" : "input_img", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "49", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod19_fu_775", "Port" : "input_img", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "67", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod25_fu_829", "Port" : "input_img", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "37", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod15_fu_739", "Port" : "input_img", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "4", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod4_fu_640", "Port" : "input_img", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "52", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod20_fu_784", "Port" : "input_img", "Inst_start_state" : "35", "Inst_end_state" : "36"},
					{"ID" : "58", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod22_fu_802", "Port" : "input_img", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod6_fu_658", "Port" : "input_img", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "73", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod27_fu_847", "Port" : "input_img", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod_fu_631", "Port" : "layer1_weights_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod4_fu_640", "Port" : "layer1_weights_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod5_fu_649", "Port" : "layer1_weights_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod6_fu_658", "Port" : "layer1_weights_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod7_fu_667", "Port" : "layer1_weights_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod8_fu_676", "Port" : "layer1_weights_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod9_fu_685", "Port" : "layer1_weights_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod10_fu_694", "Port" : "layer1_weights_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod11_fu_703", "Port" : "layer1_weights_8", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod12_fu_712", "Port" : "layer1_weights_9", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod13_fu_721", "Port" : "layer1_weights_10", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod14_fu_730", "Port" : "layer1_weights_11", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod15_fu_739", "Port" : "layer1_weights_12", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod16_fu_748", "Port" : "layer1_weights_13", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod17_fu_757", "Port" : "layer1_weights_14", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod18_fu_766", "Port" : "layer1_weights_15", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod19_fu_775", "Port" : "layer1_weights_16", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod20_fu_784", "Port" : "layer1_weights_17", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod21_fu_793", "Port" : "layer1_weights_18", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod22_fu_802", "Port" : "layer1_weights_19", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod23_fu_811", "Port" : "layer1_weights_20", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod24_fu_820", "Port" : "layer1_weights_21", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod25_fu_829", "Port" : "layer1_weights_22", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod26_fu_838", "Port" : "layer1_weights_23", "Inst_start_state" : "47", "Inst_end_state" : "48"}]},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod27_fu_847", "Port" : "layer1_weights_24", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod28_fu_856", "Port" : "layer1_weights_25", "Inst_start_state" : "51", "Inst_end_state" : "52"}]},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod29_fu_865", "Port" : "layer1_weights_26", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod30_fu_874", "Port" : "layer1_weights_27", "Inst_start_state" : "55", "Inst_end_state" : "56"}]},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod31_fu_883", "Port" : "layer1_weights_28", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod32_fu_892", "Port" : "layer1_weights_29", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod33_fu_901", "Port" : "layer1_weights_30", "Inst_start_state" : "61", "Inst_end_state" : "62"}]},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod34_fu_910", "Port" : "layer1_weights_31", "Inst_start_state" : "63", "Inst_end_state" : "64"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod_fu_631", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "hwmm_layer1_Pipeline_prod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod_fu_631.layer1_weights_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod_fu_631.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod4_fu_640", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "hwmm_layer1_Pipeline_prod4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod4_fu_640.layer1_weights_1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod4_fu_640.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod5_fu_649", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "hwmm_layer1_Pipeline_prod5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod5_fu_649.layer1_weights_2_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod5_fu_649.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod6_fu_658", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "hwmm_layer1_Pipeline_prod6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod6_fu_658.layer1_weights_3_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod6_fu_658.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod7_fu_667", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "hwmm_layer1_Pipeline_prod7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod7_fu_667.layer1_weights_4_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod7_fu_667.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod8_fu_676", "Parent" : "0", "Child" : ["17", "18"],
		"CDFG" : "hwmm_layer1_Pipeline_prod8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod8_fu_676.layer1_weights_5_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod8_fu_676.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod9_fu_685", "Parent" : "0", "Child" : ["20", "21"],
		"CDFG" : "hwmm_layer1_Pipeline_prod9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod9_fu_685.layer1_weights_6_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod9_fu_685.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod10_fu_694", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "hwmm_layer1_Pipeline_prod10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod10_fu_694.layer1_weights_7_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod10_fu_694.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod11_fu_703", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "hwmm_layer1_Pipeline_prod11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod11_fu_703.layer1_weights_8_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod11_fu_703.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod12_fu_712", "Parent" : "0", "Child" : ["29", "30"],
		"CDFG" : "hwmm_layer1_Pipeline_prod12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod12_fu_712.layer1_weights_9_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod12_fu_712.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod13_fu_721", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "hwmm_layer1_Pipeline_prod13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod13_fu_721.layer1_weights_10_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod13_fu_721.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod14_fu_730", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "hwmm_layer1_Pipeline_prod14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod14_fu_730.layer1_weights_11_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod14_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod15_fu_739", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "hwmm_layer1_Pipeline_prod15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod15_fu_739.layer1_weights_12_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod15_fu_739.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod16_fu_748", "Parent" : "0", "Child" : ["41", "42"],
		"CDFG" : "hwmm_layer1_Pipeline_prod16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod16_fu_748.layer1_weights_13_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod16_fu_748.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod17_fu_757", "Parent" : "0", "Child" : ["44", "45"],
		"CDFG" : "hwmm_layer1_Pipeline_prod17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod17_fu_757.layer1_weights_14_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod17_fu_757.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod18_fu_766", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "hwmm_layer1_Pipeline_prod18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod18_fu_766.layer1_weights_15_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod18_fu_766.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod19_fu_775", "Parent" : "0", "Child" : ["50", "51"],
		"CDFG" : "hwmm_layer1_Pipeline_prod19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod19_fu_775.layer1_weights_16_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod19_fu_775.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod20_fu_784", "Parent" : "0", "Child" : ["53", "54"],
		"CDFG" : "hwmm_layer1_Pipeline_prod20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod20_fu_784.layer1_weights_17_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod20_fu_784.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod21_fu_793", "Parent" : "0", "Child" : ["56", "57"],
		"CDFG" : "hwmm_layer1_Pipeline_prod21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod21_fu_793.layer1_weights_18_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod21_fu_793.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod22_fu_802", "Parent" : "0", "Child" : ["59", "60"],
		"CDFG" : "hwmm_layer1_Pipeline_prod22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod22_fu_802.layer1_weights_19_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod22_fu_802.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod23_fu_811", "Parent" : "0", "Child" : ["62", "63"],
		"CDFG" : "hwmm_layer1_Pipeline_prod23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod23_fu_811.layer1_weights_20_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod23_fu_811.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod24_fu_820", "Parent" : "0", "Child" : ["65", "66"],
		"CDFG" : "hwmm_layer1_Pipeline_prod24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod24_fu_820.layer1_weights_21_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod24_fu_820.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod25_fu_829", "Parent" : "0", "Child" : ["68", "69"],
		"CDFG" : "hwmm_layer1_Pipeline_prod25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod25_fu_829.layer1_weights_22_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod25_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod26_fu_838", "Parent" : "0", "Child" : ["71", "72"],
		"CDFG" : "hwmm_layer1_Pipeline_prod26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod26_fu_838.layer1_weights_23_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod26_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod27_fu_847", "Parent" : "0", "Child" : ["74", "75"],
		"CDFG" : "hwmm_layer1_Pipeline_prod27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod27_fu_847.layer1_weights_24_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod27_fu_847.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod28_fu_856", "Parent" : "0", "Child" : ["77", "78"],
		"CDFG" : "hwmm_layer1_Pipeline_prod28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod28_fu_856.layer1_weights_25_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod28_fu_856.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod29_fu_865", "Parent" : "0", "Child" : ["80", "81"],
		"CDFG" : "hwmm_layer1_Pipeline_prod29",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod29_fu_865.layer1_weights_26_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod29_fu_865.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod30_fu_874", "Parent" : "0", "Child" : ["83", "84"],
		"CDFG" : "hwmm_layer1_Pipeline_prod30",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod30_fu_874.layer1_weights_27_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod30_fu_874.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod31_fu_883", "Parent" : "0", "Child" : ["86", "87"],
		"CDFG" : "hwmm_layer1_Pipeline_prod31",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod31_fu_883.layer1_weights_28_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod31_fu_883.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod32_fu_892", "Parent" : "0", "Child" : ["89", "90"],
		"CDFG" : "hwmm_layer1_Pipeline_prod32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod32_fu_892.layer1_weights_29_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod32_fu_892.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod33_fu_901", "Parent" : "0", "Child" : ["92", "93"],
		"CDFG" : "hwmm_layer1_Pipeline_prod33",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod33_fu_901.layer1_weights_30_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod33_fu_901.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod34_fu_910", "Parent" : "0", "Child" : ["95", "96"],
		"CDFG" : "hwmm_layer1_Pipeline_prod34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "prod", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod34_fu_910.layer1_weights_31_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_Pipeline_prod34_fu_910.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U166", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U167", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hwmm_layer1 {
		input_img {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 2}
		layer1_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_0 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod4 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_2_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_1 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod5 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_4_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_2 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod6 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_6_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_3 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod7 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_8_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_4 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod8 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_10_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_5 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod9 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_12_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_6 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod10 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_14_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_7 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod11 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_16_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_8 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod12 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_18_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_9 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod13 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_20_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_10 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod14 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_22_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_11 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod15 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_24_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_12 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod16 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_26_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_13 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod17 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_28_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_14 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod18 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_30_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_15 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod19 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_32_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_16 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod20 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_34_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_17 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod21 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_36_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_18 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod22 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_38_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_19 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod23 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_40_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_20 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod24 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_42_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_21 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod25 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_44_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_22 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod26 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_46_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_23 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod27 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_48_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_24 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod28 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_50_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_25 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod29 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_52_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_26 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod30 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_54_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_27 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod31 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_56_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_28 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod32 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_58_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_29 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod33 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_60_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_30 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1_Pipeline_prod34 {
		input_img {Type I LastRead 0 FirstWrite -1}
		sum_62_out {Type O LastRead -1 FirstWrite 3}
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3424", "Max" : "3424"}
	, {"Name" : "Interval", "Min" : "3424", "Max" : "3424"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_img { ap_memory {  { input_img_address0 mem_address 1 7 }  { input_img_ce0 mem_ce 1 1 }  { input_img_q0 mem_dout 0 32 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 5 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 32 }  { output_0_address1 MemPortADDR2 1 5 }  { output_0_ce1 MemPortCE2 1 1 }  { output_0_we1 MemPortWE2 1 1 }  { output_0_d1 MemPortDIN2 1 32 } } }
}
