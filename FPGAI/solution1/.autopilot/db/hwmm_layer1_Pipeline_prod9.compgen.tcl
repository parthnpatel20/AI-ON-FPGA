# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 38
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod9_layer1_weights_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111110000111101000001001000" "00111101111101111001111100010011" "10111110001110111010010110101001" "00111110100100111101110110100010" "00111111000101001011100010000111" "10111110101010001000111001101101" "00111101100011001010000001111001" "10111110010010000010101110111010" "00111101100001101100100100101110" "10111111111011011100000111111101" "10111111011110000110010100110100" "10111111111010011011111001110000" "00111110010100010010110100100100" "00111101011111001010101110001100" "10111110101101110101010011000010" "00111110100101000001000000011011" "00111110110110001111110010011111" "00111111010100101110011010101101" "00111110111001000110101010010010" "10111101110001000011011001011100" "10111111001111110001010000010010" "10111101110110110111001101101001" "10111101011111110000101001000110" "10111110100000011000001111000011" "00111101111011111001101101001000" "10111110010100101010000110101111" "00111110100011011110000000101100" "00111111010100001001011110010000" "00111111000001011100100110111000" "11000000001001111110011111100000" "10111111011001010111010101001101" "10111111010001100010011101100000" "10111110100000001111001111001100" "10111110011111011100000101111110" "10111011110110100011011000110010" "10111111010101010110101100001001" "00111101110001101100010001011100" "00111111101011010111001000011011" "00111101111000101010010110100110" "10111111100110111100100000101011" "00111101110011000110010011100011" "10111100011111110110111110110110" "10111110000101001110110010100110" "00111101110010101010100011010100" "00111110000111110100011100100111" "10111111000110100111100111101101" "10111111000000111111110101001101" "00111110110110100010010001011110" "00111110100011000011000111100000" "10111111011100000110001110110101" "10111111100111010101001001000011" "00111110101011100001100000011110" "00111111000110111011110000001000" "10111101101010110010110100010101" "10111101110010111100000011100010" "10111110111010110100000111100101" "10111101110010111111011010101101" "00111111000001001110001111000100" "10111110101100001111110100010000" "10111111101011001000000111001010" "10111110110001000100010001110110" "00111110001011101001110111010111" "00111110011011101110100100101010" "00111110100110010100010011111001" "10111110110001001110110111000000" "00111101110110101010100000100010" "00111110100011110101100011110111" "00111101010101001010100011001010" "00111111000000010100110010000110" "10111111101100010001010101011100" "00111101110110001010010101111010" "00111110100001011111110001001101" "00111101000111011101010101001110" "00111101110000111111001100100101" "10111110100000100100010100100111" "10111101100101001101001001111000" "00111110100011111010100011110011" "00111101110001101000011010000111" "00111110001001010001111000010110" "10111111100110111111001011000111" "10111111011001001100100011000001" "10111110001001111110010000011000" "00111110110101000101000100100101" "00111101101001100111101110011101" "10111100111111011101011101111101" "00111110001001000010011110110110" "10111110000000000101100111000011" "10111110101001100110010110110010" "10111111000100000001110101110100" "10111111110111010011011001001110" "10111111100000000110110111100011" "00111111100000011011111000101111" "00111110011101110000110001110101" "00111110101001111101111101111001" "10111110100101110110101010111101" "00111111001111010010000000100001" "10111110110001110110000000001110" "00111111100101011011101001000011" "10111111110111011110010101100110" "00111111100001111100111011111110" }
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
    id 39 \
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
    id 40 \
    name sum_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_12_out \
    op interface \
    ports { sum_12_out { O 32 vector } sum_12_out_ap_vld { O 1 bit } } \
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


