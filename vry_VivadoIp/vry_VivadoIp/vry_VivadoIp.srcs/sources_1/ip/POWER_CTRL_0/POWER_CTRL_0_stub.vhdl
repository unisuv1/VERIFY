-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Thu Aug 06 18:20:51 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/POWER_CTRL_0/POWER_CTRL_0_stub.vhdl
-- Design      : POWER_CTRL_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity POWER_CTRL_0 is
  Port ( 
    clk : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    system_rst : in STD_LOGIC;
    power_down : out STD_LOGIC;
    power_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    delay_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    down_delay_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    power_H_in_f : out STD_LOGIC;
    power_O_in_f : out STD_LOGIC;
    vh_error_f : out STD_LOGIC;
    power_up : in STD_LOGIC;
    power_fliter : in STD_LOGIC_VECTOR ( 31 downto 0 );
    power_H_in : in STD_LOGIC;
    power_O_in : in STD_LOGIC;
    vh_error : in STD_LOGIC;
    vh_error_en : in STD_LOGIC;
    power_H_error : out STD_LOGIC;
    power_O_error : out STD_LOGIC;
    power_vh_error : out STD_LOGIC;
    power_up_5v : out STD_LOGIC;
    power_up_14v : out STD_LOGIC;
    power_up_7v : out STD_LOGIC
  );

end POWER_CTRL_0;

architecture stub of POWER_CTRL_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_out,system_rst,power_down,power_state[3:0],delay_cnt[31:0],down_delay_cnt[31:0],power_H_in_f,power_O_in_f,vh_error_f,power_up,power_fliter[31:0],power_H_in,power_O_in,vh_error,vh_error_en,power_H_error,power_O_error,power_vh_error,power_up_5v,power_up_14v,power_up_7v";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "POWER_CTRL,Vivado 2014.4";
begin
end;
