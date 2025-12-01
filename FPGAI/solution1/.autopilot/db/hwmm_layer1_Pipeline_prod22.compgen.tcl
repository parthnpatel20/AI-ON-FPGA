# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 103
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod22_layer1_weights_19
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111110110011000001100011110011" "10111111010000101011011110001100" "10111111011100110011111001111011" "10111110100111001011110000011111" "10111111000000101011110011000101" "10111111001011001001110100101111" "10111110100101100111110000101100" "00111110111011011101010100001111" "00111110010101001010101010110100" "10111111000011101001111100111001" "10111111001000111000110100110001" "10111111111001000100011100111111" "10111111100011110000111101010001" "10111111000001001011001010100001" "10111110010001111010101001101010" "00111110101001011111111101011100" "10111110101100110001001000001000" "10111111010111101001110001101110" "10111111000101011101111010011000" "10111111000011001011001010010100" "10111111000101000010111000001001" "10111111011010000001111000010111" "00111101110010001110000000011111" "10111110100001000010101101100000" "10111101101011001101001110101011" "00111110100000111001110110110001" "10111100110100100001011111110110" "10111110101110101010001111011000" "10111110101101000001000001001101" "10111101111101000111011111001011" "10111111011010100100101110011110" "10111101010001001010010000001000" "00111101101010110010010001011110" "00111110001001110010101111010001" "00111110011101111101001111101101" "00111111000100001011001000000000" "00111110101010010010001001000000" "10111110000100101111001111100101" "10111110100000010001111110111100" "10111110000010100010010011011100" "00111111101000010001110000111010" "00111110010011110000101010110001" "00111110101110100001100110111110" "00111110000101010101011100110000" "00111110100010010111000101111000" "00111111001010101011001010111000" "00111111000011101111001011110010" "00111110111000000010000000100001" "00111101110001100100111111111110" "10111110000010100111011110011110" "10111111011100001101100000011010" "00111110000100110100001110110110" "00111110011100001000100101010000" "00111101010100001110000001100001" "00111111001000101011000011111100" "00111111000100100101111010100101" "00111110111110010000011110111010" "10111101100011110111011100000001" "10111101110101011010110010111101" "10111110100100010110011011001111" "00111111000000101100110011111110" "10111110001010000101100000001110" "10111110000010101111101001000101" "10111110011001000000000000001010" "00111110010110111101001001100000" "00111101100110101000111100100010" "10111101010000000011100011111000" "10111100110100001111000000001000" "00111110011011011111010001011001" "00111110011000010100101111101100" "00111110110100100111100010110010" "10111110100011111110111101111110" "10111111010001001101110101111100" "10111110110110101100011001110001" "10111110110111101000000010101011" "10111110101000011101100011111010" "10111011101010000010000110111000" "10111110001000101001001100001011" "10111111001001000100100011011111" "10111111010111110010010110011100" "10111111010000110110100101100001" "10111111001000000111110110101010" "00111110010111011101011011110101" "00111101101011011000010100010111" "00111110000101101101100011001100" "00111100100010000101111000010100" "10111111000010001011001110111011" "10111101100010111001100011100011" "10111110100110010110101001100011" "10111110011011110011110001111110" "00111111010001001011011101100110" "00111110111111001110110100100111" "10111101111010101000111110101011" "00111110011110001111111001000110" "10111110100101100011001110110101" "00111110000011010000110110010001" "10111110001100100111111010010111" "10111111010000010101011111001010" "10111111001111001001000101011010" "00111111101111011100100101011101" }
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
    id 104 \
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
    id 105 \
    name sum_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_38_out \
    op interface \
    ports { sum_38_out { O 32 vector } sum_38_out_ap_vld { O 1 bit } } \
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


