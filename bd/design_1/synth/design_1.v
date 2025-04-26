//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Apr 16 14:59:02 2025
//Host        : ecelwavw244605 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input clr;
  output [3:0]led;
  input [3:0]switches;

  wire [2:0]btn_1;
  wire clk_1;
  wire clr_1;
  wire [3:0]switches_1;
  wire [3:0]vendd_0_an;
  wire [6:0]vendd_0_ca;
  wire [3:0]vendd_0_led;

  assign an[3:0] = vendd_0_an;
  assign btn_1 = btn[2:0];
  assign ca[6:0] = vendd_0_ca;
  assign clk_1 = clk;
  assign clr_1 = clr;
  assign led[3:0] = vendd_0_led;
  assign switches_1 = switches[3:0];
  design_1_vendd_0_0 vendd_0
       (.an(vendd_0_an),
        .btn(btn_1),
        .ca(vendd_0_ca),
        .clk(clk_1),
        .clr(clr_1),
        .led(vendd_0_led),
        .switches(switches_1));
endmodule
