# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 143
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod30_layer1_weights_27
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111101010001110101101010000110" "10111111001000111001100110100010" "10111110010010101011100111111111" "10111100101101010100110100000100" "00111111000110100011110110010110" "00111110111110010110001010011100" "00111111000010010110100100010010" "00111111000100001101110011011101" "00111111010011000101000101001010" "01000000001110101110001111000000" "00111110101001001011101100100111" "00111110000100110110111011100100" "10111110011011100111001000100001" "10111110111011000011000001101111" "00111101111000110110110010101110" "00111110110101011001011000101110" "00111111001000000111011101110101" "00111111010101111100011001101111" "00111110100111111100111001111010" "00111101011001001110010001011100" "00111101110011000001101111101111" "00111110100011000011111101101100" "10111110111110011110110100010010" "10111101111101101101110000111100" "00111100100100000100001100101010" "00111101111111111110111010100100" "00111110100001000110011110011001" "10111110010011010110100001010010" "10111110110011100011110101001101" "00111111100000011101111000010010" "00111111100010010101001011000011" "10111110110101010010100001101110" "10111101101001000010001010001100" "10111110101000111110111111001110" "00111110101001000100001011011001" "10111110000101010110110110111010" "10111110101111001110010011101000" "10111101100010100111110011101110" "10111111001100110110001001011001" "10111111101101100000110010101000" "10111111010000011001110101010101" "00111110011101100011011011100110" "10111110100010000100101101011111" "10111110101001111011110101010111" "00111111011001110010111110010001" "10111100100001110110001000111001" "10111100111101000110100111001110" "10111110011110111001010011111110" "10111111100010011111010000110011" "10111111111101010001000110000011" "00111111100101010011000100001101" "10111110011100000111000000110011" "10111101001111110000000111000000" "10111101010010100001000111001110" "00111111010101101000011010111111" "10111101010111100111110110111000" "00111110011001111111100011010010" "10111110100110100011001010011001" "10111101110001100110001100011000" "00111111010011111011011011000011" "00111110100101110010000011111001" "00111111001100110111110101001111" "10111101101101010110111000100101" "10111110000001001110000110110111" "00111101000010000110010110111000" "10111110100101001101100000110000" "00111101000011011000111111100010" "00111110101100110101100010011001" "00111111010011010000100100101101" "10111111101101110101101100100101" "10111110110000110100001111010110" "00111111001010010001101101100011" "00111110010100110111101000011001" "10111110101111011001000010101010" "10111110000010000111011000000010" "00111110011011101101100010010011" "00111110111000010111000111011111" "00111111011000111101001000100000" "00111111001000111101010100101101" "00111110000111000100100111000000" "00111111001101010001001110111100" "00111110110000010111110000011011" "00111110100100101000011110111111" "00111110001100111001010101010011" "00111110100100101100100111110101" "00111110111111101100001111111110" "00111110100010000001101110010101" "00111110111000011011111011111010" "10111110000011101101111110011010" "10111111100101000100001011001011" "00111111101110010101000010011111" "00111111000101111010010000000101" "00111111100100000100110000100101" "00111111101111110001000011011010" "00111111010101010100100101011000" "00111110101011110010001111110100" "10111101101011001100111101101111" "00111110111110111110110001111111" "10111110111111101011011000100110" "11000000000000000111101110000111" }
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
    id 144 \
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
    id 145 \
    name sum_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_54_out \
    op interface \
    ports { sum_54_out { O 32 vector } sum_54_out_ap_vld { O 1 bit } } \
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


