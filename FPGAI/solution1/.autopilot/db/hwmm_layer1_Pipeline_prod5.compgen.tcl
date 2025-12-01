# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 18
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod5_layer1_weights_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111110100000111000110001011000" "10111111000101010111111111101010" "00111101111011000010101011000110" "10111110001101111010001011100001" "00111110100011101001100010000001" "00111111001100011111100110101010" "01000000000001110111101011100011" "00111111101100000100001011100100" "10111110010111111011100011101111" "10111100001110010111110101110010" "00111110110010101100101111101110" "00111110110001001100010111100101" "00111111110011010111111001000011" "00111111011001110010001000101001" "00111101101101011001011110000111" "10111101101101000000000110011000" "10111110111110010011000001100010" "00111101011010110010001010001000" "00111100000011001110101101011111" "10111111100000010100000111011001" "00111111110000110010111111101110" "00111111000100010001101100100111" "00111111000101001111100111000010" "00111101100110001011111000111001" "10111100100100000100000010000001" "10111101111101001101111111001100" "00111110101111101011100111110000" "00111111000010001100100110100010" "10111101011110100010100001101101" "10111111001101010101100111001010" "00111110100011100101101100111111" "00111110000101100001111011001010" "00111101100110000101011001011100" "00111110001010001001100110110000" "00111111000001100100010011100100" "10111101110111100001010011111000" "00111110011111001100101000110011" "00111111001111010000111111011100" "00111111000010110110111110110110" "00111111000011101010000100010101" "00111111011011010011110000111001" "00111110100010010101110111010101" "10111110110001110101100111101111" "00111111000011111000101101101110" "00111110001000000011010100000101" "00111110110110100010100011110100" "00111110101101101011001010100101" "00111110100101010011000001010100" "00111101101010111000100110110111" "00111101100001011000100110001111" "10111110010011011101011011110001" "10111101100100110010110011000110" "00111110110111011011101011011000" "00111111000001110111110101101011" "10111110010100100111010101010001" "00111110100010100100011100101001" "00111101011000011001011111011011" "10111110111111011010111000101111" "00111110000111110100011101011000" "10111111011000101111110000001111" "10111111010011001100101111101111" "00111110101010000100010101101001" "10111110101111001011011011001100" "00111110011111010000101101101001" "00111110100010101101110101111111" "00111110100010100110011101000101" "00111110101000011111100101111111" "00111111000110000000011101000110" "00111111001000110011001011101110" "00111110001100001000011011010000" "10111111010110110010011000110010" "10111111010000000010101011110100" "10111110110011100111010100010000" "10111110110111010100100000010100" "10111110010010000110110011101100" "10111111000001101011101101111011" "10111110000111010001010111000011" "10111100100011010101000001001010" "10111110100110111111011010110000" "10111110101001111100100001010111" "00111110110001011000000000101111" "00111111100011110110001000011000" "00111111000100110101101111001001" "10111100001010011100011101010100" "10111101100011011011011100101011" "10111101000110110001101100100101" "10111110111001000101111000101100" "10111111001101001111101110010110" "10111111101101000011000000010101" "11000000000110000011010010111011" "00111111000101001000100110111101" "10111111001111011101110001010110" "10111110100101111000011010101011" "00111110101101000010100000011100" "00111110100001010110101011101000" "00111101110000010101000011000100" "10111110101110101110001110000011" "10111110110100000110000010010010" "00111111001001110101100001101000" "11000000001100101000101111111010" }
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
    id 19 \
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
    id 20 \
    name sum_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_4_out \
    op interface \
    ports { sum_4_out { O 32 vector } sum_4_out_ap_vld { O 1 bit } } \
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


