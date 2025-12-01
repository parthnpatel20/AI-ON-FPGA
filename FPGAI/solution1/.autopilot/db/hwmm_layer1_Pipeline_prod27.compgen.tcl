# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 128
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod27_layer1_weights_24
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111100010100111000110000101" "00111111011010101101110111111000" "00111111100111010010100000010111" "00111111101100100011001101110001" "00111111101100001001001011000010" "00111111101111010100100101111101" "00111100111100001111110111101111" "00111110000011101011011010011000" "00111110001010010101000001000110" "10111111100001100001001011001100" "00111111001001110101011101000100" "10111110010100110000111001011111" "10111111000111111110101101100011" "00111101111110110110010111011101" "00111110111001000001010100000011" "10111110000011011010000100010011" "00111111001100101111101011000111" "10111101100101100110011110110101" "00111101000001111001101110100100" "00111110100111111111100010000010" "10111111100011110011101000101010" "00111110011011111101110010101101" "10111110100010110000000101001101" "00111101111100011001000011110100" "00111110011100110100110011010010" "00111110110001001000100100111100" "00111110100000011111001111001011" "10111110011011110101001001010001" "10111110100110100110101110110010" "00111101111101011111001110011110" "00111111101000100111110110100110" "00111111010111110010001010100001" "00111110001100110111011100110100" "10111110100011111100001011011100" "10111011101011100110110010010000" "10111101111100010110000000000010" "10111100000100110000110111110111" "10111110011100010100010100000100" "10111111000010000100001100000011" "10111111100111011011101100100110" "00111111101001100001110010101011" "00111111010101000010000000011011" "10111101100001110000100010001101" "10111110001101000010001110110110" "10111110111001100001001101000010" "00111110110100000011000000100001" "00111110110000101111100101000000" "00111110011111110110111101101010" "00111111000111111011100101111111" "10111110110001001100111010111000" "00111110101111101100100110111010" "00111110000101100000010011111100" "00111101001110110011000111101101" "00111110100101000111101111010100" "00111111001010111111000100101110" "00111111011111011011010111000101" "00111110001110100011111101101001" "00111111000101100001101101111000" "10111110001101100110010001101001" "00111111110100010011100010110001" "10111111110101101011101011100100" "10111110101111001111110011010001" "10111110010010101101001101100111" "10111101101101110111110001011110" "00111110101000110110011100001101" "00111110110001100010100011000111" "00111101001001001001101111111111" "10111101100110110001101001011111" "10111110000101100111000100001110" "00111111100001000011110111001011" "10111111000111000101001101101011" "00111110010010011001010011101110" "10111101000110100100011001101110" "00111110101101011010101011111010" "00111110101010010010000101101100" "00111111011110000001011100010101" "00111111000011010010001110010000" "00111111001000111001110010100100" "00111111010110011000010110100111" "10111110010000100001011100100010" "10111111100010111111100001011100" "00111101001000010101111110111111" "10111101101000011001110100010011" "10111110001000010110011001100110" "10111101000110001110000110110100" "00111011111111110100111101110110" "00111110110010111011110001000001" "00111111100010100000011011100011" "00111111101000000101110000010100" "00111101100011101010001011101100" "10111111100001110010001000011010" "00111111011101010011111110111110" "00111110101111111110000100010101" "10111110101001000011010011100001" "00111110100101100010101101010001" "00111110000010100001000100000111" "00111111000110111011101001000011" "00111101100100101011111011111000" "10111111010100111001011111011110" "00111111111001111000101010011001" }
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
    id 129 \
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
    id 130 \
    name sum_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_48_out \
    op interface \
    ports { sum_48_out { O 32 vector } sum_48_out_ap_vld { O 1 bit } } \
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


