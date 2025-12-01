# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 23
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod6_layer1_weights_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111110100110001000000011011" "10111101011010011011001101010011" "00111111010111011111000011011111" "00111111100010011010101110011000" "00111101110100100100101100100111" "00111110011110101001001100010111" "00111011011011101110001001101000" "10111111000010110011000010111000" "00111101000101011000101011010010" "00111111010101010100010001110110" "00111111010010001010010010110011" "00111111100101000111011011001100" "00111110111000011001010101110000" "00111111101110000110100011010100" "00111111011010101110000011110000" "00111110111100101010001011001011" "00111110111010100011010100000001" "10111101111111111010010110111100" "10111110000001010100010110101111" "00111110111011001011011000010001" "00111101100101011101000011100101" "00111110111011111011101010000010" "00111110001100111101000011000110" "00111101110111100001011000110111" "00111101101011011000000100010001" "10111101001000011000111101001000" "10111101110011110000000110011111" "10111101111000001101100101011001" "00111110101010110111100101000100" "00111111000000100110010010110000" "00111111101111100011100011110011" "00111110001010010100111101111000" "00111110100110000000001110010110" "10111101111100011011101001001100" "00111101011110110110010000010111" "10111101000100001101101100001111" "00111110001010101100001100100001" "10111100111001000100110001101010" "10111111001000011000101000110001" "10111111100000001101011100000011" "00111111110111000100001001101100" "10111111110101000011010100011010" "10111111011010101111100101011110" "00111101010101010101000010001000" "00111111010111000000011000000111" "00111111000011000111000011101100" "00111101000110000001111111110010" "10111111010101100101001101001101" "10111111000111010011001101110110" "10111111101101100011111011111000" "01000000000100110110100010110011" "10111110001101100001010001000010" "10111111010011100010101101011001" "10111111101101001101110011101111" "10111110110011011111100100101010" "00111110101010111101110100000111" "10111110101000111011000101101101" "00111110100010001110110111110010" "00111110101010010100100000010010" "00111111100011011000110011011010" "00111111110100010110101001100011" "00111110101011101001001110100001" "00111110010010010100010101101101" "00111101010100000010010000100101" "10111111100100001110001101010111" "10111110000010010011001110101110" "00111110110110010111011100011100" "00111110100011000000001001101010" "00111110100001001000100100011111" "10111110111101001000111000011100" "00111111010110000101000010110111" "00111111010001010100101001001011" "00111110100010010110011011010110" "00111110101010100100001000001111" "00111110100000001000001111100010" "10111110101111110101011101001111" "10111110000010011001101110110010" "00111110101000010101001000011000" "10111110011100100011010110000111" "10111110000001111000111100000101" "00111111001010111101101001111000" "10111101001101100001011010110000" "10111101110100110001101110011101" "00111101110110010000000101100100" "10111110010100101100110111101010" "00111110100000100111011011011010" "00111110101101101101110001001111" "10111110110011011001111010111111" "00111110000010000101001000010000" "00111101100110111000001000111111" "00111111010011110000110110111000" "10111111100101000011111110101011" "10111111000110101111010010000010" "00111101011110100100011101110110" "10111110110100100101100000001100" "00111101001000111111110011100101" "00111110011110111011100110100110" "10111111001010000010110100011111" "10111110111111100110110010111011" "00111111100111000000101000110000" }
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
    id 24 \
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
    id 25 \
    name sum_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_6_out \
    op interface \
    ports { sum_6_out { O 32 vector } sum_6_out_ap_vld { O 1 bit } } \
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


