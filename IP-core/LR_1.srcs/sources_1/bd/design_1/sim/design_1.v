//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Sep 23 15:43:43 2022
//Host        : User-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DATA_IN1,
    DATA_IN2,
    DATA_OUT,
    EN_0,
    S1,
    S2,
    S3);
  input [3:0]DATA_IN1;
  input [3:0]DATA_IN2;
  output DATA_OUT;
  input EN_0;
  input [1:0]S1;
  input [1:0]S2;
  input [1:0]S3;

  wire [3:0]DATA_IN1_1;
  wire [3:0]DATA_IN2_1;
  wire EN_0_1;
  wire [1:0]S1_1;
  wire [1:0]S2_1;
  wire [1:0]S3_1;
  wire mult_0_Y;
  wire mult_1_Y;
  wire [3:0]xlconcat_0_dout;

  assign DATA_IN1_1 = DATA_IN1[3:0];
  assign DATA_IN2_1 = DATA_IN2[3:0];
  assign DATA_OUT = mult_0_Y;
  assign EN_0_1 = EN_0;
  assign S1_1 = S1[1:0];
  assign S2_1 = S2[1:0];
  assign S3_1 = S3[1:0];
  design_1_mult_0_0 mult_0
       (.EN(EN_0_1),
        .S(S1_1),
        .X(DATA_IN1_1),
        .Y(mult_0_Y));
  design_1_mult_0_1 mult_1
       (.EN(EN_0_1),
        .S(S2_1),
        .X(DATA_IN2_1),
        .Y(mult_1_Y));
  design_1_mult_0_2 mult_2
       (.EN(EN_0_1),
        .S(S3_1),
        .X(xlconcat_0_dout));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0({mult_0_Y,mult_0_Y}),
        .In1({mult_1_Y,mult_1_Y}),
        .dout(xlconcat_0_dout));
endmodule
