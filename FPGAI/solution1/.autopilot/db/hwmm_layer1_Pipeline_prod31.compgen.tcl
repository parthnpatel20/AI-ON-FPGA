# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 148
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod31_layer1_weights_28
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111110010111110000110100000010" "10111110000010010110110111001111" "00111111000011000001111100000000" "00111111101010011110110010100001" "00111111010001010110010100001110" "00111111010000100011111000111101" "00111110010011010000110101111111" "00111111101011011101110010011110" "00111111100100101100000111111001" "10111111010011110101010111000011" "10111110101101100111010001110000" "10111110100010000100001001011100" "10111110010000110010011000010010" "00111110101010011100011001111001" "10111110110111001101001011110101" "10111110101000001011010100101000" "10111110001000000110111111110010" "00111111000001001010010110100100" "00111110110110101000100100001001" "10111111001100111000100000000000" "00111111000010111000101101111101" "10111110111000100000111111001010" "10111110001110011000001001010110" "00111110011111111110011110101100" "00111110000011000001110101101100" "00111101011011011010000010100000" "10111101110010101011110111011101" "00111110101100100110000100001110" "00111110100011010101000011101011" "00111101101001001000000001001001" "11000000100010111000110011000111" "10111111000110101000111110111110" "10111110001110101110001000111111" "00111101100000001001011010001010" "10111110001000110100111000101111" "00111101101000001100111010110000" "10111110110101011110011001110000" "10111101011011110101010101100011" "00111100000110100010100001110101" "00111110111011001010100000110000" "10111111101011110110001110011101" "10111101010011001010110011001010" "00111110001011011001110010110111" "00111110101001001000110000111100" "00111110001000110110110010000001" "00111111000100110100100011010001" "10111101101001001111100011001100" "10111111000001110011101101010000" "00111110110000010001100100000100" "00111100101000010011111101111000" "11000000001010110000000011111010" "10111111010011111010100101100100" "00111110111111001010010110010010" "00111110111110001111001001111111" "00111110101011000111010111011011" "00111111001010000110010000101110" "00111111000101000101011010110010" "00111110010010111110011110001010" "10111110110101110111101101101010" "10111110110111001011010011111010" "10111111101010100011111001100111" "10111110000110110101101101000110" "00111110011100001110010110110001" "00111110000011100010001110000110" "00111100100010011111010011101011" "00111110110001011010011011110100" "00111110001011010000010101000000" "10111101001111000000001001011111" "10111110101010010111011111011011" "10111110101010101111001110101111" "10111111011001101100010111000000" "10111011101110010100100001001110" "00111110000100010111011010010101" "10111100010001000010110101111110" "00111110110010001010001000011010" "10111110110011001100110111001001" "10111111001010110111100101001000" "10111111001100011011001000010001" "10111110110101010011011111110111" "10111110101010011101011100111011" "10111111010110111011011001111100" "10111111000011001100010011100010" "10111110100111010100010110101110" "00111100100101010000001101001011" "10111101010001110001111000101111" "10111110010101011001001110111011" "10111101101101000010111011111100" "00111110000111000110011010110111" "10111111000000100110000111111111" "10111101100110101011101101011001" "10111111100001010000001011000001" "00111111100100011010111111111011" "10111110111100111110010001010000" "10111111010011010011000110100110" "10111110111010000010010101111000" "10111111010011100110011011011101" "10111110101010011010101000101000" "10111111101111110100011001001111" "00111111101001000111111000011000" "00111111010100100001000111001111" }
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
    id 149 \
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
    id 150 \
    name sum_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_56_out \
    op interface \
    ports { sum_56_out { O 32 vector } sum_56_out_ap_vld { O 1 bit } } \
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


