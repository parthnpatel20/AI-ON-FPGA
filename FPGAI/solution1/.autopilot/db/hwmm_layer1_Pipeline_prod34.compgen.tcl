# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 163
set hasByteEnable 0
set MemName nn_inference_hwmm_layer1_Pipeline_prod34_layer1_weights_31
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 100
set AddrWd 7
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111111011100101111011111000100" "10111110110100110111100010000011" "00111111100001011101110101011100" "10111111000110000111100100101111" "00111101111101001010111101001110" "00111110011110011010101101111010" "10111111001000101000000001110001" "00111111000001010001011100101100" "10111111011001100100111100111110" "10111111011100111011101010000000" "00111101001001010100110111011101" "10111100001111001100100110111000" "10111111100010010110000101010011" "10111111011101110110011001011011" "10111110010100110010111110111110" "00111101011100111111111101000111" "10111101111100001111111011110110" "10111111010110011110010111101001" "00111101010110011000110000010111" "10111111010001011011001011111111" "00111111100101111100110000010011" "10111110100000000001100001100001" "10111111100001100110000010100010" "10111111000111100101111101100111" "00111111000000110000001000000001" "00111111000101011000111001101000" "10111111001100010110011000010100" "10111111000010101011001110010100" "00111110100000000101100111110010" "10111110100010111100111110111000" "10111111010100010111111011011000" "10111110001110001100010001101110" "00111101011010000111011110010100" "10111111000010011000010110100010" "00111110110100110010111111000101" "00111110000111100001000101011111" "10111111000100111011100000100010" "00111110111001000101000001101110" "00111100010100011010101010001010" "10111111000101101001001111000100" "00111110101110110000111001010010" "10111111000111111010111010011011" "10111101100001100001010010110011" "00111101000000010100001011100111" "00111100101000111100110100001010" "10111100101011110110111010001010" "10111110110100100010011000100100" "10111101110110110100110000100110" "10111101101001100011001101001110" "10111110100011100001001001110001" "00111110101000110001110110011011" "10111111000001010010101000001000" "10111110000100011110111000001011" "00111101000001100000101010111101" "00111101111011101010100000101001" "10111110010110001001001010110011" "10111110001000000101011101001001" "00111101001100101010110001011111" "10111110001100111011001000011111" "00111111100100010101000001101000" "10111101101000110101011101011101" "00111110010011101000011001001110" "00111111000010011001100011011111" "00111110110000101110001101111010" "00111110000101001010001110110001" "00111110100000100110110101100111" "00111110101010011000111110001010" "00111110101100010010010110011111" "00111110100111001101110110001001" "00111110011110001000010100001110" "00111101111101010011011001111101" "00111111000010101111111010111110" "00111110010100001110000010010010" "00111110101011110000101100010101" "00111101100010111011110010111001" "00111101001001100001011010010100" "00111110110101111000111011100111" "00111110111000010100100010000110" "10111110110010001000001110111010" "00111111010001110001110111000010" "00111111000001000111000100011100" "00111111000101011011110011101011" "00111110011111010110010111101001" "00111110110111101011101000110000" "00111110000001111101111000100001" "00111101100010100001111011101110" "10111110111111111101011101101001" "10111111011010110001100011110001" "10111111000001110011011100101010" "00111011001000000101000010110001" "10111111101100101000101110110111" "10111111101010110001101100111011" "10111111001010011001100100100011" "10111100100111010111111110011101" "10111111100011011111110000101101" "11000000000101111100000010100101" "10111111110111110100100011001010" "10111111111110010010100110100010" "00111111011101011110110100100001" "00111111100000110000101011110101" }
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
    id 164 \
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
    id 165 \
    name sum_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_62_out \
    op interface \
    ports { sum_62_out { O 32 vector } sum_62_out_ap_vld { O 1 bit } } \
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


