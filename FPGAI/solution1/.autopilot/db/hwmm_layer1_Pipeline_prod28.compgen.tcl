# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 133
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod28_layer1_weights_25
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00111100101000010100100101010010" "11000000000000001110010000011100" "00111111001000010000100001000000" "00111111010000000100001000100001" "10111111011101001101110000110110" "10111110100101101101100100000010" "10111111000011000111001000100001" "10111111001001101001001110100111" "00111111100101110000101101110001" "01000000001010101101110100110001" "10111110111001011110011011000000" "00111110101010001001011100001001" "00111110001111110100010010101001" "10111110100011100100010100111011" "00111111011101011011001111010101" "00111111010000001101010111000001" "10111110000011110111110110101010" "00111101100101001001110000001011" "00111101011101101110010101101001" "00111110011001101100010000010111" "10111101010101010011001011100111" "10111111000011010100000010010000" "10111110011000011110011001000110" "10111110000100010111111111010010" "00111111100000000101110101111100" "00111111000010110101110011010111" "00111110000010101110011010110101" "00111100010001001000111110100001" "10111111000101110000000000100111" "00111111010101101011111010111000" "00111111000000111111110111111110" "10111110101011000000101111011001" "10111110101111101000011010100001" "10111110111110111101001010000010" "00111111011001111001011101001110" "10111110111101110000000100110011" "10111110111100101011100010100101" "00111110110010111010000101110100" "10111110011111000110111000000001" "00111110111110011111100011110001" "10111110110011011101110001010001" "10111100101111111111100100110010" "10111110111010010011111111101011" "10111101110100010100110011000111" "00111110110100110110101010110111" "00111110110010100011010010101000" "00111110000101001000111011010001" "00111101011011001010010010101000" "10111110011111100100111011110110" "00111110111000011000111011100000" "10111101111010101001111001100111" "10111111001001110111010101100110" "10111110110111101010000101001001" "00111110100000100001101110100001" "00111110000110001010111011001001" "00111111001011111110010010111001" "00111110101101111101000100100110" "00111101100100001010101110000011" "00111110100111100100000110110011" "10111111010110001111101011111111" "00111110110000100100100000100011" "00111110010101011101110111110100" "00111100111011110001010100010111" "00111111000110101011011110011110" "00111101110010000100100100101001" "00111111000000110100110011001010" "00111111000100000010010101100000" "00111110011110110011001001000100" "00111111001000000010100001010111" "10111111111101010110110011110100" "10111110101111010000000000001001" "00111101100111111111011101111010" "00111110111001000001011010111011" "00111101111001000001010101001101" "10111111000010010011010000101011" "10111011110110110101100100000111" "10111110000011010100000010111111" "00111100101011101110111100010010" "10111101001101110110011010101011" "10111111110110111000001101010011" "00111111101101010010000000101010" "00111110100111010011110101101010" "10111110001000101110101000011111" "10111100011100001101110001010011" "10111110010110110000111000110011" "10111110001010110101111010110100" "10111101111000100011001101000111" "10111110100011110100100101011011" "10111111101000001010000111001011" "10111111100010001111000000110100" "01000000000001110111100001001011" "10111111011101001101110110000110" "10111110001010010001000111111000" "00111111110100101100010100101000" "00111111000100111001101110111001" "00111111001000111001001100001111" "00111111010111101000111011110010" "00111111011100110011010001100100" "10111111011111100111010110001101" "10111110100001110010001110000000" }
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
    id 134 \
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
    id 135 \
    name sum_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_50_out \
    op interface \
    ports { sum_50_out { O 32 vector } sum_50_out_ap_vld { O 1 bit } } \
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


