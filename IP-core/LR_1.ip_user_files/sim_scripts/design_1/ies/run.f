-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/Vivado/LR_1/LR_1.srcs/sources_1/new/m.v" \
  "../../../bd/design_1/ip/design_1_mult_0_0/sim/design_1_mult_0_0.v" \
  "../../../bd/design_1/ip/design_1_mult_0_1/sim/design_1_mult_0_1.v" \
  "../../../bd/design_1/ip/design_1_mult_0_2/sim/design_1_mult_0_2.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../LR_1.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

