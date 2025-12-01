# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 118
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod25_layer1_weights_22
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111011101110111110000101011" "10111111100011000000011010010111" "00111110100110110010000000110011" "10111111010010001000010000000111" "10111111101001011000010010110011" "10111111001111000111001110100000" "10111111100011011000101000100010" "10111111100011010000101110001100" "00111101110001110001000011111100" "00111111100010001111010101101001" "10111111100111010010000111010011" "00111101000001110111100101011010" "10111110001111011010111010110101" "10111111010011010111000011101100" "00111101111011111011001110001101" "00111110000101111011101111110101" "10111101100001100101111010110100" "10111110011010101011100011000100" "00111100110110111011000101110110" "00111111100010111101100110010111" "00111110100001110000111111100110" "00111110001110101101111010000010" "10111101100110000001101110110101" "00111110011111010110011001001011" "00111110111101001100000001011110" "00111111011010010100000011101110" "00111110100101000001111100101001" "00111011101011011000101100101100" "00111110000100001111100101011001" "00111111001011001101010111111011" "00111110100110000111010011111001" "00111110001000111100111010001010" "00111111000101101000010100011111" "00111110101011110110110100111010" "00111110111101110101100000100100" "00111110110101110000000101101101" "00111100000111011111001101111111" "10111110101100110010110110110100" "00111111000101111101000010010101" "00111111100000010111100100011011" "00111110001110110100100101100101" "00111110100000110011010011010000" "00111110111010001001101111011100" "00111110100101011010010101111011" "00111111000100011001011000011101" "10111011001000010010100000101111" "10111101100100011001111001111000" "00111101110000000110110001000110" "10111111000101001100000001001001" "00111111100100010110100000111101" "00111111011010011011010111010011" "10111101111000100111100010010101" "10111110001000011010001100101001" "10111110011000010001111100011110" "00111110100111110110111000001001" "00111110001000110101101001110000" "00111110110010010011011111100000" "10111101111111011000001101110100" "10111110010000010001101000010101" "00111110110000010011000111011101" "01000000010001000011101011100100" "10111110101000001111111000000101" "10111110101000001100010100001011" "10111110101001001110111101010110" "10111110101100101110001101010111" "00111110100001101100100110101011" "00111110001111000000001011111110" "10111101111100010010000001010011" "10111101011110111010010100001011" "00111111010010101110011001000111" "00111111111010001000110000111000" "00111110010000111010101100010101" "00111110100100111010011101010000" "10111101110101000011001010001101" "10111100111100111100010101110111" "00111101011001001010000101100100" "10111101111100001000110011100100" "10111101011100011000101101001100" "00111110110100111011100111000111" "00111111101001011110100110100011" "00111111110010110111010000100111" "00111111001000010000001110000111" "00111111011111010010111111101111" "00111111010110010010001110111011" "00111110101000010110010011101111" "00111101001110000000111001111001" "00111110101100011000100100000010" "10111110010010010100010010110100" "00111110111000010000001101010101" "00111111111100011100111011011100" "00111111010111000010000000000011" "10111111010010111100100100111111" "00111110100011101000001110001010" "00111111000000010101101110110111" "10111101101010010101111011110100" "00111111101001101011011111111010" "00111111101001111010100111101001" "00111111101000000111011111100010" "00111111001001111000001111011101" "00111110111111110010010100001100" }
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
    id 119 \
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
    id 120 \
    name sum_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_44_out \
    op interface \
    ports { sum_44_out { O 32 vector } sum_44_out_ap_vld { O 1 bit } } \
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


