// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Mar  8 15:32:32 2023
// Host        : DESKTOP-BDEC94T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               S:/Vivado_Works/XADC_BIPOLAR_3/XADC_BIPOLAR_1.srcs/sources_1/bd/design_1/ip/design_1_pwm_0_0/design_1_pwm_0_0_sim_netlist.v
// Design      : design_1_pwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwm_0_0,pwm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pwm,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_pwm_0_0
   (clk,
    rst,
    en,
    duty,
    pwm_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input en;
  input [7:0]duty;
  output pwm_out;

  wire clk;
  wire [7:0]duty;
  wire en;
  wire pwm_out;
  wire rst;

  design_1_pwm_0_0_pwm inst
       (.clk(clk),
        .duty(duty),
        .en(en),
        .pwm_out(pwm_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module design_1_pwm_0_0_pwm
   (pwm_out,
    en,
    clk,
    rst,
    duty);
  output pwm_out;
  input en;
  input clk;
  input rst;
  input [7:0]duty;

  wire clk;
  wire clk_en;
  wire \cnt_duty[0]_i_1_n_0 ;
  wire \cnt_duty[7]_i_2_n_0 ;
  wire [7:0]cnt_duty_reg;
  wire [7:0]duty;
  wire en;
  wire p_0_in;
  wire [7:1]plusOp;
  wire pwm_out;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire rst;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;

  FDCE clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(en),
        .Q(clk_en));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_duty[0]_i_1 
       (.I0(cnt_duty_reg[0]),
        .O(\cnt_duty[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_duty[1]_i_1 
       (.I0(cnt_duty_reg[0]),
        .I1(cnt_duty_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_duty[2]_i_1 
       (.I0(cnt_duty_reg[0]),
        .I1(cnt_duty_reg[1]),
        .I2(cnt_duty_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_duty[3]_i_1 
       (.I0(cnt_duty_reg[1]),
        .I1(cnt_duty_reg[0]),
        .I2(cnt_duty_reg[2]),
        .I3(cnt_duty_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_duty[4]_i_1 
       (.I0(cnt_duty_reg[2]),
        .I1(cnt_duty_reg[0]),
        .I2(cnt_duty_reg[1]),
        .I3(cnt_duty_reg[3]),
        .I4(cnt_duty_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_duty[5]_i_1 
       (.I0(cnt_duty_reg[3]),
        .I1(cnt_duty_reg[1]),
        .I2(cnt_duty_reg[0]),
        .I3(cnt_duty_reg[2]),
        .I4(cnt_duty_reg[4]),
        .I5(cnt_duty_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_duty[6]_i_1 
       (.I0(\cnt_duty[7]_i_2_n_0 ),
        .I1(cnt_duty_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_duty[7]_i_1 
       (.I0(\cnt_duty[7]_i_2_n_0 ),
        .I1(cnt_duty_reg[6]),
        .I2(cnt_duty_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_duty[7]_i_2 
       (.I0(cnt_duty_reg[5]),
        .I1(cnt_duty_reg[3]),
        .I2(cnt_duty_reg[1]),
        .I3(cnt_duty_reg[0]),
        .I4(cnt_duty_reg[2]),
        .I5(cnt_duty_reg[4]),
        .O(\cnt_duty[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[0] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(\cnt_duty[0]_i_1_n_0 ),
        .Q(cnt_duty_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[1] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[1]),
        .Q(cnt_duty_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[2] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[2]),
        .Q(cnt_duty_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[3] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[3]),
        .Q(cnt_duty_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[4] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[4]),
        .Q(cnt_duty_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[5] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[5]),
        .Q(cnt_duty_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[6] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[6]),
        .Q(cnt_duty_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_duty_reg[7] 
       (.C(clk),
        .CE(clk_en),
        .CLR(rst),
        .D(plusOp[7]),
        .Q(cnt_duty_reg[7]));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({p_0_in,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5_n_0,pwm_out0_carry_i_6_n_0,pwm_out0_carry_i_7_n_0,pwm_out0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_1
       (.I0(duty[6]),
        .I1(cnt_duty_reg[6]),
        .I2(cnt_duty_reg[7]),
        .I3(duty[7]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_2
       (.I0(duty[4]),
        .I1(cnt_duty_reg[4]),
        .I2(cnt_duty_reg[5]),
        .I3(duty[5]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_3
       (.I0(duty[2]),
        .I1(cnt_duty_reg[2]),
        .I2(cnt_duty_reg[3]),
        .I3(duty[3]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_4
       (.I0(duty[0]),
        .I1(cnt_duty_reg[0]),
        .I2(cnt_duty_reg[1]),
        .I3(duty[1]),
        .O(pwm_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5
       (.I0(duty[6]),
        .I1(cnt_duty_reg[6]),
        .I2(duty[7]),
        .I3(cnt_duty_reg[7]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6
       (.I0(duty[4]),
        .I1(cnt_duty_reg[4]),
        .I2(duty[5]),
        .I3(cnt_duty_reg[5]),
        .O(pwm_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7
       (.I0(duty[2]),
        .I1(cnt_duty_reg[2]),
        .I2(duty[3]),
        .I3(cnt_duty_reg[3]),
        .O(pwm_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8
       (.I0(duty[0]),
        .I1(cnt_duty_reg[0]),
        .I2(duty[1]),
        .I3(cnt_duty_reg[1]),
        .O(pwm_out0_carry_i_8_n_0));
  FDCE pwm_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in),
        .Q(pwm_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
