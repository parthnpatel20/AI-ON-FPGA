# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 113
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod24_layer1_weights_21
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "01000000000001001110000100000011" "00111111001110101111011000010110" "00111110110111011110111111000000" "10111100000110001001010100110001" "00111110110100000011100100011111" "00111111001010000011010100010100" "10111111100101001011000110000100" "11000000001110110100000111011111" "11000000100000010010100100110101" "00111111100000001001111111110000" "01000000000001010000001011110110" "01000000000011100010001100111100" "00111111011000011111101011010011" "00111110010100101111110000100010" "00111110110110111001100000011011" "10111101110000111011100110101101" "10111111001000101101010011110101" "10111111011101110101100011101010" "10111111010011110001111110101000" "10111111010010000101000110001010" "00111110001110010001011101000011" "00111111010000011111001110011111" "10111100101101110000100010100001" "00111110011001011101100110111011" "00111101110000110010101101011101" "00111110110110111001000011110000" "10111111000000110100010100110011" "10111111010100000100101001101100" "00111111000111010000011111101000" "00111110010010001100011011001000" "01000000000110000111010111111001" "10111110100110000101010110010011" "10111111000100001110110111011011" "10111110011111111110101011001010" "00111110111001010110111010111100" "00111111001110010001110000010111" "10111111010010101001011110101101" "10111111111110011010011010001011" "00111111100101001110111010100101" "00111111101010000011011010011011" "01000000000000111110111101110110" "00111111000101101000011101110001" "10111101000111010001001101001000" "00111101111111010011001111000001" "10111010111001010010000001110101" "00111110010100011100001010010111" "10111111000111100010110011000001" "10111111010101110011101111101101" "00111111010000010000111111010001" "00111110101110001101100101100011" "00111101001000110111110101001010" "10111101110010011010011001111100" "00111110001001010101011011001111" "00111110001101111101111000111011" "10111110010110110110001110010100" "10111110001010001100011111011001" "10111110100000111101001001111100" "00111110001011110001010110100001" "00111110011110100111001000101101" "10111110101101101100100100011001" "10111101110001110100110000011010" "00111111000111100100100100000001" "00111110100010010111000011110101" "00111101100000010100000100110111" "10111101100111100011100001111000" "00111101101101001010011110011011" "00111101110011111001000011011100" "00111110010100111010011111001100" "00111110110001101001011001101111" "00111110100100100010010001110100" "00111100101100111010010011110100" "10111111000110101100100000000101" "00111110100010100110001111010011" "10111110001101010100001001100110" "10111101100110000001010010011110" "00111110000100001110101010011101" "00111110000001001100001001010000" "10111110101010100011101001110001" "10111110100010010000001000000001" "00111111011100110001111001000101" "00111111011111001011101110100011" "10111110100110110001010111101010" "00111110100101100110101011011000" "00111100010001001010001010011110" "00111110001011110100010111101000" "10111101111011001111011111111101" "00111110100100011011011000001001" "00111110010001110111001101000001" "10111111111110011000101001101111" "10111111101001111110100010011100" "00111110101010110001001011111001" "00111111001111111001010101011001" "00111111101110111010011100000111" "00111110110011001110110000000000" "10111111011100110110110011101011" "10111110010111000111000010010100" "10111100001000001000001111000100" "00111111101100101001110001011010" "10111111001001111011011010001100" "00111101111111100110111100101000" }
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
    id 114 \
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
    id 115 \
    name sum_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_42_out \
    op interface \
    ports { sum_42_out { O 32 vector } sum_42_out_ap_vld { O 1 bit } } \
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


