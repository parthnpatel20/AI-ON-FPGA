set moduleName nn_inference
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nn_inference}
set C_modelType { int 32 }
set C_modelArgList {
	{ input_img int 32 regular {array 100 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 10
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
	{ ap_return sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "10", "109", "112", "146", "149", "167", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233"],
		"CDFG" : "nn_inference",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3690", "EstimateLatencyMax" : "3690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "input_img", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_8", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_10", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_11", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_12", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_13", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_14", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_15", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_16", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_17", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_18", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_19", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_20", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_21", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_22", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_24", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_25", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_26", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_27", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_28", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_29", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_30", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hwmm_layer1_fu_714", "Port" : "layer1_weights_31", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer2_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_0", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_1", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_2", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_3", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_4", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_5", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_6", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_7", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_8", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_9", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_10", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_11", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_12", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_13", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_14", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_15", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_16", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_17", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_18", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_19", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_20", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_21", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_22", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_23", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_24", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_25", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_26", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_27", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_28", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_29", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_30", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer2_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_nn_inference_Pipeline_col_fu_790", "Port" : "layer2_weights_31", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "layer3_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_0", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_1", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_2", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_3", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_4", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_5", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_6", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_7", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_8", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_9", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_10", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_11", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_12", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_13", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_14", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "layer3_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_nn_inference_Pipeline_col2_fu_898", "Port" : "layer3_weights_15", "Inst_start_state" : "36", "Inst_end_state" : "37"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output2_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output3_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_1_fu_696", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "nn_inference_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_1_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_2_fu_702", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "nn_inference_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output2_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_2_fu_702.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_3_fu_708", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "nn_inference_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output3_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_3_fu_708.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714", "Parent" : "0", "Child" : ["11", "14", "17", "20", "23", "26", "29", "32", "35", "38", "41", "44", "47", "50", "53", "56", "59", "62", "65", "68", "71", "74", "77", "80", "83", "86", "89", "92", "95", "98", "101", "104", "107", "108"],
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
					{"ID" : "74", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod24_fu_820", "Port" : "input_img", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "89", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod29_fu_865", "Port" : "input_img", "Inst_start_state" : "53", "Inst_end_state" : "54"},
					{"ID" : "23", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod7_fu_667", "Port" : "input_img", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "35", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod11_fu_703", "Port" : "input_img", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "56", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod18_fu_766", "Port" : "input_img", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "86", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod28_fu_856", "Port" : "input_img", "Inst_start_state" : "51", "Inst_end_state" : "52"},
					{"ID" : "95", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod31_fu_883", "Port" : "input_img", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "11", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod_fu_631", "Port" : "input_img", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "44", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod14_fu_730", "Port" : "input_img", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "53", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod17_fu_757", "Port" : "input_img", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "71", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod23_fu_811", "Port" : "input_img", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "32", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod10_fu_694", "Port" : "input_img", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "65", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod21_fu_793", "Port" : "input_img", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "80", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod26_fu_838", "Port" : "input_img", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "98", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod32_fu_892", "Port" : "input_img", "Inst_start_state" : "59", "Inst_end_state" : "60"},
					{"ID" : "41", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod13_fu_721", "Port" : "input_img", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "92", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod30_fu_874", "Port" : "input_img", "Inst_start_state" : "55", "Inst_end_state" : "56"},
					{"ID" : "104", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod34_fu_910", "Port" : "input_img", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "101", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod33_fu_901", "Port" : "input_img", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "26", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod8_fu_676", "Port" : "input_img", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "17", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod5_fu_649", "Port" : "input_img", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "29", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod9_fu_685", "Port" : "input_img", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "38", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod12_fu_712", "Port" : "input_img", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "50", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod16_fu_748", "Port" : "input_img", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "59", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod19_fu_775", "Port" : "input_img", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "77", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod25_fu_829", "Port" : "input_img", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "47", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod15_fu_739", "Port" : "input_img", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "14", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod4_fu_640", "Port" : "input_img", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "62", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod20_fu_784", "Port" : "input_img", "Inst_start_state" : "35", "Inst_end_state" : "36"},
					{"ID" : "68", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod22_fu_802", "Port" : "input_img", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "20", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod6_fu_658", "Port" : "input_img", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "83", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod27_fu_847", "Port" : "input_img", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod_fu_631", "Port" : "layer1_weights_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod4_fu_640", "Port" : "layer1_weights_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod5_fu_649", "Port" : "layer1_weights_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod6_fu_658", "Port" : "layer1_weights_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod7_fu_667", "Port" : "layer1_weights_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod8_fu_676", "Port" : "layer1_weights_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod9_fu_685", "Port" : "layer1_weights_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod10_fu_694", "Port" : "layer1_weights_7", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod11_fu_703", "Port" : "layer1_weights_8", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod12_fu_712", "Port" : "layer1_weights_9", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod13_fu_721", "Port" : "layer1_weights_10", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod14_fu_730", "Port" : "layer1_weights_11", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod15_fu_739", "Port" : "layer1_weights_12", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod16_fu_748", "Port" : "layer1_weights_13", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod17_fu_757", "Port" : "layer1_weights_14", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod18_fu_766", "Port" : "layer1_weights_15", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod19_fu_775", "Port" : "layer1_weights_16", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod20_fu_784", "Port" : "layer1_weights_17", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod21_fu_793", "Port" : "layer1_weights_18", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod22_fu_802", "Port" : "layer1_weights_19", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod23_fu_811", "Port" : "layer1_weights_20", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod24_fu_820", "Port" : "layer1_weights_21", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod25_fu_829", "Port" : "layer1_weights_22", "Inst_start_state" : "45", "Inst_end_state" : "46"}]},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod26_fu_838", "Port" : "layer1_weights_23", "Inst_start_state" : "47", "Inst_end_state" : "48"}]},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod27_fu_847", "Port" : "layer1_weights_24", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod28_fu_856", "Port" : "layer1_weights_25", "Inst_start_state" : "51", "Inst_end_state" : "52"}]},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod29_fu_865", "Port" : "layer1_weights_26", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod30_fu_874", "Port" : "layer1_weights_27", "Inst_start_state" : "55", "Inst_end_state" : "56"}]},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod31_fu_883", "Port" : "layer1_weights_28", "Inst_start_state" : "57", "Inst_end_state" : "58"}]},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod32_fu_892", "Port" : "layer1_weights_29", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod33_fu_901", "Port" : "layer1_weights_30", "Inst_start_state" : "61", "Inst_end_state" : "62"}]},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_hwmm_layer1_Pipeline_prod34_fu_910", "Port" : "layer1_weights_31", "Inst_start_state" : "63", "Inst_end_state" : "64"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod_fu_631", "Parent" : "10", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod_fu_631.layer1_weights_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod_fu_631.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod4_fu_640", "Parent" : "10", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod4_fu_640.layer1_weights_1_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod4_fu_640.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod5_fu_649", "Parent" : "10", "Child" : ["18", "19"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod5_fu_649.layer1_weights_2_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod5_fu_649.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod6_fu_658", "Parent" : "10", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod6_fu_658.layer1_weights_3_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod6_fu_658.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod7_fu_667", "Parent" : "10", "Child" : ["24", "25"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod7_fu_667.layer1_weights_4_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod7_fu_667.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod8_fu_676", "Parent" : "10", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod8_fu_676.layer1_weights_5_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod8_fu_676.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod9_fu_685", "Parent" : "10", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod9_fu_685.layer1_weights_6_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod9_fu_685.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod10_fu_694", "Parent" : "10", "Child" : ["33", "34"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod10_fu_694.layer1_weights_7_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod10_fu_694.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod11_fu_703", "Parent" : "10", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod11_fu_703.layer1_weights_8_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod11_fu_703.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod12_fu_712", "Parent" : "10", "Child" : ["39", "40"],
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
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod12_fu_712.layer1_weights_9_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod12_fu_712.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod13_fu_721", "Parent" : "10", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod13_fu_721.layer1_weights_10_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod13_fu_721.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod14_fu_730", "Parent" : "10", "Child" : ["45", "46"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod14_fu_730.layer1_weights_11_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod14_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod15_fu_739", "Parent" : "10", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod15_fu_739.layer1_weights_12_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod15_fu_739.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod16_fu_748", "Parent" : "10", "Child" : ["51", "52"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod16_fu_748.layer1_weights_13_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod16_fu_748.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod17_fu_757", "Parent" : "10", "Child" : ["54", "55"],
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
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod17_fu_757.layer1_weights_14_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod17_fu_757.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod18_fu_766", "Parent" : "10", "Child" : ["57", "58"],
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod18_fu_766.layer1_weights_15_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod18_fu_766.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod19_fu_775", "Parent" : "10", "Child" : ["60", "61"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod19_fu_775.layer1_weights_16_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod19_fu_775.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod20_fu_784", "Parent" : "10", "Child" : ["63", "64"],
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod20_fu_784.layer1_weights_17_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod20_fu_784.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod21_fu_793", "Parent" : "10", "Child" : ["66", "67"],
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod21_fu_793.layer1_weights_18_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod21_fu_793.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod22_fu_802", "Parent" : "10", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod22_fu_802.layer1_weights_19_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod22_fu_802.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod23_fu_811", "Parent" : "10", "Child" : ["72", "73"],
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod23_fu_811.layer1_weights_20_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod23_fu_811.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod24_fu_820", "Parent" : "10", "Child" : ["75", "76"],
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
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod24_fu_820.layer1_weights_21_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod24_fu_820.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod25_fu_829", "Parent" : "10", "Child" : ["78", "79"],
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
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod25_fu_829.layer1_weights_22_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod25_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod26_fu_838", "Parent" : "10", "Child" : ["81", "82"],
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
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod26_fu_838.layer1_weights_23_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod26_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod27_fu_847", "Parent" : "10", "Child" : ["84", "85"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod27_fu_847.layer1_weights_24_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod27_fu_847.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod28_fu_856", "Parent" : "10", "Child" : ["87", "88"],
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
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod28_fu_856.layer1_weights_25_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod28_fu_856.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod29_fu_865", "Parent" : "10", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod29_fu_865.layer1_weights_26_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod29_fu_865.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod30_fu_874", "Parent" : "10", "Child" : ["93", "94"],
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
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod30_fu_874.layer1_weights_27_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod30_fu_874.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod31_fu_883", "Parent" : "10", "Child" : ["96", "97"],
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
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod31_fu_883.layer1_weights_28_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod31_fu_883.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod32_fu_892", "Parent" : "10", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod32_fu_892.layer1_weights_29_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod32_fu_892.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod33_fu_901", "Parent" : "10", "Child" : ["102", "103"],
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
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod33_fu_901.layer1_weights_30_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod33_fu_901.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod34_fu_910", "Parent" : "10", "Child" : ["105", "106"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod34_fu_910.layer1_weights_31_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.grp_hwmm_layer1_Pipeline_prod34_fu_910.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.fadd_32ns_32ns_32_2_full_dsp_1_U166", "Parent" : "10"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_714.fmul_32ns_32ns_32_2_max_dsp_1_U167", "Parent" : "10"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop1_fu_785", "Parent" : "0", "Child" : ["110", "111"],
		"CDFG" : "nn_inference_Pipeline_loop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "loop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop1_fu_785.fcmp_32ns_32ns_1_1_no_dsp_1_U170", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop1_fu_785.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790", "Parent" : "0", "Child" : ["113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "nn_inference_Pipeline_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83", "EstimateLatencyMax" : "83",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output_0_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer2_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter66", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter66", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_0_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_1_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_2_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_3_U", "Parent" : "112"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_4_U", "Parent" : "112"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_5_U", "Parent" : "112"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_6_U", "Parent" : "112"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_7_U", "Parent" : "112"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_8_U", "Parent" : "112"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_9_U", "Parent" : "112"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_10_U", "Parent" : "112"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_11_U", "Parent" : "112"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_12_U", "Parent" : "112"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_13_U", "Parent" : "112"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_14_U", "Parent" : "112"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_15_U", "Parent" : "112"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_16_U", "Parent" : "112"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_17_U", "Parent" : "112"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_18_U", "Parent" : "112"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_19_U", "Parent" : "112"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_20_U", "Parent" : "112"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_21_U", "Parent" : "112"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_22_U", "Parent" : "112"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_23_U", "Parent" : "112"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_24_U", "Parent" : "112"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_25_U", "Parent" : "112"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_26_U", "Parent" : "112"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_27_U", "Parent" : "112"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_28_U", "Parent" : "112"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_29_U", "Parent" : "112"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_30_U", "Parent" : "112"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.layer2_weights_31_U", "Parent" : "112"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col_fu_790.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop11_fu_893", "Parent" : "0", "Child" : ["147", "148"],
		"CDFG" : "nn_inference_Pipeline_loop11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "loop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop11_fu_893.fcmp_32ns_32ns_1_1_no_dsp_1_U302", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop11_fu_893.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898", "Parent" : "0", "Child" : ["150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166"],
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
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_0_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_1_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_2_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_3_U", "Parent" : "149"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_4_U", "Parent" : "149"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_5_U", "Parent" : "149"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_6_U", "Parent" : "149"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_7_U", "Parent" : "149"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_8_U", "Parent" : "149"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_9_U", "Parent" : "149"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_10_U", "Parent" : "149"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_11_U", "Parent" : "149"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_12_U", "Parent" : "149"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_13_U", "Parent" : "149"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_14_U", "Parent" : "149"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.layer3_weights_15_U", "Parent" : "149"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_col2_fu_898.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop13_fu_953", "Parent" : "0", "Child" : ["168", "169"],
		"CDFG" : "nn_inference_Pipeline_loop13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_idx_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop13_fu_953.fcmp_32ns_32ns_1_1_no_dsp_1_U369", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_nn_inference_Pipeline_loop13_fu_953.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U372", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U373", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U374", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U375", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U376", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U377", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U378", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U379", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U380", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U381", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U382", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U383", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U384", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U385", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U386", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U387", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U388", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U389", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U390", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U391", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U392", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U393", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U394", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U395", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U396", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U397", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U398", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U399", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U400", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U401", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U402", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U403", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U404", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U405", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U406", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U407", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U408", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U409", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U410", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U411", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U412", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U413", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U414", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U415", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U416", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U417", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U418", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U419", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U420", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U421", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U422", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U423", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U424", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U425", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U426", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U427", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U428", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U429", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U430", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U431", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U432", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U433", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U434", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U435", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nn_inference {
		input_img {Type I LastRead 0 FirstWrite -1}
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
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_31 {Type I LastRead -1 FirstWrite -1}
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
		layer3_weights_15 {Type I LastRead -1 FirstWrite -1}}
	nn_inference_Pipeline_1 {
		temp_output_0 {Type O LastRead -1 FirstWrite 0}}
	nn_inference_Pipeline_2 {
		temp_output2_0 {Type O LastRead -1 FirstWrite 0}}
	nn_inference_Pipeline_3 {
		temp_output3_0 {Type O LastRead -1 FirstWrite 0}}
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
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}}
	nn_inference_Pipeline_loop1 {
		temp_output_0 {Type IO LastRead 0 FirstWrite 2}}
	nn_inference_Pipeline_col {
		temp_output_0_load_1 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_2 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_3 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_4 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_5 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_6 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_7 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_8 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_9 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_10 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_11 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_12 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_13 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_14 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_15 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_16 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_17 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_18 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_19 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_20 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_21 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_22 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_23 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_24 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_25 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_26 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_27 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_28 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_29 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_30 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_31 {Type I LastRead 0 FirstWrite -1}
		temp_output_0_load_32 {Type I LastRead 0 FirstWrite -1}
		temp_output2_0 {Type O LastRead -1 FirstWrite 66}
		layer2_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_31 {Type I LastRead -1 FirstWrite -1}}
	nn_inference_Pipeline_loop11 {
		temp_output2_0 {Type IO LastRead 0 FirstWrite 1}}
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
		layer3_weights_15 {Type I LastRead -1 FirstWrite -1}}
	nn_inference_Pipeline_loop13 {
		temp_output3_0 {Type I LastRead 0 FirstWrite -1}
		max_idx_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3690", "Max" : "3690"}
	, {"Name" : "Interval", "Min" : "3691", "Max" : "3691"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_img { ap_memory {  { input_img_address0 mem_address 1 7 }  { input_img_ce0 mem_ce 1 1 }  { input_img_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
