//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar  8 19:59:15 2023
//Host        : DESKTOP-BDEC94T running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (pwm_out,
    reset,
    sys_clock,
    vn_in_0,
    vp_in_0);
  output pwm_out;
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  input vn_in_0;
  input vp_in_0;

  wire clk_wiz_0_clk_out1;
  wire [7:0]compuerta_xor_0_nadc;
  wire pwm_0_pwm_out;
  wire reset_1;
  wire sys_clock_1;
  wire vn_in_0_1;
  wire vp_in_0_1;
  wire [15:0]xadc_wiz_0_do_out;
  wire [6:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [7:0]xlslice_0_Dout;

  assign pwm_out = pwm_0_pwm_out;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vn_in_0_1 = vn_in_0;
  assign vp_in_0_1 = vp_in_0;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
  design_1_compuerta_xor_0_0 compuerta_xor_0
       (.adc(xlslice_0_Dout),
        .nadc(compuerta_xor_0_nadc));
  design_1_pwm_0_0 pwm_0
       (.clk(clk_wiz_0_clk_out1),
        .duty(compuerta_xor_0_nadc),
        .en(xlconstant_2_dout),
        .pwm_out(pwm_0_pwm_out),
        .rst(reset_1));
  design_1_xadc_wiz_0_0 xadc_wiz_0
       (.daddr_in(xlconstant_0_dout),
        .dclk_in(clk_wiz_0_clk_out1),
        .den_in(xlconstant_2_dout),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out(xadc_wiz_0_do_out),
        .dwe_in(xlconstant_1_dout),
        .reset_in(1'b0),
        .vn_in(vn_in_0_1),
        .vp_in(vp_in_0_1));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(xadc_wiz_0_do_out),
        .Dout(xlslice_0_Dout));
endmodule
