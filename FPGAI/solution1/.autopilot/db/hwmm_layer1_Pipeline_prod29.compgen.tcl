# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 138
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod29_layer1_weights_26
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111000010011101001010010000" "10111101101001110101101101110010" "00111111110010111000110010011100" "10111110001011010001011011101100" "00111100111111111111001100011000" "00111110101110001011010011110011" "00111111010001001101000011010011" "00111111100101010011100100010011" "00111111000000111110000001111011" "10111110111011100010101100100010" "10111111001100000110100001100100" "00111110010011110011101101111010" "00111111100001011101100110111110" "00111110101001011010000000110010" "00111111100011000101011110110110" "00111111010001100010111101110011" "00111110110001110000010000010110" "00111110100000100011100011110001" "10111111000100000011011001111000" "10111111100111101100100000100100" "11000000000111010001111101011101" "10111111000101101101111011111111" "10111101101110100011101101010011" "10111111011001001111000101000001" "00111101100001000000100001010110" "00111111010110100000111001110100" "00111111100100000001101001011000" "00111110110110011010100001011100" "00111110001000101100111101100001" "00111101101001100011011110111000" "10111101110010001000011110101010" "10111110010111110001100111010111" "10111101011011101000111110101110" "10111110011101010111010001111001" "10111110111001010011000001100001" "00111110011000101010100010111111" "00111100101101110001000000010000" "00111110100101100101100000100110" "00111110011011100011110111101111" "10111111110100100100100110100101" "10111111101100010000011111101001" "10111110111010011011111110110111" "10111110111001000100001110100001" "10111110000110001110101100110010" "10111110000011100110011010010001" "10111110101101001111110001001001" "00111110011111111110111000111110" "00111110110111001111010110101111" "10111101101110110011001000111111" "11000000010000010001000100001000" "10111111100110010110001101010110" "10111110010010011101010111111010" "10111101110111110010011101110001" "00111101101101110000001001001010" "10111110000011011111101111101111" "10111110111011101010100100011100" "10111110010000011100010010000010" "00111101010101010100000101110000" "10111110011101000000010001010100" "10111111101001000011000001001010" "11000000000111011111010110111001" "10111111001111100110010010110111" "00111110101101101000100010000110" "00111110000101100001001011100110" "10111110000111011111010100000001" "10111110110111100100100010101100" "00111110100000010011011100011111" "10111110111100000010110111110000" "00111110010010111011101001001101" "00111111111000111011000101110000" "10111111101111011101010111011001" "10111110000110100100000100000110" "00111110101101110011101100111101" "00111110101011000000101101001111" "00111111000011011000110010001000" "00111110101000011000001101110101" "00111100010001010010001001110001" "10111111000101111000011001010001" "00111101111000011000111011110100" "00111111010101000100101010111010" "11000000001010001101100010010011" "00111110010110010011011111010010" "10111110001000110100101111000011" "00111101110111110100010100010010" "00111110011110011001111001101100" "00111101110010110110000101101110" "10111101110110100010101110010010" "10111100110110010110100111011011" "00111101111010100001110010000100" "10111110110000011011011101001101" "11000000000010100110100010100000" "11000000001111000000011100010101" "10111111011011010100000010001000" "00111111010010100010011000111010" "00111110111011001110011010010011" "00111101100000001001100000011000" "00111101000110111001011101111001" "00111110111101011011100110110100" "11000000000011000010001000101000" "00111011111101001010010000111010" }
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
    id 139 \
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
    id 140 \
    name sum_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_52_out \
    op interface \
    ports { sum_52_out { O 32 vector } sum_52_out_ap_vld { O 1 bit } } \
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


