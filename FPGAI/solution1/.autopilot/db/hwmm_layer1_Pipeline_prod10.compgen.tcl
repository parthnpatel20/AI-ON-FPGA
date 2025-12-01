# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 43
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod10_layer1_weights_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111010000010011100000000111" "10111111101110011100110001101011" "10111111101001101001011100001010" "11000000000100101110101000100010" "10111111101111110101010110010100" "10111111011110010110111001001111" "10111110101000011010100011101100" "10111111100000100100111001000000" "10111111001111001000101010011110" "00111111011010011010111100010010" "00111111010000101000110000100000" "00111111101101001010101110001000" "10111110100011101110001101011101" "00111101111110001101110110100010" "10111011110101010010100110101100" "00111110011011111001000001111000" "10111101110010100011011000011011" "10111110001111001100000000001001" "10111111000011000001000011010011" "00111101001101011111111011100010" "00111100001011010111111111100010" "10111101111011110011010001001100" "10111110010101100001100100001111" "10111110101000011001000011100111" "10111110000010101001100000010010" "10111110000010001100001100011100" "00111110001100001010001110100000" "00111101100110010101111110001100" "10111100100001010000110110011111" "10111110100001100000010101101110" "00111111000000000110001101101101" "10111101110000011000001100001111" "00111110000011100111100101101011" "10111110110000101101011000010101" "00111110001001001110101010111110" "00111110111001100110000000001101" "00111111001001001100010101111100" "00111110000100001001010000000010" "10111101111100101011011001001001" "10111110011000000001100100101001" "10111101101000001101011110011000" "00111110001111110100110110011001" "00111110001111000010111111011101" "00111101100011101111010110000100" "00111110110011011000110011011100" "00111110101001100101110110010111" "00111110111000001011010010111101" "00111110001000011010000010000110" "10111111101001111110110000110101" "10111100110101101100011000100000" "00111111101001001101110100000100" "00111101101101010000010010101010" "10111101101100011001100011011001" "10111110101000100001011110010000" "10111111000100110110001101000000" "10111110101010010011001100010000" "00111110010001000101001100001101" "00111110101101100011011100101011" "00111111001010100000000101000111" "10111111000101011110000010001110" "00111111111111000000111011001000" "00111111000100101010011101111100" "10111110010000010111111111011110" "10111110111010100111011110010110" "10111110000000011011011011110000" "00111110100111001101011100001001" "00111101000011011101111111100000" "10111101101100101110010010011111" "10111110110011100001000101101101" "10111111111010011001110000010010" "00111111011000110010110000100001" "00111101111111111001111001000111" "00111110100101010111010110101011" "00111110001101101011111101101011" "00111111000000001000100100111011" "00111110111100111111110101000011" "10111101101110101000101100000001" "10111110010101101011100110110100" "10111110100110000110111011101011" "10111110100101010100101100111011" "01000000000110111100001101110100" "00111111000000000000000010001110" "00111110011000101110000110010101" "00111110001001101001111101111010" "00111101110101000000011110100111" "00111101111011011011011100010010" "10111110100100101100011011101100" "10111110100111001001001010010000" "11000000000001111101000111001000" "10111110110010000000111101110111" "00111111110111011110001011111000" "00111110000001111101111111100110" "00111110011101100111111111001000" "00111110111111001001111111100010" "00111111000100001000000000000111" "10111111001111101110000000001010" "10111111101001011010001011000101" "10111111000100111101111001110001" "10111111001001011000000010001101" "10111111101000001100011011101001" }
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
    id 44 \
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
    id 45 \
    name sum_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_14_out \
    op interface \
    ports { sum_14_out { O 32 vector } sum_14_out_ap_vld { O 1 bit } } \
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


