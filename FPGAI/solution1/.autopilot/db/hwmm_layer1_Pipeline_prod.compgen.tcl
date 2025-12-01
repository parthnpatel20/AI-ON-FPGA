# This script segment is generated automatically by AutoPilot

set name nn_inference_fadd_32ns_32ns_32_2_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name nn_inference_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


# Memory (RAM/ROM)  definition:
set ID 8
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod_layer1_weights_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111111110100011011011011101" "10111111011010010111100111110101" "00111110100011001001101000001111" "10111110110110101001110100101110" "00111111101100101001010011100001" "00111111101100101101001100011001" "00111111010011111110010010110100" "00111110111101111101111101101011" "00111110000101001001101110110010" "00111111011000110100000101010010" "10111111110011000011101000010101" "10111101010111111101001011000010" "10111110100110000011101100110000" "00111110110000110001100010110111" "00111111010001110110010111010010" "00111111001110001000100101011001" "10111110101111111010011110010111" "00111111001010111001100111110100" "10111111010100000010000000110000" "10111111011001000100101101001011" "10111110111011101111000110000001" "10111111010001000011101110001101" "00111110110011101000100000101001" "00111110110000110011100101100101" "00111110111010110010101001001100" "10111110101010111101100110011111" "00111110001100010110111010100001" "00111110001100000001010111001000" "00111110011010011011011001011001" "00111110100000101011001001011000" "11000000011000100110111001100001" "10111111001000000101000101001011" "10111111000001100001110010001011" "00111110111010001010011101100110" "00111111010110001111011011111011" "10111111010110110010010000111111" "10111110100111011010001010111100" "10111110001100000111001011000111" "10111110010110100000100101101110" "00111110011001111110100101111011" "11000000010100110001010001101101" "00111110001011110101011100101001" "10111101101010101110111101110000" "00111100100010101110100010100011" "10111110010110010010010100110001" "10111110010010000101001011101001" "00111100110110011100001111011000" "00111101001010101010010001001101" "00111110110110101010001000010110" "00111110001001011001110111001010" "10111111110011010111110101101101" "00111110111011110101001101110001" "00111110001001010001010010001111" "10111101100001001110100000011111" "10111110000011101011110010000101" "10111110001000001001011010110010" "00111100011011010001100110000011" "00111101111011000001001100011000" "00111111001010011010111111001011" "10111101100011000010010001110111" "00111111011100101111110110100000" "10111110110011011111100101011001" "10111110110100001101001110011000" "00111011001000110110100111000001" "10111111001000010110100010001000" "00111110001000000010000100101110" "10111110010000000000111100110011" "00111101011000101001110011101000" "00111110000101111001011001110011" "10111111001101010011101011111101" "00111101101010001101010110011010" "00111110111010000110011110100101" "10111110000011101001100000000111" "10111110100101010010101110100101" "10111101101001101010001010011111" "00111111000001011111111001001110" "00111110110000001110000001100111" "00111110111000101101111000111111" "00111110111111110000011001101000" "00111111010010011110111010110010" "00111111011101111100111010010101" "00111110101111111011000100101110" "10111110010100011011101101101001" "10111110101001101001101000100110" "10111101000101000001111100110010" "00111110111010101010010111000101" "00111101111111011111100010101010" "00111101100110111011110000101100" "10111111001110011111011000111011" "00111111000101100101001110110000" "00111110100001001001111111100010" "10111111101100110110110110111011" "00111110101001010001000000100100" "00111110100010011011001100100101" "00111101000101011010110011111010" "00111110100100100000001110010011" "10111110010000101011110010010110" "00111111000100010010101111110011" "00111111101101111000010001100101" "10111111101111110110100001010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
set ClkPeriod 30
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name input_img \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_img \
    op interface \
    ports { input_img_address0 { O 7 vector } input_img_ce0 { O 1 bit } input_img_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_img'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name sum_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_out \
    op interface \
    ports { sum_out { O 32 vector } sum_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName nn_inference_flow_control_loop_pipe_sequential_init_U
set CompName nn_inference_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix nn_inference_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


