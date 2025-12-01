# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 63
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod14_layer1_weights_11
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111100110010110001001100111" "10111101101111100000010111011001" "00111111111110101111101011011110" "10111111011011110101011100100010" "10111111011000000001001100111100" "10111110010111101010110110110011" "00111110110111001101011011101101" "10111111100111101110111011111110" "11000000000101011101011101111100" "00111110001101110110011001110110" "10111111011010100111000101100011" "00111111000001010000101001001001" "10111111001101011010110001011101" "10111111000000100100111110010110" "10111111011010110100011111111101" "10111110001100111111110011001110" "10111111010010010010111010100011" "10111111101001010011010110100011" "10111111001001111110100110110001" "10111111000011000101001011111101" "00111110100111001101111010001110" "00111101001110011111011110111001" "10111101000011100111001010101001" "10111110101111111011110010001010" "10111111000001001000111100110001" "10111111010010010011011101111111" "10111101000101001001010000011111" "00111110001110010010110111101111" "10111100001011101100111111111110" "10111111101000011101110111011001" "00111111100100101100000100010101" "00111110100011110101100000101010" "10111011101110010111000101110111" "10111100101110111001111001101100" "00111110011100001001010101010111" "00111111000100010110110000110111" "10111101010101111010010010011100" "00111101111010011011101110001100" "10111110001110011001100011110011" "10111111001110110010100011010001" "00111110011101000000001010100010" "00111110100100100010001000001010" "10111100100000001010011101100110" "00111101111111100010110010011011" "00111110011110111000100101100011" "00111110111100111001100011101000" "00111101100111110011111101000111" "00111101110111101101011101010110" "00111100101111111011010010101000" "00111110001101111100110001100101" "10111101001011010000101001110011" "00111111000001010101001011110010" "00111110001001111010010000111000" "10111100001100101111111110000101" "00111101111100001111101010111011" "00111110100010101101100010100001" "00111111000001100001100111001110" "10111101101110000000101010000011" "10111110011010000000010110001110" "00111110100000101010101000100000" "10111111000100100000101010110010" "00111110101110100011101000010101" "00111101011001011111000001100111" "00111110100100011100000001011101" "10111110011001001011111010101011" "00111111001110100111101110101000" "00111110111100100101010011101101" "10111110101010101101101100100000" "10111101110010101111001101110101" "00111110111010011100110100011010" "00111101000110110000111101110100" "10111111100101100110001011000101" "10111110111101011100011111111011" "00111110100111100101001101110110" "00111110010101111001000100101001" "10111110110001111101110000001100" "10111111010000111000010011100011" "10111110001111010011001100111101" "10111101111010110010111111111111" "00111111010111011011001101101110" "10111111010011110011100110110111" "10111111001110011101010110101011" "10111110110110010000000010110000" "10111111011101010001111111100000" "10111111100111101000011001011000" "10111111100110000100110000011110" "10111111011001111010000001101001" "10111111100011000110010010101000" "10111111101011110101001011010001" "00111111000111001101111001100110" "11000000001011001001010010101010" "11000000001001100011100010001101" "10111111100001010101000110111110" "10111111100110000011000001101111" "10111101001000100000010000001100" "00111111010000010000110100001100" "10111110001110110101111000010011" "00111111010010000000010111001000" "10111111101011001111011100001011" "10111111100011100100011100011010" }
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
    id 64 \
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
    id 65 \
    name sum_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_22_out \
    op interface \
    ports { sum_22_out { O 32 vector } sum_22_out_ap_vld { O 1 bit } } \
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


