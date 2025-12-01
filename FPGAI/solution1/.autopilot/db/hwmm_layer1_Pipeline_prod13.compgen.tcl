# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 58
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod13_layer1_weights_10
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111010110010010000110000000" "10111110100111101000000001001010" "10111110101111000011010111100010" "10111111100101000111010110111111" "10111111100010000110111101111010" "10111111111011000011101101001101" "10111111110000100000101010111100" "11000000000000101111110010011011" "10111111111001100001011001100101" "10111111100100100100010010101011" "10111101100001101001010111101101" "10111111001111011100100001010101" "10111110100111110110110000011111" "10111111100011111101110000000100" "10111110011010001011010110111101" "00111110010111100100001001101100" "10111110111010110010010000100000" "10111101001011001110001100110000" "10111110101000011101000011010111" "10111111100100010001100111111100" "00111111011100000010100111011101" "10111110010110110101100011110011" "10111110111010011000001010110011" "10111111001001000000001000001110" "10111110001011110000011101111110" "10111110100111010010110101100100" "10111101011010110100111111101110" "10111110100011001100111110000111" "10111110100011101100000110000001" "10111111010110011100110111100111" "01000000000000111011100100000000" "10111111111000010011111000101111" "10111110110011000101001010101100" "10111100111101011110001001000001" "10111110100110100111100000111111" "00111110000111000001001000110000" "00111111001010111111001111101000" "00111111001110000000000110100010" "00111110111101111100111000001111" "00111111011011111101101010111110" "00111111010101011000110110001010" "10111101000100110010011110000110" "10111101110011100101111111011001" "00111110100010110111011111010100" "00111110111001011111010110010000" "10111110000111000110101101000111" "10111110110000010000101011011010" "00111101111001000011111000111100" "00111110110100100101100010100100" "00111111111011011011000000110101" "00111111001110010100100000101000" "10111101101011011011000011100000" "00111110011110101000010001011111" "00111110011001110010111101000101" "00111101100010000111100011010011" "10111110000101111111011101000101" "10111111001000000000101000001000" "10111110111101011101100011101110" "10111101110011001110111000011001" "10111110001100101011101000100100" "00111111101000111000011010110110" "10111110101111001111100011001111" "10111101111001111000111011010011" "10111110000010001010001011100111" "00111110110101011100111111010001" "10111101100000011000010110010010" "00111110001111011001101100110110" "10111101011000110111011011111110" "10111111010110010111101010101001" "10111111111110010100111000010100" "00111111111110110000101110001101" "10111110010010010111100101110100" "10111110110000100100010011100110" "10111110101010010100101110111100" "10111110101111101110011000111101" "10111101111010111011101011010010" "00111110100110000110111101010001" "00111101010010000010011111100001" "10111101100110011010011110111111" "11000000000010101001001111101001" "00111111101100110000011010100000" "10111110100000100111001110111110" "10111101011110010011001101010010" "10111110000111100101010001100110" "00111110011110100110110110100100" "00111110101100010000111101000101" "00111110000111000100111100000101" "00111110101010100001000010101101" "10111101100101000010010011001011" "11000000000101011111011011011010" "00111111010111111000101000011110" "00111111011011110101111101110010" "00111111001101111001101101001110" "10111101111110011110000000111110" "00111110010001100111000011011000" "10111111001111010100011100100011" "00111110000111101101010001011100" "10111110010111111000011101011001" "10111111010100110001010010111110" "10111111000011101010001001111101" }
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
    id 59 \
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
    id 60 \
    name sum_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_20_out \
    op interface \
    ports { sum_20_out { O 32 vector } sum_20_out_ap_vld { O 1 bit } } \
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


