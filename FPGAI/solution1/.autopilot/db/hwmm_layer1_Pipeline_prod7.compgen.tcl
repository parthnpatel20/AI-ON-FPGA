# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 28
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod7_layer1_weights_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111010111000100111001010000" "00111111001001011010001011000101" "10111111000111100011010111010101" "00111111000000110111101011101000" "00111110100111111101110100101111" "00111110010100111110110011001100" "00111111000010101100110001010101" "00111111010000001110000001011011" "10111110011011110101110001010001" "10111111011111110000001100110010" "10111001100111000011101010010100" "10111111110010001010111000001010" "00111111001001010001001011010011" "10111110110100100011110110111111" "00111110000011011010100110111111" "00111100111111100101011011010100" "10111111001011000110100011001101" "10111101010101000111110001111111" "10111101111111110011110111001111" "00111111001010001111000111101111" "00111110101000101001000001100111" "00111110101011001110111001000011" "00111111010001101101101101001010" "00111111001100011010001000101111" "00111111001011110000011010111010" "00111101111110100000001000101101" "00111101011001000010111111110000" "10111110100011100111110101110001" "00111110010011111001001110001011" "10111110101011100010001001111101" "10111111100011011011010000100010" "00111111100010001101100100100010" "00111111001000001011010010101101" "10111101100101000001100101000100" "00111111001101111100111100011110" "00111110110000001100011100100010" "00111111001011001110110001001101" "00111110110011111111111010011010" "00111101110100010111000001111000" "10111111000011011011110010110001" "00111110011011010011101011110011" "00111110100110101111111111100011" "10111110111100001000000110011111" "10111110101001011000111001001111" "00111110101100010110111011010011" "10111110100111100001010011100001" "00111111000010100001110100111001" "10111101110011101101000101100010" "00111110101100110001001001000011" "10111111100001101110010011101101" "11000000000001100100010000101100" "10111110110100000100111111100011" "00111110110111100111011011011000" "00111111000111100100110011001011" "10111110001110110110101010011100" "00111010001110000001100001011010" "00111110000101110010000110010000" "00111111000111011001101100100001" "00111111001101011001100110001110" "10111110100001100010100001111100" "11000000001100011110111010001011" "00111101000110100000101001111100" "00111110000000011110000111101101" "00111110100101000100011000101100" "00111110110100110111000111100110" "00111110101110100000111011101111" "00111101010100000111001010001001" "00111110101101010100100110101011" "00111110011110000111110001110010" "10111111010000110111110101110010" "10111110110001011110100100010000" "10111101110001000000010101111000" "10111111000100110110110010101100" "10111110111101001101111101000110" "00111101110101011110110100110001" "10111110011110110100111111101010" "10111111010000001101110100111100" "00111101100110101011101101100011" "10111111000111010000110000010110" "10111111111110111001011110101000" "10111111111111101111011110011000" "00111101111011101111111101000101" "00111011110101011000001010110100" "10111110010000011101001101000011" "00111110001111100111100101100001" "00111111000010010011001101011111" "10111110100011101001110001011110" "10111101101010010000110111011110" "10111101000010110100001010100000" "10111111110100000100010110001110" "10111110110100011110110100101111" "10111101101000001001100111110000" "10111110100110001110101100100101" "00111110010001011000001110110100" "00111100011111101000000101101010" "10111110000101011001101011111011" "10111110111111111010101001100111" "00111101011100111101010000000110" "00111111000001011010110000111110" "10111111100010101110100100111101" }
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
    id 29 \
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
    id 30 \
    name sum_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_8_out \
    op interface \
    ports { sum_8_out { O 32 vector } sum_8_out_ap_vld { O 1 bit } } \
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


