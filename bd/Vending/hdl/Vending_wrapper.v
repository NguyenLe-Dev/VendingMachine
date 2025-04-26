//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Apr 16 14:26:14 2025
//Host        : ecelwavw244605 running 64-bit major release  (build 9200)
//Command     : generate_target Vending_wrapper.bd
//Design      : Vending_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Vending_wrapper
   (an,
    btn,
    ca,
    clk,
    clr,
    curr_amountt,
    led,
    pricee,
    switches);
  output [3:0]an;
  input [2:0]btn;
  output [6:0]ca;
  input clk;
  input clr;
  output [7:0]curr_amountt;
  output [3:0]led;
  output [7:0]pricee;
  input [3:0]switches;

  wire [3:0]an;
  wire [2:0]btn;
  wire [6:0]ca;
  wire clk;
  wire clr;
  wire [7:0]curr_amountt;
  wire [3:0]led;
  wire [7:0]pricee;
  wire [3:0]switches;

  Vending Vending_i
       (.an(an),
        .btn(btn),
        .ca(ca),
        .clk(clk),
        .clr(clr),
        .curr_amountt(curr_amountt),
        .led(led),
        .pricee(pricee),
        .switches(switches));
endmodule
