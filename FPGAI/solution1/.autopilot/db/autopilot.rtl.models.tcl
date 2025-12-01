set SynModuleInfo {
  {SRCNAME nn_inference_Pipeline_1 MODELNAME nn_inference_Pipeline_1 RTLNAME nn_inference_nn_inference_Pipeline_1
    SUBMODULES {
      {MODELNAME nn_inference_flow_control_loop_pipe_sequential_init RTLNAME nn_inference_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nn_inference_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nn_inference_Pipeline_2 MODELNAME nn_inference_Pipeline_2 RTLNAME nn_inference_nn_inference_Pipeline_2}
  {SRCNAME nn_inference_Pipeline_3 MODELNAME nn_inference_Pipeline_3 RTLNAME nn_inference_nn_inference_Pipeline_3}
  {SRCNAME hwmm_layer1_Pipeline_prod MODELNAME hwmm_layer1_Pipeline_prod RTLNAME nn_inference_hwmm_layer1_Pipeline_prod
    SUBMODULES {
      {MODELNAME nn_inference_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME nn_inference_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME nn_inference_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod_layer1_weights_0 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod_layer1_weights_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod4 MODELNAME hwmm_layer1_Pipeline_prod4 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod4
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod4_layer1_weights_1 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod4_layer1_weights_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod5 MODELNAME hwmm_layer1_Pipeline_prod5 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod5
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod5_layer1_weights_2 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod5_layer1_weights_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod6 MODELNAME hwmm_layer1_Pipeline_prod6 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod6
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod6_layer1_weights_3 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod6_layer1_weights_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod7 MODELNAME hwmm_layer1_Pipeline_prod7 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod7
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod7_layer1_weights_4 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod7_layer1_weights_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod8 MODELNAME hwmm_layer1_Pipeline_prod8 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod8
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod8_layer1_weights_5 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod8_layer1_weights_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod9 MODELNAME hwmm_layer1_Pipeline_prod9 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod9
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod9_layer1_weights_6 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod9_layer1_weights_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod10 MODELNAME hwmm_layer1_Pipeline_prod10 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod10
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod10_layer1_weights_7 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod10_layer1_weights_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod11 MODELNAME hwmm_layer1_Pipeline_prod11 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod11
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod11_layer1_weights_8 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod11_layer1_weights_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod12 MODELNAME hwmm_layer1_Pipeline_prod12 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod12
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod12_layer1_weights_9 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod12_layer1_weights_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod13 MODELNAME hwmm_layer1_Pipeline_prod13 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod13
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod13_layer1_weights_10 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod13_layer1_weights_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod14 MODELNAME hwmm_layer1_Pipeline_prod14 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod14
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod14_layer1_weights_11 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod14_layer1_weights_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod15 MODELNAME hwmm_layer1_Pipeline_prod15 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod15
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod15_layer1_weights_12 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod15_layer1_weights_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod16 MODELNAME hwmm_layer1_Pipeline_prod16 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod16
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod16_layer1_weights_13 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod16_layer1_weights_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod17 MODELNAME hwmm_layer1_Pipeline_prod17 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod17
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod17_layer1_weights_14 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod17_layer1_weights_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod18 MODELNAME hwmm_layer1_Pipeline_prod18 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod18
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod18_layer1_weights_15 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod18_layer1_weights_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod19 MODELNAME hwmm_layer1_Pipeline_prod19 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod19
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod19_layer1_weights_16 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod19_layer1_weights_16 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod20 MODELNAME hwmm_layer1_Pipeline_prod20 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod20
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod20_layer1_weights_17 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod20_layer1_weights_17 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod21 MODELNAME hwmm_layer1_Pipeline_prod21 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod21
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod21_layer1_weights_18 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod21_layer1_weights_18 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod22 MODELNAME hwmm_layer1_Pipeline_prod22 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod22
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod22_layer1_weights_19 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod22_layer1_weights_19 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod23 MODELNAME hwmm_layer1_Pipeline_prod23 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod23
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod23_layer1_weights_20 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod23_layer1_weights_20 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod24 MODELNAME hwmm_layer1_Pipeline_prod24 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod24
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod24_layer1_weights_21 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod24_layer1_weights_21 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod25 MODELNAME hwmm_layer1_Pipeline_prod25 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod25
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod25_layer1_weights_22 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod25_layer1_weights_22 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod26 MODELNAME hwmm_layer1_Pipeline_prod26 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod26
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod26_layer1_weights_23 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod26_layer1_weights_23 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod27 MODELNAME hwmm_layer1_Pipeline_prod27 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod27
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod27_layer1_weights_24 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod27_layer1_weights_24 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod28 MODELNAME hwmm_layer1_Pipeline_prod28 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod28
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod28_layer1_weights_25 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod28_layer1_weights_25 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod29 MODELNAME hwmm_layer1_Pipeline_prod29 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod29
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod29_layer1_weights_26 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod29_layer1_weights_26 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod30 MODELNAME hwmm_layer1_Pipeline_prod30 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod30
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod30_layer1_weights_27 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod30_layer1_weights_27 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod31 MODELNAME hwmm_layer1_Pipeline_prod31 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod31
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod31_layer1_weights_28 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod31_layer1_weights_28 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod32 MODELNAME hwmm_layer1_Pipeline_prod32 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod32
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod32_layer1_weights_29 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod32_layer1_weights_29 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod33 MODELNAME hwmm_layer1_Pipeline_prod33 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod33
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod33_layer1_weights_30 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod33_layer1_weights_30 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1_Pipeline_prod34 MODELNAME hwmm_layer1_Pipeline_prod34 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod34
    SUBMODULES {
      {MODELNAME nn_inference_hwmm_layer1_Pipeline_prod34_layer1_weights_31 RTLNAME nn_inference_hwmm_layer1_Pipeline_prod34_layer1_weights_31 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hwmm_layer1 MODELNAME hwmm_layer1 RTLNAME nn_inference_hwmm_layer1}
  {SRCNAME nn_inference_Pipeline_loop1 MODELNAME nn_inference_Pipeline_loop1 RTLNAME nn_inference_nn_inference_Pipeline_loop1
    SUBMODULES {
      {MODELNAME nn_inference_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME nn_inference_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nn_inference_Pipeline_col MODELNAME nn_inference_Pipeline_col RTLNAME nn_inference_nn_inference_Pipeline_col
    SUBMODULES {
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_0 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_1 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_2 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_3 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_4 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_5 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_6 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_7 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_8 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_9 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_10 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_11 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_12 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_13 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_14 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_15 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_16 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_16 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_17 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_17 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_18 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_18 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_19 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_19 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_20 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_20 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_21 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_21 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_22 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_22 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_23 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_23 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_24 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_24 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_25 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_25 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_26 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_26 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_27 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_27 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_28 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_28 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_29 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_29 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_30 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_30 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_31 RTLNAME nn_inference_nn_inference_Pipeline_col_layer2_weights_31 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nn_inference_Pipeline_loop11 MODELNAME nn_inference_Pipeline_loop11 RTLNAME nn_inference_nn_inference_Pipeline_loop11}
  {SRCNAME nn_inference_Pipeline_col2 MODELNAME nn_inference_Pipeline_col2 RTLNAME nn_inference_nn_inference_Pipeline_col2
    SUBMODULES {
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_0 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_1 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_2 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_3 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_4 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_5 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_6 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_7 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_8 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_9 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_10 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_11 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_12 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_13 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_14 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_15 RTLNAME nn_inference_nn_inference_Pipeline_col2_layer3_weights_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nn_inference_Pipeline_loop13 MODELNAME nn_inference_Pipeline_loop13 RTLNAME nn_inference_nn_inference_Pipeline_loop13}
  {SRCNAME nn_inference MODELNAME nn_inference RTLNAME nn_inference IS_TOP 1
    SUBMODULES {
      {MODELNAME nn_inference_temp_output_0 RTLNAME nn_inference_temp_output_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_temp_output2_0 RTLNAME nn_inference_temp_output2_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_inference_temp_output3_0 RTLNAME nn_inference_temp_output3_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
