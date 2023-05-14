//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Sep 23 15:43:43 2022
//Host        : User-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire [3:0]DATA_IN1;
  wire [3:0]DATA_IN2;
  wire DATA_OUT;
  wire EN_0;
  wire [1:0]S1;
  wire [1:0]S2;
  wire [1:0]S3;

  design_1 design_1_i
       (.DATA_IN1(DATA_IN1),
        .DATA_IN2(DATA_IN2),
        .DATA_OUT(DATA_OUT),
        .EN_0(EN_0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule
