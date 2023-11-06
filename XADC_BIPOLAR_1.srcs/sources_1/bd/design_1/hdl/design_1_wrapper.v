//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar  8 19:59:15 2023
//Host        : DESKTOP-BDEC94T running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (pwm_out,
    reset,
    sys_clock,
    vn_in_0,
    vp_in_0);
  output pwm_out;
  input reset;
  input sys_clock;
  input vn_in_0;
  input vp_in_0;

  wire pwm_out;
  wire reset;
  wire sys_clock;
  wire vn_in_0;
  wire vp_in_0;

  design_1 design_1_i
       (.pwm_out(pwm_out),
        .reset(reset),
        .sys_clock(sys_clock),
        .vn_in_0(vn_in_0),
        .vp_in_0(vp_in_0));
endmodule
