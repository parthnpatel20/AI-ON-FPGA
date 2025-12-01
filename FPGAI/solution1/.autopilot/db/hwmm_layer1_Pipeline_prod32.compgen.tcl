# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 153
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod32_layer1_weights_29
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111110010101110000110001010001" "10111101011110010000101100000001" "10111110111010100101001011111101" "00111111100110101000011111110110" "10111101011010000110001110000001" "00111111001110100000000110111100" "10111111111010101111001100001111" "10111111111110001010111100100011" "00111110100101100101110110001111" "10111111000110010011110011000111" "00111111100100100000001111001011" "10111110101010100011110000000010" "10111110100000011101000100000011" "00111101101100001011101001101110" "10111110010010101011101101101100" "10111110001011011011101101011100" "00111101101010100111001000010111" "10111110100011011000110100011011" "10111111100010000100110001000100" "10111111101110101011011110000101" "00111111000100110111010000011010" "10111101111101000000000011101100" "00111101111101110011101000111000" "00111110110001110111111110011010" "00111110110101100000011001110010" "10111110011011100110110100000001" "10111110101010001101110001110001" "10111110010011110001011101111001" "10111111001011010101111101111100" "10111110111010111001101110110111" "00111110100001010011011000000101" "00111111001100010011000001011010" "00111101111110010001011010110110" "00111110001001110111010001000001" "00111110110100010001110110101110" "00111110100111001101100000000011" "00111110101110010010101101100111" "00111110101000110101111001011000" "00111110100100100100101110110010" "10111111010111000110111110011110" "00111101101011100010100000001011" "10111110101010001010010010110011" "00111101000110010100011011011000" "00111101100011111111000101000011" "10111111011111100001011000110100" "00111101101000011110100010010100" "00111110010001001100001000001001" "00111110101011011000111101110101" "00111111010100010111001000001011" "10111111110111010001001000111111" "00111101101110100001000100110101" "00111110110101100001001010011100" "00111101110101010101010111110000" "10111110011111100101010010000010" "10111100000001101110011111100011" "00111100000111000001001011001100" "10111110110000100100101101110100" "00111111001000100100100110010001" "00111111100111001010100010001001" "10111111010111011011110000001011" "10111110010111110010011010010000" "00111110001001001110000001111011" "00111110011101110100101100001101" "00111111001110001011101011111010" "00111111000000001111001000010010" "10111111010110100111101011001110" "00111110101011100100101001110011" "00111111010011101010110110101010" "10111101101100111000110001000000" "00111111000100000111010010111110" "10111111000101010000011110110111" "10111111000010100111010011010011" "10111110101011010100000001010110" "10111110111110110000110000111010" "10111111000001001000101000011001" "00111110111011111011000100011100" "00111111000101100101010011110111" "00111101110011110010010111000000" "00111101000001101101101101000111" "10111110101101101001000000100101" "00111110111111001011101110110101" "00111110011001010011101000111000" "00111101011010000101111010010011" "10111110101111010010100101111010" "00111110110001010001100110011010" "00111111001001110111000110111001" "00111110000011100000111111001010" "10111110010110011000111000101101" "00111110111110101111001111000001" "00111111110101000000100101011111" "00111111100010010001011011101010" "00111110101011101011100001110100" "00111100010000011001000000011010" "00111111010011010000100010000001" "00111110001000100010001111010100" "00111100111000110111111000111101" "00111111000111101001111000000000" "00111111100100011101100001000111" "00111110010011110111011010010010" "01000000000111010000000100101110" }
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
    id 154 \
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
    id 155 \
    name sum_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_58_out \
    op interface \
    ports { sum_58_out { O 32 vector } sum_58_out_ap_vld { O 1 bit } } \
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


