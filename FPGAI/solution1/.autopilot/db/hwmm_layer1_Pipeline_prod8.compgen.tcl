# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 33
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod8_layer1_weights_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111110110001110000001101100111" "10111111011001000011111100010001" "10111110011011001101110101000101" "10111111010001010100111100001101" "00111110001100110001010011110000" "00111111010100011100101000000001" "00111111001001010001111100010100" "10111110111100111001000001101111" "10111111010011001011111111010010" "10111111100010101010111111010101" "10111110111011111011011111110010" "00111111100000011000101110001101" "00111110011100000100000011111010" "10111110110010000011110010011110" "10111110101100110001011011110111" "10111110010100011000111101101111" "10111110001011011000101000111101" "00111110110110001100000101001001" "10111110100011110010101101100000" "11000000000001000101110100011110" "00111101100100100110110000001100" "00111110111100010001100110010000" "00111101110000011011100110000110" "00111110111101101100011100000010" "00111111000011000110100111110011" "00111111000000111001011010001011" "10111101101000011001100110111011" "00111110101000110111101011000010" "00111111001010110100111101110111" "11000000100101000000001110001101" "00111111101000010010011001001100" "10111110010011111101000110011010" "00111110101110000000100011111011" "00111110001000011010111000111111" "10111111001000000011110000001100" "10111110000011111001101100100110" "00111101110011111001101001011110" "00111101111101010010100000000101" "00111110100111001100010011011110" "11000000010010111111000011001111" "10111101100010111000111001101101" "10111111111111110001101000100100" "10111111110011101001001100101110" "10111111101011100011100100001101" "10111111001101011011011100101001" "00111110101000100001000101110101" "10111101100111110110110101010111" "00111101000001001010011110010111" "10111110110101100001011100011110" "10111110101000111001100110011111" "00111111101111111011001011101001" "00111110001100011001011011010110" "00111110101011110110111011111111" "00111110101111011001111111111111" "00111111001000000110110111011000" "00111110000010101111111011011000" "00111101110000111110000011100000" "10111101100101111010100111010011" "10111101110001101001101110100111" "10111111001000000100000101101100" "00111111101110110101111010101110" "00111110100101010101011101101000" "00111111010100010101011001001111" "00111101001100110001010110011110" "00111110001111111111001111111010" "10111101011111110101010101010001" "10111101000010001001000011110011" "10111110010010000001100110010000" "10111110000000111111001010101011" "00111111100101100001101011011101" "10111100110010101100100100001101" "00111110111110000110111110101001" "00111101011101010101001110101111" "10111101111010001100110011000100" "00111100110010111100100010000111" "00111100101110100001110100110111" "10111100001100101001010111001011" "00111110110001111111100011110101" "10111111001100101101110110111100" "00111111100010001001100000001101" "00111111001001111010100111011110" "10111110000011000011011101111100" "10111110100001101111110100010001" "10111110110011001001010101101111" "10111100111011001101101100011000" "10111101010111001010000000100111" "10111110110111111100111011011110" "10111111000000101110010111011101" "10111110000101110010100010010001" "00111101001001001001010010110111" "10111101101001111100000010011111" "10111111000101001100111010011001" "00111111001010011001010011010110" "00111111000110010011111100100010" "00111110010100111111011100000001" "00111110001001001011001000101001" "10111111001110101010111010011110" "11000000001001101001100000110100" "11000000010101101110010101101011" "00111101011110100011011111100011" }
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
    id 34 \
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
    id 35 \
    name sum_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_10_out \
    op interface \
    ports { sum_10_out { O 32 vector } sum_10_out_ap_vld { O 1 bit } } \
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


