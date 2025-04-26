// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 16 14:59:37 2025
// Host        : ecelwavw244605 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/nle2435/Vendingggg/Vendingggg.srcs/sources_1/bd/design_1/ip/design_1_vendd_0_0/design_1_vendd_0_0_stub.v
// Design      : design_1_vendd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vendd,Vivado 2019.2" *)
module design_1_vendd_0_0(switches, btn, clk, clr, led, an, ca)
/* synthesis syn_black_box black_box_pad_pin="switches[3:0],btn[2:0],clk,clr,led[3:0],an[3:0],ca[6:0]" */;
  input [3:0]switches;
  input [2:0]btn;
  input clk;
  input clr;
  output [3:0]led;
  output [3:0]an;
  output [6:0]ca;
endmodule
