# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 73
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod16_layer1_weights_13
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101100001100011010110011000" "10111111001011010101110110101010" "10111101010010110110010100100000" "00111110111100101110010000101110" "10111111100100110100011110111100" "10111111001011100111000011111111" "10111111000000100101101111101001" "10111111101101000110010111001011" "00111111010100110101110100111011" "00111111101100110111001000110001" "10111110000010110100100000011001" "10111111100110011010111001011000" "10111110001100001100111010101110" "10111111010011110110101111110110" "10111110100100010101110011101101" "10111110000010101000010001011100" "10111110101011101010100000101001" "10111101110010000100111111100011" "10111110111101110000010000011111" "01000000000111110111011000000110" "10111110110111111101100001101100" "10111111010101100111010110011010" "00111101111001010100110111011011" "10111100001110111111111011100110" "10111110010011101111101100101001" "00111110000011001001101011110000" "00111110101101111000001010010110" "00111100111111100000000011001111" "10111101100000100001001011001111" "10111110100111100111101010001110" "01000000000111000000111010010011" "00111110101111010111100100101101" "10111110101110110001110111110011" "00111101001011110110110101000101" "00111101101001110100110101101001" "10111110010010010110011000011110" "10111110100011111100101111000111" "10111101010010010000010001010100" "10111111100100101110111001100110" "10111111100110101111001000011101" "01000000001111010101100000011111" "10111110010000010111001101100101" "10111111000001010110110100000100" "10111110001011111001111100000110" "10111101011011100101100110101111" "10111100101100010100011101111111" "00111101101001011111100000000101" "10111111000111001010011100010111" "10111111001111011110001000111110" "00111100000111010110010010100101" "00111111111001100011011110100100" "00111101111010011101110011101001" "00111110001101101001001111101011" "00111110001101110101110000110101" "00111101110010001101111001100100" "00111101110111011010111001001000" "00111110111010000000110011111100" "00111101111010101111101110010001" "00111110010110100110101001100100" "00111111100001010111111110001111" "10111111000011101010011001010100" "00111111100100111100110010011110" "00111111011011110010010010101111" "00111111100011011101011000100011" "00111111010001101101010001010111" "00111111001001011100110010010110" "00111101110101110100110001011110" "00111101111001110001000101101101" "00111110101111010001010000011110" "10111110100011101001010101010101" "10111111100101101101001010000111" "00111100111111000110001110110101" "10111111010111101000100110111000" "10111111011000110000001110001100" "10111110100101010110001001110111" "10111110101001110001011110010110" "00111110001011111011000100101000" "00111110111010001100111011001011" "00111110001111100011111101011111" "10111111000010111110011111110111" "00111111001111001011011010001000" "10111111010101110100110000101110" "00111110010101101011011010110100" "10111110001100111111000110000110" "10111110100011000100101101001111" "10111110110111000011001011101011" "10111111001100111110001001011101" "10111101100111100111001101110000" "10111110010000100001110010100010" "00111111100110101110111100010110" "01000000001000101000011011111111" "10111110110111010101001000010101" "00111110110010100000111000111011" "00111111000111001101010111110101" "00111111001001001010010000101011" "00111110110000000011011011010011" "10111110100111101101001101011011" "00111111001101000110101100001011" "00111111010100010110110110111100" "01000000000100111010010100011011" }
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
    id 74 \
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
    id 75 \
    name sum_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_26_out \
    op interface \
    ports { sum_26_out { O 32 vector } sum_26_out_ap_vld { O 1 bit } } \
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


