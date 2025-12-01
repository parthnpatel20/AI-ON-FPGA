# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 78
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod17_layer1_weights_14
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111101111111011100010110101101" "00111101100001101110101011110001" "10111111101000100010010010100001" "00111111010110111100010100101010" "00111110011011000001110011011001" "00111111000100000011111001000110" "01000000000010110110111010100101" "01000000000011110011110100100011" "01000000000011001110100110001101" "01000000000111001011100100000010" "00111110110101011110000101100111" "10111111000100100110100111000101" "10111111011000101101001010111101" "10111111011010010011101111101100" "10111110111100110010010010110111" "00111101011000101101101001101000" "00111111000100001101111011110100" "00111111010101000011111010100100" "00111111100001000110000000010011" "10111110110100100011000011010000" "00111111100111101010000001101110" "00111110101100100001011001000010" "10111101101101110110000101110000" "10111110001101000001111001011101" "00111101111001001111011011001001" "10111110000111101010001100111000" "00111110100110011011000010001100" "00111111001110010100111111000100" "00111111001100100110111110001010" "00111101101101100011000101101001" "10111110001010001011110010000011" "10111110001001101110111101110100" "10111110100010010101101100110101" "10111101011001010001010100010010" "10111110100110011110010100011000" "00111100101011100101001001010111" "00111101001000000110000100110101" "00111111010111000010111001001101" "00111111010010001011100110010101" "00111111001110101111100010001010" "10111110101100110101110011000011" "10111110011111000011000000010011" "00111110100010110110001010101100" "00111110110000001010110100001101" "00111110111100111111011111101001" "00111110100010011001110010100010" "10111110101011010101101111111011" "00111110110011111101100011101111" "00111110100101000010111001100011" "00111111011001110010001100101100" "10111110101110110110100111100100" "00111111010100000001111111001110" "00111110101111100001111101000010" "00111111001110001010011011000001" "00111111011001000001011110001100" "00111110010110111001001010101110" "00111101111010100001101110100101" "10111110111000011000111001110010" "00111101011010001001111100100110" "10111110000101111001000000100011" "00111111100100001001000011101011" "00111110110111001000010001010011" "00111111010111011010000001010000" "00111110101010010110000110100010" "00111110100011000011100011110001" "00111110101110111100000010101111" "00111101111101010111110111010000" "10111110110110011010010110101100" "00111100101001001100111010100001" "10111111101101011110010000110010" "00111101000010100010101100110100" "00111110111000000011010110101111" "00111101100111010001111100101001" "10111111000001110110001001010000" "10111110111000100010111111001011" "00111100011111000111101001100110" "00111110110010110100101101110001" "00111110011001100111001110000000" "00111110100011010101001001101110" "00111101100011010001111100100101" "00111000100100001110100100111110" "00111101110001101000111101000000" "00111101001010011010100011010101" "00111110000100101011100100111111" "00111101110111001011111010010101" "00111110001110111000100010001111" "10111110101011010001101001001000" "00111110100001011001000111011100" "00111110010011010011111101000000" "10111111110101101100001101110011" "00111111101010100001100100101001" "00111111100100101000011101101000" "10111110100101101100011100100100" "00111101100011001001001110111011" "10111101101010010100100101100001" "10111101101000110100010011000000" "10111101100000110100011110100101" "10111111000000011000000010110110" "00111100101101010110110011101011" "10111111011111001101101010001010" }
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
    id 79 \
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
    id 80 \
    name sum_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_28_out \
    op interface \
    ports { sum_28_out { O 32 vector } sum_28_out_ap_vld { O 1 bit } } \
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


