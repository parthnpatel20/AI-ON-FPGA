# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 88
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod19_layer1_weights_16
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111101110001010101100111110100" "00111110111010110000001001001110" "00111111101010010110001110100000" "00111111011111001100011000110001" "00111111000111001111001000111011" "00111111101010001110011011110001" "00111110000110100001110101101010" "00111111001101011101011000010001" "00111111011100110010010000111001" "00111111011100111110101101110011" "00111111001000100001010101111111" "00111111100100111010000100011011" "00111111100000101000111011011010" "00111111101010001011010111001010" "00111110111011011110011100111101" "00111110100100010011001101001000" "10111110010100011001110100010001" "10111110101101101011010011111100" "10111110011010001100101111111010" "00111111000001111011111100001111" "00111111110001111101111010001010" "00111111101100111110111111111011" "00111101100000111101100111101111" "10111110110110110001000101000001" "10111111001111000101000000100000" "10111110100111100000001010111101" "10111111000011101000101001010110" "10111111010010111110110111110101" "10111110111100100100011100011011" "00111111010000110000001011010000" "00111101110001110010110010100010" "10111101111101100000111110000111" "10111110100001010000000011011110" "10111110101101111000110100110001" "10111111000000100101010010001101" "10111110010001101111000100001110" "10111110101100111001110101101110" "10111110000000000011000110101010" "10111111001110100001001000000010" "00111101101100001000111100011111" "00111110011001110000110001010000" "10111101101101101001110010101010" "10111100001111010000100011001010" "00111110100001100001110001001110" "00111110101001100110001000011110" "00111111001000101100000101000101" "00111110101110000110101000100000" "00111111000000101000010001100000" "00111111001010010001101011010000" "10111110000101011100011100001000" "00111110011111010010011100011110" "00111110111010101000101110000101" "00111110101011101101100010010111" "10111110100010010001010010011111" "00111110101000011101110101100001" "00111110110100110011010100011001" "00111110100001001111111111001010" "00111111000000101111110100011110" "00111101100110011110011101110101" "00111111001001000111110011000001" "10111111110101110011111011001010" "00111111000001000011101001101100" "00111110000010010011001111101000" "10111110101001110110010101010011" "00111110010001001101101010101100" "00111110111111010101000000011010" "00111111000100110000001101001001" "10111110010000010001011000101010" "10111100111110101000000001111110" "00111111001010011110001101111100" "10111111011001001010110001001011" "10111110111100111100010010001101" "10111110110000101000000000010001" "00111110001000100111001000100011" "00111110001001111010011101110101" "00111110000101110101111010111110" "00111101110010111001011010000000" "10111110101011110010101101001001" "10111110101100111101010100010110" "00111110001111010100101010000100" "10111110111110111001111000101000" "10111111010101100101110100001110" "10111110011110011001110001000011" "10111100101011010011101100011000" "10111110101100000001010011011011" "10111110001111100101110000011101" "10111110111000110001111001111000" "00111101110001001001000101010110" "10111111000001101010010000101101" "10111111000101101101000100101010" "10111110111010010100101010101110" "10111111101011000101010111100010" "10111111000100000000000011001101" "11000000000000001101110110000000" "10111111011100010010011011000000" "10111111011111011011100101011000" "10111101101000001000010111000010" "10111111100010001111000101100110" "10111111000101010100111011100111" "10111111110000100100110110000111" }
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
    id 89 \
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
    id 90 \
    name sum_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_32_out \
    op interface \
    ports { sum_32_out { O 32 vector } sum_32_out_ap_vld { O 1 bit } } \
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


