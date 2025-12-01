# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 48
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod11_layer1_weights_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111101110111110110000110101" "10111110100100110111001011110111" "00111111101010010000000111011101" "10111111100101110010010011010001" "10111111111000100101110001100111" "10111111100110111001100101000111" "10111111011110010100001110001111" "10111111101000101100011011000100" "00111110111000011111001100110001" "00111110111110001001010011101101" "00111110100101110011101101111110" "00111111101011001000111010101100" "10111100101111101110010000110111" "00111100010001110111010000000101" "00111110100101111001011111011001" "10111101010101111010111111101111" "10111010100000111010001001100100" "10111101111100000000101110111110" "00111110111101111011001010101111" "00111111000010011101101001000101" "00111111011010101100100110010100" "00111110010010010010001110010000" "00111011011000101100111100000110" "00111101101000110111110000011011" "00111110101001101000101001001000" "00111101111111101100101000110011" "00111110001111101100100111111101" "00111101110010010110011001111010" "10111101111000000010110010001011" "10111111000101001001111000111001" "10111010000111011111010101100001" "10111110010000101111111011000111" "00111110000010101000000111110011" "10111101011011000001101101111111" "10111100101010011100101100010111" "10111101101010000101111010100110" "10111101111011010100000001001010" "10111101101100111110101001010110" "10111101100000110100001111001001" "10111110001011001010010011111001" "10111111010000001001101100100010" "10111110000010111110110100111101" "10111101101010111101100000101111" "10111101101110111000010000010010" "00111110100010101011000101001110" "00111110001110001000000011101101" "10111101011101111101010100110110" "10111110100010011110001111110011" "00111111001110100010110001111010" "10111111000101100110010100000011" "00111110001000100101001000010001" "00111110110111100010001111011100" "10111101001001011000010011111011" "00111111011010010101100010010111" "00111111010100001100001100010010" "00111110001011101000001111110000" "00111011111011100110101101101010" "00111010101101111000110111001000" "00111110010000101000110010000011" "11000000001010101000100110010100" "00111111110100110000101011111010" "10111111101110011110101011101100" "10111111111011010100010001101101" "10111111110010000100010010110011" "10111111001010110101000110110010" "10111110100001011001101101111001" "10111110001100101100001110001111" "10111101000111010111000000110111" "00111101001111101100101011001100" "00111111110101010000001110010110" "00111111011100010101011101011001" "00111110101010000011010101101000" "00111110001011110100001110101111" "00111101110011101110010010001111" "00111101011100000111101011111010" "10111101111001101100011000011110" "10111110100110010100101101011111" "10111101101001111101000010000111" "10111101100010011000000101001111" "10111111000001010111101101110100" "00111111101000111000000011100010" "00111111100110100010000110111100" "00111110101001100000100110101011" "00111110110100100110011011001000" "00111101100100101110100010111001" "10111100100100100000010001111110" "10111110101101010100110000110111" "10111101000101101110101011100110" "10111110010010001100010001101100" "10111111100010101101111100001011" "00111111110110001110101001000101" "00111111100111111101001110001111" "00111111000110011111010011110101" "10111111001001100101110001001100" "10111110101011001011000001010010" "10111110100100110111011011011111" "00111110010101000001000101111110" "10111110101111000111110000101011" "10111111100000011110110000001010" "01000000000001010010100110001001" }
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
    id 49 \
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
    id 50 \
    name sum_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_16_out \
    op interface \
    ports { sum_16_out { O 32 vector } sum_16_out_ap_vld { O 1 bit } } \
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


