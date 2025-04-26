//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Apr 16 14:59:02 2025
//Host        : ecelwavw244605 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (an,
    btn,
    ca,
    clk,
    clr,
    led,
    switches);
  output [3:0]an;
  input [2:0]btn;
  output [6:0]ca;
  input clk;
  input clr;
  output [3:0]led;
  input [3:0]switches;

  wire [3:0]an;
  wire [2:0]btn;
  wire [6:0]ca;
  wire clk;
  wire clr;
  wire [3:0]led;
  wire [3:0]switches;

  design_1 design_1_i
       (.an(an),
        .btn(btn),
        .ca(ca),
        .clk(clk),
        .clr(clr),
        .led(led),
        .switches(switches));
endmodule
