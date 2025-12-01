# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 123
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod26_layer1_weights_23
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111100010101010110100010101" "00111111001111010010000001001110" "10111101010000110001001001011000" "00111111000010110101110100010001" "00111110010000010111001001101110" "00111110100111100011000001100111" "00111111001011001100011010100000" "00111111011001001001111001101111" "00111111101011110010010000100010" "00111111100011101100001011001111" "10111111000111101000010010110100" "00111110001100001011011100110011" "00111110011000100010000111110110" "10111110100001110011101111011011" "00111110110010111000000101101000" "00111111000011010001110110010000" "00111111011001001001101010001000" "00111111000010101101101000001101" "10111101100111101101110010011001" "10111111010110101010000011001101" "10111110101000010011101010010110" "10111110100001000110000001111010" "00111110011001110100100100100101" "10111101111110100001111111000011" "00111110000100001110011000110000" "00111110110010101010100100101111" "10111011001110100100110110101100" "10111110010101010000101111010001" "10111011010110010010000101101000" "00111111100100100000100101101100" "10111111100011011110001101011010" "10111110101011010010000011110111" "00111110100000100001011111010111" "00111101101011111110001111000111" "10111110011011100110110100001010" "00111110100110110000011011100111" "10111101001001100010010001111100" "10111111000001101100110110001001" "10111110001001101100110111111100" "10111110110011000010011000101100" "10111111100101110100011010011110" "10111110101110100100011011110101" "00111110100001111010011001001100" "10111110100000000101010110010010" "00111110101101101000010100101100" "00111110111000000110101011001011" "10111110010110000011110101010101" "10111110010001000010000000110001" "00111110011001011100101001010111" "10111110101100100100111110111100" "10111111100111111010010111110001" "00111110001101101010101010010101" "10111100110000001001000110000110" "10111101110010010011011111110001" "00111111010000011011001010110110" "10111110100111101100101110001111" "00111101010110010111010011001011" "00111111000010010100110110001000" "00111111000001110111001111000100" "00111111101010010100110001101111" "10111111011100110101010100010101" "00111110100100010010101001111110" "00111110101010000111110101101101" "00111111001101000101000100000110" "00111110011101100011001111101111" "00111100111010101010100101111111" "00111110101010000100100101011100" "00111110010011101000101101010011" "00111110111101001001101001010010" "10111110110110110011000111010110" "10111111101001100110100010101101" "00111110111100011110000100110010" "00111110010111110001100101110001" "00111110001001101110000011011100" "00111101100001100101000010100001" "00111110011100100101001101011110" "00111100101010000011110111011101" "00111110010000010101110011001101" "10111110000111000001101100011110" "00111111000101010101100100001101" "11000000000000111000010111001010" "10111110101100001000000001110000" "00111110101001010011100110010110" "00111110100010111110101000010111" "00111110111000100101100011011011" "00111110110101000000100100111110" "00111100100011001110100000010110" "00111110000111000111010010101001" "10111111010111001011111100001010" "00111101000101001011101011001010" "10111110100101001010011101011100" "00111111000101001100000011110111" "10111110011010001101000011001011" "10111111000111010110010111100100" "10111111001100111001010110001000" "10111110111001110000000010001100" "10111110111111010000001100000111" "10111111000001000001101101110100" "10111111101010100110011111110110" "00111110100010111111010101110011" }
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
    id 124 \
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
    id 125 \
    name sum_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_46_out \
    op interface \
    ports { sum_46_out { O 32 vector } sum_46_out_ap_vld { O 1 bit } } \
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


