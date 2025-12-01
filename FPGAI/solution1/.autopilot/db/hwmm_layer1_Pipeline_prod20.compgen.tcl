# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 93
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod20_layer1_weights_17
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111110100100111110000111101110" "00111111101101000101110110111010" "00111110101010111011111100000010" "00111111110001101011000111001111" "00111111100111011011110101100101" "00111111001100111111111011011101" "10111110101011101000101011111101" "10111110001101111010011111101111" "00111111000001111011111001000001" "00111111001011111010000001100000" "10111111000001110110101010110101" "10111110110001001110000111010001" "00111110001101000111100110011000" "00111111001101001100110011111010" "00111111000000101110011001000001" "00111101001100011101011110100110" "00111110011101111001000000001011" "00111110111111000110101011010101" "00111101100110110010100001101110" "00111111100010011101000100000100" "00111110100111111110000000100110" "00111110110111100110001001110110" "00111011110100010101001001100000" "00111110110100111110000010011110" "00111111001110011100010111000001" "00111110011110001110101001010100" "10111100110000011101111010110101" "00111111000110001110100101101110" "00111110111110111100110010000001" "00111110101010001011011000110001" "00111111000100010000010101011010" "10111101100110010110111010110111" "10111110111110001100100011100000" "10111110011000100000011111001110" "00111110011100110101111001101110" "00111101100000101100100000011101" "00111110010001001011111000011100" "10111110101000111010011011001010" "10111110011101011101000000010010" "10111110011001100100011000110010" "10111111001000000110101011000100" "10111110101010101010000110110101" "10111110111100011101010100101011" "10111110011100010111010010100100" "00111111001001111010010101000101" "10111110110100110001000011011001" "10111110101010111101111101000100" "10111110011001110101011000110000" "00111110110100100010110011101110" "00111111100010001011010001101010" "00111111001111110110010100100110" "10111110001000111101101001110100" "00111110000111110101000011100010" "00111111000111010111101001000110" "00111111010010010000011100100101" "10111110101001110001101100010111" "00111110001010101100001011100010" "10111101010011111111110000011010" "00111111010000111001010001101100" "00111111110110001011101101111010" "10111111110001101101010000001110" "00111111010001011000010101101001" "00111110011011111000101000100001" "00111111001001101110000100011111" "00111110101101111001101001011100" "10111101110001010110110010100000" "10111101100001011111100111011010" "00111101110001101011010111111101" "00111110101001101000010111100000" "00111111001110101111011001000101" "00111110000011101001110000010111" "00111111010011111111010000111011" "00111110101000011011110000100111" "00111110100111101001100010100001" "00111111000010111011100100000011" "00111110100110100111001010011010" "10111110001101011010000001111101" "00111110100101001101100100110000" "10111110101001101110010001000010" "00111111001010001011110010010000" "10111111110000010101101001101000" "00111110101010011110111110011001" "00111110100010000111011111000101" "00111111000010111100100010010100" "00111111000010100010101010010110" "00111111000000101100110010000100" "00111110111101101011110100101000" "10111110110010110101101000011010" "10111101100110111110111101110000" "00111100110010000011011100111011" "10111111110010001111110010001110" "10111111101111111010111001011010" "10111110110110100110011100001101" "10111111011111011001111011000100" "10111111000001011010010011000110" "00111110101011000000100010101100" "10111110000110110011000101000101" "00111110110101110110111101000011" "00111110101111011101011100000000" "10111111010010111111101100000110" }
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
    id 94 \
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
    id 95 \
    name sum_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_34_out \
    op interface \
    ports { sum_34_out { O 32 vector } sum_34_out_ap_vld { O 1 bit } } \
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


