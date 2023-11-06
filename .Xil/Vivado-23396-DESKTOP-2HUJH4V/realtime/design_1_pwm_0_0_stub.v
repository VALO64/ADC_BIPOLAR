// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pwm,Vivado 2019.1" *)
module design_1_pwm_0_0(clk, rst, en, duty, pwm_out);
  input clk;
  input rst;
  input en;
  input [11:0]duty;
  output pwm_out;
endmodule
