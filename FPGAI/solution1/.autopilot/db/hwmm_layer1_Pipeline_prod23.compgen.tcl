# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 108
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod23_layer1_weights_20
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111110110000001100101111110010" "01000000000010111100010100011101" "10111111011100101001011000101001" "00111111010001110011100001100000" "00111111010110111100110110011001" "00111111100101101111111101101111" "00111110101010101100110000000100" "10111111010010001001110100100010" "10111111010110100110101001101001" "10111110101110000011000100011000" "00111111110001101000111011010010" "10111110011100110001011100100101" "00111111011111011001111001010000" "00111110111001101000100011110011" "10111110101011100010001010011010" "10111110000101110101101001101101" "00111110101001010101000100100101" "00111100110111100101011010110111" "00111110111101010110001000000010" "01000000000110001101011111101000" "01000000001110011101110000110001" "10111110111110110001011000111101" "10111101010001001000100101011001" "00111101111110010101111001101001" "00111110100100001101010100110110" "10111110111110001001001110110100" "00111011110010100111001110011110" "10111101110111000011111110111000" "10111110111100111001010001010110" "00111111011111000110000000011111" "00111111100001001100110101100010" "10111110110000000100111101000000" "10111111001010101110101100011010" "10111111000011010100001100010100" "10111110000111000111111100101111" "10111100000101000101011010100000" "00111101101001000101001100111011" "00111101000110010011001001100101" "10111101011001000010110011110101" "00111111000111111101101011000110" "00111111100000000010001101111101" "10111110011101101110001100111011" "10111110011111110100100011100011" "00111101100010000101101101001100" "00111111010011010101100110100001" "10111001000101000010011100101101" "10111101100101000101110010001110" "10111110010001111001101000110101" "10111111000100000000001110110101" "00111111101101110100101000101011" "01000000000101011001100001100001" "00111101110100001100001111010011" "00111111000111101111110010100010" "00111110111111110110010101110101" "00111110101111000101110110010111" "00111110110011110110110010010110" "00111110110101100011110011111111" "00111110011101100111100101100011" "00111111001011110010101111110001" "00111111100000111100010011110011" "00111111110011001101000011011001" "00111101100010100111111011001110" "00111110101100100100101000010011" "10111101101110011011110110011100" "10111101110010001000010000000000" "00111110111110100100110011011010" "00111111000010001110011111110101" "00111111010000111010100000100100" "00111111000000101001111100000100" "10111110101001010001001110000111" "10111110100111100101001111000110" "10111101011010111111010100110101" "10111110010011111011011011000101" "10111101010011001010001110000111" "10111111000100011100110011111101" "10111111001010111100001000111001" "10111110110000000010101100101111" "10111110111001001101111001101011" "00111100111000110000001110010100" "10111111010001010000111101011000" "10111111000001001001010110000111" "10111110000010100011111100110110" "10111110010111001000000111111111" "00111100000101101101111110010111" "10111101011100000000011100001001" "10111111000001101011001010011101" "10111110111101100111011011111001" "10111110100011011101010010100111" "10111111110000000101110001100001" "10111110010101001110001111010100" "10111110100011000001011001000010" "10111111100101111110011100101100" "10111111100101110101110001111111" "10111110111010101010011001100010" "10111110100011101100110011011111" "00111100101001011001100100101011" "10111111001111011010100111110100" "11000000000011010101010001000100" "10111111000010110111101100001110" "00111111011010000000010101000100" }
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
    id 109 \
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
    id 110 \
    name sum_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_40_out \
    op interface \
    ports { sum_40_out { O 32 vector } sum_40_out_ap_vld { O 1 bit } } \
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


