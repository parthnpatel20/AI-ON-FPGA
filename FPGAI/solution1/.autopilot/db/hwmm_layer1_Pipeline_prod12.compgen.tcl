# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 53
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod12_layer1_weights_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111100010000010001011110111" "00111111101000100100011001000101" "10111110100011111111010101111011" "10111101110001010000000000111101" "00111101111000000100011111110100" "10111111000111111111100001110101" "10111111101001111110111000010100" "10111111110001110110111100100101" "10111111011010110101111110100111" "11000000010100011110100001011001" "00111111101110011111100001000100" "10111111100100000000010001000001" "10111111001110110010101010110011" "10111101111101011110111110101110" "00111111000001000111001101001000" "00111111001111011110100010101011" "00111101110100011011111011011001" "10111110001010110111000101110111" "10111111001100001011000100011001" "10111111100111110101011001110110" "10111111001111011010101111010011" "10111110100010101010001001011111" "10111110001100111110011110001010" "10111110110000100100100011011111" "10111101101101101000110111011110" "00111110010100010101111100000111" "00111110100101101001001011101110" "10111110001111000010000001110000" "10111111000000011110000000101110" "11000000000110010001010100101101" "00111111000111001000010010111010" "10111110000011011000110110010011" "10111111001110001011011001111010" "10111110011111010101001101111011" "10111110001001100011010011111001" "00111101110110000010100001110111" "00111110111011011100001011011001" "10111101111000011110011110000110" "10111111010001111100101010000111" "10111111011110001101000011110110" "00111111011111110100000111011010" "00111101010111100010000001011010" "00111100011010100011100110101010" "10111100110110011101010101010011" "00111110010100100001000101001010" "10111111010110011010011110000110" "00111110100011111100111111000011" "10111110101010111001010111110100" "00111101010011101011010100000101" "10111111100011010001110111010000" "00111111000110000011100001000011" "00111110111100000001000111110010" "10111110101111000101101010011101" "00111101000100100110110001011000" "10111110001110000101101001100001" "10111111010010101000111010110111" "10111110010111101101010110100100" "10111111000110000110111010100000" "00111100001110001110011001000100" "00111110101010000110100110000000" "00111101100110010111010101111111" "00111111000101100101100000101010" "00111101100010100110111000101001" "00111111000110000110011010100110" "10111110001000101011001110011111" "00111100100101111100101010001110" "00111110100100001010010110110010" "00111110010011011001000010011101" "10111110001101100101011111000100" "00111111000101110011010001110100" "00111111110001110011100000100101" "00111111010110010111110000101111" "00111110110101101001110011011000" "00111110001011101010110101111100" "00111110101110011001000111011010" "00111111000000100111111000000000" "00111111000000000010001011010110" "00111111010010110001110011100011" "00111111000010010100000110101011" "00111111010011011010000011010110" "10111110001111110110001000100110" "00111101110101001011001011110110" "10111101000001110101000010110100" "00111110101111101101010010111000" "10111101010000100000001100011101" "00111110101011110000001001000001" "00111111000001011111010110110111" "00111110110011110010010101101110" "00111111000100010000110011001000" "00111110110110000100000110110011" "10111111111101000110100111011100" "00111111100001010000111010111000" "10111111101000101011100111110010" "10111111010011011010000011101000" "10111110001110011011100000101000" "10111111000111111100001101101111" "10111111100100011110101011110011" "10111111100100010110111000000011" "10111111101110110110011111101011" "00111111100001111011110000010011" }
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
    id 54 \
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
    id 55 \
    name sum_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_18_out \
    op interface \
    ports { sum_18_out { O 32 vector } sum_18_out_ap_vld { O 1 bit } } \
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


