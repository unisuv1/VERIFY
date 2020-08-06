-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Thu Aug 06 18:20:52 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/POWER_CTRL_0/POWER_CTRL_0_funcsim.vhdl
-- Design      : POWER_CTRL_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity POWER_CTRL_0_POWER_CTRL is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    delay_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    power_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC;
    power_vh_error : out STD_LOGIC;
    power_up_5v : out STD_LOGIC;
    power_up_14v : out STD_LOGIC;
    power_up_7v : out STD_LOGIC;
    power_H_error : out STD_LOGIC;
    power_O_error : out STD_LOGIC;
    vh_error : in STD_LOGIC;
    power_up : in STD_LOGIC;
    clk : in STD_LOGIC;
    vh_error_en : in STD_LOGIC;
    power_O_in : in STD_LOGIC;
    power_H_in : in STD_LOGIC;
    system_rst : in STD_LOGIC;
    power_fliter : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of POWER_CTRL_0_POWER_CTRL : entity is "POWER_CTRL";
end POWER_CTRL_0_POWER_CTRL;

architecture STRUCTURE of POWER_CTRL_0_POWER_CTRL is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cnt0 : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^delay_cnt\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal f_counter_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal f_counter_A0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal f_counter_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal f_counter_B0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal f_counter_C : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal f_counter_C0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal filter_state_A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal filter_state_B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal filter_state_C : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lock5_out : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state[1]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_sequential_power_state_reg[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \n_0_FSM_sequential_power_state_reg[0]\ : signal is "yes";
  signal \n_0_FSM_sequential_power_state_reg[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_sequential_power_state_reg[1]\ : signal is "yes";
  signal \n_0_FSM_sequential_power_state_reg[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_sequential_power_state_reg[2]\ : signal is "yes";
  signal \n_0_cnt[0]_i_2\ : STD_LOGIC;
  signal \n_0_cnt[7]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[10]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[11]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[12]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[12]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[12]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[12]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[12]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[13]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[14]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[15]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[16]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[16]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[16]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[16]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[16]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[17]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[18]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[19]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[20]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[20]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[20]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[20]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[20]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[21]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[22]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[23]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[24]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[24]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[24]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[24]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[24]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[25]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[26]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[27]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[28]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[28]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[28]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[28]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[28]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[29]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[30]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_10\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_11\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_12\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_13\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_14\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_7\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_8\ : STD_LOGIC;
  signal \n_0_delay_cnt[31]_i_9\ : STD_LOGIC;
  signal \n_0_delay_cnt[3]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[4]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[4]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[4]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[4]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[4]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[5]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[6]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[7]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[8]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt[8]_i_3\ : STD_LOGIC;
  signal \n_0_delay_cnt[8]_i_4\ : STD_LOGIC;
  signal \n_0_delay_cnt[8]_i_5\ : STD_LOGIC;
  signal \n_0_delay_cnt[8]_i_6\ : STD_LOGIC;
  signal \n_0_delay_cnt[9]_i_1\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A[0]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[10]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[11]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[12]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[12]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[12]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[12]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[12]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[13]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[14]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[15]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[16]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[16]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[16]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[16]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[16]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[17]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[18]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[19]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[1]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[20]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[20]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[20]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[20]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[20]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[21]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[22]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[23]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[24]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[24]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[24]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[24]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[24]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[25]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[26]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[27]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[28]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[28]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[28]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[28]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[28]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[29]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[2]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[30]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[31]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[31]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[31]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[31]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[3]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[4]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[4]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[4]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[4]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[4]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[5]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[6]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[7]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[8]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A[8]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_A[8]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_A[8]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_A[8]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_A[9]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[16]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[20]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[24]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_A_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B[0]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[10]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[11]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[12]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[12]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[12]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[12]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[12]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[13]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[14]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[15]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[16]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[16]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[16]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[16]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[16]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[17]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[18]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[19]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[1]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[20]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[20]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[20]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[20]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[20]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[21]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[22]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[23]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[24]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[24]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[24]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[24]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[24]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[25]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[26]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[27]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[28]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[28]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[28]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[28]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[28]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[29]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[2]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[30]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[31]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[31]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[31]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[31]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[3]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[4]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[4]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[4]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[4]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[4]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[5]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[6]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[7]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[8]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B[8]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_B[8]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_B[8]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_B[8]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_B[9]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[16]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[20]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[24]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_B_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C[0]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[10]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[11]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[12]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[12]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[12]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[12]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[12]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[13]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[14]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[15]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[16]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[16]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[16]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[16]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[16]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[17]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[18]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[19]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[1]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[20]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[20]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[20]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[20]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[20]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[21]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[22]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[23]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[24]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[24]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[24]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[24]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[24]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[25]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[26]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[27]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[28]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[28]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[28]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[28]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[28]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[29]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[2]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[30]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[31]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[31]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[31]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[31]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[3]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[4]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[4]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[4]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[4]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[4]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[5]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[6]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[7]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[8]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C[8]_i_3\ : STD_LOGIC;
  signal \n_0_f_counter_C[8]_i_4\ : STD_LOGIC;
  signal \n_0_f_counter_C[8]_i_5\ : STD_LOGIC;
  signal \n_0_f_counter_C[8]_i_6\ : STD_LOGIC;
  signal \n_0_f_counter_C[9]_i_1\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[16]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[20]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[24]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_f_counter_C_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_filter_state_A[0]_i_1\ : STD_LOGIC;
  signal \n_0_filter_state_A[1]_i_1\ : STD_LOGIC;
  signal \n_0_filter_state_B[0]_i_1\ : STD_LOGIC;
  signal \n_0_filter_state_B[1]_i_1\ : STD_LOGIC;
  signal \n_0_filter_state_C[0]_i_1\ : STD_LOGIC;
  signal \n_0_filter_state_C[1]_i_1\ : STD_LOGIC;
  signal n_0_lock_i_2 : STD_LOGIC;
  signal n_0_lock_reg : STD_LOGIC;
  signal n_0_power_H_error_i_1 : STD_LOGIC;
  signal n_0_power_H_in_f_i_1 : STD_LOGIC;
  signal n_0_power_H_in_f_i_10 : STD_LOGIC;
  signal n_0_power_H_in_f_i_11 : STD_LOGIC;
  signal n_0_power_H_in_f_i_12 : STD_LOGIC;
  signal n_0_power_H_in_f_i_13 : STD_LOGIC;
  signal n_0_power_H_in_f_i_14 : STD_LOGIC;
  signal n_0_power_H_in_f_i_15 : STD_LOGIC;
  signal n_0_power_H_in_f_i_16 : STD_LOGIC;
  signal n_0_power_H_in_f_i_2 : STD_LOGIC;
  signal n_0_power_H_in_f_i_5 : STD_LOGIC;
  signal n_0_power_H_in_f_i_6 : STD_LOGIC;
  signal n_0_power_H_in_f_i_7 : STD_LOGIC;
  signal n_0_power_H_in_f_i_9 : STD_LOGIC;
  signal n_0_power_H_in_f_reg_i_4 : STD_LOGIC;
  signal n_0_power_H_in_f_reg_i_8 : STD_LOGIC;
  signal n_0_power_O_error_i_1 : STD_LOGIC;
  signal n_0_power_O_in_f_i_1 : STD_LOGIC;
  signal n_0_power_O_in_f_i_10 : STD_LOGIC;
  signal n_0_power_O_in_f_i_11 : STD_LOGIC;
  signal n_0_power_O_in_f_i_12 : STD_LOGIC;
  signal n_0_power_O_in_f_i_13 : STD_LOGIC;
  signal n_0_power_O_in_f_i_14 : STD_LOGIC;
  signal n_0_power_O_in_f_i_15 : STD_LOGIC;
  signal n_0_power_O_in_f_i_16 : STD_LOGIC;
  signal n_0_power_O_in_f_i_2 : STD_LOGIC;
  signal n_0_power_O_in_f_i_5 : STD_LOGIC;
  signal n_0_power_O_in_f_i_6 : STD_LOGIC;
  signal n_0_power_O_in_f_i_7 : STD_LOGIC;
  signal n_0_power_O_in_f_i_9 : STD_LOGIC;
  signal n_0_power_O_in_f_reg_i_4 : STD_LOGIC;
  signal n_0_power_O_in_f_reg_i_8 : STD_LOGIC;
  signal n_0_power_down_i_2 : STD_LOGIC;
  signal n_0_power_down_i_3 : STD_LOGIC;
  signal n_0_power_down_i_4 : STD_LOGIC;
  signal n_0_power_up_14v_i_1 : STD_LOGIC;
  signal n_0_power_up_14v_i_2 : STD_LOGIC;
  signal n_0_power_up_14v_i_3 : STD_LOGIC;
  signal n_0_power_up_14v_i_4 : STD_LOGIC;
  signal n_0_power_up_14v_i_5 : STD_LOGIC;
  signal n_0_power_up_5v_r_i_1 : STD_LOGIC;
  signal n_0_power_up_7v_i_1 : STD_LOGIC;
  signal n_0_power_up_7v_i_2 : STD_LOGIC;
  signal n_0_power_vh_error_i_1 : STD_LOGIC;
  signal n_0_vh_error_f_i_1 : STD_LOGIC;
  signal n_0_vh_error_f_i_10 : STD_LOGIC;
  signal n_0_vh_error_f_i_11 : STD_LOGIC;
  signal n_0_vh_error_f_i_12 : STD_LOGIC;
  signal n_0_vh_error_f_i_13 : STD_LOGIC;
  signal n_0_vh_error_f_i_14 : STD_LOGIC;
  signal n_0_vh_error_f_i_15 : STD_LOGIC;
  signal n_0_vh_error_f_i_4 : STD_LOGIC;
  signal n_0_vh_error_f_i_5 : STD_LOGIC;
  signal n_0_vh_error_f_i_6 : STD_LOGIC;
  signal n_0_vh_error_f_i_8 : STD_LOGIC;
  signal n_0_vh_error_f_i_9 : STD_LOGIC;
  signal n_0_vh_error_f_reg_i_3 : STD_LOGIC;
  signal n_0_vh_error_f_reg_i_7 : STD_LOGIC;
  signal \n_1_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[16]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[20]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[24]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_A_reg[8]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[16]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[20]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[24]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_B_reg[8]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[16]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[20]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[24]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_f_counter_C_reg[8]_i_2\ : STD_LOGIC;
  signal n_1_power_H_in_f_reg_i_3 : STD_LOGIC;
  signal n_1_power_H_in_f_reg_i_4 : STD_LOGIC;
  signal n_1_power_H_in_f_reg_i_8 : STD_LOGIC;
  signal n_1_power_O_in_f_reg_i_3 : STD_LOGIC;
  signal n_1_power_O_in_f_reg_i_4 : STD_LOGIC;
  signal n_1_power_O_in_f_reg_i_8 : STD_LOGIC;
  signal n_1_vh_error_f_reg_i_2 : STD_LOGIC;
  signal n_1_vh_error_f_reg_i_3 : STD_LOGIC;
  signal n_1_vh_error_f_reg_i_7 : STD_LOGIC;
  signal \n_2_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[31]_i_6\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[16]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[20]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[24]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[31]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_A_reg[8]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[16]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[20]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[24]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[31]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_B_reg[8]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[16]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[20]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[24]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[31]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_f_counter_C_reg[8]_i_2\ : STD_LOGIC;
  signal n_2_power_H_in_f_reg_i_3 : STD_LOGIC;
  signal n_2_power_H_in_f_reg_i_4 : STD_LOGIC;
  signal n_2_power_H_in_f_reg_i_8 : STD_LOGIC;
  signal n_2_power_O_in_f_reg_i_3 : STD_LOGIC;
  signal n_2_power_O_in_f_reg_i_4 : STD_LOGIC;
  signal n_2_power_O_in_f_reg_i_8 : STD_LOGIC;
  signal n_2_vh_error_f_reg_i_2 : STD_LOGIC;
  signal n_2_vh_error_f_reg_i_3 : STD_LOGIC;
  signal n_2_vh_error_f_reg_i_7 : STD_LOGIC;
  signal \n_3_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[31]_i_6\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[16]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[20]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[24]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[31]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_A_reg[8]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[16]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[20]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[24]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[31]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_B_reg[8]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[16]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[20]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[24]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[31]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_f_counter_C_reg[8]_i_2\ : STD_LOGIC;
  signal n_3_power_H_in_f_reg_i_3 : STD_LOGIC;
  signal n_3_power_H_in_f_reg_i_4 : STD_LOGIC;
  signal n_3_power_H_in_f_reg_i_8 : STD_LOGIC;
  signal n_3_power_O_in_f_reg_i_3 : STD_LOGIC;
  signal n_3_power_O_in_f_reg_i_4 : STD_LOGIC;
  signal n_3_power_O_in_f_reg_i_8 : STD_LOGIC;
  signal n_3_vh_error_f_reg_i_2 : STD_LOGIC;
  signal n_3_vh_error_f_reg_i_3 : STD_LOGIC;
  signal n_3_vh_error_f_reg_i_7 : STD_LOGIC;
  signal \n_4_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_4_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[31]_i_6\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_5_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[31]_i_6\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_6_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[12]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[16]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[20]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[24]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[28]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[31]_i_6\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[4]_i_2\ : STD_LOGIC;
  signal \n_7_delay_cnt_reg[8]_i_2\ : STD_LOGIC;
  signal \^power_h_error\ : STD_LOGIC;
  signal power_H_in_f_r : STD_LOGIC;
  signal power_H_in_r : STD_LOGIC;
  signal \^power_o_error\ : STD_LOGIC;
  signal power_O_in_f_r : STD_LOGIC;
  signal power_O_in_r : STD_LOGIC;
  signal \^power_up_14v\ : STD_LOGIC;
  signal \^power_up_5v\ : STD_LOGIC;
  signal \^power_up_7v\ : STD_LOGIC;
  signal power_up_7v0 : STD_LOGIC;
  signal power_up_7v1_out : STD_LOGIC;
  signal vh_error_r : STD_LOGIC;
  signal \NLW_delay_cnt_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_cnt_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_f_counter_A_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_f_counter_A_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_f_counter_B_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_f_counter_B_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_f_counter_C_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_f_counter_C_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_power_H_in_f_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_power_H_in_f_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_power_H_in_f_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_power_H_in_f_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_power_O_in_f_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_power_O_in_f_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_power_O_in_f_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_power_O_in_f_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vh_error_f_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vh_error_f_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vh_error_f_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vh_error_f_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_power_state[1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_power_state[1]_i_7\ : label is "soft_lutpair6";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_power_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_power_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_power_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_cnt[31]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_cnt[31]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \filter_state_A[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \filter_state_A[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \filter_state_B[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \filter_state_B[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \filter_state_C[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \filter_state_C[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of lock_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of power_down_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of power_down_i_5 : label is "soft_lutpair5";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  delay_cnt(31 downto 0) <= \^delay_cnt\(31 downto 0);
  power_H_error <= \^power_h_error\;
  power_O_error <= \^power_o_error\;
  power_up_14v <= \^power_up_14v\;
  power_up_5v <= \^power_up_5v\;
  power_up_7v <= \^power_up_7v\;
\FSM_sequential_power_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFD100D1"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      I2 => \n_0_FSM_sequential_power_state[0]_i_2\,
      I3 => \n_0_FSM_sequential_power_state_reg[0]\,
      I4 => \n_0_FSM_sequential_power_state[0]_i_3\,
      I5 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => \n_0_FSM_sequential_power_state[0]_i_1\
    );
\FSM_sequential_power_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFFFFFFAAAA"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I1 => \n_0_delay_cnt[31]_i_7\,
      I2 => \n_0_delay_cnt[31]_i_8\,
      I3 => \n_0_delay_cnt[31]_i_9\,
      I4 => n_0_power_down_i_4,
      I5 => \^o1\,
      O => \n_0_FSM_sequential_power_state[0]_i_2\
    );
\FSM_sequential_power_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0000DFDFD0DF"
    )
    port map (
      I0 => vh_error_en,
      I1 => \^o4\,
      I2 => \n_0_FSM_sequential_power_state_reg[1]\,
      I3 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I4 => \^o1\,
      I5 => n_0_power_down_i_4,
      O => \n_0_FSM_sequential_power_state[0]_i_3\
    );
\FSM_sequential_power_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE2E2E2"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state[1]_i_2\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_FSM_sequential_power_state_reg[1]\,
      I3 => \n_0_FSM_sequential_power_state[1]_i_3\,
      I4 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I5 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => \n_0_FSM_sequential_power_state[1]_i_1\
    );
\FSM_sequential_power_state[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \^delay_cnt\(13),
      I1 => \^delay_cnt\(12),
      I2 => \^delay_cnt\(11),
      I3 => \^delay_cnt\(14),
      I4 => \^delay_cnt\(16),
      O => \n_0_FSM_sequential_power_state[1]_i_10\
    );
\FSM_sequential_power_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111D100000000"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \^o1\,
      I2 => \n_0_delay_cnt[31]_i_9\,
      I3 => \n_0_delay_cnt[31]_i_8\,
      I4 => \n_0_delay_cnt[31]_i_7\,
      I5 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_FSM_sequential_power_state[1]_i_2\
    );
\FSM_sequential_power_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o1\,
      I1 => \^o2\,
      I2 => power_up,
      I3 => \^o3\,
      O => \n_0_FSM_sequential_power_state[1]_i_3\
    );
\FSM_sequential_power_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFEFE"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state[1]_i_5\,
      I1 => \n_0_FSM_sequential_power_state[1]_i_6\,
      I2 => \n_0_FSM_sequential_power_state[1]_i_7\,
      I3 => \n_0_FSM_sequential_power_state[1]_i_8\,
      I4 => \n_0_FSM_sequential_power_state[1]_i_9\,
      I5 => \n_0_FSM_sequential_power_state[1]_i_10\,
      O => \n_0_FSM_sequential_power_state[1]_i_4\
    );
\FSM_sequential_power_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \^delay_cnt\(24),
      I1 => \^delay_cnt\(23),
      I2 => \^delay_cnt\(25),
      I3 => \^delay_cnt\(28),
      O => \n_0_FSM_sequential_power_state[1]_i_5\
    );
\FSM_sequential_power_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \^delay_cnt\(30),
      I1 => \^delay_cnt\(27),
      I2 => \^delay_cnt\(21),
      I3 => \^delay_cnt\(31),
      O => \n_0_FSM_sequential_power_state[1]_i_6\
    );
\FSM_sequential_power_state[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \^delay_cnt\(26),
      I1 => \^delay_cnt\(22),
      I2 => \^delay_cnt\(29),
      O => \n_0_FSM_sequential_power_state[1]_i_7\
    );
\FSM_sequential_power_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFFFFFFFFFF"
    )
    port map (
      I0 => \^delay_cnt\(18),
      I1 => \^delay_cnt\(17),
      I2 => \^delay_cnt\(20),
      I3 => \^delay_cnt\(15),
      I4 => \^delay_cnt\(16),
      I5 => \^delay_cnt\(19),
      O => \n_0_FSM_sequential_power_state[1]_i_8\
    );
\FSM_sequential_power_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => \^delay_cnt\(10),
      I1 => \^delay_cnt\(8),
      I2 => \^delay_cnt\(9),
      I3 => \^delay_cnt\(7),
      O => \n_0_FSM_sequential_power_state[1]_i_9\
    );
\FSM_sequential_power_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_0_power_down_i_2,
      D => \n_0_FSM_sequential_power_state[0]_i_1\,
      Q => \n_0_FSM_sequential_power_state_reg[0]\,
      R => cnt0
    );
\FSM_sequential_power_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_0_power_down_i_2,
      D => \n_0_FSM_sequential_power_state[1]_i_1\,
      Q => \n_0_FSM_sequential_power_state_reg[1]\,
      R => cnt0
    );
\FSM_sequential_power_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_0_power_down_i_2,
      D => '0',
      Q => \n_0_FSM_sequential_power_state_reg[2]\,
      R => cnt0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23333333"
    )
    port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(6),
      I3 => cnt(2),
      I4 => \n_0_cnt[0]_i_2\,
      O => cnt_0(0)
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => cnt(4),
      I1 => cnt(7),
      I2 => cnt(5),
      I3 => cnt(3),
      O => \n_0_cnt[0]_i_2\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => cnt_0(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => cnt(2),
      O => cnt_0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => cnt(3),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => cnt(2),
      O => cnt_0(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(3),
      O => cnt_0(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(2),
      I5 => cnt(4),
      O => cnt_0(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => cnt(6),
      I1 => cnt(4),
      I2 => \n_0_cnt[7]_i_2\,
      I3 => cnt(3),
      I4 => cnt(5),
      O => cnt_0(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => cnt(7),
      I1 => cnt(5),
      I2 => cnt(3),
      I3 => \n_0_cnt[7]_i_2\,
      I4 => cnt(4),
      I5 => cnt(6),
      O => cnt_0(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(0),
      O => \n_0_cnt[7]_i_2\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(0),
      Q => cnt(0),
      R => cnt0
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(1),
      Q => cnt(1),
      R => cnt0
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(2),
      Q => cnt(2),
      R => cnt0
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(3),
      Q => cnt(3),
      R => cnt0
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(4),
      Q => cnt(4),
      R => cnt0
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(5),
      Q => cnt(5),
      R => cnt0
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(6),
      Q => cnt(6),
      R => cnt0
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => cnt_0(7),
      Q => cnt(7),
      R => cnt0
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030044"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \^delay_cnt\(0),
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[0]_i_1\
    );
\delay_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[12]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[10]_i_1\
    );
\delay_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[12]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[11]_i_1\
    );
\delay_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[12]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[12]_i_1\
    );
\delay_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(12),
      O => \n_0_delay_cnt[12]_i_3\
    );
\delay_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(11),
      O => \n_0_delay_cnt[12]_i_4\
    );
\delay_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(10),
      O => \n_0_delay_cnt[12]_i_5\
    );
\delay_cnt[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(9),
      O => \n_0_delay_cnt[12]_i_6\
    );
\delay_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[16]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[13]_i_1\
    );
\delay_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[16]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[14]_i_1\
    );
\delay_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[16]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[15]_i_1\
    );
\delay_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[16]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[16]_i_1\
    );
\delay_cnt[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(16),
      O => \n_0_delay_cnt[16]_i_3\
    );
\delay_cnt[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(15),
      O => \n_0_delay_cnt[16]_i_4\
    );
\delay_cnt[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(14),
      O => \n_0_delay_cnt[16]_i_5\
    );
\delay_cnt[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(13),
      O => \n_0_delay_cnt[16]_i_6\
    );
\delay_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[20]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[17]_i_1\
    );
\delay_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[20]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[18]_i_1\
    );
\delay_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[20]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[19]_i_1\
    );
\delay_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[4]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[1]_i_1\
    );
\delay_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[20]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[20]_i_1\
    );
\delay_cnt[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(20),
      O => \n_0_delay_cnt[20]_i_3\
    );
\delay_cnt[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(19),
      O => \n_0_delay_cnt[20]_i_4\
    );
\delay_cnt[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(18),
      O => \n_0_delay_cnt[20]_i_5\
    );
\delay_cnt[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(17),
      O => \n_0_delay_cnt[20]_i_6\
    );
\delay_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[24]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[21]_i_1\
    );
\delay_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[24]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[22]_i_1\
    );
\delay_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[24]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[23]_i_1\
    );
\delay_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[24]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[24]_i_1\
    );
\delay_cnt[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(24),
      O => \n_0_delay_cnt[24]_i_3\
    );
\delay_cnt[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(23),
      O => \n_0_delay_cnt[24]_i_4\
    );
\delay_cnt[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(22),
      O => \n_0_delay_cnt[24]_i_5\
    );
\delay_cnt[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(21),
      O => \n_0_delay_cnt[24]_i_6\
    );
\delay_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[28]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[25]_i_1\
    );
\delay_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[28]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[26]_i_1\
    );
\delay_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[28]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[27]_i_1\
    );
\delay_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[28]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[28]_i_1\
    );
\delay_cnt[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(28),
      O => \n_0_delay_cnt[28]_i_3\
    );
\delay_cnt[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(27),
      O => \n_0_delay_cnt[28]_i_4\
    );
\delay_cnt[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(26),
      O => \n_0_delay_cnt[28]_i_5\
    );
\delay_cnt[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(25),
      O => \n_0_delay_cnt[28]_i_6\
    );
\delay_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[31]_i_6\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[29]_i_1\
    );
\delay_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[4]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[2]_i_1\
    );
\delay_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[31]_i_6\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[30]_i_1\
    );
\delay_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555155"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[2]\,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      I2 => \^o1\,
      I3 => power_up_7v1_out,
      I4 => \n_0_FSM_sequential_power_state_reg[0]\,
      I5 => cnt0,
      O => \n_0_delay_cnt[31]_i_1\
    );
\delay_cnt[31]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(31),
      O => \n_0_delay_cnt[31]_i_10\
    );
\delay_cnt[31]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(30),
      O => \n_0_delay_cnt[31]_i_11\
    );
\delay_cnt[31]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(29),
      O => \n_0_delay_cnt[31]_i_12\
    );
\delay_cnt[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => \^delay_cnt\(15),
      I1 => \^delay_cnt\(14),
      I2 => \^delay_cnt\(10),
      I3 => \^delay_cnt\(11),
      O => \n_0_delay_cnt[31]_i_13\
    );
\delay_cnt[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
    port map (
      I0 => \^delay_cnt\(6),
      I1 => \^delay_cnt\(7),
      I2 => \^delay_cnt\(8),
      I3 => \^delay_cnt\(14),
      I4 => \^delay_cnt\(15),
      I5 => \^delay_cnt\(9),
      O => \n_0_delay_cnt[31]_i_14\
    );
\delay_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[31]_i_6\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[31]_i_2\
    );
\delay_cnt[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I1 => \^o2\,
      I2 => power_up,
      I3 => \^o3\,
      O => power_up_7v1_out
    );
\delay_cnt[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFFFEFEFFF00"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_7\,
      I1 => \n_0_delay_cnt[31]_i_8\,
      I2 => \n_0_delay_cnt[31]_i_9\,
      I3 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I4 => \^o1\,
      I5 => n_0_power_down_i_4,
      O => \n_0_delay_cnt[31]_i_4\
    );
\delay_cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFFF00"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_7\,
      I1 => \n_0_delay_cnt[31]_i_8\,
      I2 => \n_0_delay_cnt[31]_i_9\,
      I3 => n_0_power_down_i_4,
      I4 => \^o1\,
      O => \n_0_delay_cnt[31]_i_5\
    );
\delay_cnt[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \^delay_cnt\(19),
      I1 => \^delay_cnt\(18),
      I2 => \^delay_cnt\(20),
      O => \n_0_delay_cnt[31]_i_7\
    );
\delay_cnt[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \^delay_cnt\(29),
      I1 => \^delay_cnt\(22),
      I2 => \^delay_cnt\(26),
      I3 => \n_0_FSM_sequential_power_state[1]_i_6\,
      I4 => \n_0_FSM_sequential_power_state[1]_i_5\,
      O => \n_0_delay_cnt[31]_i_8\
    );
\delay_cnt[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011FFFFFFFFFFFF"
    )
    port map (
      I0 => \^delay_cnt\(12),
      I1 => \^delay_cnt\(13),
      I2 => \n_0_delay_cnt[31]_i_13\,
      I3 => \n_0_delay_cnt[31]_i_14\,
      I4 => \^delay_cnt\(17),
      I5 => \^delay_cnt\(16),
      O => \n_0_delay_cnt[31]_i_9\
    );
\delay_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[4]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[3]_i_1\
    );
\delay_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[4]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[4]_i_1\
    );
\delay_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(4),
      O => \n_0_delay_cnt[4]_i_3\
    );
\delay_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(3),
      O => \n_0_delay_cnt[4]_i_4\
    );
\delay_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(2),
      O => \n_0_delay_cnt[4]_i_5\
    );
\delay_cnt[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(1),
      O => \n_0_delay_cnt[4]_i_6\
    );
\delay_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[8]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[5]_i_1\
    );
\delay_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_6_delay_cnt_reg[8]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[6]_i_1\
    );
\delay_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_5_delay_cnt_reg[8]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[7]_i_1\
    );
\delay_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_4_delay_cnt_reg[8]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[8]_i_1\
    );
\delay_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(8),
      O => \n_0_delay_cnt[8]_i_3\
    );
\delay_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(7),
      O => \n_0_delay_cnt[8]_i_4\
    );
\delay_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(6),
      O => \n_0_delay_cnt[8]_i_5\
    );
\delay_cnt[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^delay_cnt\(5),
      O => \n_0_delay_cnt[8]_i_6\
    );
\delay_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03004400"
    )
    port map (
      I0 => \n_0_delay_cnt[31]_i_4\,
      I1 => \n_0_FSM_sequential_power_state_reg[0]\,
      I2 => \n_0_delay_cnt[31]_i_5\,
      I3 => \n_7_delay_cnt_reg[12]_i_2\,
      I4 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => \n_0_delay_cnt[9]_i_1\
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[0]_i_1\,
      Q => \^delay_cnt\(0),
      R => '0'
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[10]_i_1\,
      Q => \^delay_cnt\(10),
      R => '0'
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[11]_i_1\,
      Q => \^delay_cnt\(11),
      R => '0'
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[12]_i_1\,
      Q => \^delay_cnt\(12),
      R => '0'
    );
\delay_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[8]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[12]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[12]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[12]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[12]_i_2\,
      O(2) => \n_5_delay_cnt_reg[12]_i_2\,
      O(1) => \n_6_delay_cnt_reg[12]_i_2\,
      O(0) => \n_7_delay_cnt_reg[12]_i_2\,
      S(3) => \n_0_delay_cnt[12]_i_3\,
      S(2) => \n_0_delay_cnt[12]_i_4\,
      S(1) => \n_0_delay_cnt[12]_i_5\,
      S(0) => \n_0_delay_cnt[12]_i_6\
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[13]_i_1\,
      Q => \^delay_cnt\(13),
      R => '0'
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[14]_i_1\,
      Q => \^delay_cnt\(14),
      R => '0'
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[15]_i_1\,
      Q => \^delay_cnt\(15),
      R => '0'
    );
\delay_cnt_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[16]_i_1\,
      Q => \^delay_cnt\(16),
      R => '0'
    );
\delay_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[12]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[16]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[16]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[16]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[16]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[16]_i_2\,
      O(2) => \n_5_delay_cnt_reg[16]_i_2\,
      O(1) => \n_6_delay_cnt_reg[16]_i_2\,
      O(0) => \n_7_delay_cnt_reg[16]_i_2\,
      S(3) => \n_0_delay_cnt[16]_i_3\,
      S(2) => \n_0_delay_cnt[16]_i_4\,
      S(1) => \n_0_delay_cnt[16]_i_5\,
      S(0) => \n_0_delay_cnt[16]_i_6\
    );
\delay_cnt_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[17]_i_1\,
      Q => \^delay_cnt\(17),
      R => '0'
    );
\delay_cnt_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[18]_i_1\,
      Q => \^delay_cnt\(18),
      R => '0'
    );
\delay_cnt_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[19]_i_1\,
      Q => \^delay_cnt\(19),
      R => '0'
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[1]_i_1\,
      Q => \^delay_cnt\(1),
      R => '0'
    );
\delay_cnt_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[20]_i_1\,
      Q => \^delay_cnt\(20),
      R => '0'
    );
\delay_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[16]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[20]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[20]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[20]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[20]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[20]_i_2\,
      O(2) => \n_5_delay_cnt_reg[20]_i_2\,
      O(1) => \n_6_delay_cnt_reg[20]_i_2\,
      O(0) => \n_7_delay_cnt_reg[20]_i_2\,
      S(3) => \n_0_delay_cnt[20]_i_3\,
      S(2) => \n_0_delay_cnt[20]_i_4\,
      S(1) => \n_0_delay_cnt[20]_i_5\,
      S(0) => \n_0_delay_cnt[20]_i_6\
    );
\delay_cnt_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[21]_i_1\,
      Q => \^delay_cnt\(21),
      R => '0'
    );
\delay_cnt_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[22]_i_1\,
      Q => \^delay_cnt\(22),
      R => '0'
    );
\delay_cnt_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[23]_i_1\,
      Q => \^delay_cnt\(23),
      R => '0'
    );
\delay_cnt_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[24]_i_1\,
      Q => \^delay_cnt\(24),
      R => '0'
    );
\delay_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[20]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[24]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[24]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[24]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[24]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[24]_i_2\,
      O(2) => \n_5_delay_cnt_reg[24]_i_2\,
      O(1) => \n_6_delay_cnt_reg[24]_i_2\,
      O(0) => \n_7_delay_cnt_reg[24]_i_2\,
      S(3) => \n_0_delay_cnt[24]_i_3\,
      S(2) => \n_0_delay_cnt[24]_i_4\,
      S(1) => \n_0_delay_cnt[24]_i_5\,
      S(0) => \n_0_delay_cnt[24]_i_6\
    );
\delay_cnt_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[25]_i_1\,
      Q => \^delay_cnt\(25),
      R => '0'
    );
\delay_cnt_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[26]_i_1\,
      Q => \^delay_cnt\(26),
      R => '0'
    );
\delay_cnt_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[27]_i_1\,
      Q => \^delay_cnt\(27),
      R => '0'
    );
\delay_cnt_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[28]_i_1\,
      Q => \^delay_cnt\(28),
      R => '0'
    );
\delay_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[24]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[28]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[28]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[28]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[28]_i_2\,
      O(2) => \n_5_delay_cnt_reg[28]_i_2\,
      O(1) => \n_6_delay_cnt_reg[28]_i_2\,
      O(0) => \n_7_delay_cnt_reg[28]_i_2\,
      S(3) => \n_0_delay_cnt[28]_i_3\,
      S(2) => \n_0_delay_cnt[28]_i_4\,
      S(1) => \n_0_delay_cnt[28]_i_5\,
      S(0) => \n_0_delay_cnt[28]_i_6\
    );
\delay_cnt_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[29]_i_1\,
      Q => \^delay_cnt\(29),
      R => '0'
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[2]_i_1\,
      Q => \^delay_cnt\(2),
      R => '0'
    );
\delay_cnt_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[30]_i_1\,
      Q => \^delay_cnt\(30),
      R => '0'
    );
\delay_cnt_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[31]_i_2\,
      Q => \^delay_cnt\(31),
      R => '0'
    );
\delay_cnt_reg[31]_i_6\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[28]_i_2\,
      CO(3 downto 2) => \NLW_delay_cnt_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_delay_cnt_reg[31]_i_6\,
      CO(0) => \n_3_delay_cnt_reg[31]_i_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_delay_cnt_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2) => \n_5_delay_cnt_reg[31]_i_6\,
      O(1) => \n_6_delay_cnt_reg[31]_i_6\,
      O(0) => \n_7_delay_cnt_reg[31]_i_6\,
      S(3) => '0',
      S(2) => \n_0_delay_cnt[31]_i_10\,
      S(1) => \n_0_delay_cnt[31]_i_11\,
      S(0) => \n_0_delay_cnt[31]_i_12\
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[3]_i_1\,
      Q => \^delay_cnt\(3),
      R => '0'
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[4]_i_1\,
      Q => \^delay_cnt\(4),
      R => '0'
    );
\delay_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_delay_cnt_reg[4]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[4]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[4]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[4]_i_2\,
      CYINIT => \^delay_cnt\(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[4]_i_2\,
      O(2) => \n_5_delay_cnt_reg[4]_i_2\,
      O(1) => \n_6_delay_cnt_reg[4]_i_2\,
      O(0) => \n_7_delay_cnt_reg[4]_i_2\,
      S(3) => \n_0_delay_cnt[4]_i_3\,
      S(2) => \n_0_delay_cnt[4]_i_4\,
      S(1) => \n_0_delay_cnt[4]_i_5\,
      S(0) => \n_0_delay_cnt[4]_i_6\
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[5]_i_1\,
      Q => \^delay_cnt\(5),
      R => '0'
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[6]_i_1\,
      Q => \^delay_cnt\(6),
      R => '0'
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[7]_i_1\,
      Q => \^delay_cnt\(7),
      R => '0'
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[8]_i_1\,
      Q => \^delay_cnt\(8),
      R => '0'
    );
\delay_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_delay_cnt_reg[4]_i_2\,
      CO(3) => \n_0_delay_cnt_reg[8]_i_2\,
      CO(2) => \n_1_delay_cnt_reg[8]_i_2\,
      CO(1) => \n_2_delay_cnt_reg[8]_i_2\,
      CO(0) => \n_3_delay_cnt_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_delay_cnt_reg[8]_i_2\,
      O(2) => \n_5_delay_cnt_reg[8]_i_2\,
      O(1) => \n_6_delay_cnt_reg[8]_i_2\,
      O(0) => \n_7_delay_cnt_reg[8]_i_2\,
      S(3) => \n_0_delay_cnt[8]_i_3\,
      S(2) => \n_0_delay_cnt[8]_i_4\,
      S(1) => \n_0_delay_cnt[8]_i_5\,
      S(0) => \n_0_delay_cnt[8]_i_6\
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \n_0_delay_cnt[31]_i_1\,
      D => \n_0_delay_cnt[9]_i_1\,
      Q => \^delay_cnt\(9),
      R => '0'
    );
\f_counter_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000090"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => filter_state_A(0),
      I4 => n_1_power_H_in_f_reg_i_3,
      I5 => f_counter_A(0),
      O => \n_0_f_counter_A[0]_i_1\
    );
\f_counter_A[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(10),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[10]_i_1\
    );
\f_counter_A[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(11),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[11]_i_1\
    );
\f_counter_A[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(12),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[12]_i_1\
    );
\f_counter_A[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(12),
      O => \n_0_f_counter_A[12]_i_3\
    );
\f_counter_A[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(11),
      O => \n_0_f_counter_A[12]_i_4\
    );
\f_counter_A[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(10),
      O => \n_0_f_counter_A[12]_i_5\
    );
\f_counter_A[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(9),
      O => \n_0_f_counter_A[12]_i_6\
    );
\f_counter_A[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(13),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[13]_i_1\
    );
\f_counter_A[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(14),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[14]_i_1\
    );
\f_counter_A[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(15),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[15]_i_1\
    );
\f_counter_A[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(16),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[16]_i_1\
    );
\f_counter_A[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(16),
      O => \n_0_f_counter_A[16]_i_3\
    );
\f_counter_A[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(15),
      O => \n_0_f_counter_A[16]_i_4\
    );
\f_counter_A[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(14),
      O => \n_0_f_counter_A[16]_i_5\
    );
\f_counter_A[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(13),
      O => \n_0_f_counter_A[16]_i_6\
    );
\f_counter_A[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(17),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[17]_i_1\
    );
\f_counter_A[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(18),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[18]_i_1\
    );
\f_counter_A[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(19),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[19]_i_1\
    );
\f_counter_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(1),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[1]_i_1\
    );
\f_counter_A[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(20),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[20]_i_1\
    );
\f_counter_A[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(20),
      O => \n_0_f_counter_A[20]_i_3\
    );
\f_counter_A[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(19),
      O => \n_0_f_counter_A[20]_i_4\
    );
\f_counter_A[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(18),
      O => \n_0_f_counter_A[20]_i_5\
    );
\f_counter_A[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(17),
      O => \n_0_f_counter_A[20]_i_6\
    );
\f_counter_A[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(21),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[21]_i_1\
    );
\f_counter_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(22),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[22]_i_1\
    );
\f_counter_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(23),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[23]_i_1\
    );
\f_counter_A[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(24),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[24]_i_1\
    );
\f_counter_A[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(24),
      O => \n_0_f_counter_A[24]_i_3\
    );
\f_counter_A[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(23),
      O => \n_0_f_counter_A[24]_i_4\
    );
\f_counter_A[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(22),
      O => \n_0_f_counter_A[24]_i_5\
    );
\f_counter_A[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(21),
      O => \n_0_f_counter_A[24]_i_6\
    );
\f_counter_A[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(25),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[25]_i_1\
    );
\f_counter_A[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(26),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[26]_i_1\
    );
\f_counter_A[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(27),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[27]_i_1\
    );
\f_counter_A[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(28),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[28]_i_1\
    );
\f_counter_A[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(28),
      O => \n_0_f_counter_A[28]_i_3\
    );
\f_counter_A[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(27),
      O => \n_0_f_counter_A[28]_i_4\
    );
\f_counter_A[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(26),
      O => \n_0_f_counter_A[28]_i_5\
    );
\f_counter_A[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(25),
      O => \n_0_f_counter_A[28]_i_6\
    );
\f_counter_A[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(29),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[29]_i_1\
    );
\f_counter_A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(2),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[2]_i_1\
    );
\f_counter_A[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(30),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[30]_i_1\
    );
\f_counter_A[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(31),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[31]_i_1\
    );
\f_counter_A[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(31),
      O => \n_0_f_counter_A[31]_i_3\
    );
\f_counter_A[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(30),
      O => \n_0_f_counter_A[31]_i_4\
    );
\f_counter_A[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(29),
      O => \n_0_f_counter_A[31]_i_5\
    );
\f_counter_A[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(3),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[3]_i_1\
    );
\f_counter_A[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(4),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[4]_i_1\
    );
\f_counter_A[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(4),
      O => \n_0_f_counter_A[4]_i_3\
    );
\f_counter_A[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(3),
      O => \n_0_f_counter_A[4]_i_4\
    );
\f_counter_A[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(2),
      O => \n_0_f_counter_A[4]_i_5\
    );
\f_counter_A[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(1),
      O => \n_0_f_counter_A[4]_i_6\
    );
\f_counter_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(5),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[5]_i_1\
    );
\f_counter_A[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(6),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[6]_i_1\
    );
\f_counter_A[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(7),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[7]_i_1\
    );
\f_counter_A[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(8),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[8]_i_1\
    );
\f_counter_A[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(8),
      O => \n_0_f_counter_A[8]_i_3\
    );
\f_counter_A[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(7),
      O => \n_0_f_counter_A[8]_i_4\
    );
\f_counter_A[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(6),
      O => \n_0_f_counter_A[8]_i_5\
    );
\f_counter_A[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_A(5),
      O => \n_0_f_counter_A[8]_i_6\
    );
\f_counter_A[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_H_in,
      I1 => power_H_in_r,
      I2 => filter_state_A(1),
      I3 => f_counter_A0(9),
      I4 => filter_state_A(0),
      I5 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_f_counter_A[9]_i_1\
    );
\f_counter_A_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[0]_i_1\,
      Q => f_counter_A(0),
      R => cnt0
    );
\f_counter_A_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[10]_i_1\,
      Q => f_counter_A(10),
      R => cnt0
    );
\f_counter_A_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[11]_i_1\,
      Q => f_counter_A(11),
      R => cnt0
    );
\f_counter_A_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[12]_i_1\,
      Q => f_counter_A(12),
      R => cnt0
    );
\f_counter_A_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[8]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[12]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[12]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[12]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(12 downto 9),
      S(3) => \n_0_f_counter_A[12]_i_3\,
      S(2) => \n_0_f_counter_A[12]_i_4\,
      S(1) => \n_0_f_counter_A[12]_i_5\,
      S(0) => \n_0_f_counter_A[12]_i_6\
    );
\f_counter_A_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[13]_i_1\,
      Q => f_counter_A(13),
      R => cnt0
    );
\f_counter_A_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[14]_i_1\,
      Q => f_counter_A(14),
      R => cnt0
    );
\f_counter_A_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[15]_i_1\,
      Q => f_counter_A(15),
      R => cnt0
    );
\f_counter_A_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[16]_i_1\,
      Q => f_counter_A(16),
      R => cnt0
    );
\f_counter_A_reg[16]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[12]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[16]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[16]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[16]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[16]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(16 downto 13),
      S(3) => \n_0_f_counter_A[16]_i_3\,
      S(2) => \n_0_f_counter_A[16]_i_4\,
      S(1) => \n_0_f_counter_A[16]_i_5\,
      S(0) => \n_0_f_counter_A[16]_i_6\
    );
\f_counter_A_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[17]_i_1\,
      Q => f_counter_A(17),
      R => cnt0
    );
\f_counter_A_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[18]_i_1\,
      Q => f_counter_A(18),
      R => cnt0
    );
\f_counter_A_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[19]_i_1\,
      Q => f_counter_A(19),
      R => cnt0
    );
\f_counter_A_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[1]_i_1\,
      Q => f_counter_A(1),
      R => cnt0
    );
\f_counter_A_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[20]_i_1\,
      Q => f_counter_A(20),
      R => cnt0
    );
\f_counter_A_reg[20]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[16]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[20]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[20]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[20]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[20]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(20 downto 17),
      S(3) => \n_0_f_counter_A[20]_i_3\,
      S(2) => \n_0_f_counter_A[20]_i_4\,
      S(1) => \n_0_f_counter_A[20]_i_5\,
      S(0) => \n_0_f_counter_A[20]_i_6\
    );
\f_counter_A_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[21]_i_1\,
      Q => f_counter_A(21),
      R => cnt0
    );
\f_counter_A_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[22]_i_1\,
      Q => f_counter_A(22),
      R => cnt0
    );
\f_counter_A_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[23]_i_1\,
      Q => f_counter_A(23),
      R => cnt0
    );
\f_counter_A_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[24]_i_1\,
      Q => f_counter_A(24),
      R => cnt0
    );
\f_counter_A_reg[24]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[20]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[24]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[24]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[24]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[24]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(24 downto 21),
      S(3) => \n_0_f_counter_A[24]_i_3\,
      S(2) => \n_0_f_counter_A[24]_i_4\,
      S(1) => \n_0_f_counter_A[24]_i_5\,
      S(0) => \n_0_f_counter_A[24]_i_6\
    );
\f_counter_A_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[25]_i_1\,
      Q => f_counter_A(25),
      R => cnt0
    );
\f_counter_A_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[26]_i_1\,
      Q => f_counter_A(26),
      R => cnt0
    );
\f_counter_A_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[27]_i_1\,
      Q => f_counter_A(27),
      R => cnt0
    );
\f_counter_A_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[28]_i_1\,
      Q => f_counter_A(28),
      R => cnt0
    );
\f_counter_A_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[24]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[28]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[28]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[28]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(28 downto 25),
      S(3) => \n_0_f_counter_A[28]_i_3\,
      S(2) => \n_0_f_counter_A[28]_i_4\,
      S(1) => \n_0_f_counter_A[28]_i_5\,
      S(0) => \n_0_f_counter_A[28]_i_6\
    );
\f_counter_A_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[29]_i_1\,
      Q => f_counter_A(29),
      R => cnt0
    );
\f_counter_A_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[2]_i_1\,
      Q => f_counter_A(2),
      R => cnt0
    );
\f_counter_A_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[30]_i_1\,
      Q => f_counter_A(30),
      R => cnt0
    );
\f_counter_A_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[31]_i_1\,
      Q => f_counter_A(31),
      R => cnt0
    );
\f_counter_A_reg[31]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[28]_i_2\,
      CO(3 downto 2) => \NLW_f_counter_A_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_f_counter_A_reg[31]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[31]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_f_counter_A_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => f_counter_A0(31 downto 29),
      S(3) => '0',
      S(2) => \n_0_f_counter_A[31]_i_3\,
      S(1) => \n_0_f_counter_A[31]_i_4\,
      S(0) => \n_0_f_counter_A[31]_i_5\
    );
\f_counter_A_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[3]_i_1\,
      Q => f_counter_A(3),
      R => cnt0
    );
\f_counter_A_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[4]_i_1\,
      Q => f_counter_A(4),
      R => cnt0
    );
\f_counter_A_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_f_counter_A_reg[4]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[4]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[4]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[4]_i_2\,
      CYINIT => f_counter_A(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(4 downto 1),
      S(3) => \n_0_f_counter_A[4]_i_3\,
      S(2) => \n_0_f_counter_A[4]_i_4\,
      S(1) => \n_0_f_counter_A[4]_i_5\,
      S(0) => \n_0_f_counter_A[4]_i_6\
    );
\f_counter_A_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[5]_i_1\,
      Q => f_counter_A(5),
      R => cnt0
    );
\f_counter_A_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[6]_i_1\,
      Q => f_counter_A(6),
      R => cnt0
    );
\f_counter_A_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[7]_i_1\,
      Q => f_counter_A(7),
      R => cnt0
    );
\f_counter_A_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[8]_i_1\,
      Q => f_counter_A(8),
      R => cnt0
    );
\f_counter_A_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_A_reg[4]_i_2\,
      CO(3) => \n_0_f_counter_A_reg[8]_i_2\,
      CO(2) => \n_1_f_counter_A_reg[8]_i_2\,
      CO(1) => \n_2_f_counter_A_reg[8]_i_2\,
      CO(0) => \n_3_f_counter_A_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_A0(8 downto 5),
      S(3) => \n_0_f_counter_A[8]_i_3\,
      S(2) => \n_0_f_counter_A[8]_i_4\,
      S(1) => \n_0_f_counter_A[8]_i_5\,
      S(0) => \n_0_f_counter_A[8]_i_6\
    );
\f_counter_A_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_A[9]_i_1\,
      Q => f_counter_A(9),
      R => cnt0
    );
\f_counter_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000090"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => filter_state_B(0),
      I4 => n_1_power_O_in_f_reg_i_3,
      I5 => f_counter_B(0),
      O => \n_0_f_counter_B[0]_i_1\
    );
\f_counter_B[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(10),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[10]_i_1\
    );
\f_counter_B[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(11),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[11]_i_1\
    );
\f_counter_B[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(12),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[12]_i_1\
    );
\f_counter_B[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(12),
      O => \n_0_f_counter_B[12]_i_3\
    );
\f_counter_B[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(11),
      O => \n_0_f_counter_B[12]_i_4\
    );
\f_counter_B[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(10),
      O => \n_0_f_counter_B[12]_i_5\
    );
\f_counter_B[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(9),
      O => \n_0_f_counter_B[12]_i_6\
    );
\f_counter_B[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(13),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[13]_i_1\
    );
\f_counter_B[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(14),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[14]_i_1\
    );
\f_counter_B[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(15),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[15]_i_1\
    );
\f_counter_B[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(16),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[16]_i_1\
    );
\f_counter_B[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(16),
      O => \n_0_f_counter_B[16]_i_3\
    );
\f_counter_B[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(15),
      O => \n_0_f_counter_B[16]_i_4\
    );
\f_counter_B[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(14),
      O => \n_0_f_counter_B[16]_i_5\
    );
\f_counter_B[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(13),
      O => \n_0_f_counter_B[16]_i_6\
    );
\f_counter_B[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(17),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[17]_i_1\
    );
\f_counter_B[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(18),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[18]_i_1\
    );
\f_counter_B[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(19),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[19]_i_1\
    );
\f_counter_B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(1),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[1]_i_1\
    );
\f_counter_B[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(20),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[20]_i_1\
    );
\f_counter_B[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(20),
      O => \n_0_f_counter_B[20]_i_3\
    );
\f_counter_B[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(19),
      O => \n_0_f_counter_B[20]_i_4\
    );
\f_counter_B[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(18),
      O => \n_0_f_counter_B[20]_i_5\
    );
\f_counter_B[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(17),
      O => \n_0_f_counter_B[20]_i_6\
    );
\f_counter_B[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(21),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[21]_i_1\
    );
\f_counter_B[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(22),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[22]_i_1\
    );
\f_counter_B[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(23),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[23]_i_1\
    );
\f_counter_B[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(24),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[24]_i_1\
    );
\f_counter_B[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(24),
      O => \n_0_f_counter_B[24]_i_3\
    );
\f_counter_B[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(23),
      O => \n_0_f_counter_B[24]_i_4\
    );
\f_counter_B[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(22),
      O => \n_0_f_counter_B[24]_i_5\
    );
\f_counter_B[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(21),
      O => \n_0_f_counter_B[24]_i_6\
    );
\f_counter_B[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(25),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[25]_i_1\
    );
\f_counter_B[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(26),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[26]_i_1\
    );
\f_counter_B[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(27),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[27]_i_1\
    );
\f_counter_B[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(28),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[28]_i_1\
    );
\f_counter_B[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(28),
      O => \n_0_f_counter_B[28]_i_3\
    );
\f_counter_B[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(27),
      O => \n_0_f_counter_B[28]_i_4\
    );
\f_counter_B[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(26),
      O => \n_0_f_counter_B[28]_i_5\
    );
\f_counter_B[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(25),
      O => \n_0_f_counter_B[28]_i_6\
    );
\f_counter_B[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(29),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[29]_i_1\
    );
\f_counter_B[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(2),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[2]_i_1\
    );
\f_counter_B[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(30),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[30]_i_1\
    );
\f_counter_B[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(31),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[31]_i_1\
    );
\f_counter_B[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(31),
      O => \n_0_f_counter_B[31]_i_3\
    );
\f_counter_B[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(30),
      O => \n_0_f_counter_B[31]_i_4\
    );
\f_counter_B[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(29),
      O => \n_0_f_counter_B[31]_i_5\
    );
\f_counter_B[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(3),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[3]_i_1\
    );
\f_counter_B[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(4),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[4]_i_1\
    );
\f_counter_B[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(4),
      O => \n_0_f_counter_B[4]_i_3\
    );
\f_counter_B[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(3),
      O => \n_0_f_counter_B[4]_i_4\
    );
\f_counter_B[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(2),
      O => \n_0_f_counter_B[4]_i_5\
    );
\f_counter_B[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(1),
      O => \n_0_f_counter_B[4]_i_6\
    );
\f_counter_B[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(5),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[5]_i_1\
    );
\f_counter_B[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(6),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[6]_i_1\
    );
\f_counter_B[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(7),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[7]_i_1\
    );
\f_counter_B[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(8),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[8]_i_1\
    );
\f_counter_B[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(8),
      O => \n_0_f_counter_B[8]_i_3\
    );
\f_counter_B[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(7),
      O => \n_0_f_counter_B[8]_i_4\
    );
\f_counter_B[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(6),
      O => \n_0_f_counter_B[8]_i_5\
    );
\f_counter_B[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_B(5),
      O => \n_0_f_counter_B[8]_i_6\
    );
\f_counter_B[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
    port map (
      I0 => power_O_in,
      I1 => power_O_in_r,
      I2 => filter_state_B(1),
      I3 => f_counter_B0(9),
      I4 => filter_state_B(0),
      I5 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_f_counter_B[9]_i_1\
    );
\f_counter_B_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[0]_i_1\,
      Q => f_counter_B(0),
      R => cnt0
    );
\f_counter_B_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[10]_i_1\,
      Q => f_counter_B(10),
      R => cnt0
    );
\f_counter_B_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[11]_i_1\,
      Q => f_counter_B(11),
      R => cnt0
    );
\f_counter_B_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[12]_i_1\,
      Q => f_counter_B(12),
      R => cnt0
    );
\f_counter_B_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[8]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[12]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[12]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[12]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(12 downto 9),
      S(3) => \n_0_f_counter_B[12]_i_3\,
      S(2) => \n_0_f_counter_B[12]_i_4\,
      S(1) => \n_0_f_counter_B[12]_i_5\,
      S(0) => \n_0_f_counter_B[12]_i_6\
    );
\f_counter_B_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[13]_i_1\,
      Q => f_counter_B(13),
      R => cnt0
    );
\f_counter_B_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[14]_i_1\,
      Q => f_counter_B(14),
      R => cnt0
    );
\f_counter_B_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[15]_i_1\,
      Q => f_counter_B(15),
      R => cnt0
    );
\f_counter_B_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[16]_i_1\,
      Q => f_counter_B(16),
      R => cnt0
    );
\f_counter_B_reg[16]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[12]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[16]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[16]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[16]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[16]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(16 downto 13),
      S(3) => \n_0_f_counter_B[16]_i_3\,
      S(2) => \n_0_f_counter_B[16]_i_4\,
      S(1) => \n_0_f_counter_B[16]_i_5\,
      S(0) => \n_0_f_counter_B[16]_i_6\
    );
\f_counter_B_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[17]_i_1\,
      Q => f_counter_B(17),
      R => cnt0
    );
\f_counter_B_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[18]_i_1\,
      Q => f_counter_B(18),
      R => cnt0
    );
\f_counter_B_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[19]_i_1\,
      Q => f_counter_B(19),
      R => cnt0
    );
\f_counter_B_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[1]_i_1\,
      Q => f_counter_B(1),
      R => cnt0
    );
\f_counter_B_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[20]_i_1\,
      Q => f_counter_B(20),
      R => cnt0
    );
\f_counter_B_reg[20]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[16]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[20]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[20]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[20]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[20]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(20 downto 17),
      S(3) => \n_0_f_counter_B[20]_i_3\,
      S(2) => \n_0_f_counter_B[20]_i_4\,
      S(1) => \n_0_f_counter_B[20]_i_5\,
      S(0) => \n_0_f_counter_B[20]_i_6\
    );
\f_counter_B_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[21]_i_1\,
      Q => f_counter_B(21),
      R => cnt0
    );
\f_counter_B_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[22]_i_1\,
      Q => f_counter_B(22),
      R => cnt0
    );
\f_counter_B_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[23]_i_1\,
      Q => f_counter_B(23),
      R => cnt0
    );
\f_counter_B_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[24]_i_1\,
      Q => f_counter_B(24),
      R => cnt0
    );
\f_counter_B_reg[24]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[20]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[24]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[24]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[24]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[24]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(24 downto 21),
      S(3) => \n_0_f_counter_B[24]_i_3\,
      S(2) => \n_0_f_counter_B[24]_i_4\,
      S(1) => \n_0_f_counter_B[24]_i_5\,
      S(0) => \n_0_f_counter_B[24]_i_6\
    );
\f_counter_B_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[25]_i_1\,
      Q => f_counter_B(25),
      R => cnt0
    );
\f_counter_B_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[26]_i_1\,
      Q => f_counter_B(26),
      R => cnt0
    );
\f_counter_B_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[27]_i_1\,
      Q => f_counter_B(27),
      R => cnt0
    );
\f_counter_B_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[28]_i_1\,
      Q => f_counter_B(28),
      R => cnt0
    );
\f_counter_B_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[24]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[28]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[28]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[28]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(28 downto 25),
      S(3) => \n_0_f_counter_B[28]_i_3\,
      S(2) => \n_0_f_counter_B[28]_i_4\,
      S(1) => \n_0_f_counter_B[28]_i_5\,
      S(0) => \n_0_f_counter_B[28]_i_6\
    );
\f_counter_B_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[29]_i_1\,
      Q => f_counter_B(29),
      R => cnt0
    );
\f_counter_B_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[2]_i_1\,
      Q => f_counter_B(2),
      R => cnt0
    );
\f_counter_B_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[30]_i_1\,
      Q => f_counter_B(30),
      R => cnt0
    );
\f_counter_B_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[31]_i_1\,
      Q => f_counter_B(31),
      R => cnt0
    );
\f_counter_B_reg[31]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[28]_i_2\,
      CO(3 downto 2) => \NLW_f_counter_B_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_f_counter_B_reg[31]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[31]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_f_counter_B_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => f_counter_B0(31 downto 29),
      S(3) => '0',
      S(2) => \n_0_f_counter_B[31]_i_3\,
      S(1) => \n_0_f_counter_B[31]_i_4\,
      S(0) => \n_0_f_counter_B[31]_i_5\
    );
\f_counter_B_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[3]_i_1\,
      Q => f_counter_B(3),
      R => cnt0
    );
\f_counter_B_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[4]_i_1\,
      Q => f_counter_B(4),
      R => cnt0
    );
\f_counter_B_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_f_counter_B_reg[4]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[4]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[4]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[4]_i_2\,
      CYINIT => f_counter_B(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(4 downto 1),
      S(3) => \n_0_f_counter_B[4]_i_3\,
      S(2) => \n_0_f_counter_B[4]_i_4\,
      S(1) => \n_0_f_counter_B[4]_i_5\,
      S(0) => \n_0_f_counter_B[4]_i_6\
    );
\f_counter_B_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[5]_i_1\,
      Q => f_counter_B(5),
      R => cnt0
    );
\f_counter_B_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[6]_i_1\,
      Q => f_counter_B(6),
      R => cnt0
    );
\f_counter_B_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[7]_i_1\,
      Q => f_counter_B(7),
      R => cnt0
    );
\f_counter_B_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[8]_i_1\,
      Q => f_counter_B(8),
      R => cnt0
    );
\f_counter_B_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_B_reg[4]_i_2\,
      CO(3) => \n_0_f_counter_B_reg[8]_i_2\,
      CO(2) => \n_1_f_counter_B_reg[8]_i_2\,
      CO(1) => \n_2_f_counter_B_reg[8]_i_2\,
      CO(0) => \n_3_f_counter_B_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_B0(8 downto 5),
      S(3) => \n_0_f_counter_B[8]_i_3\,
      S(2) => \n_0_f_counter_B[8]_i_4\,
      S(1) => \n_0_f_counter_B[8]_i_5\,
      S(0) => \n_0_f_counter_B[8]_i_6\
    );
\f_counter_B_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_B[9]_i_1\,
      Q => f_counter_B(9),
      R => cnt0
    );
\f_counter_C[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000090000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => n_1_vh_error_f_reg_i_2,
      I3 => filter_state_C(0),
      I4 => filter_state_C(1),
      I5 => f_counter_C(0),
      O => \n_0_f_counter_C[0]_i_1\
    );
\f_counter_C[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(10),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[10]_i_1\
    );
\f_counter_C[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(11),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[11]_i_1\
    );
\f_counter_C[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(12),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[12]_i_1\
    );
\f_counter_C[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(12),
      O => \n_0_f_counter_C[12]_i_3\
    );
\f_counter_C[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(11),
      O => \n_0_f_counter_C[12]_i_4\
    );
\f_counter_C[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(10),
      O => \n_0_f_counter_C[12]_i_5\
    );
\f_counter_C[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(9),
      O => \n_0_f_counter_C[12]_i_6\
    );
\f_counter_C[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(13),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[13]_i_1\
    );
\f_counter_C[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(14),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[14]_i_1\
    );
\f_counter_C[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(15),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[15]_i_1\
    );
\f_counter_C[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(16),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[16]_i_1\
    );
\f_counter_C[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(16),
      O => \n_0_f_counter_C[16]_i_3\
    );
\f_counter_C[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(15),
      O => \n_0_f_counter_C[16]_i_4\
    );
\f_counter_C[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(14),
      O => \n_0_f_counter_C[16]_i_5\
    );
\f_counter_C[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(13),
      O => \n_0_f_counter_C[16]_i_6\
    );
\f_counter_C[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(17),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[17]_i_1\
    );
\f_counter_C[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(18),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[18]_i_1\
    );
\f_counter_C[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(19),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[19]_i_1\
    );
\f_counter_C[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(1),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[1]_i_1\
    );
\f_counter_C[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(20),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[20]_i_1\
    );
\f_counter_C[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(20),
      O => \n_0_f_counter_C[20]_i_3\
    );
\f_counter_C[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(19),
      O => \n_0_f_counter_C[20]_i_4\
    );
\f_counter_C[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(18),
      O => \n_0_f_counter_C[20]_i_5\
    );
\f_counter_C[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(17),
      O => \n_0_f_counter_C[20]_i_6\
    );
\f_counter_C[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(21),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[21]_i_1\
    );
\f_counter_C[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(22),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[22]_i_1\
    );
\f_counter_C[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(23),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[23]_i_1\
    );
\f_counter_C[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(24),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[24]_i_1\
    );
\f_counter_C[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(24),
      O => \n_0_f_counter_C[24]_i_3\
    );
\f_counter_C[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(23),
      O => \n_0_f_counter_C[24]_i_4\
    );
\f_counter_C[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(22),
      O => \n_0_f_counter_C[24]_i_5\
    );
\f_counter_C[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(21),
      O => \n_0_f_counter_C[24]_i_6\
    );
\f_counter_C[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(25),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[25]_i_1\
    );
\f_counter_C[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(26),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[26]_i_1\
    );
\f_counter_C[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(27),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[27]_i_1\
    );
\f_counter_C[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(28),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[28]_i_1\
    );
\f_counter_C[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(28),
      O => \n_0_f_counter_C[28]_i_3\
    );
\f_counter_C[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(27),
      O => \n_0_f_counter_C[28]_i_4\
    );
\f_counter_C[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(26),
      O => \n_0_f_counter_C[28]_i_5\
    );
\f_counter_C[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(25),
      O => \n_0_f_counter_C[28]_i_6\
    );
\f_counter_C[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(29),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[29]_i_1\
    );
\f_counter_C[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(2),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[2]_i_1\
    );
\f_counter_C[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(30),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[30]_i_1\
    );
\f_counter_C[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(31),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[31]_i_1\
    );
\f_counter_C[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(31),
      O => \n_0_f_counter_C[31]_i_3\
    );
\f_counter_C[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(30),
      O => \n_0_f_counter_C[31]_i_4\
    );
\f_counter_C[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(29),
      O => \n_0_f_counter_C[31]_i_5\
    );
\f_counter_C[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(3),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[3]_i_1\
    );
\f_counter_C[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(4),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[4]_i_1\
    );
\f_counter_C[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(4),
      O => \n_0_f_counter_C[4]_i_3\
    );
\f_counter_C[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(3),
      O => \n_0_f_counter_C[4]_i_4\
    );
\f_counter_C[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(2),
      O => \n_0_f_counter_C[4]_i_5\
    );
\f_counter_C[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(1),
      O => \n_0_f_counter_C[4]_i_6\
    );
\f_counter_C[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(5),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[5]_i_1\
    );
\f_counter_C[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(6),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[6]_i_1\
    );
\f_counter_C[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(7),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[7]_i_1\
    );
\f_counter_C[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(8),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[8]_i_1\
    );
\f_counter_C[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(8),
      O => \n_0_f_counter_C[8]_i_3\
    );
\f_counter_C[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(7),
      O => \n_0_f_counter_C[8]_i_4\
    );
\f_counter_C[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(6),
      O => \n_0_f_counter_C[8]_i_5\
    );
\f_counter_C[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => f_counter_C(5),
      O => \n_0_f_counter_C[8]_i_6\
    );
\f_counter_C[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009000000000"
    )
    port map (
      I0 => vh_error_r,
      I1 => vh_error,
      I2 => f_counter_C0(9),
      I3 => n_1_vh_error_f_reg_i_2,
      I4 => filter_state_C(0),
      I5 => filter_state_C(1),
      O => \n_0_f_counter_C[9]_i_1\
    );
\f_counter_C_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[0]_i_1\,
      Q => f_counter_C(0),
      R => cnt0
    );
\f_counter_C_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[10]_i_1\,
      Q => f_counter_C(10),
      R => cnt0
    );
\f_counter_C_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[11]_i_1\,
      Q => f_counter_C(11),
      R => cnt0
    );
\f_counter_C_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[12]_i_1\,
      Q => f_counter_C(12),
      R => cnt0
    );
\f_counter_C_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[8]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[12]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[12]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[12]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(12 downto 9),
      S(3) => \n_0_f_counter_C[12]_i_3\,
      S(2) => \n_0_f_counter_C[12]_i_4\,
      S(1) => \n_0_f_counter_C[12]_i_5\,
      S(0) => \n_0_f_counter_C[12]_i_6\
    );
\f_counter_C_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[13]_i_1\,
      Q => f_counter_C(13),
      R => cnt0
    );
\f_counter_C_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[14]_i_1\,
      Q => f_counter_C(14),
      R => cnt0
    );
\f_counter_C_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[15]_i_1\,
      Q => f_counter_C(15),
      R => cnt0
    );
\f_counter_C_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[16]_i_1\,
      Q => f_counter_C(16),
      R => cnt0
    );
\f_counter_C_reg[16]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[12]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[16]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[16]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[16]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[16]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(16 downto 13),
      S(3) => \n_0_f_counter_C[16]_i_3\,
      S(2) => \n_0_f_counter_C[16]_i_4\,
      S(1) => \n_0_f_counter_C[16]_i_5\,
      S(0) => \n_0_f_counter_C[16]_i_6\
    );
\f_counter_C_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[17]_i_1\,
      Q => f_counter_C(17),
      R => cnt0
    );
\f_counter_C_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[18]_i_1\,
      Q => f_counter_C(18),
      R => cnt0
    );
\f_counter_C_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[19]_i_1\,
      Q => f_counter_C(19),
      R => cnt0
    );
\f_counter_C_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[1]_i_1\,
      Q => f_counter_C(1),
      R => cnt0
    );
\f_counter_C_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[20]_i_1\,
      Q => f_counter_C(20),
      R => cnt0
    );
\f_counter_C_reg[20]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[16]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[20]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[20]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[20]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[20]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(20 downto 17),
      S(3) => \n_0_f_counter_C[20]_i_3\,
      S(2) => \n_0_f_counter_C[20]_i_4\,
      S(1) => \n_0_f_counter_C[20]_i_5\,
      S(0) => \n_0_f_counter_C[20]_i_6\
    );
\f_counter_C_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[21]_i_1\,
      Q => f_counter_C(21),
      R => cnt0
    );
\f_counter_C_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[22]_i_1\,
      Q => f_counter_C(22),
      R => cnt0
    );
\f_counter_C_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[23]_i_1\,
      Q => f_counter_C(23),
      R => cnt0
    );
\f_counter_C_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[24]_i_1\,
      Q => f_counter_C(24),
      R => cnt0
    );
\f_counter_C_reg[24]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[20]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[24]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[24]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[24]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[24]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(24 downto 21),
      S(3) => \n_0_f_counter_C[24]_i_3\,
      S(2) => \n_0_f_counter_C[24]_i_4\,
      S(1) => \n_0_f_counter_C[24]_i_5\,
      S(0) => \n_0_f_counter_C[24]_i_6\
    );
\f_counter_C_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[25]_i_1\,
      Q => f_counter_C(25),
      R => cnt0
    );
\f_counter_C_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[26]_i_1\,
      Q => f_counter_C(26),
      R => cnt0
    );
\f_counter_C_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[27]_i_1\,
      Q => f_counter_C(27),
      R => cnt0
    );
\f_counter_C_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[28]_i_1\,
      Q => f_counter_C(28),
      R => cnt0
    );
\f_counter_C_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[24]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[28]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[28]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[28]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(28 downto 25),
      S(3) => \n_0_f_counter_C[28]_i_3\,
      S(2) => \n_0_f_counter_C[28]_i_4\,
      S(1) => \n_0_f_counter_C[28]_i_5\,
      S(0) => \n_0_f_counter_C[28]_i_6\
    );
\f_counter_C_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[29]_i_1\,
      Q => f_counter_C(29),
      R => cnt0
    );
\f_counter_C_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[2]_i_1\,
      Q => f_counter_C(2),
      R => cnt0
    );
\f_counter_C_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[30]_i_1\,
      Q => f_counter_C(30),
      R => cnt0
    );
\f_counter_C_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[31]_i_1\,
      Q => f_counter_C(31),
      R => cnt0
    );
\f_counter_C_reg[31]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[28]_i_2\,
      CO(3 downto 2) => \NLW_f_counter_C_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_f_counter_C_reg[31]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[31]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_f_counter_C_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => f_counter_C0(31 downto 29),
      S(3) => '0',
      S(2) => \n_0_f_counter_C[31]_i_3\,
      S(1) => \n_0_f_counter_C[31]_i_4\,
      S(0) => \n_0_f_counter_C[31]_i_5\
    );
\f_counter_C_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[3]_i_1\,
      Q => f_counter_C(3),
      R => cnt0
    );
\f_counter_C_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[4]_i_1\,
      Q => f_counter_C(4),
      R => cnt0
    );
\f_counter_C_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_f_counter_C_reg[4]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[4]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[4]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[4]_i_2\,
      CYINIT => f_counter_C(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(4 downto 1),
      S(3) => \n_0_f_counter_C[4]_i_3\,
      S(2) => \n_0_f_counter_C[4]_i_4\,
      S(1) => \n_0_f_counter_C[4]_i_5\,
      S(0) => \n_0_f_counter_C[4]_i_6\
    );
\f_counter_C_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[5]_i_1\,
      Q => f_counter_C(5),
      R => cnt0
    );
\f_counter_C_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[6]_i_1\,
      Q => f_counter_C(6),
      R => cnt0
    );
\f_counter_C_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[7]_i_1\,
      Q => f_counter_C(7),
      R => cnt0
    );
\f_counter_C_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[8]_i_1\,
      Q => f_counter_C(8),
      R => cnt0
    );
\f_counter_C_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_f_counter_C_reg[4]_i_2\,
      CO(3) => \n_0_f_counter_C_reg[8]_i_2\,
      CO(2) => \n_1_f_counter_C_reg[8]_i_2\,
      CO(1) => \n_2_f_counter_C_reg[8]_i_2\,
      CO(0) => \n_3_f_counter_C_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => f_counter_C0(8 downto 5),
      S(3) => \n_0_f_counter_C[8]_i_3\,
      S(2) => \n_0_f_counter_C[8]_i_4\,
      S(1) => \n_0_f_counter_C[8]_i_5\,
      S(0) => \n_0_f_counter_C[8]_i_6\
    );
\f_counter_C_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_f_counter_C[9]_i_1\,
      Q => f_counter_C(9),
      R => cnt0
    );
\filter_state_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2332F33F"
    )
    port map (
      I0 => n_1_power_H_in_f_reg_i_3,
      I1 => filter_state_A(0),
      I2 => power_H_in,
      I3 => power_H_in_r,
      I4 => filter_state_A(1),
      O => \n_0_filter_state_A[0]_i_1\
    );
\filter_state_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00284128"
    )
    port map (
      I0 => filter_state_A(0),
      I1 => power_H_in,
      I2 => power_H_in_r,
      I3 => filter_state_A(1),
      I4 => n_1_power_H_in_f_reg_i_3,
      O => \n_0_filter_state_A[1]_i_1\
    );
\filter_state_A_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_A[0]_i_1\,
      Q => filter_state_A(0),
      R => cnt0
    );
\filter_state_A_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_A[1]_i_1\,
      Q => filter_state_A(1),
      R => cnt0
    );
\filter_state_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2332F33F"
    )
    port map (
      I0 => n_1_power_O_in_f_reg_i_3,
      I1 => filter_state_B(0),
      I2 => power_O_in,
      I3 => power_O_in_r,
      I4 => filter_state_B(1),
      O => \n_0_filter_state_B[0]_i_1\
    );
\filter_state_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00284128"
    )
    port map (
      I0 => filter_state_B(0),
      I1 => power_O_in,
      I2 => power_O_in_r,
      I3 => filter_state_B(1),
      I4 => n_1_power_O_in_f_reg_i_3,
      O => \n_0_filter_state_B[1]_i_1\
    );
\filter_state_B_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_B[0]_i_1\,
      Q => filter_state_B(0),
      R => cnt0
    );
\filter_state_B_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_B[1]_i_1\,
      Q => filter_state_B(1),
      R => cnt0
    );
\filter_state_C[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2332F33F"
    )
    port map (
      I0 => n_1_vh_error_f_reg_i_2,
      I1 => filter_state_C(0),
      I2 => vh_error,
      I3 => vh_error_r,
      I4 => filter_state_C(1),
      O => \n_0_filter_state_C[0]_i_1\
    );
\filter_state_C[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"100A0A10"
    )
    port map (
      I0 => filter_state_C(0),
      I1 => n_1_vh_error_f_reg_i_2,
      I2 => filter_state_C(1),
      I3 => vh_error_r,
      I4 => vh_error,
      O => \n_0_filter_state_C[1]_i_1\
    );
\filter_state_C_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_C[0]_i_1\,
      Q => filter_state_C(0),
      R => cnt0
    );
\filter_state_C_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_filter_state_C[1]_i_1\,
      Q => filter_state_C(1),
      R => cnt0
    );
lock_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => n_0_lock_i_2,
      I1 => cnt(4),
      I2 => cnt(7),
      I3 => cnt(5),
      I4 => cnt(3),
      I5 => cnt0,
      O => lock5_out
    );
lock_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(6),
      I3 => cnt(2),
      O => n_0_lock_i_2
    );
lock_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => lock5_out,
      Q => n_0_lock_reg,
      R => '0'
    );
power_H_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => \^o2\,
      I1 => power_H_in_f_r,
      I2 => \^power_h_error\,
      O => n_0_power_H_error_i_1
    );
power_H_error_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_H_error_i_1,
      Q => \^power_h_error\,
      R => cnt0
    );
power_H_in_f_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAABBAAA8AA88A"
    )
    port map (
      I0 => n_0_power_H_in_f_i_2,
      I1 => cnt0,
      I2 => filter_state_A(0),
      I3 => filter_state_A(1),
      I4 => n_1_power_H_in_f_reg_i_3,
      I5 => \^o2\,
      O => n_0_power_H_in_f_i_1
    );
power_H_in_f_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(19),
      I1 => power_fliter(19),
      I2 => f_counter_A(18),
      I3 => power_fliter(18),
      I4 => power_fliter(20),
      I5 => f_counter_A(20),
      O => n_0_power_H_in_f_i_10
    );
power_H_in_f_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(17),
      I1 => power_fliter(17),
      I2 => f_counter_A(16),
      I3 => power_fliter(16),
      I4 => power_fliter(15),
      I5 => f_counter_A(15),
      O => n_0_power_H_in_f_i_11
    );
power_H_in_f_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(14),
      I1 => power_fliter(14),
      I2 => f_counter_A(12),
      I3 => power_fliter(12),
      I4 => power_fliter(13),
      I5 => f_counter_A(13),
      O => n_0_power_H_in_f_i_12
    );
power_H_in_f_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(11),
      I1 => power_fliter(11),
      I2 => f_counter_A(10),
      I3 => power_fliter(10),
      I4 => power_fliter(9),
      I5 => f_counter_A(9),
      O => n_0_power_H_in_f_i_13
    );
power_H_in_f_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(8),
      I1 => power_fliter(8),
      I2 => f_counter_A(7),
      I3 => power_fliter(7),
      I4 => power_fliter(6),
      I5 => f_counter_A(6),
      O => n_0_power_H_in_f_i_14
    );
power_H_in_f_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(5),
      I1 => power_fliter(5),
      I2 => f_counter_A(3),
      I3 => power_fliter(3),
      I4 => power_fliter(4),
      I5 => f_counter_A(4),
      O => n_0_power_H_in_f_i_15
    );
power_H_in_f_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(2),
      I1 => power_fliter(2),
      I2 => f_counter_A(0),
      I3 => power_fliter(0),
      I4 => power_fliter(1),
      I5 => f_counter_A(1),
      O => n_0_power_H_in_f_i_16
    );
power_H_in_f_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
    port map (
      I0 => power_H_in,
      I1 => cnt0,
      I2 => filter_state_A(1),
      I3 => power_H_in_r,
      I4 => filter_state_A(0),
      O => n_0_power_H_in_f_i_2
    );
power_H_in_f_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => power_fliter(30),
      I1 => f_counter_A(30),
      I2 => power_fliter(31),
      I3 => f_counter_A(31),
      O => n_0_power_H_in_f_i_5
    );
power_H_in_f_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(28),
      I1 => power_fliter(28),
      I2 => f_counter_A(27),
      I3 => power_fliter(27),
      I4 => power_fliter(29),
      I5 => f_counter_A(29),
      O => n_0_power_H_in_f_i_6
    );
power_H_in_f_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(26),
      I1 => power_fliter(26),
      I2 => f_counter_A(24),
      I3 => power_fliter(24),
      I4 => power_fliter(25),
      I5 => f_counter_A(25),
      O => n_0_power_H_in_f_i_7
    );
power_H_in_f_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_A(23),
      I1 => power_fliter(23),
      I2 => f_counter_A(22),
      I3 => power_fliter(22),
      I4 => power_fliter(21),
      I5 => f_counter_A(21),
      O => n_0_power_H_in_f_i_9
    );
power_H_in_f_r_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => \^o2\,
      Q => power_H_in_f_r,
      S => cnt0
    );
power_H_in_f_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_H_in_f_i_1,
      Q => \^o2\,
      R => '0'
    );
power_H_in_f_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_power_H_in_f_reg_i_4,
      CO(3) => NLW_power_H_in_f_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => n_1_power_H_in_f_reg_i_3,
      CO(1) => n_2_power_H_in_f_reg_i_3,
      CO(0) => n_3_power_H_in_f_reg_i_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_H_in_f_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => n_0_power_H_in_f_i_5,
      S(1) => n_0_power_H_in_f_i_6,
      S(0) => n_0_power_H_in_f_i_7
    );
power_H_in_f_reg_i_4: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_power_H_in_f_reg_i_8,
      CO(3) => n_0_power_H_in_f_reg_i_4,
      CO(2) => n_1_power_H_in_f_reg_i_4,
      CO(1) => n_2_power_H_in_f_reg_i_4,
      CO(0) => n_3_power_H_in_f_reg_i_4,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_H_in_f_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_power_H_in_f_i_9,
      S(2) => n_0_power_H_in_f_i_10,
      S(1) => n_0_power_H_in_f_i_11,
      S(0) => n_0_power_H_in_f_i_12
    );
power_H_in_f_reg_i_8: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_power_H_in_f_reg_i_8,
      CO(2) => n_1_power_H_in_f_reg_i_8,
      CO(1) => n_2_power_H_in_f_reg_i_8,
      CO(0) => n_3_power_H_in_f_reg_i_8,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_H_in_f_reg_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_power_H_in_f_i_13,
      S(2) => n_0_power_H_in_f_i_14,
      S(1) => n_0_power_H_in_f_i_15,
      S(0) => n_0_power_H_in_f_i_16
    );
power_H_in_r_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => power_H_in,
      Q => power_H_in_r,
      S => cnt0
    );
power_O_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => \^o3\,
      I1 => power_O_in_f_r,
      I2 => \^power_o_error\,
      O => n_0_power_O_error_i_1
    );
power_O_error_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_O_error_i_1,
      Q => \^power_o_error\,
      R => cnt0
    );
power_O_in_f_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAABBAAA8AA88A"
    )
    port map (
      I0 => n_0_power_O_in_f_i_2,
      I1 => cnt0,
      I2 => filter_state_B(0),
      I3 => filter_state_B(1),
      I4 => n_1_power_O_in_f_reg_i_3,
      I5 => \^o3\,
      O => n_0_power_O_in_f_i_1
    );
power_O_in_f_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(20),
      I1 => power_fliter(20),
      I2 => f_counter_B(18),
      I3 => power_fliter(18),
      I4 => power_fliter(19),
      I5 => f_counter_B(19),
      O => n_0_power_O_in_f_i_10
    );
power_O_in_f_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(17),
      I1 => power_fliter(17),
      I2 => f_counter_B(15),
      I3 => power_fliter(15),
      I4 => power_fliter(16),
      I5 => f_counter_B(16),
      O => n_0_power_O_in_f_i_11
    );
power_O_in_f_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(13),
      I1 => power_fliter(13),
      I2 => f_counter_B(12),
      I3 => power_fliter(12),
      I4 => power_fliter(14),
      I5 => f_counter_B(14),
      O => n_0_power_O_in_f_i_12
    );
power_O_in_f_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(10),
      I1 => power_fliter(10),
      I2 => f_counter_B(9),
      I3 => power_fliter(9),
      I4 => power_fliter(11),
      I5 => f_counter_B(11),
      O => n_0_power_O_in_f_i_13
    );
power_O_in_f_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(7),
      I1 => power_fliter(7),
      I2 => f_counter_B(6),
      I3 => power_fliter(6),
      I4 => power_fliter(8),
      I5 => f_counter_B(8),
      O => n_0_power_O_in_f_i_14
    );
power_O_in_f_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(5),
      I1 => power_fliter(5),
      I2 => f_counter_B(3),
      I3 => power_fliter(3),
      I4 => power_fliter(4),
      I5 => f_counter_B(4),
      O => n_0_power_O_in_f_i_15
    );
power_O_in_f_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(2),
      I1 => power_fliter(2),
      I2 => f_counter_B(0),
      I3 => power_fliter(0),
      I4 => power_fliter(1),
      I5 => f_counter_B(1),
      O => n_0_power_O_in_f_i_16
    );
power_O_in_f_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
    port map (
      I0 => power_O_in,
      I1 => cnt0,
      I2 => filter_state_B(1),
      I3 => power_O_in_r,
      I4 => filter_state_B(0),
      O => n_0_power_O_in_f_i_2
    );
power_O_in_f_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => power_fliter(30),
      I1 => f_counter_B(30),
      I2 => power_fliter(31),
      I3 => f_counter_B(31),
      O => n_0_power_O_in_f_i_5
    );
power_O_in_f_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(28),
      I1 => power_fliter(28),
      I2 => f_counter_B(27),
      I3 => power_fliter(27),
      I4 => power_fliter(29),
      I5 => f_counter_B(29),
      O => n_0_power_O_in_f_i_6
    );
power_O_in_f_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(26),
      I1 => power_fliter(26),
      I2 => f_counter_B(25),
      I3 => power_fliter(25),
      I4 => power_fliter(24),
      I5 => f_counter_B(24),
      O => n_0_power_O_in_f_i_7
    );
power_O_in_f_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_B(23),
      I1 => power_fliter(23),
      I2 => f_counter_B(22),
      I3 => power_fliter(22),
      I4 => power_fliter(21),
      I5 => f_counter_B(21),
      O => n_0_power_O_in_f_i_9
    );
power_O_in_f_r_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => \^o3\,
      Q => power_O_in_f_r,
      S => cnt0
    );
power_O_in_f_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_O_in_f_i_1,
      Q => \^o3\,
      R => '0'
    );
power_O_in_f_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_power_O_in_f_reg_i_4,
      CO(3) => NLW_power_O_in_f_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => n_1_power_O_in_f_reg_i_3,
      CO(1) => n_2_power_O_in_f_reg_i_3,
      CO(0) => n_3_power_O_in_f_reg_i_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_O_in_f_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => n_0_power_O_in_f_i_5,
      S(1) => n_0_power_O_in_f_i_6,
      S(0) => n_0_power_O_in_f_i_7
    );
power_O_in_f_reg_i_4: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_power_O_in_f_reg_i_8,
      CO(3) => n_0_power_O_in_f_reg_i_4,
      CO(2) => n_1_power_O_in_f_reg_i_4,
      CO(1) => n_2_power_O_in_f_reg_i_4,
      CO(0) => n_3_power_O_in_f_reg_i_4,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_O_in_f_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_power_O_in_f_i_9,
      S(2) => n_0_power_O_in_f_i_10,
      S(1) => n_0_power_O_in_f_i_11,
      S(0) => n_0_power_O_in_f_i_12
    );
power_O_in_f_reg_i_8: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_power_O_in_f_reg_i_8,
      CO(2) => n_1_power_O_in_f_reg_i_8,
      CO(1) => n_2_power_O_in_f_reg_i_8,
      CO(0) => n_3_power_O_in_f_reg_i_8,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_power_O_in_f_reg_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_power_O_in_f_i_13,
      S(2) => n_0_power_O_in_f_i_14,
      S(1) => n_0_power_O_in_f_i_15,
      S(0) => n_0_power_O_in_f_i_16
    );
power_O_in_r_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => power_O_in,
      Q => power_O_in_r,
      S => cnt0
    );
power_down_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => system_rst,
      I1 => n_0_lock_reg,
      O => cnt0
    );
power_down_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => n_0_power_down_i_2
    );
power_down_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEEA32EA"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      I2 => \^o1\,
      I3 => \n_0_FSM_sequential_power_state_reg[0]\,
      I4 => power_up_7v0,
      I5 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => n_0_power_down_i_3
    );
power_down_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \^o3\,
      I1 => power_up,
      I2 => \^o2\,
      O => n_0_power_down_i_4
    );
power_down_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF7F7F"
    )
    port map (
      I0 => \^o2\,
      I1 => power_up,
      I2 => \^o3\,
      I3 => \^o4\,
      I4 => vh_error_en,
      O => power_up_7v0
    );
power_down_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_0_power_down_i_2,
      D => n_0_power_down_i_3,
      Q => \^o1\,
      R => cnt0
    );
\power_state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[0]\,
      I1 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => power_state(0)
    );
\power_state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[1]\,
      I1 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => power_state(1)
    );
power_up_14v_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB0000A808"
    )
    port map (
      I0 => n_0_power_up_14v_i_2,
      I1 => n_0_power_up_14v_i_3,
      I2 => \n_0_FSM_sequential_power_state_reg[0]\,
      I3 => n_0_power_up_14v_i_4,
      I4 => \n_0_FSM_sequential_power_state_reg[2]\,
      I5 => \^power_up_14v\,
      O => n_0_power_up_14v_i_1
    );
power_up_14v_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F020202"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[1]\,
      I1 => \^o1\,
      I2 => n_0_power_down_i_4,
      I3 => \n_0_FSM_sequential_power_state_reg[0]\,
      I4 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I5 => \n_0_FSM_sequential_power_state_reg[2]\,
      O => n_0_power_up_14v_i_2
    );
power_up_14v_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE32FEFFFFFFFF"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \^o1\,
      I2 => \n_0_FSM_sequential_power_state[1]_i_4\,
      I3 => \n_0_delay_cnt[31]_i_9\,
      I4 => n_0_power_up_14v_i_5,
      I5 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => n_0_power_up_14v_i_3
    );
power_up_14v_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => n_0_power_up_14v_i_4
    );
power_up_14v_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state[1]_i_5\,
      I1 => \n_0_FSM_sequential_power_state[1]_i_6\,
      I2 => \^delay_cnt\(26),
      I3 => \^delay_cnt\(22),
      I4 => \^delay_cnt\(29),
      I5 => \n_0_delay_cnt[31]_i_7\,
      O => n_0_power_up_14v_i_5
    );
power_up_14v_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_up_14v_i_1,
      Q => \^power_up_14v\,
      R => cnt0
    );
power_up_5v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCDFD00000101"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      I2 => \n_0_FSM_sequential_power_state_reg[0]\,
      I3 => \n_0_delay_cnt[31]_i_5\,
      I4 => \n_0_FSM_sequential_power_state_reg[2]\,
      I5 => \^power_up_5v\,
      O => n_0_power_up_5v_r_i_1
    );
power_up_5v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_up_5v_r_i_1,
      Q => \^power_up_5v\,
      R => cnt0
    );
power_up_7v_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF40FF00004000"
    )
    port map (
      I0 => \n_0_FSM_sequential_power_state_reg[0]\,
      I1 => \n_0_FSM_sequential_power_state_reg[1]\,
      I2 => power_up_7v1_out,
      I3 => n_0_power_up_7v_i_2,
      I4 => \n_0_FSM_sequential_power_state_reg[2]\,
      I5 => \^power_up_7v\,
      O => n_0_power_up_7v_i_1
    );
power_up_7v_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00BAFF00FFFFFF"
    )
    port map (
      I0 => n_0_power_down_i_4,
      I1 => \^o4\,
      I2 => vh_error_en,
      I3 => \n_0_FSM_sequential_power_state_reg[0]\,
      I4 => \^o1\,
      I5 => \n_0_FSM_sequential_power_state_reg[1]\,
      O => n_0_power_up_7v_i_2
    );
power_up_7v_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_up_7v_i_1,
      Q => \^power_up_7v\,
      R => cnt0
    );
power_vh_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \^o4\,
      I1 => vh_error_en,
      I2 => \^o1\,
      O => n_0_power_vh_error_i_1
    );
power_vh_error_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_0_power_vh_error_i_1,
      Q => power_vh_error,
      R => cnt0
    );
vh_error_f_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FBF008F"
    )
    port map (
      I0 => vh_error_r,
      I1 => n_1_vh_error_f_reg_i_2,
      I2 => filter_state_C(1),
      I3 => filter_state_C(0),
      I4 => \^o4\,
      O => n_0_vh_error_f_i_1
    );
vh_error_f_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(17),
      I1 => power_fliter(17),
      I2 => f_counter_C(15),
      I3 => power_fliter(15),
      I4 => power_fliter(16),
      I5 => f_counter_C(16),
      O => n_0_vh_error_f_i_10
    );
vh_error_f_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(14),
      I1 => power_fliter(14),
      I2 => f_counter_C(12),
      I3 => power_fliter(12),
      I4 => power_fliter(13),
      I5 => f_counter_C(13),
      O => n_0_vh_error_f_i_11
    );
vh_error_f_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(10),
      I1 => power_fliter(10),
      I2 => f_counter_C(9),
      I3 => power_fliter(9),
      I4 => power_fliter(11),
      I5 => f_counter_C(11),
      O => n_0_vh_error_f_i_12
    );
vh_error_f_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(8),
      I1 => power_fliter(8),
      I2 => f_counter_C(7),
      I3 => power_fliter(7),
      I4 => power_fliter(6),
      I5 => f_counter_C(6),
      O => n_0_vh_error_f_i_13
    );
vh_error_f_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(5),
      I1 => power_fliter(5),
      I2 => f_counter_C(3),
      I3 => power_fliter(3),
      I4 => power_fliter(4),
      I5 => f_counter_C(4),
      O => n_0_vh_error_f_i_14
    );
vh_error_f_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(1),
      I1 => power_fliter(1),
      I2 => f_counter_C(0),
      I3 => power_fliter(0),
      I4 => power_fliter(2),
      I5 => f_counter_C(2),
      O => n_0_vh_error_f_i_15
    );
vh_error_f_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => power_fliter(30),
      I1 => f_counter_C(30),
      I2 => power_fliter(31),
      I3 => f_counter_C(31),
      O => n_0_vh_error_f_i_4
    );
vh_error_f_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(29),
      I1 => power_fliter(29),
      I2 => f_counter_C(27),
      I3 => power_fliter(27),
      I4 => power_fliter(28),
      I5 => f_counter_C(28),
      O => n_0_vh_error_f_i_5
    );
vh_error_f_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(26),
      I1 => power_fliter(26),
      I2 => f_counter_C(24),
      I3 => power_fliter(24),
      I4 => power_fliter(25),
      I5 => f_counter_C(25),
      O => n_0_vh_error_f_i_6
    );
vh_error_f_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(23),
      I1 => power_fliter(23),
      I2 => f_counter_C(22),
      I3 => power_fliter(22),
      I4 => power_fliter(21),
      I5 => f_counter_C(21),
      O => n_0_vh_error_f_i_8
    );
vh_error_f_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => f_counter_C(20),
      I1 => power_fliter(20),
      I2 => f_counter_C(18),
      I3 => power_fliter(18),
      I4 => power_fliter(19),
      I5 => f_counter_C(19),
      O => n_0_vh_error_f_i_9
    );
vh_error_f_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => n_0_vh_error_f_i_1,
      Q => \^o4\,
      S => cnt0
    );
vh_error_f_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_vh_error_f_reg_i_3,
      CO(3) => NLW_vh_error_f_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => n_1_vh_error_f_reg_i_2,
      CO(1) => n_2_vh_error_f_reg_i_2,
      CO(0) => n_3_vh_error_f_reg_i_2,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_vh_error_f_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => n_0_vh_error_f_i_4,
      S(1) => n_0_vh_error_f_i_5,
      S(0) => n_0_vh_error_f_i_6
    );
vh_error_f_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_vh_error_f_reg_i_7,
      CO(3) => n_0_vh_error_f_reg_i_3,
      CO(2) => n_1_vh_error_f_reg_i_3,
      CO(1) => n_2_vh_error_f_reg_i_3,
      CO(0) => n_3_vh_error_f_reg_i_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_vh_error_f_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_vh_error_f_i_8,
      S(2) => n_0_vh_error_f_i_9,
      S(1) => n_0_vh_error_f_i_10,
      S(0) => n_0_vh_error_f_i_11
    );
vh_error_f_reg_i_7: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_vh_error_f_reg_i_7,
      CO(2) => n_1_vh_error_f_reg_i_7,
      CO(1) => n_2_vh_error_f_reg_i_7,
      CO(0) => n_3_vh_error_f_reg_i_7,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_vh_error_f_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_vh_error_f_i_12,
      S(2) => n_0_vh_error_f_i_13,
      S(1) => n_0_vh_error_f_i_14,
      S(0) => n_0_vh_error_f_i_15
    );
vh_error_r_reg: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => '1',
      D => vh_error,
      Q => vh_error_r,
      S => cnt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity POWER_CTRL_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of POWER_CTRL_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of POWER_CTRL_0 : entity is "POWER_CTRL,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of POWER_CTRL_0 : entity is "POWER_CTRL_0,POWER_CTRL,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of POWER_CTRL_0 : entity is "POWER_CTRL_0,POWER_CTRL,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=POWER_CTRL,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=0000,START_count=0001,POWER_ing=0001,power_5v=0001,power_14v=0010,power_7v=0011,COUNT_ing=0010,up_delay=2000000,down_delay=200000}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of POWER_CTRL_0 : entity is "yes";
end POWER_CTRL_0;

architecture STRUCTURE of POWER_CTRL_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \^power_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \^clk\ <= clk;
  clk_out <= \^clk\;
  power_state(3) <= \<const0>\;
  power_state(2) <= \<const0>\;
  power_state(1 downto 0) <= \^power_state\(1 downto 0);
  down_delay_cnt(0) <= 'Z';
  down_delay_cnt(1) <= 'Z';
  down_delay_cnt(2) <= 'Z';
  down_delay_cnt(3) <= 'Z';
  down_delay_cnt(4) <= 'Z';
  down_delay_cnt(5) <= 'Z';
  down_delay_cnt(6) <= 'Z';
  down_delay_cnt(7) <= 'Z';
  down_delay_cnt(8) <= 'Z';
  down_delay_cnt(9) <= 'Z';
  down_delay_cnt(10) <= 'Z';
  down_delay_cnt(11) <= 'Z';
  down_delay_cnt(12) <= 'Z';
  down_delay_cnt(13) <= 'Z';
  down_delay_cnt(14) <= 'Z';
  down_delay_cnt(15) <= 'Z';
  down_delay_cnt(16) <= 'Z';
  down_delay_cnt(17) <= 'Z';
  down_delay_cnt(18) <= 'Z';
  down_delay_cnt(19) <= 'Z';
  down_delay_cnt(20) <= 'Z';
  down_delay_cnt(21) <= 'Z';
  down_delay_cnt(22) <= 'Z';
  down_delay_cnt(23) <= 'Z';
  down_delay_cnt(24) <= 'Z';
  down_delay_cnt(25) <= 'Z';
  down_delay_cnt(26) <= 'Z';
  down_delay_cnt(27) <= 'Z';
  down_delay_cnt(28) <= 'Z';
  down_delay_cnt(29) <= 'Z';
  down_delay_cnt(30) <= 'Z';
  down_delay_cnt(31) <= 'Z';
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.POWER_CTRL_0_POWER_CTRL
    port map (
      O1 => power_down,
      O2 => power_H_in_f,
      O3 => power_O_in_f,
      O4 => vh_error_f,
      clk => \^clk\,
      delay_cnt(31 downto 0) => delay_cnt(31 downto 0),
      power_H_error => power_H_error,
      power_H_in => power_H_in,
      power_O_error => power_O_error,
      power_O_in => power_O_in,
      power_fliter(31 downto 0) => power_fliter(31 downto 0),
      power_state(1 downto 0) => \^power_state\(1 downto 0),
      power_up => power_up,
      power_up_14v => power_up_14v,
      power_up_5v => power_up_5v,
      power_up_7v => power_up_7v,
      power_vh_error => power_vh_error,
      system_rst => system_rst,
      vh_error => vh_error,
      vh_error_en => vh_error_en
    );
end STRUCTURE;
