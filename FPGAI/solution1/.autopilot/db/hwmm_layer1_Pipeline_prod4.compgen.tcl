# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 13
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod4_layer1_weights_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101100101101111110110000100" "10111111100001110100101001101111" "10111111010010101101010110100000" "10111111101101011101010011110001" "10111111001001100111110111011111" "10111111100011011010100011001011" "10111110111010001111010000110010" "10111110011011101111111111000101" "00111110101110010111000101000000" "00111111111010000101110100101010" "00111111001001000001100100100101" "00111111110111001000110000010111" "00111110110101010000110011111101" "00111101011010101101011111100010" "10111111000011001110011010001010" "00111110001000011101101111110011" "00111111000001000110001011100110" "00111110101111100000100001110110" "00111111010111010101111000100000" "00111111101011111011010100011110" "00111110110011111101010000000110" "00111111010111010110010110101000" "00111110010001010011100100011011" "10111110100100111011001101010000" "10111110111011100001010111001001" "00111101011001111001110110010110" "00111110010111011011111110001011" "00111110100100110011101100011011" "00111111000110110101001000110100" "00111111100001001000100011010111" "00111101101111111000010011110000" "00111110110100101111110111000110" "00111110000010101111001100011101" "10111110100010101011010011000111" "10111110010001111111110100010111" "00111110110001110011011010000100" "10111101101100101000010111010000" "10111110100110000110000110100101" "10111100101110011000000001111011" "00111110000110010001111010111000" "00111110101111000000101101010111" "00111110010000001000011100010110" "00111101101110011111001011111100" "00111101101011011110110000110101" "00111110110110100111110001101001" "10111110100011011011111011111001" "10111110100101011011000011111111" "10111111001011001000010011110110" "11000000000010000010000011011010" "10111111100100100110110111111011" "00111111101011001011111111001001" "00111110110101000111111011001111" "10111101111100111001101001110111" "10111110011011000001011110011000" "10111110000001111010101010011101" "10111110100011111011101011000111" "00111110100011101101101001111101" "00111111001111101011110011111101" "00111110100111001000010100101110" "10111111000111000100010011111110" "00111111010100101110111110101110" "00111110010011011101111100100101" "00111110100110001000110000010000" "00111110010100000001010101111111" "10111111000010111101110111101000" "00111110001000001111011010000110" "00111111010000001110111110000100" "00111110010011101000000010100111" "10111110101100110111000110010010" "10111111110100110111111100010100" "00111111011100100100111000110111" "10111111001100011010100010010000" "10111110100001111001001100000001" "00111110101100110001101010011110" "00111101111101000011000100011010" "00111110110001001011000001110100" "10111101100111100100010110011010" "00111110000011101000001001100001" "00111110110101110110110000000110" "10111111010011101010101111111011" "01000000001010100101111111010011" "10111111100110011010010101100100" "10111111100010101101001000100001" "10111110000011100110000001111011" "00111101010110101101001111100011" "00111111000001011111110011000000" "00111111001011110010011110100000" "00111110110011111010011001001100" "10111111001110110000000011011011" "10111111001100101011100001000010" "00111111100010001101010111010101" "00111110010001111110111101010110" "00111111101100111101001110101001" "00111111100001011011110111000100" "00111111011010110100000100100110" "00111111000101001100000101011001" "00111111010101101001110110111011" "00111110111101100001010111100111" "00111111100110101010100101101000" "10111111110010010111110010111011" }
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
    id 14 \
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
    id 15 \
    name sum_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_2_out \
    op interface \
    ports { sum_2_out { O 32 vector } sum_2_out_ap_vld { O 1 bit } } \
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


