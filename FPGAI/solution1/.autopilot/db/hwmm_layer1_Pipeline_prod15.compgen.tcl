# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 68
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod15_layer1_weights_12
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111011000100101111001100110" "10111110110001100010010011011110" "10111111000000110110100111000100" "10111111100000100000101001011110" "00111111001000000110111011100001" "00111110110101110000000011111000" "00111111110000100101100111000011" "00111110111010010100010111011010" "10111111000110110000111101011000" "10111111110101000000000110011000" "00111111101111111111110110001100" "00111111011100010011100011011010" "00111111010111100110101100110101" "10111101111100011011101111001001" "10111110001110010101111101100010" "00111110111110110000111011100100" "00111110111101000011100001100000" "10111110011001001010100111010101" "10111110110111110111010001110101" "10111111010010111000000110011100" "00111111010010110010010011110101" "00111111101000010011100011000001" "10111111000011001000111110111101" "10111110111010010110001011001110" "10111110101101101110111001011010" "10111101110011000010000110110010" "00111111001010110010001010100110" "10111110001001101011111111111000" "10111101011100001000011100111111" "10111111011110110100111110001001" "01000000010101011000100011010101" "00111111001110111101011001101101" "00111111000100100110010110001101" "00111110100011010011100110011001" "10111111000010000110111100001111" "00111111000001110111011011001011" "00111110110011010000011111011011" "10111111010100100000000110001110" "10111111010110000001010111000001" "10111110110001010001111100000101" "00111111100000010011000110111010" "10111110010011110011011111010100" "10111111000011001000101111101001" "10111110110101100110100111110000" "10111100000100111010101100000110" "00111111001010000010110110010101" "10111111000001000100111110001011" "10111101111011011111111100000111" "00111100001000001110001100100010" "00111111101101100001101000110100" "01000000000000001001101100100010" "10111111011011010100101010110111" "10111110111010111011010010111101" "10111110001111100100010101000110" "00111111000111001111010000010101" "00111110100111010010010000100011" "00111101111011111111010011000010" "00111110100110100010001001010010" "00111110100111000111100011111111" "00111101011111101011111100010001" "10111111011111000101111000011010" "10111111101101100000101111101110" "10111110001010010000110011000111" "00111111000101111111100111111011" "00111110101100100111010111101100" "10111110010101100110010110100001" "10111110010111110010100011111110" "10111110011100100001110110000111" "00111110101110000101101000010000" "00111111000001000101011110111010" "10111111000000001101010000010001" "10111111011000000001010100011100" "00111110101011111101010011101111" "00111100110111010110000101100101" "10111101111000001011000001011011" "10111100000101010100011001100000" "00111101011111100100001100011010" "00111110101110000101001100100110" "00111110010101110010000001110001" "10111100011110010111011001100101" "00111101100001011010100111110101" "00111110100011111011011000110110" "00111110101010101100101101001001" "00111100111000011100010111000010" "10111100010001101100111000100111" "00111110000100011011000001010011" "10111101100000001110001000101001" "00111101101010001100001011100100" "00111101011101001000100101110011" "10111111001111000100010011001011" "10111111001001100111110011110110" "10111110101101011011111001101011" "00111110101011011001101010010101" "10111110111101110110010011010111" "10111111001100110100010010101101" "10111101110010011000011100100101" "10111110100110100100010100100001" "10111110110111111000000001101010" "10111111100000101010100100000000" "00111100000001010010100001101110" }
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
    id 69 \
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
    id 70 \
    name sum_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_24_out \
    op interface \
    ports { sum_24_out { O 32 vector } sum_24_out_ap_vld { O 1 bit } } \
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


