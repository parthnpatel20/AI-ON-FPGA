# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 83
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod18_layer1_weights_15
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111110100011010110010110010110" "00111111010011101010011000011110" "00111111110000001101100101111001" "10111111100010101110000111010100" "10111111101011010101111010001100" "10111111101001111011100000010000" "00111111000011111011111000101110" "10111100000000010110010000101100" "00111110011000010000011001011101" "00111111001001101101001000111110" "10111110110001011101011100101101" "00111111001101111100111011100100" "10111110010101111000111011111100" "10111111000001110011011001000011" "10111111000111000110000000011001" "10111110001110111110100101101011" "00111100111011001000001101000100" "10111110101010011100000100110101" "00111111110001001111100001010110" "01000000000010010101010110001001" "10111110110001101000000100101100" "00111111000011100101110111001110" "10111100100100100111110000011011" "00111101100100100101001000001000" "10111110000001111000011110110000" "10111111001011000001101001110000" "10111110100110010000011000100010" "00111110010001100110110010010011" "00111110100011110011110011001110" "10111110111101000100110000001101" "00111111101110011010110011101111" "00111110110011000001011000010101" "00111110000011111010000100110000" "00111110000010110001100101001010" "00111111001010001101100011001110" "10111101010011110111100101111110" "00111110001011000000010101101001" "00111101111100011001100100000010" "00111100111100011110011001000010" "10111100110110100100100110010010" "00111111011010110100100011100011" "00111110101000100110100001011100" "00111111001111010110000111000000" "00111110011001110011001101101010" "10111111010101010011010010010011" "10111110111001011101000101111011" "10111100111011100000010011011011" "00111100011100111011010010111011" "10111110101110001011101010011110" "00111101000011100100111000001011" "00111111100101100111100000000111" "10111111110100010010100010111010" "10111111110100011011010110000110" "10111111101011011111110000000001" "10111101100000100111111101101110" "00111110100110110001100000111011" "10111110100000101110000000101110" "10111101100100011101001001000011" "00111110010101011101001110000101" "10111111100100011110111000110011" "10111111101011110011100111001011" "10111111000010001010111000101110" "10111101110100110010001001000000" "00111110101011111011001110100000" "00111111010011011001011001101000" "00111110111000000100011110100001" "00111101101001010011110100110011" "10111101010010011100110100111100" "10111110010100001101100011001110" "00111111101111111110110000000011" "10111101110111011110010011011111" "10111110100011101001011010101110" "00111111000000001111100101000101" "00111110011110100101110000111101" "00111110101010110111001010001100" "00111101110101111101010101001100" "00111110101111010101000101100001" "00111101000101111100111101011110" "10111110111010111001110001000011" "00111110110101010110000010000001" "10111111101010010100110001000011" "00111110101110010011010001110110" "10111101101100000111111000110000" "10111110001100100111101101011001" "00111110110011011100101011010001" "00111110110110000100011001111001" "00111110101111000010101101111111" "00111110110111101010101011001011" "00111111110000101110001010100001" "00111111001000010000011111011011" "11000000010100011111001010001010" "10111111111010101100010110000101" "10111110111000001101110011010010" "10111111011011110001100010001100" "10111111010101011010010110001010" "10111110111101001111110000010100" "10111110001000100111100001001100" "10111110101001110010110100100011" "10111110111111110010111111000110" "10111110000110101001101011100110" }
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
    id 84 \
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
    id 85 \
    name sum_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_30_out \
    op interface \
    ports { sum_30_out { O 32 vector } sum_30_out_ap_vld { O 1 bit } } \
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


