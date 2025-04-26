// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 16 14:59:37 2025
// Host        : ecelwavw244605 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/nle2435/Vendingggg/Vendingggg.srcs/sources_1/bd/design_1/ip/design_1_vendd_0_0/design_1_vendd_0_0_sim_netlist.v
// Design      : design_1_vendd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vendd_0_0,vendd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vendd,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_vendd_0_0
   (switches,
    btn,
    clk,
    clr,
    led,
    an,
    ca);
  input [3:0]switches;
  input [2:0]btn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input clr;
  output [3:0]led;
  output [3:0]an;
  output [6:0]ca;

  wire [3:0]an;
  wire [2:0]btn;
  wire [6:0]ca;
  wire clk;
  wire clr;
  wire [3:0]led;
  wire [3:0]switches;

  design_1_vendd_0_0_vendd inst
       (.an(an),
        .btn(btn),
        .ca(ca),
        .clk(clk),
        .clr(clr),
        .led(led),
        .switches(switches));
endmodule

(* ORIG_REF_NAME = "anode_d" *) 
module design_1_vendd_0_0_anode_d
   (an,
    ca,
    ce,
    clk,
    clr,
    Q);
  output [3:0]an;
  output [6:0]ca;
  input ce;
  input clk;
  input clr;
  input [4:0]Q;

  wire [4:0]Q;
  wire \S[0]_i_1_n_0 ;
  wire \S[1]_i_1_n_0 ;
  wire [3:0]an;
  wire [6:0]ca;
  wire ce;
  wire clk;
  wire clk_en;
  wire clr;
  wire [1:0]s;
  wire [0:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \S[0]_i_1 
       (.I0(clk_en),
        .I1(ce),
        .I2(s[0]),
        .O(\S[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \S[1]_i_1 
       (.I0(s[0]),
        .I1(ce),
        .I2(clk_en),
        .I3(s[1]),
        .O(\S[1]_i_1_n_0 ));
  FDCE \S_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clr),
        .D(\S[0]_i_1_n_0 ),
        .Q(s[0]));
  FDCE \S_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clr),
        .D(\S[1]_i_1_n_0 ),
        .Q(s[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(s[0]),
        .I1(s[1]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(s[1]),
        .I1(s[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(s[0]),
        .I1(s[1]),
        .O(an[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(s[0]),
        .I1(s[1]),
        .O(an[3]));
  LUT6 #(
    .INIT(64'hDFCFCFCFCFEFDFDF)) 
    \ca[0]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(sel0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(ca[0]));
  LUT6 #(
    .INIT(64'hDFDF0010EFDF0000)) 
    \ca[1]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[2]),
        .I4(sel0),
        .I5(Q[1]),
        .O(ca[1]));
  LUT6 #(
    .INIT(64'hDFDFDFFF00100000)) 
    \ca[2]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sel0),
        .O(ca[2]));
  LUT6 #(
    .INIT(64'hFFCF0020CFDF1000)) 
    \ca[3]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[2]),
        .I4(sel0),
        .I5(Q[1]),
        .O(ca[3]));
  LUT6 #(
    .INIT(64'h2020002000100000)) 
    \ca[4]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(sel0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(ca[4]));
  LUT6 #(
    .INIT(64'h2020300010002000)) 
    \ca[5]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[2]),
        .I4(sel0),
        .I5(Q[1]),
        .O(ca[5]));
  LUT6 #(
    .INIT(64'hCFEF0000EFDF1000)) 
    \ca[6]_INST_0 
       (.I0(Q[3]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[2]),
        .I4(sel0),
        .I5(Q[1]),
        .O(ca[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \ca[6]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(Q[4]),
        .O(sel0));
  FDCE clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clr),
        .D(ce),
        .Q(clk_en));
endmodule

(* ORIG_REF_NAME = "clock_1k" *) 
module design_1_vendd_0_0_clock_1k
   (ce,
    clk,
    clr);
  output ce;
  input clk;
  input clr;

  wire \bruh_reg_n_0_[0] ;
  wire c_e_i_1__0_n_0;
  wire ce;
  wire clk;
  wire clr;
  wire [0:0]count;
  wire \count[31]_i_10__0_n_0 ;
  wire \count[31]_i_1__0_n_0 ;
  wire \count[31]_i_3__0_n_0 ;
  wire \count[31]_i_4__0_n_0 ;
  wire \count[31]_i_5__0_n_0 ;
  wire \count[31]_i_6__0_n_0 ;
  wire \count[31]_i_7__0_n_0 ;
  wire \count[31]_i_8__0_n_0 ;
  wire \count[31]_i_9__0_n_0 ;
  wire \count_reg[12]_i_1__0_n_0 ;
  wire \count_reg[12]_i_1__0_n_1 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[16]_i_1__0_n_0 ;
  wire \count_reg[16]_i_1__0_n_1 ;
  wire \count_reg[16]_i_1__0_n_2 ;
  wire \count_reg[16]_i_1__0_n_3 ;
  wire \count_reg[16]_i_1__0_n_4 ;
  wire \count_reg[16]_i_1__0_n_5 ;
  wire \count_reg[16]_i_1__0_n_6 ;
  wire \count_reg[16]_i_1__0_n_7 ;
  wire \count_reg[20]_i_1__0_n_0 ;
  wire \count_reg[20]_i_1__0_n_1 ;
  wire \count_reg[20]_i_1__0_n_2 ;
  wire \count_reg[20]_i_1__0_n_3 ;
  wire \count_reg[20]_i_1__0_n_4 ;
  wire \count_reg[20]_i_1__0_n_5 ;
  wire \count_reg[20]_i_1__0_n_6 ;
  wire \count_reg[20]_i_1__0_n_7 ;
  wire \count_reg[24]_i_1__0_n_0 ;
  wire \count_reg[24]_i_1__0_n_1 ;
  wire \count_reg[24]_i_1__0_n_2 ;
  wire \count_reg[24]_i_1__0_n_3 ;
  wire \count_reg[24]_i_1__0_n_4 ;
  wire \count_reg[24]_i_1__0_n_5 ;
  wire \count_reg[24]_i_1__0_n_6 ;
  wire \count_reg[24]_i_1__0_n_7 ;
  wire \count_reg[28]_i_1__0_n_0 ;
  wire \count_reg[28]_i_1__0_n_1 ;
  wire \count_reg[28]_i_1__0_n_2 ;
  wire \count_reg[28]_i_1__0_n_3 ;
  wire \count_reg[28]_i_1__0_n_4 ;
  wire \count_reg[28]_i_1__0_n_5 ;
  wire \count_reg[28]_i_1__0_n_6 ;
  wire \count_reg[28]_i_1__0_n_7 ;
  wire \count_reg[31]_i_2__0_n_2 ;
  wire \count_reg[31]_i_2__0_n_3 ;
  wire \count_reg[31]_i_2__0_n_5 ;
  wire \count_reg[31]_i_2__0_n_6 ;
  wire \count_reg[31]_i_2__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [3:2]\NLW_count_reg[31]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2__0_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \bruh_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[31]_i_1__0_n_0 ),
        .Q(\bruh_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    c_e_i_1__0
       (.I0(clr),
        .I1(\bruh_reg_n_0_[0] ),
        .I2(ce),
        .O(c_e_i_1__0_n_0));
  FDCE c_e_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clr),
        .D(c_e_i_1__0_n_0),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(count));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_10__0 
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .I2(\count_reg_n_0_[23] ),
        .I3(\count_reg_n_0_[22] ),
        .O(\count[31]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[31]_i_1__0 
       (.I0(\count[31]_i_3__0_n_0 ),
        .I1(\count[31]_i_4__0_n_0 ),
        .I2(\count[31]_i_5__0_n_0 ),
        .I3(\count[31]_i_6__0_n_0 ),
        .O(\count[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \count[31]_i_3__0 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count[31]_i_7__0_n_0 ),
        .O(\count[31]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count[31]_i_4__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count[31]_i_8__0_n_0 ),
        .O(\count[31]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5__0 
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[27] ),
        .I2(\count_reg_n_0_[24] ),
        .I3(\count_reg_n_0_[25] ),
        .I4(\count[31]_i_9__0_n_0 ),
        .O(\count[31]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_6__0 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[17] ),
        .I4(\count[31]_i_10__0_n_0 ),
        .O(\count[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \count[31]_i_7__0 
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[15] ),
        .I3(\count_reg_n_0_[14] ),
        .O(\count[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[31]_i_8__0 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .O(\count[31]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9__0 
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[30] ),
        .O(\count[31]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\count_reg[12]_i_1__0_n_0 ,\count_reg[12]_i_1__0_n_1 ,\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[16]_i_1__0 
       (.CI(\count_reg[12]_i_1__0_n_0 ),
        .CO({\count_reg[16]_i_1__0_n_0 ,\count_reg[16]_i_1__0_n_1 ,\count_reg[16]_i_1__0_n_2 ,\count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__0_n_4 ,\count_reg[16]_i_1__0_n_5 ,\count_reg[16]_i_1__0_n_6 ,\count_reg[16]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[20]_i_1__0 
       (.CI(\count_reg[16]_i_1__0_n_0 ),
        .CO({\count_reg[20]_i_1__0_n_0 ,\count_reg[20]_i_1__0_n_1 ,\count_reg[20]_i_1__0_n_2 ,\count_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1__0_n_4 ,\count_reg[20]_i_1__0_n_5 ,\count_reg[20]_i_1__0_n_6 ,\count_reg[20]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[24]_i_1__0 
       (.CI(\count_reg[20]_i_1__0_n_0 ),
        .CO({\count_reg[24]_i_1__0_n_0 ,\count_reg[24]_i_1__0_n_1 ,\count_reg[24]_i_1__0_n_2 ,\count_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1__0_n_4 ,\count_reg[24]_i_1__0_n_5 ,\count_reg[24]_i_1__0_n_6 ,\count_reg[24]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[28]_i_1__0 
       (.CI(\count_reg[24]_i_1__0_n_0 ),
        .CO({\count_reg[28]_i_1__0_n_0 ,\count_reg[28]_i_1__0_n_1 ,\count_reg[28]_i_1__0_n_2 ,\count_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1__0_n_4 ,\count_reg[28]_i_1__0_n_5 ,\count_reg[28]_i_1__0_n_6 ,\count_reg[28]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_2__0_n_7 ),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_2__0_n_6 ),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_2__0_n_5 ),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[31]_i_2__0 
       (.CI(\count_reg[28]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[31]_i_2__0_CO_UNCONNECTED [3:2],\count_reg[31]_i_2__0_n_2 ,\count_reg[31]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2__0_O_UNCONNECTED [3],\count_reg[31]_i_2__0_n_5 ,\count_reg[31]_i_2__0_n_6 ,\count_reg[31]_i_2__0_n_7 }),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1__0_n_0 ));
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "clock_e" *) 
module design_1_vendd_0_0_clock_e
   (clk_1Hz,
    clk,
    clr);
  output clk_1Hz;
  input clk;
  input clr;

  wire \bruh_reg_n_0_[0] ;
  wire c_e_i_1_n_0;
  wire clk;
  wire clk_1Hz;
  wire clr;
  wire [31:0]count;
  wire \count[31]_i_10_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire [0:0]count_0;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[31]_i_2_n_2 ;
  wire \count_reg[31]_i_2_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire [31:1]data0;
  wire [3:2]\NLW_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \bruh_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[31]_i_1_n_0 ),
        .Q(\bruh_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    c_e_i_1
       (.I0(clr),
        .I1(\bruh_reg_n_0_[0] ),
        .I2(clk_1Hz),
        .O(c_e_i_1_n_0));
  FDCE c_e_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clr),
        .D(c_e_i_1_n_0),
        .Q(clk_1Hz));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[31]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\count[31]_i_6_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_10 
       (.I0(count[21]),
        .I1(count[20]),
        .I2(count[23]),
        .I3(count[22]),
        .O(\count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \count[31]_i_3 
       (.I0(count[10]),
        .I1(count[11]),
        .I2(count[9]),
        .I3(count[8]),
        .I4(\count[31]_i_7_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count[31]_i_4 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5 
       (.I0(count[26]),
        .I1(count[27]),
        .I2(count[24]),
        .I3(count[25]),
        .I4(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[31]_i_6 
       (.I0(count[19]),
        .I1(count[18]),
        .I2(count[16]),
        .I3(count[17]),
        .I4(\count[31]_i_10_n_0 ),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[31]_i_7 
       (.I0(count[13]),
        .I1(count[12]),
        .I2(count[15]),
        .I3(count[14]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[31]_i_8 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[7]),
        .I3(count[6]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(count[29]),
        .I1(count[28]),
        .I2(count[31]),
        .I3(count[30]),
        .O(\count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count_0),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(count[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(count[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[31]_i_2 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO({\NLW_count_reg[31]_i_2_CO_UNCONNECTED [3:2],\count_reg[31]_i_2_n_2 ,\count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "digController" *) 
module design_1_vendd_0_0_digController
   (an,
    ca,
    clk,
    clr,
    Q);
  output [3:0]an;
  output [6:0]ca;
  input clk;
  input clr;
  input [4:0]Q;

  wire [4:0]Q;
  wire [3:0]an;
  wire [6:0]ca;
  wire ce;
  wire clk;
  wire clr;

  design_1_vendd_0_0_anode_d anode
       (.Q(Q),
        .an(an),
        .ca(ca),
        .ce(ce),
        .clk(clk),
        .clr(clr));
  design_1_vendd_0_0_clock_1k cluck
       (.ce(ce),
        .clk(clk),
        .clr(clr));
endmodule

(* ORIG_REF_NAME = "vendd" *) 
module design_1_vendd_0_0_vendd
   (an,
    led,
    ca,
    clk,
    clr,
    btn,
    switches);
  output [3:0]an;
  output [3:0]led;
  output [6:0]ca;
  input clk;
  input clr;
  input [2:0]btn;
  input [3:0]switches;

  wire [3:0]an;
  wire [2:0]btn;
  wire [6:0]ca;
  wire charged;
  wire charged_reg_i_1_n_0;
  wire charged_reg_i_2_n_0;
  wire clk;
  wire clk_1Hz;
  wire clr;
  wire [3:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire \led[3]_i_2_n_0 ;
  wire [2:0]next_state;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[1]_i_2_n_0 ;
  wire \next_state_reg[2]_i_1_n_0 ;
  wire \next_state_reg[2]_i_2_n_0 ;
  wire \next_state_reg[2]_i_3_n_0 ;
  wire \next_state_reg[2]_i_4_n_0 ;
  wire [2:0]p_state__0;
  wire p_state__0__0;
  wire \p_state_reg[0]_i_1_n_0 ;
  wire \p_state_reg[1]_i_1_n_0 ;
  wire \p_state_reg[2]_i_1_n_0 ;
  wire [4:0]price;
  wire \price_reg[2]_i_1_n_0 ;
  wire \price_reg[3]_i_1_n_0 ;
  wire \price_reg[4]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [3:0]switches;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    charged_reg
       (.CLR(1'b0),
        .D(charged_reg_i_1_n_0),
        .G(charged_reg_i_2_n_0),
        .GE(1'b1),
        .Q(charged));
  LUT6 #(
    .INIT(64'hBB2B2222BBBBBB2B)) 
    charged_reg_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(p_state__0[2]),
        .I2(p_state__0[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(p_state__0[1]),
        .O(charged_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    charged_reg_i_2
       (.I0(charged),
        .I1(charged_reg_i_1_n_0),
        .O(charged_reg_i_2_n_0));
  design_1_vendd_0_0_digController dig
       (.Q(price),
        .an(an),
        .ca(ca),
        .clk(clk),
        .clr(clr));
  design_1_vendd_0_0_clock_e hehe
       (.clk(clk),
        .clk_1Hz(clk_1Hz),
        .clr(clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \led[0]_i_1 
       (.I0(p_state__0[2]),
        .O(\led[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \led[1]_i_1 
       (.I0(p_state__0[1]),
        .I1(p_state__0[0]),
        .O(\led[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[2]_i_1 
       (.I0(p_state__0[2]),
        .I1(p_state__0[0]),
        .O(\led[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006A00)) 
    \led[3]_i_1 
       (.I0(p_state__0[2]),
        .I1(p_state__0[0]),
        .I2(p_state__0[1]),
        .I3(charged),
        .I4(clr),
        .O(\led[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[3]_i_2 
       (.I0(p_state__0[2]),
        .I1(p_state__0[1]),
        .O(\led[3]_i_2_n_0 ));
  FDRE \led_reg[0] 
       (.C(clk_1Hz),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_reg[1] 
       (.C(clk_1Hz),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_reg[2] 
       (.C(clk_1Hz),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_reg[3] 
       (.C(clk_1Hz),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[3]_i_2_n_0 ),
        .Q(led[3]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(\next_state_reg[2]_i_2_n_0 ),
        .D(\next_state_reg[0]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \next_state_reg[0]_i_1 
       (.I0(p_state__0[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(charged_reg_i_1_n_0),
        .I3(\next_state_reg[0]_i_2_n_0 ),
        .O(\next_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFEF20F0DF2F2)) 
    \next_state_reg[0]_i_2 
       (.I0(btn[2]),
        .I1(btn[1]),
        .I2(btn[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\next_state_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(\next_state_reg[2]_i_2_n_0 ),
        .D(\next_state_reg[1]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT6 #(
    .INIT(64'h2E22E2EEE2EE2E22)) 
    \next_state_reg[1]_i_1 
       (.I0(\next_state_reg[1]_i_2_n_0 ),
        .I1(charged_reg_i_1_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(p_state__0[0]),
        .I4(\state_reg_n_0_[1] ),
        .I5(p_state__0[1]),
        .O(\next_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0F55F0EEF0EA)) 
    \next_state_reg[1]_i_2 
       (.I0(btn[1]),
        .I1(btn[2]),
        .I2(\state_reg_n_0_[0] ),
        .I3(btn[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\next_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(\next_state_reg[2]_i_2_n_0 ),
        .D(\next_state_reg[2]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h83A8)) 
    \next_state_reg[2]_i_1 
       (.I0(\next_state_reg[2]_i_3_n_0 ),
        .I1(\next_state_reg[2]_i_4_n_0 ),
        .I2(p_state__0[2]),
        .I3(\state_reg_n_0_[2] ),
        .O(\next_state_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[2]_i_2 
       (.I0(charged),
        .I1(charged_reg_i_1_n_0),
        .O(\next_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB80030)) 
    \next_state_reg[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(btn[0]),
        .I2(btn[2]),
        .I3(btn[1]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\next_state_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[2]_i_4 
       (.I0(p_state__0[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(p_state__0[1]),
        .O(\next_state_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    p_state
       (.I0(switches[0]),
        .I1(switches[2]),
        .I2(switches[3]),
        .I3(switches[1]),
        .O(p_state__0__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \p_state_reg[0] 
       (.CLR(1'b0),
        .D(\p_state_reg[0]_i_1_n_0 ),
        .G(p_state__0__0),
        .GE(1'b1),
        .Q(p_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \p_state_reg[0]_i_1 
       (.I0(switches[0]),
        .I1(switches[1]),
        .I2(switches[2]),
        .O(\p_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \p_state_reg[1] 
       (.CLR(1'b0),
        .D(\p_state_reg[1]_i_1_n_0 ),
        .G(p_state__0__0),
        .GE(1'b1),
        .Q(p_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \p_state_reg[1]_i_1 
       (.I0(switches[0]),
        .I1(switches[1]),
        .I2(switches[2]),
        .O(\p_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \p_state_reg[2] 
       (.CLR(1'b0),
        .D(\p_state_reg[2]_i_1_n_0 ),
        .G(p_state__0__0),
        .GE(1'b1),
        .Q(p_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_state_reg[2]_i_1 
       (.I0(switches[0]),
        .O(\p_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \price_reg[0] 
       (.CLR(1'b0),
        .D(p_state__0[0]),
        .G(\price_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(price[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \price_reg[1] 
       (.CLR(1'b0),
        .D(p_state__0[1]),
        .G(\price_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(price[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \price_reg[2] 
       (.CLR(1'b0),
        .D(\price_reg[2]_i_1_n_0 ),
        .G(\price_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(price[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \price_reg[2]_i_1 
       (.I0(p_state__0[0]),
        .I1(p_state__0[2]),
        .O(\price_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \price_reg[3] 
       (.CLR(1'b0),
        .D(\price_reg[3]_i_1_n_0 ),
        .G(\price_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(price[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \price_reg[3]_i_1 
       (.I0(p_state__0[0]),
        .I1(p_state__0[1]),
        .O(\price_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \price_reg[4] 
       (.CLR(1'b0),
        .D(p_state__0[2]),
        .G(\price_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(price[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \price_reg[4]_i_1 
       (.I0(p_state__0[1]),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .O(\price_reg[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_1Hz),
        .CE(1'b1),
        .CLR(clr),
        .D(next_state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_1Hz),
        .CE(1'b1),
        .CLR(clr),
        .D(next_state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_1Hz),
        .CE(1'b1),
        .CLR(clr),
        .D(next_state[2]),
        .Q(\state_reg_n_0_[2] ));
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
