vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/Vivado/LR_1/LR_1.srcs/sources_1/new/m.v" \
"../../../bd/design_1/ip/design_1_mult_0_0/sim/design_1_mult_0_0.v" \
"../../../bd/design_1/ip/design_1_mult_0_1/sim/design_1_mult_0_1.v" \
"../../../bd/design_1/ip/design_1_mult_0_2/sim/design_1_mult_0_2.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../LR_1.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

