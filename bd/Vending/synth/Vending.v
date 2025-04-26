//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Apr 16 14:26:14 2025
//Host        : ecelwavw244605 running 64-bit major release  (build 9200)
//Command     : generate_target Vending.bd
//Design      : Vending
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Vending,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Vending,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Vending.hwdef" *) 
module Vending
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Vending_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input clr;
  output [7:0]curr_amountt;
  output [3:0]led;
  output [7:0]pricee;
  input [3:0]switches;

  wire [3:0]VendingController_0_an;
  wire [6:0]VendingController_0_ca;
  wire [7:0]VendingController_0_curr_amountt;
  wire [3:0]VendingController_0_led;
  wire [7:0]VendingController_0_pricee;
  wire [2:0]btn_1;
  wire clk_1;
  wire clr_1;
  wire [3:0]switches_1;

  assign an[3:0] = VendingController_0_an;
  assign btn_1 = btn[2:0];
  assign ca[6:0] = VendingController_0_ca;
  assign clk_1 = clk;
  assign clr_1 = clr;
  assign curr_amountt[7:0] = VendingController_0_curr_amountt;
  assign led[3:0] = VendingController_0_led;
  assign pricee[7:0] = VendingController_0_pricee;
  assign switches_1 = switches[3:0];
  Vending_VendingController_0_0 VendingController_0
       (.an(VendingController_0_an),
        .btn(btn_1),
        .ca(VendingController_0_ca),
        .clk(clk_1),
        .clr(clr_1),
        .curr_amountt(VendingController_0_curr_amountt),
        .led(VendingController_0_led),
        .pricee(VendingController_0_pricee),
        .switches(switches_1));
endmodule
