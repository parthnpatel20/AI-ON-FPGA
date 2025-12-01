# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 98
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod21_layer1_weights_18
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111110011111011111111000101010" "10111111010011110011011111101000" "10111111100100100101111111100101" "10111110000101001100110001100100" "10111111100111001010010101010111" "10111111101101111001100111000001" "00111110110011110010100100110101" "00111111001101001000011111111010" "00111110001111101001001010100001" "11000000001111111100110100111001" "00111111100100110100101001111111" "10111110100000001000110111111010" "10111111100001001100001010101111" "10111111000010011010110110101111" "00111101010110010011101110100111" "10111110011101011101000110110111" "00111110000101101000010000100010" "00111110100001100110101101011111" "00111110101101011000011001101101" "10111111100010000001001000101000" "10111101000001010010001000010010" "00111110001000101001001101000100" "10111111101001010011101000111001" "10111111100000000000101100110101" "10111101110010110001110110011101" "10111110101100110110101000110011" "10111110000111101001011110100101" "00111110100001111000011100000100" "00111110001001100010000111010110" "10111111110100110111101011010101" "00111110110011001100100100011110" "00111110101110010001001011111001" "10111110111000110110000011010100" "10111111010100011011100100100001" "00111111000111101001000111000001" "00111110001111000010001010101000" "00111010101000000111001001100110" "10111110101101100000001011001111" "10111111010010010111111111111110" "10111110100000010110101010000010" "00111111011000010111011001000100" "10111111000001101100111100110011" "10111110110101101100100011100011" "00111100100111111100000000110110" "00111111101100101000100110011111" "00111110010101000000111111110010" "00111110000011000101101100000101" "00111111001111110100100011011001" "10111111000000001100011100101100" "11000000000100101111101100100111" "10111111000000001111111011010111" "00111110000001011001010101011110" "10111110101100111001000110001001" "00111110010001001011110000100111" "00111110110110101111010000110101" "00111110010001001111000001110111" "00111101110111011000000001111100" "10111110111011011111010100010110" "10111111000111111110110110011001" "10111111100110100110001010011011" "10111111011000011000011011001110" "00111111000110101101011001110011" "10111111000001000010001011101100" "10111110100000110100001110001001" "00111110111000100010010110110101" "10111110011010111100111101011000" "10111110011101000000100001111101" "10111110011110010000110100010111" "00111111000100100000011011110000" "00111101110001111000000100001000" "10111111010101110000101000111111" "10111111000101010100110101011010" "10111101101010010101110101011110" "10111110101001111011010110111111" "10111101100110001111110000100100" "10111110001001100111011000110101" "10111110111110111001110100010100" "10111110000101001000111101011010" "10111111010010111100111010100011" "00111111101111100001100111101000" "10111111011110110101001101101101" "00111110100101101100010000110001" "10111101111001000100011010010010" "10111110010101001000100001010101" "10111110010101010001011110001110" "00111110101011011000001000111100" "00111111001111101110010011111100" "00111111001100001111000010000111" "00111111100011001000001011100010" "00111111110101001101011000101001" "10111111001001100111111010100010" "10111111100000110010000010001111" "10111111000100000111000011011111" "10111100100010011110111010100100" "00111101010101000011011101110100" "00111110101010001000111100111101" "10111111010011010110111001010000" "00111110011010010111000001101011" "00111111101011110010101000001111" "00111111100110010001011110100010" }
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
    id 99 \
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
    id 100 \
    name sum_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_36_out \
    op interface \
    ports { sum_36_out { O 32 vector } sum_36_out_ap_vld { O 1 bit } } \
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


