-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Mon Jul 27 11:51:27 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/vry_FifoFirstRead_1/vry_FifoFirstRead_1_stub.vhdl
-- Design      : vry_FifoFirstRead_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vry_FifoFirstRead_1 is
  Port ( 
    rst_n : in STD_LOGIC;
    sclk : in STD_LOGIC;
    full : out STD_LOGIC
  );

end vry_FifoFirstRead_1;

architecture stub of vry_FifoFirstRead_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_n,sclk,full";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vry_FifoFirstRead,Vivado 2014.4";
begin
end;
