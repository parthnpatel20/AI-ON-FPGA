# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 158
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod33_layer1_weights_30
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111111100000000010110101111010" "10111110001101101001101110100011" "10111111111011011101000110001000" "00111111001111101001001011001000" "10111110011001010101101011100111" "10111110110001010000101000011000" "00111100110001111000000000011110" "00111100110111101011110010011110" "00111110100100001111100101100101" "10111111011011001100010110101001" "00111111100111011001100100111000" "10111111101000011100010000001001" "10111110100110011101001100011011" "10111110110111111100001011000000" "10111100110111010000000101111101" "00111101100001001001111000101101" "10111110101100110110010010100001" "10111111000000011111000110101010" "00111110101111001000011100101101" "00111111010011011001001100110110" "10111110101110001010000011011111" "10111101101110101001010011000010" "00111110100111001010000101101101" "00111101010101111011000011011101" "00111110000010100000001001110110" "10111110011111010100001100000101" "10111101001101011101101100011110" "10111110111111010010101111111110" "10111101110101011010010000110101" "00111110000000101011001101010011" "10111111100001100010001110000010" "00111110010001101010001010000111" "10111110011111101011110000010110" "10111110101000000011101011101101" "00111110001110111011010011010100" "10111110011001011000000001110111" "00111111000001110111100100110110" "00111110111001100111101100111110" "10111110111101111001100111110000" "10111111010110101010100000110010" "00111110110111111001011001111001" "10111110101111111001000010100011" "00111100001100100000110111110000" "00111110100010100001111011010011" "00111110000100001100010110100110" "00111110110011001100101011111101" "00111111010000110000001011010010" "00111111011001010010101010111011" "10111110100111111111110001110100" "10111111101001101100111010101101" "10111111010010110111011110000110" "10111111001111010000010100010011" "10111110100110011000110101011011" "10111101101010000001100001100100" "00111111000000111100000001011010" "00111110101110001111010110100010" "00111111010101101100010010010100" "10111101111000110100111100101011" "00111110010111100111100111111001" "10111110010111101010100100100010" "10111111001011101001010010011001" "00111101000111010011001001010111" "00111101101000010110010000100111" "10111110000000010101100010110001" "00111110101111000111011011110011" "00111110110101111010001010000010" "00111100001111011101010011010001" "10111110100001000100011100111000" "10111111000011011011110110000010" "10111111101100010001111001010010" "00111110000100101100010110001110" "00111111001110100111001111111110" "10111110100010010110111111010100" "10111110101011011010101010001100" "10111110001010010111001101111110" "00111101011010001010111100100110" "10111101001100110110000000111100" "10111110100110111111010100011001" "10111110110010001011111110101001" "10111111111000011011101010010010" "10111110110010010011101010011010" "10111111010001101010111101110100" "10111110001001101111111011011011" "10111101100000110010100000000111" "10111101000100011101101110110101" "00111110000111101101000011110111" "00111110000111001000111000010011" "10111101110101010001100111101111" "00111111010100010011000001100000" "10111111000000001000001101100111" "00111111101000101010101000110011" "01000000000111111010100111011011" "00111111001000111010011110010111" "00111110010011100110000110101000" "10111011100110111111101111000100" "10111110101011010111010000001110" "00111011011011100011001111011110" "10111110000011101010111101111100" "00111111000000000111110010100000" "00111111111110110111010010011110" }
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
    id 159 \
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
    id 160 \
    name sum_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_60_out \
    op interface \
    ports { sum_60_out { O 32 vector } sum_60_out_ap_vld { O 1 bit } } \
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


