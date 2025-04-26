-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Apr 16 14:59:37 2025
-- Host        : ecelwavw244605 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/nle2435/Vendingggg/Vendingggg.srcs/sources_1/bd/design_1/ip/design_1_vendd_0_0/design_1_vendd_0_0_stub.vhdl
-- Design      : design_1_vendd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticpg236-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vendd_0_0 is
  Port ( 
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ca : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end design_1_vendd_0_0;

architecture stub of design_1_vendd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "switches[3:0],btn[2:0],clk,clr,led[3:0],an[3:0],ca[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vendd,Vivado 2019.2";
begin
end;
