// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Aug 06 18:20:51 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/POWER_CTRL_0/POWER_CTRL_0_funcsim.v
// Design      : POWER_CTRL_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "POWER_CTRL,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "POWER_CTRL_0,POWER_CTRL,{}" *) (* CORE_GENERATION_INFO = "POWER_CTRL_0,POWER_CTRL,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=POWER_CTRL,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=0000,START_count=0001,POWER_ing=0001,power_5v=0001,power_14v=0010,power_7v=0011,COUNT_ing=0010,up_delay=2000000,down_delay=200000}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module POWER_CTRL_0
   (clk,
    clk_out,
    system_rst,
    power_down,
    power_state,
    delay_cnt,
    down_delay_cnt,
    power_H_in_f,
    power_O_in_f,
    vh_error_f,
    power_up,
    power_fliter,
    power_H_in,
    power_O_in,
    vh_error,
    vh_error_en,
    power_H_error,
    power_O_error,
    power_vh_error,
    power_up_5v,
    power_up_14v,
    power_up_7v);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  output clk_out;
  input system_rst;
  (* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_down" *) output power_down;
  output [3:0]power_state;
  output [31:0]delay_cnt;
  output [31:0]down_delay_cnt;
  output power_H_in_f;
  output power_O_in_f;
  output vh_error_f;
  (* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_up" *) input power_up;
  input [31:0]power_fliter;
  input power_H_in;
  input power_O_in;
  input vh_error;
  input vh_error_en;
  output power_H_error;
  output power_O_error;
  output power_vh_error;
  output power_up_5v;
  output power_up_14v;
  output power_up_7v;

  wire \<const0> ;
  wire clk;
  wire [31:0]delay_cnt;
  wire power_H_error;
  wire power_H_in;
  wire power_H_in_f;
  wire power_O_error;
  wire power_O_in;
  wire power_O_in_f;
  wire power_down;
  wire [31:0]power_fliter;
  wire [1:0]\^power_state ;
  wire power_up;
  wire power_up_14v;
  wire power_up_5v;
  wire power_up_7v;
  wire power_vh_error;
  wire system_rst;
  wire vh_error;
  wire vh_error_en;
  wire vh_error_f;

  assign clk_out = clk;
  assign power_state[3] = \<const0> ;
  assign power_state[2] = \<const0> ;
  assign power_state[1:0] = \^power_state [1:0];
GND GND
       (.G(\<const0> ));
POWER_CTRL_0_POWER_CTRL inst
       (.O1(power_down),
        .O2(power_H_in_f),
        .O3(power_O_in_f),
        .O4(vh_error_f),
        .clk(clk),
        .delay_cnt(delay_cnt),
        .power_H_error(power_H_error),
        .power_H_in(power_H_in),
        .power_O_error(power_O_error),
        .power_O_in(power_O_in),
        .power_fliter(power_fliter),
        .power_state(\^power_state ),
        .power_up(power_up),
        .power_up_14v(power_up_14v),
        .power_up_5v(power_up_5v),
        .power_up_7v(power_up_7v),
        .power_vh_error(power_vh_error),
        .system_rst(system_rst),
        .vh_error(vh_error),
        .vh_error_en(vh_error_en));
endmodule

(* ORIG_REF_NAME = "POWER_CTRL" *) 
module POWER_CTRL_0_POWER_CTRL
   (O1,
    O2,
    O3,
    delay_cnt,
    power_state,
    O4,
    power_vh_error,
    power_up_5v,
    power_up_14v,
    power_up_7v,
    power_H_error,
    power_O_error,
    vh_error,
    power_up,
    clk,
    vh_error_en,
    power_O_in,
    power_H_in,
    system_rst,
    power_fliter);
  output O1;
  output O2;
  output O3;
  output [31:0]delay_cnt;
  output [1:0]power_state;
  output O4;
  output power_vh_error;
  output power_up_5v;
  output power_up_14v;
  output power_up_7v;
  output power_H_error;
  output power_O_error;
  input vh_error;
  input power_up;
  input clk;
  input vh_error_en;
  input power_O_in;
  input power_H_in;
  input system_rst;
  input [31:0]power_fliter;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire clk;
  wire [7:0]cnt;
  wire cnt0;
  wire [7:0]cnt_0;
  wire [31:0]delay_cnt;
  wire [31:0]f_counter_A;
  wire [31:1]f_counter_A0;
  wire [31:0]f_counter_B;
  wire [31:1]f_counter_B0;
  wire [31:0]f_counter_C;
  wire [31:1]f_counter_C0;
  wire [1:0]filter_state_A;
  wire [1:0]filter_state_B;
  wire [1:0]filter_state_C;
  wire lock5_out;
  wire \n_0_FSM_sequential_power_state[0]_i_1 ;
  wire \n_0_FSM_sequential_power_state[0]_i_2 ;
  wire \n_0_FSM_sequential_power_state[0]_i_3 ;
  wire \n_0_FSM_sequential_power_state[1]_i_1 ;
  wire \n_0_FSM_sequential_power_state[1]_i_10 ;
  wire \n_0_FSM_sequential_power_state[1]_i_2 ;
  wire \n_0_FSM_sequential_power_state[1]_i_3 ;
  wire \n_0_FSM_sequential_power_state[1]_i_4 ;
  wire \n_0_FSM_sequential_power_state[1]_i_5 ;
  wire \n_0_FSM_sequential_power_state[1]_i_6 ;
  wire \n_0_FSM_sequential_power_state[1]_i_7 ;
  wire \n_0_FSM_sequential_power_state[1]_i_8 ;
  wire \n_0_FSM_sequential_power_state[1]_i_9 ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_power_state_reg[0] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_power_state_reg[1] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_sequential_power_state_reg[2] ;
  wire \n_0_cnt[0]_i_2 ;
  wire \n_0_cnt[7]_i_2 ;
  wire \n_0_delay_cnt[0]_i_1 ;
  wire \n_0_delay_cnt[10]_i_1 ;
  wire \n_0_delay_cnt[11]_i_1 ;
  wire \n_0_delay_cnt[12]_i_1 ;
  wire \n_0_delay_cnt[12]_i_3 ;
  wire \n_0_delay_cnt[12]_i_4 ;
  wire \n_0_delay_cnt[12]_i_5 ;
  wire \n_0_delay_cnt[12]_i_6 ;
  wire \n_0_delay_cnt[13]_i_1 ;
  wire \n_0_delay_cnt[14]_i_1 ;
  wire \n_0_delay_cnt[15]_i_1 ;
  wire \n_0_delay_cnt[16]_i_1 ;
  wire \n_0_delay_cnt[16]_i_3 ;
  wire \n_0_delay_cnt[16]_i_4 ;
  wire \n_0_delay_cnt[16]_i_5 ;
  wire \n_0_delay_cnt[16]_i_6 ;
  wire \n_0_delay_cnt[17]_i_1 ;
  wire \n_0_delay_cnt[18]_i_1 ;
  wire \n_0_delay_cnt[19]_i_1 ;
  wire \n_0_delay_cnt[1]_i_1 ;
  wire \n_0_delay_cnt[20]_i_1 ;
  wire \n_0_delay_cnt[20]_i_3 ;
  wire \n_0_delay_cnt[20]_i_4 ;
  wire \n_0_delay_cnt[20]_i_5 ;
  wire \n_0_delay_cnt[20]_i_6 ;
  wire \n_0_delay_cnt[21]_i_1 ;
  wire \n_0_delay_cnt[22]_i_1 ;
  wire \n_0_delay_cnt[23]_i_1 ;
  wire \n_0_delay_cnt[24]_i_1 ;
  wire \n_0_delay_cnt[24]_i_3 ;
  wire \n_0_delay_cnt[24]_i_4 ;
  wire \n_0_delay_cnt[24]_i_5 ;
  wire \n_0_delay_cnt[24]_i_6 ;
  wire \n_0_delay_cnt[25]_i_1 ;
  wire \n_0_delay_cnt[26]_i_1 ;
  wire \n_0_delay_cnt[27]_i_1 ;
  wire \n_0_delay_cnt[28]_i_1 ;
  wire \n_0_delay_cnt[28]_i_3 ;
  wire \n_0_delay_cnt[28]_i_4 ;
  wire \n_0_delay_cnt[28]_i_5 ;
  wire \n_0_delay_cnt[28]_i_6 ;
  wire \n_0_delay_cnt[29]_i_1 ;
  wire \n_0_delay_cnt[2]_i_1 ;
  wire \n_0_delay_cnt[30]_i_1 ;
  wire \n_0_delay_cnt[31]_i_1 ;
  wire \n_0_delay_cnt[31]_i_10 ;
  wire \n_0_delay_cnt[31]_i_11 ;
  wire \n_0_delay_cnt[31]_i_12 ;
  wire \n_0_delay_cnt[31]_i_13 ;
  wire \n_0_delay_cnt[31]_i_14 ;
  wire \n_0_delay_cnt[31]_i_2 ;
  wire \n_0_delay_cnt[31]_i_4 ;
  wire \n_0_delay_cnt[31]_i_5 ;
  wire \n_0_delay_cnt[31]_i_7 ;
  wire \n_0_delay_cnt[31]_i_8 ;
  wire \n_0_delay_cnt[31]_i_9 ;
  wire \n_0_delay_cnt[3]_i_1 ;
  wire \n_0_delay_cnt[4]_i_1 ;
  wire \n_0_delay_cnt[4]_i_3 ;
  wire \n_0_delay_cnt[4]_i_4 ;
  wire \n_0_delay_cnt[4]_i_5 ;
  wire \n_0_delay_cnt[4]_i_6 ;
  wire \n_0_delay_cnt[5]_i_1 ;
  wire \n_0_delay_cnt[6]_i_1 ;
  wire \n_0_delay_cnt[7]_i_1 ;
  wire \n_0_delay_cnt[8]_i_1 ;
  wire \n_0_delay_cnt[8]_i_3 ;
  wire \n_0_delay_cnt[8]_i_4 ;
  wire \n_0_delay_cnt[8]_i_5 ;
  wire \n_0_delay_cnt[8]_i_6 ;
  wire \n_0_delay_cnt[9]_i_1 ;
  wire \n_0_delay_cnt_reg[12]_i_2 ;
  wire \n_0_delay_cnt_reg[16]_i_2 ;
  wire \n_0_delay_cnt_reg[20]_i_2 ;
  wire \n_0_delay_cnt_reg[24]_i_2 ;
  wire \n_0_delay_cnt_reg[28]_i_2 ;
  wire \n_0_delay_cnt_reg[4]_i_2 ;
  wire \n_0_delay_cnt_reg[8]_i_2 ;
  wire \n_0_f_counter_A[0]_i_1 ;
  wire \n_0_f_counter_A[10]_i_1 ;
  wire \n_0_f_counter_A[11]_i_1 ;
  wire \n_0_f_counter_A[12]_i_1 ;
  wire \n_0_f_counter_A[12]_i_3 ;
  wire \n_0_f_counter_A[12]_i_4 ;
  wire \n_0_f_counter_A[12]_i_5 ;
  wire \n_0_f_counter_A[12]_i_6 ;
  wire \n_0_f_counter_A[13]_i_1 ;
  wire \n_0_f_counter_A[14]_i_1 ;
  wire \n_0_f_counter_A[15]_i_1 ;
  wire \n_0_f_counter_A[16]_i_1 ;
  wire \n_0_f_counter_A[16]_i_3 ;
  wire \n_0_f_counter_A[16]_i_4 ;
  wire \n_0_f_counter_A[16]_i_5 ;
  wire \n_0_f_counter_A[16]_i_6 ;
  wire \n_0_f_counter_A[17]_i_1 ;
  wire \n_0_f_counter_A[18]_i_1 ;
  wire \n_0_f_counter_A[19]_i_1 ;
  wire \n_0_f_counter_A[1]_i_1 ;
  wire \n_0_f_counter_A[20]_i_1 ;
  wire \n_0_f_counter_A[20]_i_3 ;
  wire \n_0_f_counter_A[20]_i_4 ;
  wire \n_0_f_counter_A[20]_i_5 ;
  wire \n_0_f_counter_A[20]_i_6 ;
  wire \n_0_f_counter_A[21]_i_1 ;
  wire \n_0_f_counter_A[22]_i_1 ;
  wire \n_0_f_counter_A[23]_i_1 ;
  wire \n_0_f_counter_A[24]_i_1 ;
  wire \n_0_f_counter_A[24]_i_3 ;
  wire \n_0_f_counter_A[24]_i_4 ;
  wire \n_0_f_counter_A[24]_i_5 ;
  wire \n_0_f_counter_A[24]_i_6 ;
  wire \n_0_f_counter_A[25]_i_1 ;
  wire \n_0_f_counter_A[26]_i_1 ;
  wire \n_0_f_counter_A[27]_i_1 ;
  wire \n_0_f_counter_A[28]_i_1 ;
  wire \n_0_f_counter_A[28]_i_3 ;
  wire \n_0_f_counter_A[28]_i_4 ;
  wire \n_0_f_counter_A[28]_i_5 ;
  wire \n_0_f_counter_A[28]_i_6 ;
  wire \n_0_f_counter_A[29]_i_1 ;
  wire \n_0_f_counter_A[2]_i_1 ;
  wire \n_0_f_counter_A[30]_i_1 ;
  wire \n_0_f_counter_A[31]_i_1 ;
  wire \n_0_f_counter_A[31]_i_3 ;
  wire \n_0_f_counter_A[31]_i_4 ;
  wire \n_0_f_counter_A[31]_i_5 ;
  wire \n_0_f_counter_A[3]_i_1 ;
  wire \n_0_f_counter_A[4]_i_1 ;
  wire \n_0_f_counter_A[4]_i_3 ;
  wire \n_0_f_counter_A[4]_i_4 ;
  wire \n_0_f_counter_A[4]_i_5 ;
  wire \n_0_f_counter_A[4]_i_6 ;
  wire \n_0_f_counter_A[5]_i_1 ;
  wire \n_0_f_counter_A[6]_i_1 ;
  wire \n_0_f_counter_A[7]_i_1 ;
  wire \n_0_f_counter_A[8]_i_1 ;
  wire \n_0_f_counter_A[8]_i_3 ;
  wire \n_0_f_counter_A[8]_i_4 ;
  wire \n_0_f_counter_A[8]_i_5 ;
  wire \n_0_f_counter_A[8]_i_6 ;
  wire \n_0_f_counter_A[9]_i_1 ;
  wire \n_0_f_counter_A_reg[12]_i_2 ;
  wire \n_0_f_counter_A_reg[16]_i_2 ;
  wire \n_0_f_counter_A_reg[20]_i_2 ;
  wire \n_0_f_counter_A_reg[24]_i_2 ;
  wire \n_0_f_counter_A_reg[28]_i_2 ;
  wire \n_0_f_counter_A_reg[4]_i_2 ;
  wire \n_0_f_counter_A_reg[8]_i_2 ;
  wire \n_0_f_counter_B[0]_i_1 ;
  wire \n_0_f_counter_B[10]_i_1 ;
  wire \n_0_f_counter_B[11]_i_1 ;
  wire \n_0_f_counter_B[12]_i_1 ;
  wire \n_0_f_counter_B[12]_i_3 ;
  wire \n_0_f_counter_B[12]_i_4 ;
  wire \n_0_f_counter_B[12]_i_5 ;
  wire \n_0_f_counter_B[12]_i_6 ;
  wire \n_0_f_counter_B[13]_i_1 ;
  wire \n_0_f_counter_B[14]_i_1 ;
  wire \n_0_f_counter_B[15]_i_1 ;
  wire \n_0_f_counter_B[16]_i_1 ;
  wire \n_0_f_counter_B[16]_i_3 ;
  wire \n_0_f_counter_B[16]_i_4 ;
  wire \n_0_f_counter_B[16]_i_5 ;
  wire \n_0_f_counter_B[16]_i_6 ;
  wire \n_0_f_counter_B[17]_i_1 ;
  wire \n_0_f_counter_B[18]_i_1 ;
  wire \n_0_f_counter_B[19]_i_1 ;
  wire \n_0_f_counter_B[1]_i_1 ;
  wire \n_0_f_counter_B[20]_i_1 ;
  wire \n_0_f_counter_B[20]_i_3 ;
  wire \n_0_f_counter_B[20]_i_4 ;
  wire \n_0_f_counter_B[20]_i_5 ;
  wire \n_0_f_counter_B[20]_i_6 ;
  wire \n_0_f_counter_B[21]_i_1 ;
  wire \n_0_f_counter_B[22]_i_1 ;
  wire \n_0_f_counter_B[23]_i_1 ;
  wire \n_0_f_counter_B[24]_i_1 ;
  wire \n_0_f_counter_B[24]_i_3 ;
  wire \n_0_f_counter_B[24]_i_4 ;
  wire \n_0_f_counter_B[24]_i_5 ;
  wire \n_0_f_counter_B[24]_i_6 ;
  wire \n_0_f_counter_B[25]_i_1 ;
  wire \n_0_f_counter_B[26]_i_1 ;
  wire \n_0_f_counter_B[27]_i_1 ;
  wire \n_0_f_counter_B[28]_i_1 ;
  wire \n_0_f_counter_B[28]_i_3 ;
  wire \n_0_f_counter_B[28]_i_4 ;
  wire \n_0_f_counter_B[28]_i_5 ;
  wire \n_0_f_counter_B[28]_i_6 ;
  wire \n_0_f_counter_B[29]_i_1 ;
  wire \n_0_f_counter_B[2]_i_1 ;
  wire \n_0_f_counter_B[30]_i_1 ;
  wire \n_0_f_counter_B[31]_i_1 ;
  wire \n_0_f_counter_B[31]_i_3 ;
  wire \n_0_f_counter_B[31]_i_4 ;
  wire \n_0_f_counter_B[31]_i_5 ;
  wire \n_0_f_counter_B[3]_i_1 ;
  wire \n_0_f_counter_B[4]_i_1 ;
  wire \n_0_f_counter_B[4]_i_3 ;
  wire \n_0_f_counter_B[4]_i_4 ;
  wire \n_0_f_counter_B[4]_i_5 ;
  wire \n_0_f_counter_B[4]_i_6 ;
  wire \n_0_f_counter_B[5]_i_1 ;
  wire \n_0_f_counter_B[6]_i_1 ;
  wire \n_0_f_counter_B[7]_i_1 ;
  wire \n_0_f_counter_B[8]_i_1 ;
  wire \n_0_f_counter_B[8]_i_3 ;
  wire \n_0_f_counter_B[8]_i_4 ;
  wire \n_0_f_counter_B[8]_i_5 ;
  wire \n_0_f_counter_B[8]_i_6 ;
  wire \n_0_f_counter_B[9]_i_1 ;
  wire \n_0_f_counter_B_reg[12]_i_2 ;
  wire \n_0_f_counter_B_reg[16]_i_2 ;
  wire \n_0_f_counter_B_reg[20]_i_2 ;
  wire \n_0_f_counter_B_reg[24]_i_2 ;
  wire \n_0_f_counter_B_reg[28]_i_2 ;
  wire \n_0_f_counter_B_reg[4]_i_2 ;
  wire \n_0_f_counter_B_reg[8]_i_2 ;
  wire \n_0_f_counter_C[0]_i_1 ;
  wire \n_0_f_counter_C[10]_i_1 ;
  wire \n_0_f_counter_C[11]_i_1 ;
  wire \n_0_f_counter_C[12]_i_1 ;
  wire \n_0_f_counter_C[12]_i_3 ;
  wire \n_0_f_counter_C[12]_i_4 ;
  wire \n_0_f_counter_C[12]_i_5 ;
  wire \n_0_f_counter_C[12]_i_6 ;
  wire \n_0_f_counter_C[13]_i_1 ;
  wire \n_0_f_counter_C[14]_i_1 ;
  wire \n_0_f_counter_C[15]_i_1 ;
  wire \n_0_f_counter_C[16]_i_1 ;
  wire \n_0_f_counter_C[16]_i_3 ;
  wire \n_0_f_counter_C[16]_i_4 ;
  wire \n_0_f_counter_C[16]_i_5 ;
  wire \n_0_f_counter_C[16]_i_6 ;
  wire \n_0_f_counter_C[17]_i_1 ;
  wire \n_0_f_counter_C[18]_i_1 ;
  wire \n_0_f_counter_C[19]_i_1 ;
  wire \n_0_f_counter_C[1]_i_1 ;
  wire \n_0_f_counter_C[20]_i_1 ;
  wire \n_0_f_counter_C[20]_i_3 ;
  wire \n_0_f_counter_C[20]_i_4 ;
  wire \n_0_f_counter_C[20]_i_5 ;
  wire \n_0_f_counter_C[20]_i_6 ;
  wire \n_0_f_counter_C[21]_i_1 ;
  wire \n_0_f_counter_C[22]_i_1 ;
  wire \n_0_f_counter_C[23]_i_1 ;
  wire \n_0_f_counter_C[24]_i_1 ;
  wire \n_0_f_counter_C[24]_i_3 ;
  wire \n_0_f_counter_C[24]_i_4 ;
  wire \n_0_f_counter_C[24]_i_5 ;
  wire \n_0_f_counter_C[24]_i_6 ;
  wire \n_0_f_counter_C[25]_i_1 ;
  wire \n_0_f_counter_C[26]_i_1 ;
  wire \n_0_f_counter_C[27]_i_1 ;
  wire \n_0_f_counter_C[28]_i_1 ;
  wire \n_0_f_counter_C[28]_i_3 ;
  wire \n_0_f_counter_C[28]_i_4 ;
  wire \n_0_f_counter_C[28]_i_5 ;
  wire \n_0_f_counter_C[28]_i_6 ;
  wire \n_0_f_counter_C[29]_i_1 ;
  wire \n_0_f_counter_C[2]_i_1 ;
  wire \n_0_f_counter_C[30]_i_1 ;
  wire \n_0_f_counter_C[31]_i_1 ;
  wire \n_0_f_counter_C[31]_i_3 ;
  wire \n_0_f_counter_C[31]_i_4 ;
  wire \n_0_f_counter_C[31]_i_5 ;
  wire \n_0_f_counter_C[3]_i_1 ;
  wire \n_0_f_counter_C[4]_i_1 ;
  wire \n_0_f_counter_C[4]_i_3 ;
  wire \n_0_f_counter_C[4]_i_4 ;
  wire \n_0_f_counter_C[4]_i_5 ;
  wire \n_0_f_counter_C[4]_i_6 ;
  wire \n_0_f_counter_C[5]_i_1 ;
  wire \n_0_f_counter_C[6]_i_1 ;
  wire \n_0_f_counter_C[7]_i_1 ;
  wire \n_0_f_counter_C[8]_i_1 ;
  wire \n_0_f_counter_C[8]_i_3 ;
  wire \n_0_f_counter_C[8]_i_4 ;
  wire \n_0_f_counter_C[8]_i_5 ;
  wire \n_0_f_counter_C[8]_i_6 ;
  wire \n_0_f_counter_C[9]_i_1 ;
  wire \n_0_f_counter_C_reg[12]_i_2 ;
  wire \n_0_f_counter_C_reg[16]_i_2 ;
  wire \n_0_f_counter_C_reg[20]_i_2 ;
  wire \n_0_f_counter_C_reg[24]_i_2 ;
  wire \n_0_f_counter_C_reg[28]_i_2 ;
  wire \n_0_f_counter_C_reg[4]_i_2 ;
  wire \n_0_f_counter_C_reg[8]_i_2 ;
  wire \n_0_filter_state_A[0]_i_1 ;
  wire \n_0_filter_state_A[1]_i_1 ;
  wire \n_0_filter_state_B[0]_i_1 ;
  wire \n_0_filter_state_B[1]_i_1 ;
  wire \n_0_filter_state_C[0]_i_1 ;
  wire \n_0_filter_state_C[1]_i_1 ;
  wire n_0_lock_i_2;
  wire n_0_lock_reg;
  wire n_0_power_H_error_i_1;
  wire n_0_power_H_in_f_i_1;
  wire n_0_power_H_in_f_i_10;
  wire n_0_power_H_in_f_i_11;
  wire n_0_power_H_in_f_i_12;
  wire n_0_power_H_in_f_i_13;
  wire n_0_power_H_in_f_i_14;
  wire n_0_power_H_in_f_i_15;
  wire n_0_power_H_in_f_i_16;
  wire n_0_power_H_in_f_i_2;
  wire n_0_power_H_in_f_i_5;
  wire n_0_power_H_in_f_i_6;
  wire n_0_power_H_in_f_i_7;
  wire n_0_power_H_in_f_i_9;
  wire n_0_power_H_in_f_reg_i_4;
  wire n_0_power_H_in_f_reg_i_8;
  wire n_0_power_O_error_i_1;
  wire n_0_power_O_in_f_i_1;
  wire n_0_power_O_in_f_i_10;
  wire n_0_power_O_in_f_i_11;
  wire n_0_power_O_in_f_i_12;
  wire n_0_power_O_in_f_i_13;
  wire n_0_power_O_in_f_i_14;
  wire n_0_power_O_in_f_i_15;
  wire n_0_power_O_in_f_i_16;
  wire n_0_power_O_in_f_i_2;
  wire n_0_power_O_in_f_i_5;
  wire n_0_power_O_in_f_i_6;
  wire n_0_power_O_in_f_i_7;
  wire n_0_power_O_in_f_i_9;
  wire n_0_power_O_in_f_reg_i_4;
  wire n_0_power_O_in_f_reg_i_8;
  wire n_0_power_down_i_2;
  wire n_0_power_down_i_3;
  wire n_0_power_down_i_4;
  wire n_0_power_up_14v_i_1;
  wire n_0_power_up_14v_i_2;
  wire n_0_power_up_14v_i_3;
  wire n_0_power_up_14v_i_4;
  wire n_0_power_up_14v_i_5;
  wire n_0_power_up_5v_r_i_1;
  wire n_0_power_up_7v_i_1;
  wire n_0_power_up_7v_i_2;
  wire n_0_power_vh_error_i_1;
  wire n_0_vh_error_f_i_1;
  wire n_0_vh_error_f_i_10;
  wire n_0_vh_error_f_i_11;
  wire n_0_vh_error_f_i_12;
  wire n_0_vh_error_f_i_13;
  wire n_0_vh_error_f_i_14;
  wire n_0_vh_error_f_i_15;
  wire n_0_vh_error_f_i_4;
  wire n_0_vh_error_f_i_5;
  wire n_0_vh_error_f_i_6;
  wire n_0_vh_error_f_i_8;
  wire n_0_vh_error_f_i_9;
  wire n_0_vh_error_f_reg_i_3;
  wire n_0_vh_error_f_reg_i_7;
  wire \n_1_delay_cnt_reg[12]_i_2 ;
  wire \n_1_delay_cnt_reg[16]_i_2 ;
  wire \n_1_delay_cnt_reg[20]_i_2 ;
  wire \n_1_delay_cnt_reg[24]_i_2 ;
  wire \n_1_delay_cnt_reg[28]_i_2 ;
  wire \n_1_delay_cnt_reg[4]_i_2 ;
  wire \n_1_delay_cnt_reg[8]_i_2 ;
  wire \n_1_f_counter_A_reg[12]_i_2 ;
  wire \n_1_f_counter_A_reg[16]_i_2 ;
  wire \n_1_f_counter_A_reg[20]_i_2 ;
  wire \n_1_f_counter_A_reg[24]_i_2 ;
  wire \n_1_f_counter_A_reg[28]_i_2 ;
  wire \n_1_f_counter_A_reg[4]_i_2 ;
  wire \n_1_f_counter_A_reg[8]_i_2 ;
  wire \n_1_f_counter_B_reg[12]_i_2 ;
  wire \n_1_f_counter_B_reg[16]_i_2 ;
  wire \n_1_f_counter_B_reg[20]_i_2 ;
  wire \n_1_f_counter_B_reg[24]_i_2 ;
  wire \n_1_f_counter_B_reg[28]_i_2 ;
  wire \n_1_f_counter_B_reg[4]_i_2 ;
  wire \n_1_f_counter_B_reg[8]_i_2 ;
  wire \n_1_f_counter_C_reg[12]_i_2 ;
  wire \n_1_f_counter_C_reg[16]_i_2 ;
  wire \n_1_f_counter_C_reg[20]_i_2 ;
  wire \n_1_f_counter_C_reg[24]_i_2 ;
  wire \n_1_f_counter_C_reg[28]_i_2 ;
  wire \n_1_f_counter_C_reg[4]_i_2 ;
  wire \n_1_f_counter_C_reg[8]_i_2 ;
  wire n_1_power_H_in_f_reg_i_3;
  wire n_1_power_H_in_f_reg_i_4;
  wire n_1_power_H_in_f_reg_i_8;
  wire n_1_power_O_in_f_reg_i_3;
  wire n_1_power_O_in_f_reg_i_4;
  wire n_1_power_O_in_f_reg_i_8;
  wire n_1_vh_error_f_reg_i_2;
  wire n_1_vh_error_f_reg_i_3;
  wire n_1_vh_error_f_reg_i_7;
  wire \n_2_delay_cnt_reg[12]_i_2 ;
  wire \n_2_delay_cnt_reg[16]_i_2 ;
  wire \n_2_delay_cnt_reg[20]_i_2 ;
  wire \n_2_delay_cnt_reg[24]_i_2 ;
  wire \n_2_delay_cnt_reg[28]_i_2 ;
  wire \n_2_delay_cnt_reg[31]_i_6 ;
  wire \n_2_delay_cnt_reg[4]_i_2 ;
  wire \n_2_delay_cnt_reg[8]_i_2 ;
  wire \n_2_f_counter_A_reg[12]_i_2 ;
  wire \n_2_f_counter_A_reg[16]_i_2 ;
  wire \n_2_f_counter_A_reg[20]_i_2 ;
  wire \n_2_f_counter_A_reg[24]_i_2 ;
  wire \n_2_f_counter_A_reg[28]_i_2 ;
  wire \n_2_f_counter_A_reg[31]_i_2 ;
  wire \n_2_f_counter_A_reg[4]_i_2 ;
  wire \n_2_f_counter_A_reg[8]_i_2 ;
  wire \n_2_f_counter_B_reg[12]_i_2 ;
  wire \n_2_f_counter_B_reg[16]_i_2 ;
  wire \n_2_f_counter_B_reg[20]_i_2 ;
  wire \n_2_f_counter_B_reg[24]_i_2 ;
  wire \n_2_f_counter_B_reg[28]_i_2 ;
  wire \n_2_f_counter_B_reg[31]_i_2 ;
  wire \n_2_f_counter_B_reg[4]_i_2 ;
  wire \n_2_f_counter_B_reg[8]_i_2 ;
  wire \n_2_f_counter_C_reg[12]_i_2 ;
  wire \n_2_f_counter_C_reg[16]_i_2 ;
  wire \n_2_f_counter_C_reg[20]_i_2 ;
  wire \n_2_f_counter_C_reg[24]_i_2 ;
  wire \n_2_f_counter_C_reg[28]_i_2 ;
  wire \n_2_f_counter_C_reg[31]_i_2 ;
  wire \n_2_f_counter_C_reg[4]_i_2 ;
  wire \n_2_f_counter_C_reg[8]_i_2 ;
  wire n_2_power_H_in_f_reg_i_3;
  wire n_2_power_H_in_f_reg_i_4;
  wire n_2_power_H_in_f_reg_i_8;
  wire n_2_power_O_in_f_reg_i_3;
  wire n_2_power_O_in_f_reg_i_4;
  wire n_2_power_O_in_f_reg_i_8;
  wire n_2_vh_error_f_reg_i_2;
  wire n_2_vh_error_f_reg_i_3;
  wire n_2_vh_error_f_reg_i_7;
  wire \n_3_delay_cnt_reg[12]_i_2 ;
  wire \n_3_delay_cnt_reg[16]_i_2 ;
  wire \n_3_delay_cnt_reg[20]_i_2 ;
  wire \n_3_delay_cnt_reg[24]_i_2 ;
  wire \n_3_delay_cnt_reg[28]_i_2 ;
  wire \n_3_delay_cnt_reg[31]_i_6 ;
  wire \n_3_delay_cnt_reg[4]_i_2 ;
  wire \n_3_delay_cnt_reg[8]_i_2 ;
  wire \n_3_f_counter_A_reg[12]_i_2 ;
  wire \n_3_f_counter_A_reg[16]_i_2 ;
  wire \n_3_f_counter_A_reg[20]_i_2 ;
  wire \n_3_f_counter_A_reg[24]_i_2 ;
  wire \n_3_f_counter_A_reg[28]_i_2 ;
  wire \n_3_f_counter_A_reg[31]_i_2 ;
  wire \n_3_f_counter_A_reg[4]_i_2 ;
  wire \n_3_f_counter_A_reg[8]_i_2 ;
  wire \n_3_f_counter_B_reg[12]_i_2 ;
  wire \n_3_f_counter_B_reg[16]_i_2 ;
  wire \n_3_f_counter_B_reg[20]_i_2 ;
  wire \n_3_f_counter_B_reg[24]_i_2 ;
  wire \n_3_f_counter_B_reg[28]_i_2 ;
  wire \n_3_f_counter_B_reg[31]_i_2 ;
  wire \n_3_f_counter_B_reg[4]_i_2 ;
  wire \n_3_f_counter_B_reg[8]_i_2 ;
  wire \n_3_f_counter_C_reg[12]_i_2 ;
  wire \n_3_f_counter_C_reg[16]_i_2 ;
  wire \n_3_f_counter_C_reg[20]_i_2 ;
  wire \n_3_f_counter_C_reg[24]_i_2 ;
  wire \n_3_f_counter_C_reg[28]_i_2 ;
  wire \n_3_f_counter_C_reg[31]_i_2 ;
  wire \n_3_f_counter_C_reg[4]_i_2 ;
  wire \n_3_f_counter_C_reg[8]_i_2 ;
  wire n_3_power_H_in_f_reg_i_3;
  wire n_3_power_H_in_f_reg_i_4;
  wire n_3_power_H_in_f_reg_i_8;
  wire n_3_power_O_in_f_reg_i_3;
  wire n_3_power_O_in_f_reg_i_4;
  wire n_3_power_O_in_f_reg_i_8;
  wire n_3_vh_error_f_reg_i_2;
  wire n_3_vh_error_f_reg_i_3;
  wire n_3_vh_error_f_reg_i_7;
  wire \n_4_delay_cnt_reg[12]_i_2 ;
  wire \n_4_delay_cnt_reg[16]_i_2 ;
  wire \n_4_delay_cnt_reg[20]_i_2 ;
  wire \n_4_delay_cnt_reg[24]_i_2 ;
  wire \n_4_delay_cnt_reg[28]_i_2 ;
  wire \n_4_delay_cnt_reg[4]_i_2 ;
  wire \n_4_delay_cnt_reg[8]_i_2 ;
  wire \n_5_delay_cnt_reg[12]_i_2 ;
  wire \n_5_delay_cnt_reg[16]_i_2 ;
  wire \n_5_delay_cnt_reg[20]_i_2 ;
  wire \n_5_delay_cnt_reg[24]_i_2 ;
  wire \n_5_delay_cnt_reg[28]_i_2 ;
  wire \n_5_delay_cnt_reg[31]_i_6 ;
  wire \n_5_delay_cnt_reg[4]_i_2 ;
  wire \n_5_delay_cnt_reg[8]_i_2 ;
  wire \n_6_delay_cnt_reg[12]_i_2 ;
  wire \n_6_delay_cnt_reg[16]_i_2 ;
  wire \n_6_delay_cnt_reg[20]_i_2 ;
  wire \n_6_delay_cnt_reg[24]_i_2 ;
  wire \n_6_delay_cnt_reg[28]_i_2 ;
  wire \n_6_delay_cnt_reg[31]_i_6 ;
  wire \n_6_delay_cnt_reg[4]_i_2 ;
  wire \n_6_delay_cnt_reg[8]_i_2 ;
  wire \n_7_delay_cnt_reg[12]_i_2 ;
  wire \n_7_delay_cnt_reg[16]_i_2 ;
  wire \n_7_delay_cnt_reg[20]_i_2 ;
  wire \n_7_delay_cnt_reg[24]_i_2 ;
  wire \n_7_delay_cnt_reg[28]_i_2 ;
  wire \n_7_delay_cnt_reg[31]_i_6 ;
  wire \n_7_delay_cnt_reg[4]_i_2 ;
  wire \n_7_delay_cnt_reg[8]_i_2 ;
  wire power_H_error;
  wire power_H_in;
  wire power_H_in_f_r;
  wire power_H_in_r;
  wire power_O_error;
  wire power_O_in;
  wire power_O_in_f_r;
  wire power_O_in_r;
  wire [31:0]power_fliter;
  wire [1:0]power_state;
  wire power_up;
  wire power_up_14v;
  wire power_up_5v;
  wire power_up_7v;
  wire power_up_7v0;
  wire power_up_7v1_out;
  wire power_vh_error;
  wire system_rst;
  wire vh_error;
  wire vh_error_en;
  wire vh_error_r;
  wire [3:2]\NLW_delay_cnt_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_delay_cnt_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_f_counter_A_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_f_counter_A_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_f_counter_B_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_f_counter_B_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_f_counter_C_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_f_counter_C_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_power_H_in_f_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_power_H_in_f_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_power_H_in_f_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_power_H_in_f_reg_i_8_O_UNCONNECTED;
  wire [3:3]NLW_power_O_in_f_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_power_O_in_f_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_power_O_in_f_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_power_O_in_f_reg_i_8_O_UNCONNECTED;
  wire [3:3]NLW_vh_error_f_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_vh_error_f_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_vh_error_f_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_vh_error_f_reg_i_7_O_UNCONNECTED;

LUT6 #(
    .INIT(64'h00000000FFD100D1)) 
     \FSM_sequential_power_state[0]_i_1 
       (.I0(n_0_power_down_i_4),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .I2(\n_0_FSM_sequential_power_state[0]_i_2 ),
        .I3(\n_0_FSM_sequential_power_state_reg[0] ),
        .I4(\n_0_FSM_sequential_power_state[0]_i_3 ),
        .I5(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(\n_0_FSM_sequential_power_state[0]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFCFFFFFFAAAA)) 
     \FSM_sequential_power_state[0]_i_2 
       (.I0(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I1(\n_0_delay_cnt[31]_i_7 ),
        .I2(\n_0_delay_cnt[31]_i_8 ),
        .I3(\n_0_delay_cnt[31]_i_9 ),
        .I4(n_0_power_down_i_4),
        .I5(O1),
        .O(\n_0_FSM_sequential_power_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h0F0F0000DFDFD0DF)) 
     \FSM_sequential_power_state[0]_i_3 
       (.I0(vh_error_en),
        .I1(O4),
        .I2(\n_0_FSM_sequential_power_state_reg[1] ),
        .I3(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I4(O1),
        .I5(n_0_power_down_i_4),
        .O(\n_0_FSM_sequential_power_state[0]_i_3 ));
LUT6 #(
    .INIT(64'h00000000EEE2E2E2)) 
     \FSM_sequential_power_state[1]_i_1 
       (.I0(\n_0_FSM_sequential_power_state[1]_i_2 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_FSM_sequential_power_state_reg[1] ),
        .I3(\n_0_FSM_sequential_power_state[1]_i_3 ),
        .I4(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I5(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(\n_0_FSM_sequential_power_state[1]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_sequential_power_state[1]_i_10 
       (.I0(delay_cnt[13]),
        .I1(delay_cnt[12]),
        .I2(delay_cnt[11]),
        .I3(delay_cnt[14]),
        .I4(delay_cnt[16]),
        .O(\n_0_FSM_sequential_power_state[1]_i_10 ));
LUT6 #(
    .INIT(64'h111111D100000000)) 
     \FSM_sequential_power_state[1]_i_2 
       (.I0(n_0_power_down_i_4),
        .I1(O1),
        .I2(\n_0_delay_cnt[31]_i_9 ),
        .I3(\n_0_delay_cnt[31]_i_8 ),
        .I4(\n_0_delay_cnt[31]_i_7 ),
        .I5(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_FSM_sequential_power_state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \FSM_sequential_power_state[1]_i_3 
       (.I0(O1),
        .I1(O2),
        .I2(power_up),
        .I3(O3),
        .O(\n_0_FSM_sequential_power_state[1]_i_3 ));
LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFEFE)) 
     \FSM_sequential_power_state[1]_i_4 
       (.I0(\n_0_FSM_sequential_power_state[1]_i_5 ),
        .I1(\n_0_FSM_sequential_power_state[1]_i_6 ),
        .I2(\n_0_FSM_sequential_power_state[1]_i_7 ),
        .I3(\n_0_FSM_sequential_power_state[1]_i_8 ),
        .I4(\n_0_FSM_sequential_power_state[1]_i_9 ),
        .I5(\n_0_FSM_sequential_power_state[1]_i_10 ),
        .O(\n_0_FSM_sequential_power_state[1]_i_4 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_sequential_power_state[1]_i_5 
       (.I0(delay_cnt[24]),
        .I1(delay_cnt[23]),
        .I2(delay_cnt[25]),
        .I3(delay_cnt[28]),
        .O(\n_0_FSM_sequential_power_state[1]_i_5 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_sequential_power_state[1]_i_6 
       (.I0(delay_cnt[30]),
        .I1(delay_cnt[27]),
        .I2(delay_cnt[21]),
        .I3(delay_cnt[31]),
        .O(\n_0_FSM_sequential_power_state[1]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_sequential_power_state[1]_i_7 
       (.I0(delay_cnt[26]),
        .I1(delay_cnt[22]),
        .I2(delay_cnt[29]),
        .O(\n_0_FSM_sequential_power_state[1]_i_7 ));
LUT6 #(
    .INIT(64'h7F7F7FFFFFFFFFFF)) 
     \FSM_sequential_power_state[1]_i_8 
       (.I0(delay_cnt[18]),
        .I1(delay_cnt[17]),
        .I2(delay_cnt[20]),
        .I3(delay_cnt[15]),
        .I4(delay_cnt[16]),
        .I5(delay_cnt[19]),
        .O(\n_0_FSM_sequential_power_state[1]_i_8 ));
LUT4 #(
    .INIT(16'hAAA8)) 
     \FSM_sequential_power_state[1]_i_9 
       (.I0(delay_cnt[10]),
        .I1(delay_cnt[8]),
        .I2(delay_cnt[9]),
        .I3(delay_cnt[7]),
        .O(\n_0_FSM_sequential_power_state[1]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_power_state_reg[0] 
       (.C(clk),
        .CE(n_0_power_down_i_2),
        .D(\n_0_FSM_sequential_power_state[0]_i_1 ),
        .Q(\n_0_FSM_sequential_power_state_reg[0] ),
        .R(cnt0));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_power_state_reg[1] 
       (.C(clk),
        .CE(n_0_power_down_i_2),
        .D(\n_0_FSM_sequential_power_state[1]_i_1 ),
        .Q(\n_0_FSM_sequential_power_state_reg[1] ),
        .R(cnt0));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_power_state_reg[2] 
       (.C(clk),
        .CE(n_0_power_down_i_2),
        .D(1'b0),
        .Q(\n_0_FSM_sequential_power_state_reg[2] ),
        .R(cnt0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h23333333)) 
     \cnt[0]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[6]),
        .I3(cnt[2]),
        .I4(\n_0_cnt[0]_i_2 ),
        .O(cnt_0[0]));
LUT4 #(
    .INIT(16'h0010)) 
     \cnt[0]_i_2 
       (.I0(cnt[4]),
        .I1(cnt[7]),
        .I2(cnt[5]),
        .I3(cnt[3]),
        .O(\n_0_cnt[0]_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(cnt_0[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(cnt_0[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \cnt[3]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(cnt_0[3]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \cnt[4]_i_1 
       (.I0(cnt[4]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[3]),
        .O(cnt_0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \cnt[5]_i_1 
       (.I0(cnt[5]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .I5(cnt[4]),
        .O(cnt_0[5]));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \cnt[6]_i_1 
       (.I0(cnt[6]),
        .I1(cnt[4]),
        .I2(\n_0_cnt[7]_i_2 ),
        .I3(cnt[3]),
        .I4(cnt[5]),
        .O(cnt_0[6]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \cnt[7]_i_1 
       (.I0(cnt[7]),
        .I1(cnt[5]),
        .I2(cnt[3]),
        .I3(\n_0_cnt[7]_i_2 ),
        .I4(cnt[4]),
        .I5(cnt[6]),
        .O(cnt_0[7]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \cnt[7]_i_2 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(\n_0_cnt[7]_i_2 ));
FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[0]),
        .Q(cnt[0]),
        .R(cnt0));
FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[1]),
        .Q(cnt[1]),
        .R(cnt0));
FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[2]),
        .Q(cnt[2]),
        .R(cnt0));
FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[3]),
        .Q(cnt[3]),
        .R(cnt0));
FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[4]),
        .Q(cnt[4]),
        .R(cnt0));
FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[5]),
        .Q(cnt[5]),
        .R(cnt0));
FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[6]),
        .Q(cnt[6]),
        .R(cnt0));
FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_0[7]),
        .Q(cnt[7]),
        .R(cnt0));
LUT5 #(
    .INIT(32'h00030044)) 
     \delay_cnt[0]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(delay_cnt[0]),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[0]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[10]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[12]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[10]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[11]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[12]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[11]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[12]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[12]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[12]_i_3 
       (.I0(delay_cnt[12]),
        .O(\n_0_delay_cnt[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[12]_i_4 
       (.I0(delay_cnt[11]),
        .O(\n_0_delay_cnt[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[12]_i_5 
       (.I0(delay_cnt[10]),
        .O(\n_0_delay_cnt[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[12]_i_6 
       (.I0(delay_cnt[9]),
        .O(\n_0_delay_cnt[12]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[13]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[16]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[13]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[14]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[16]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[14]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[15]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[16]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[15]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[16]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[16]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[16]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[16]_i_3 
       (.I0(delay_cnt[16]),
        .O(\n_0_delay_cnt[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[16]_i_4 
       (.I0(delay_cnt[15]),
        .O(\n_0_delay_cnt[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[16]_i_5 
       (.I0(delay_cnt[14]),
        .O(\n_0_delay_cnt[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[16]_i_6 
       (.I0(delay_cnt[13]),
        .O(\n_0_delay_cnt[16]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[17]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[20]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[17]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[18]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[20]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[18]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[19]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[20]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[19]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[1]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[4]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[1]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[20]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[20]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[20]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[20]_i_3 
       (.I0(delay_cnt[20]),
        .O(\n_0_delay_cnt[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[20]_i_4 
       (.I0(delay_cnt[19]),
        .O(\n_0_delay_cnt[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[20]_i_5 
       (.I0(delay_cnt[18]),
        .O(\n_0_delay_cnt[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[20]_i_6 
       (.I0(delay_cnt[17]),
        .O(\n_0_delay_cnt[20]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[21]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[24]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[21]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[22]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[24]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[22]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[23]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[24]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[23]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[24]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[24]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[24]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[24]_i_3 
       (.I0(delay_cnt[24]),
        .O(\n_0_delay_cnt[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[24]_i_4 
       (.I0(delay_cnt[23]),
        .O(\n_0_delay_cnt[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[24]_i_5 
       (.I0(delay_cnt[22]),
        .O(\n_0_delay_cnt[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[24]_i_6 
       (.I0(delay_cnt[21]),
        .O(\n_0_delay_cnt[24]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[25]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[28]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[25]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[26]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[28]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[26]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[27]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[28]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[27]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[28]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[28]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[28]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[28]_i_3 
       (.I0(delay_cnt[28]),
        .O(\n_0_delay_cnt[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[28]_i_4 
       (.I0(delay_cnt[27]),
        .O(\n_0_delay_cnt[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[28]_i_5 
       (.I0(delay_cnt[26]),
        .O(\n_0_delay_cnt[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[28]_i_6 
       (.I0(delay_cnt[25]),
        .O(\n_0_delay_cnt[28]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[29]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[31]_i_6 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[29]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[2]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[4]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[2]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[30]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[31]_i_6 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[30]_i_1 ));
LUT6 #(
    .INIT(64'h0000000055555155)) 
     \delay_cnt[31]_i_1 
       (.I0(\n_0_FSM_sequential_power_state_reg[2] ),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .I2(O1),
        .I3(power_up_7v1_out),
        .I4(\n_0_FSM_sequential_power_state_reg[0] ),
        .I5(cnt0),
        .O(\n_0_delay_cnt[31]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[31]_i_10 
       (.I0(delay_cnt[31]),
        .O(\n_0_delay_cnt[31]_i_10 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[31]_i_11 
       (.I0(delay_cnt[30]),
        .O(\n_0_delay_cnt[31]_i_11 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[31]_i_12 
       (.I0(delay_cnt[29]),
        .O(\n_0_delay_cnt[31]_i_12 ));
LUT4 #(
    .INIT(16'h0111)) 
     \delay_cnt[31]_i_13 
       (.I0(delay_cnt[15]),
        .I1(delay_cnt[14]),
        .I2(delay_cnt[10]),
        .I3(delay_cnt[11]),
        .O(\n_0_delay_cnt[31]_i_13 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
     \delay_cnt[31]_i_14 
       (.I0(delay_cnt[6]),
        .I1(delay_cnt[7]),
        .I2(delay_cnt[8]),
        .I3(delay_cnt[14]),
        .I4(delay_cnt[15]),
        .I5(delay_cnt[9]),
        .O(\n_0_delay_cnt[31]_i_14 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[31]_i_2 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[31]_i_6 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[31]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \delay_cnt[31]_i_3 
       (.I0(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I1(O2),
        .I2(power_up),
        .I3(O3),
        .O(power_up_7v1_out));
LUT6 #(
    .INIT(64'hEFEFFFFFEFEFFF00)) 
     \delay_cnt[31]_i_4 
       (.I0(\n_0_delay_cnt[31]_i_7 ),
        .I1(\n_0_delay_cnt[31]_i_8 ),
        .I2(\n_0_delay_cnt[31]_i_9 ),
        .I3(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I4(O1),
        .I5(n_0_power_down_i_4),
        .O(\n_0_delay_cnt[31]_i_4 ));
LUT5 #(
    .INIT(32'hEFEFFF00)) 
     \delay_cnt[31]_i_5 
       (.I0(\n_0_delay_cnt[31]_i_7 ),
        .I1(\n_0_delay_cnt[31]_i_8 ),
        .I2(\n_0_delay_cnt[31]_i_9 ),
        .I3(n_0_power_down_i_4),
        .I4(O1),
        .O(\n_0_delay_cnt[31]_i_5 ));
LUT3 #(
    .INIT(8'hFE)) 
     \delay_cnt[31]_i_7 
       (.I0(delay_cnt[19]),
        .I1(delay_cnt[18]),
        .I2(delay_cnt[20]),
        .O(\n_0_delay_cnt[31]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \delay_cnt[31]_i_8 
       (.I0(delay_cnt[29]),
        .I1(delay_cnt[22]),
        .I2(delay_cnt[26]),
        .I3(\n_0_FSM_sequential_power_state[1]_i_6 ),
        .I4(\n_0_FSM_sequential_power_state[1]_i_5 ),
        .O(\n_0_delay_cnt[31]_i_8 ));
LUT6 #(
    .INIT(64'h1011FFFFFFFFFFFF)) 
     \delay_cnt[31]_i_9 
       (.I0(delay_cnt[12]),
        .I1(delay_cnt[13]),
        .I2(\n_0_delay_cnt[31]_i_13 ),
        .I3(\n_0_delay_cnt[31]_i_14 ),
        .I4(delay_cnt[17]),
        .I5(delay_cnt[16]),
        .O(\n_0_delay_cnt[31]_i_9 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[3]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[4]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[3]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[4]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[4]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[4]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[4]_i_3 
       (.I0(delay_cnt[4]),
        .O(\n_0_delay_cnt[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[4]_i_4 
       (.I0(delay_cnt[3]),
        .O(\n_0_delay_cnt[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[4]_i_5 
       (.I0(delay_cnt[2]),
        .O(\n_0_delay_cnt[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[4]_i_6 
       (.I0(delay_cnt[1]),
        .O(\n_0_delay_cnt[4]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[5]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[8]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[5]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[6]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_6_delay_cnt_reg[8]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[6]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[7]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_5_delay_cnt_reg[8]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[7]_i_1 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[8]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_4_delay_cnt_reg[8]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[8]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[8]_i_3 
       (.I0(delay_cnt[8]),
        .O(\n_0_delay_cnt[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[8]_i_4 
       (.I0(delay_cnt[7]),
        .O(\n_0_delay_cnt[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[8]_i_5 
       (.I0(delay_cnt[6]),
        .O(\n_0_delay_cnt[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \delay_cnt[8]_i_6 
       (.I0(delay_cnt[5]),
        .O(\n_0_delay_cnt[8]_i_6 ));
LUT5 #(
    .INIT(32'h03004400)) 
     \delay_cnt[9]_i_1 
       (.I0(\n_0_delay_cnt[31]_i_4 ),
        .I1(\n_0_FSM_sequential_power_state_reg[0] ),
        .I2(\n_0_delay_cnt[31]_i_5 ),
        .I3(\n_7_delay_cnt_reg[12]_i_2 ),
        .I4(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(\n_0_delay_cnt[9]_i_1 ));
FDRE \delay_cnt_reg[0] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[0]_i_1 ),
        .Q(delay_cnt[0]),
        .R(1'b0));
FDRE \delay_cnt_reg[10] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[10]_i_1 ),
        .Q(delay_cnt[10]),
        .R(1'b0));
FDRE \delay_cnt_reg[11] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[11]_i_1 ),
        .Q(delay_cnt[11]),
        .R(1'b0));
FDRE \delay_cnt_reg[12] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[12]_i_1 ),
        .Q(delay_cnt[12]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[12]_i_2 
       (.CI(\n_0_delay_cnt_reg[8]_i_2 ),
        .CO({\n_0_delay_cnt_reg[12]_i_2 ,\n_1_delay_cnt_reg[12]_i_2 ,\n_2_delay_cnt_reg[12]_i_2 ,\n_3_delay_cnt_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[12]_i_2 ,\n_5_delay_cnt_reg[12]_i_2 ,\n_6_delay_cnt_reg[12]_i_2 ,\n_7_delay_cnt_reg[12]_i_2 }),
        .S({\n_0_delay_cnt[12]_i_3 ,\n_0_delay_cnt[12]_i_4 ,\n_0_delay_cnt[12]_i_5 ,\n_0_delay_cnt[12]_i_6 }));
FDRE \delay_cnt_reg[13] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[13]_i_1 ),
        .Q(delay_cnt[13]),
        .R(1'b0));
FDRE \delay_cnt_reg[14] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[14]_i_1 ),
        .Q(delay_cnt[14]),
        .R(1'b0));
FDRE \delay_cnt_reg[15] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[15]_i_1 ),
        .Q(delay_cnt[15]),
        .R(1'b0));
FDRE \delay_cnt_reg[16] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[16]_i_1 ),
        .Q(delay_cnt[16]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[16]_i_2 
       (.CI(\n_0_delay_cnt_reg[12]_i_2 ),
        .CO({\n_0_delay_cnt_reg[16]_i_2 ,\n_1_delay_cnt_reg[16]_i_2 ,\n_2_delay_cnt_reg[16]_i_2 ,\n_3_delay_cnt_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[16]_i_2 ,\n_5_delay_cnt_reg[16]_i_2 ,\n_6_delay_cnt_reg[16]_i_2 ,\n_7_delay_cnt_reg[16]_i_2 }),
        .S({\n_0_delay_cnt[16]_i_3 ,\n_0_delay_cnt[16]_i_4 ,\n_0_delay_cnt[16]_i_5 ,\n_0_delay_cnt[16]_i_6 }));
FDRE \delay_cnt_reg[17] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[17]_i_1 ),
        .Q(delay_cnt[17]),
        .R(1'b0));
FDRE \delay_cnt_reg[18] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[18]_i_1 ),
        .Q(delay_cnt[18]),
        .R(1'b0));
FDRE \delay_cnt_reg[19] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[19]_i_1 ),
        .Q(delay_cnt[19]),
        .R(1'b0));
FDRE \delay_cnt_reg[1] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[1]_i_1 ),
        .Q(delay_cnt[1]),
        .R(1'b0));
FDRE \delay_cnt_reg[20] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[20]_i_1 ),
        .Q(delay_cnt[20]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[20]_i_2 
       (.CI(\n_0_delay_cnt_reg[16]_i_2 ),
        .CO({\n_0_delay_cnt_reg[20]_i_2 ,\n_1_delay_cnt_reg[20]_i_2 ,\n_2_delay_cnt_reg[20]_i_2 ,\n_3_delay_cnt_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[20]_i_2 ,\n_5_delay_cnt_reg[20]_i_2 ,\n_6_delay_cnt_reg[20]_i_2 ,\n_7_delay_cnt_reg[20]_i_2 }),
        .S({\n_0_delay_cnt[20]_i_3 ,\n_0_delay_cnt[20]_i_4 ,\n_0_delay_cnt[20]_i_5 ,\n_0_delay_cnt[20]_i_6 }));
FDRE \delay_cnt_reg[21] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[21]_i_1 ),
        .Q(delay_cnt[21]),
        .R(1'b0));
FDRE \delay_cnt_reg[22] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[22]_i_1 ),
        .Q(delay_cnt[22]),
        .R(1'b0));
FDRE \delay_cnt_reg[23] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[23]_i_1 ),
        .Q(delay_cnt[23]),
        .R(1'b0));
FDRE \delay_cnt_reg[24] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[24]_i_1 ),
        .Q(delay_cnt[24]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[24]_i_2 
       (.CI(\n_0_delay_cnt_reg[20]_i_2 ),
        .CO({\n_0_delay_cnt_reg[24]_i_2 ,\n_1_delay_cnt_reg[24]_i_2 ,\n_2_delay_cnt_reg[24]_i_2 ,\n_3_delay_cnt_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[24]_i_2 ,\n_5_delay_cnt_reg[24]_i_2 ,\n_6_delay_cnt_reg[24]_i_2 ,\n_7_delay_cnt_reg[24]_i_2 }),
        .S({\n_0_delay_cnt[24]_i_3 ,\n_0_delay_cnt[24]_i_4 ,\n_0_delay_cnt[24]_i_5 ,\n_0_delay_cnt[24]_i_6 }));
FDRE \delay_cnt_reg[25] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[25]_i_1 ),
        .Q(delay_cnt[25]),
        .R(1'b0));
FDRE \delay_cnt_reg[26] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[26]_i_1 ),
        .Q(delay_cnt[26]),
        .R(1'b0));
FDRE \delay_cnt_reg[27] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[27]_i_1 ),
        .Q(delay_cnt[27]),
        .R(1'b0));
FDRE \delay_cnt_reg[28] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[28]_i_1 ),
        .Q(delay_cnt[28]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[28]_i_2 
       (.CI(\n_0_delay_cnt_reg[24]_i_2 ),
        .CO({\n_0_delay_cnt_reg[28]_i_2 ,\n_1_delay_cnt_reg[28]_i_2 ,\n_2_delay_cnt_reg[28]_i_2 ,\n_3_delay_cnt_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[28]_i_2 ,\n_5_delay_cnt_reg[28]_i_2 ,\n_6_delay_cnt_reg[28]_i_2 ,\n_7_delay_cnt_reg[28]_i_2 }),
        .S({\n_0_delay_cnt[28]_i_3 ,\n_0_delay_cnt[28]_i_4 ,\n_0_delay_cnt[28]_i_5 ,\n_0_delay_cnt[28]_i_6 }));
FDRE \delay_cnt_reg[29] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[29]_i_1 ),
        .Q(delay_cnt[29]),
        .R(1'b0));
FDRE \delay_cnt_reg[2] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[2]_i_1 ),
        .Q(delay_cnt[2]),
        .R(1'b0));
FDRE \delay_cnt_reg[30] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[30]_i_1 ),
        .Q(delay_cnt[30]),
        .R(1'b0));
FDRE \delay_cnt_reg[31] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[31]_i_2 ),
        .Q(delay_cnt[31]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[31]_i_6 
       (.CI(\n_0_delay_cnt_reg[28]_i_2 ),
        .CO({\NLW_delay_cnt_reg[31]_i_6_CO_UNCONNECTED [3:2],\n_2_delay_cnt_reg[31]_i_6 ,\n_3_delay_cnt_reg[31]_i_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_delay_cnt_reg[31]_i_6_O_UNCONNECTED [3],\n_5_delay_cnt_reg[31]_i_6 ,\n_6_delay_cnt_reg[31]_i_6 ,\n_7_delay_cnt_reg[31]_i_6 }),
        .S({1'b0,\n_0_delay_cnt[31]_i_10 ,\n_0_delay_cnt[31]_i_11 ,\n_0_delay_cnt[31]_i_12 }));
FDRE \delay_cnt_reg[3] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[3]_i_1 ),
        .Q(delay_cnt[3]),
        .R(1'b0));
FDRE \delay_cnt_reg[4] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[4]_i_1 ),
        .Q(delay_cnt[4]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_delay_cnt_reg[4]_i_2 ,\n_1_delay_cnt_reg[4]_i_2 ,\n_2_delay_cnt_reg[4]_i_2 ,\n_3_delay_cnt_reg[4]_i_2 }),
        .CYINIT(delay_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[4]_i_2 ,\n_5_delay_cnt_reg[4]_i_2 ,\n_6_delay_cnt_reg[4]_i_2 ,\n_7_delay_cnt_reg[4]_i_2 }),
        .S({\n_0_delay_cnt[4]_i_3 ,\n_0_delay_cnt[4]_i_4 ,\n_0_delay_cnt[4]_i_5 ,\n_0_delay_cnt[4]_i_6 }));
FDRE \delay_cnt_reg[5] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[5]_i_1 ),
        .Q(delay_cnt[5]),
        .R(1'b0));
FDRE \delay_cnt_reg[6] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[6]_i_1 ),
        .Q(delay_cnt[6]),
        .R(1'b0));
FDRE \delay_cnt_reg[7] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[7]_i_1 ),
        .Q(delay_cnt[7]),
        .R(1'b0));
FDRE \delay_cnt_reg[8] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[8]_i_1 ),
        .Q(delay_cnt[8]),
        .R(1'b0));
CARRY4 \delay_cnt_reg[8]_i_2 
       (.CI(\n_0_delay_cnt_reg[4]_i_2 ),
        .CO({\n_0_delay_cnt_reg[8]_i_2 ,\n_1_delay_cnt_reg[8]_i_2 ,\n_2_delay_cnt_reg[8]_i_2 ,\n_3_delay_cnt_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_delay_cnt_reg[8]_i_2 ,\n_5_delay_cnt_reg[8]_i_2 ,\n_6_delay_cnt_reg[8]_i_2 ,\n_7_delay_cnt_reg[8]_i_2 }),
        .S({\n_0_delay_cnt[8]_i_3 ,\n_0_delay_cnt[8]_i_4 ,\n_0_delay_cnt[8]_i_5 ,\n_0_delay_cnt[8]_i_6 }));
FDRE \delay_cnt_reg[9] 
       (.C(clk),
        .CE(\n_0_delay_cnt[31]_i_1 ),
        .D(\n_0_delay_cnt[9]_i_1 ),
        .Q(delay_cnt[9]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000000090)) 
     \f_counter_A[0]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(filter_state_A[0]),
        .I4(n_1_power_H_in_f_reg_i_3),
        .I5(f_counter_A[0]),
        .O(\n_0_f_counter_A[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[10]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[10]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[10]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[11]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[11]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[11]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[12]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[12]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[12]_i_3 
       (.I0(f_counter_A[12]),
        .O(\n_0_f_counter_A[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[12]_i_4 
       (.I0(f_counter_A[11]),
        .O(\n_0_f_counter_A[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[12]_i_5 
       (.I0(f_counter_A[10]),
        .O(\n_0_f_counter_A[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[12]_i_6 
       (.I0(f_counter_A[9]),
        .O(\n_0_f_counter_A[12]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[13]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[13]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[13]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[14]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[14]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[14]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[15]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[15]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[15]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[16]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[16]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[16]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[16]_i_3 
       (.I0(f_counter_A[16]),
        .O(\n_0_f_counter_A[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[16]_i_4 
       (.I0(f_counter_A[15]),
        .O(\n_0_f_counter_A[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[16]_i_5 
       (.I0(f_counter_A[14]),
        .O(\n_0_f_counter_A[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[16]_i_6 
       (.I0(f_counter_A[13]),
        .O(\n_0_f_counter_A[16]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[17]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[17]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[17]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[18]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[18]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[18]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[19]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[19]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[19]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[1]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[1]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[20]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[20]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[20]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[20]_i_3 
       (.I0(f_counter_A[20]),
        .O(\n_0_f_counter_A[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[20]_i_4 
       (.I0(f_counter_A[19]),
        .O(\n_0_f_counter_A[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[20]_i_5 
       (.I0(f_counter_A[18]),
        .O(\n_0_f_counter_A[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[20]_i_6 
       (.I0(f_counter_A[17]),
        .O(\n_0_f_counter_A[20]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[21]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[21]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[21]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[22]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[22]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[22]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[23]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[23]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[23]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[24]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[24]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[24]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[24]_i_3 
       (.I0(f_counter_A[24]),
        .O(\n_0_f_counter_A[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[24]_i_4 
       (.I0(f_counter_A[23]),
        .O(\n_0_f_counter_A[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[24]_i_5 
       (.I0(f_counter_A[22]),
        .O(\n_0_f_counter_A[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[24]_i_6 
       (.I0(f_counter_A[21]),
        .O(\n_0_f_counter_A[24]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[25]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[25]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[25]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[26]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[26]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[26]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[27]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[27]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[27]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[28]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[28]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[28]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[28]_i_3 
       (.I0(f_counter_A[28]),
        .O(\n_0_f_counter_A[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[28]_i_4 
       (.I0(f_counter_A[27]),
        .O(\n_0_f_counter_A[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[28]_i_5 
       (.I0(f_counter_A[26]),
        .O(\n_0_f_counter_A[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[28]_i_6 
       (.I0(f_counter_A[25]),
        .O(\n_0_f_counter_A[28]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[29]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[29]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[29]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[2]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[2]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[30]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[30]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[30]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[31]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[31]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[31]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[31]_i_3 
       (.I0(f_counter_A[31]),
        .O(\n_0_f_counter_A[31]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[31]_i_4 
       (.I0(f_counter_A[30]),
        .O(\n_0_f_counter_A[31]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[31]_i_5 
       (.I0(f_counter_A[29]),
        .O(\n_0_f_counter_A[31]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[3]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[3]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[4]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[4]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[4]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[4]_i_3 
       (.I0(f_counter_A[4]),
        .O(\n_0_f_counter_A[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[4]_i_4 
       (.I0(f_counter_A[3]),
        .O(\n_0_f_counter_A[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[4]_i_5 
       (.I0(f_counter_A[2]),
        .O(\n_0_f_counter_A[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[4]_i_6 
       (.I0(f_counter_A[1]),
        .O(\n_0_f_counter_A[4]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[5]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[5]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[6]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[6]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[7]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[7]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[8]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[8]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[8]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[8]_i_3 
       (.I0(f_counter_A[8]),
        .O(\n_0_f_counter_A[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[8]_i_4 
       (.I0(f_counter_A[7]),
        .O(\n_0_f_counter_A[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[8]_i_5 
       (.I0(f_counter_A[6]),
        .O(\n_0_f_counter_A[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_A[8]_i_6 
       (.I0(f_counter_A[5]),
        .O(\n_0_f_counter_A[8]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_A[9]_i_1 
       (.I0(power_H_in),
        .I1(power_H_in_r),
        .I2(filter_state_A[1]),
        .I3(f_counter_A0[9]),
        .I4(filter_state_A[0]),
        .I5(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_f_counter_A[9]_i_1 ));
FDRE \f_counter_A_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[0]_i_1 ),
        .Q(f_counter_A[0]),
        .R(cnt0));
FDRE \f_counter_A_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[10]_i_1 ),
        .Q(f_counter_A[10]),
        .R(cnt0));
FDRE \f_counter_A_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[11]_i_1 ),
        .Q(f_counter_A[11]),
        .R(cnt0));
FDRE \f_counter_A_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[12]_i_1 ),
        .Q(f_counter_A[12]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[12]_i_2 
       (.CI(\n_0_f_counter_A_reg[8]_i_2 ),
        .CO({\n_0_f_counter_A_reg[12]_i_2 ,\n_1_f_counter_A_reg[12]_i_2 ,\n_2_f_counter_A_reg[12]_i_2 ,\n_3_f_counter_A_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[12:9]),
        .S({\n_0_f_counter_A[12]_i_3 ,\n_0_f_counter_A[12]_i_4 ,\n_0_f_counter_A[12]_i_5 ,\n_0_f_counter_A[12]_i_6 }));
FDRE \f_counter_A_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[13]_i_1 ),
        .Q(f_counter_A[13]),
        .R(cnt0));
FDRE \f_counter_A_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[14]_i_1 ),
        .Q(f_counter_A[14]),
        .R(cnt0));
FDRE \f_counter_A_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[15]_i_1 ),
        .Q(f_counter_A[15]),
        .R(cnt0));
FDRE \f_counter_A_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[16]_i_1 ),
        .Q(f_counter_A[16]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[16]_i_2 
       (.CI(\n_0_f_counter_A_reg[12]_i_2 ),
        .CO({\n_0_f_counter_A_reg[16]_i_2 ,\n_1_f_counter_A_reg[16]_i_2 ,\n_2_f_counter_A_reg[16]_i_2 ,\n_3_f_counter_A_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[16:13]),
        .S({\n_0_f_counter_A[16]_i_3 ,\n_0_f_counter_A[16]_i_4 ,\n_0_f_counter_A[16]_i_5 ,\n_0_f_counter_A[16]_i_6 }));
FDRE \f_counter_A_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[17]_i_1 ),
        .Q(f_counter_A[17]),
        .R(cnt0));
FDRE \f_counter_A_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[18]_i_1 ),
        .Q(f_counter_A[18]),
        .R(cnt0));
FDRE \f_counter_A_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[19]_i_1 ),
        .Q(f_counter_A[19]),
        .R(cnt0));
FDRE \f_counter_A_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[1]_i_1 ),
        .Q(f_counter_A[1]),
        .R(cnt0));
FDRE \f_counter_A_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[20]_i_1 ),
        .Q(f_counter_A[20]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[20]_i_2 
       (.CI(\n_0_f_counter_A_reg[16]_i_2 ),
        .CO({\n_0_f_counter_A_reg[20]_i_2 ,\n_1_f_counter_A_reg[20]_i_2 ,\n_2_f_counter_A_reg[20]_i_2 ,\n_3_f_counter_A_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[20:17]),
        .S({\n_0_f_counter_A[20]_i_3 ,\n_0_f_counter_A[20]_i_4 ,\n_0_f_counter_A[20]_i_5 ,\n_0_f_counter_A[20]_i_6 }));
FDRE \f_counter_A_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[21]_i_1 ),
        .Q(f_counter_A[21]),
        .R(cnt0));
FDRE \f_counter_A_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[22]_i_1 ),
        .Q(f_counter_A[22]),
        .R(cnt0));
FDRE \f_counter_A_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[23]_i_1 ),
        .Q(f_counter_A[23]),
        .R(cnt0));
FDRE \f_counter_A_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[24]_i_1 ),
        .Q(f_counter_A[24]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[24]_i_2 
       (.CI(\n_0_f_counter_A_reg[20]_i_2 ),
        .CO({\n_0_f_counter_A_reg[24]_i_2 ,\n_1_f_counter_A_reg[24]_i_2 ,\n_2_f_counter_A_reg[24]_i_2 ,\n_3_f_counter_A_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[24:21]),
        .S({\n_0_f_counter_A[24]_i_3 ,\n_0_f_counter_A[24]_i_4 ,\n_0_f_counter_A[24]_i_5 ,\n_0_f_counter_A[24]_i_6 }));
FDRE \f_counter_A_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[25]_i_1 ),
        .Q(f_counter_A[25]),
        .R(cnt0));
FDRE \f_counter_A_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[26]_i_1 ),
        .Q(f_counter_A[26]),
        .R(cnt0));
FDRE \f_counter_A_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[27]_i_1 ),
        .Q(f_counter_A[27]),
        .R(cnt0));
FDRE \f_counter_A_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[28]_i_1 ),
        .Q(f_counter_A[28]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[28]_i_2 
       (.CI(\n_0_f_counter_A_reg[24]_i_2 ),
        .CO({\n_0_f_counter_A_reg[28]_i_2 ,\n_1_f_counter_A_reg[28]_i_2 ,\n_2_f_counter_A_reg[28]_i_2 ,\n_3_f_counter_A_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[28:25]),
        .S({\n_0_f_counter_A[28]_i_3 ,\n_0_f_counter_A[28]_i_4 ,\n_0_f_counter_A[28]_i_5 ,\n_0_f_counter_A[28]_i_6 }));
FDRE \f_counter_A_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[29]_i_1 ),
        .Q(f_counter_A[29]),
        .R(cnt0));
FDRE \f_counter_A_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[2]_i_1 ),
        .Q(f_counter_A[2]),
        .R(cnt0));
FDRE \f_counter_A_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[30]_i_1 ),
        .Q(f_counter_A[30]),
        .R(cnt0));
FDRE \f_counter_A_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[31]_i_1 ),
        .Q(f_counter_A[31]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[31]_i_2 
       (.CI(\n_0_f_counter_A_reg[28]_i_2 ),
        .CO({\NLW_f_counter_A_reg[31]_i_2_CO_UNCONNECTED [3:2],\n_2_f_counter_A_reg[31]_i_2 ,\n_3_f_counter_A_reg[31]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_f_counter_A_reg[31]_i_2_O_UNCONNECTED [3],f_counter_A0[31:29]}),
        .S({1'b0,\n_0_f_counter_A[31]_i_3 ,\n_0_f_counter_A[31]_i_4 ,\n_0_f_counter_A[31]_i_5 }));
FDRE \f_counter_A_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[3]_i_1 ),
        .Q(f_counter_A[3]),
        .R(cnt0));
FDRE \f_counter_A_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[4]_i_1 ),
        .Q(f_counter_A[4]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_f_counter_A_reg[4]_i_2 ,\n_1_f_counter_A_reg[4]_i_2 ,\n_2_f_counter_A_reg[4]_i_2 ,\n_3_f_counter_A_reg[4]_i_2 }),
        .CYINIT(f_counter_A[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[4:1]),
        .S({\n_0_f_counter_A[4]_i_3 ,\n_0_f_counter_A[4]_i_4 ,\n_0_f_counter_A[4]_i_5 ,\n_0_f_counter_A[4]_i_6 }));
FDRE \f_counter_A_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[5]_i_1 ),
        .Q(f_counter_A[5]),
        .R(cnt0));
FDRE \f_counter_A_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[6]_i_1 ),
        .Q(f_counter_A[6]),
        .R(cnt0));
FDRE \f_counter_A_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[7]_i_1 ),
        .Q(f_counter_A[7]),
        .R(cnt0));
FDRE \f_counter_A_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[8]_i_1 ),
        .Q(f_counter_A[8]),
        .R(cnt0));
CARRY4 \f_counter_A_reg[8]_i_2 
       (.CI(\n_0_f_counter_A_reg[4]_i_2 ),
        .CO({\n_0_f_counter_A_reg[8]_i_2 ,\n_1_f_counter_A_reg[8]_i_2 ,\n_2_f_counter_A_reg[8]_i_2 ,\n_3_f_counter_A_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_A0[8:5]),
        .S({\n_0_f_counter_A[8]_i_3 ,\n_0_f_counter_A[8]_i_4 ,\n_0_f_counter_A[8]_i_5 ,\n_0_f_counter_A[8]_i_6 }));
FDRE \f_counter_A_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_A[9]_i_1 ),
        .Q(f_counter_A[9]),
        .R(cnt0));
LUT6 #(
    .INIT(64'h0000000000000090)) 
     \f_counter_B[0]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(filter_state_B[0]),
        .I4(n_1_power_O_in_f_reg_i_3),
        .I5(f_counter_B[0]),
        .O(\n_0_f_counter_B[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[10]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[10]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[10]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[11]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[11]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[11]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[12]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[12]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[12]_i_3 
       (.I0(f_counter_B[12]),
        .O(\n_0_f_counter_B[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[12]_i_4 
       (.I0(f_counter_B[11]),
        .O(\n_0_f_counter_B[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[12]_i_5 
       (.I0(f_counter_B[10]),
        .O(\n_0_f_counter_B[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[12]_i_6 
       (.I0(f_counter_B[9]),
        .O(\n_0_f_counter_B[12]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[13]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[13]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[13]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[14]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[14]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[14]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[15]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[15]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[15]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[16]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[16]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[16]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[16]_i_3 
       (.I0(f_counter_B[16]),
        .O(\n_0_f_counter_B[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[16]_i_4 
       (.I0(f_counter_B[15]),
        .O(\n_0_f_counter_B[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[16]_i_5 
       (.I0(f_counter_B[14]),
        .O(\n_0_f_counter_B[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[16]_i_6 
       (.I0(f_counter_B[13]),
        .O(\n_0_f_counter_B[16]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[17]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[17]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[17]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[18]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[18]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[18]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[19]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[19]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[19]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[1]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[1]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[20]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[20]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[20]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[20]_i_3 
       (.I0(f_counter_B[20]),
        .O(\n_0_f_counter_B[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[20]_i_4 
       (.I0(f_counter_B[19]),
        .O(\n_0_f_counter_B[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[20]_i_5 
       (.I0(f_counter_B[18]),
        .O(\n_0_f_counter_B[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[20]_i_6 
       (.I0(f_counter_B[17]),
        .O(\n_0_f_counter_B[20]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[21]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[21]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[21]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[22]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[22]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[22]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[23]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[23]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[23]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[24]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[24]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[24]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[24]_i_3 
       (.I0(f_counter_B[24]),
        .O(\n_0_f_counter_B[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[24]_i_4 
       (.I0(f_counter_B[23]),
        .O(\n_0_f_counter_B[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[24]_i_5 
       (.I0(f_counter_B[22]),
        .O(\n_0_f_counter_B[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[24]_i_6 
       (.I0(f_counter_B[21]),
        .O(\n_0_f_counter_B[24]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[25]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[25]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[25]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[26]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[26]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[26]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[27]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[27]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[27]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[28]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[28]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[28]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[28]_i_3 
       (.I0(f_counter_B[28]),
        .O(\n_0_f_counter_B[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[28]_i_4 
       (.I0(f_counter_B[27]),
        .O(\n_0_f_counter_B[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[28]_i_5 
       (.I0(f_counter_B[26]),
        .O(\n_0_f_counter_B[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[28]_i_6 
       (.I0(f_counter_B[25]),
        .O(\n_0_f_counter_B[28]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[29]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[29]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[29]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[2]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[2]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[30]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[30]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[30]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[31]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[31]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[31]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[31]_i_3 
       (.I0(f_counter_B[31]),
        .O(\n_0_f_counter_B[31]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[31]_i_4 
       (.I0(f_counter_B[30]),
        .O(\n_0_f_counter_B[31]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[31]_i_5 
       (.I0(f_counter_B[29]),
        .O(\n_0_f_counter_B[31]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[3]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[3]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[4]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[4]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[4]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[4]_i_3 
       (.I0(f_counter_B[4]),
        .O(\n_0_f_counter_B[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[4]_i_4 
       (.I0(f_counter_B[3]),
        .O(\n_0_f_counter_B[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[4]_i_5 
       (.I0(f_counter_B[2]),
        .O(\n_0_f_counter_B[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[4]_i_6 
       (.I0(f_counter_B[1]),
        .O(\n_0_f_counter_B[4]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[5]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[5]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[6]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[6]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[7]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[7]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[8]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[8]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[8]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[8]_i_3 
       (.I0(f_counter_B[8]),
        .O(\n_0_f_counter_B[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[8]_i_4 
       (.I0(f_counter_B[7]),
        .O(\n_0_f_counter_B[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[8]_i_5 
       (.I0(f_counter_B[6]),
        .O(\n_0_f_counter_B[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_B[8]_i_6 
       (.I0(f_counter_B[5]),
        .O(\n_0_f_counter_B[8]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000009000)) 
     \f_counter_B[9]_i_1 
       (.I0(power_O_in),
        .I1(power_O_in_r),
        .I2(filter_state_B[1]),
        .I3(f_counter_B0[9]),
        .I4(filter_state_B[0]),
        .I5(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_f_counter_B[9]_i_1 ));
FDRE \f_counter_B_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[0]_i_1 ),
        .Q(f_counter_B[0]),
        .R(cnt0));
FDRE \f_counter_B_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[10]_i_1 ),
        .Q(f_counter_B[10]),
        .R(cnt0));
FDRE \f_counter_B_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[11]_i_1 ),
        .Q(f_counter_B[11]),
        .R(cnt0));
FDRE \f_counter_B_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[12]_i_1 ),
        .Q(f_counter_B[12]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[12]_i_2 
       (.CI(\n_0_f_counter_B_reg[8]_i_2 ),
        .CO({\n_0_f_counter_B_reg[12]_i_2 ,\n_1_f_counter_B_reg[12]_i_2 ,\n_2_f_counter_B_reg[12]_i_2 ,\n_3_f_counter_B_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[12:9]),
        .S({\n_0_f_counter_B[12]_i_3 ,\n_0_f_counter_B[12]_i_4 ,\n_0_f_counter_B[12]_i_5 ,\n_0_f_counter_B[12]_i_6 }));
FDRE \f_counter_B_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[13]_i_1 ),
        .Q(f_counter_B[13]),
        .R(cnt0));
FDRE \f_counter_B_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[14]_i_1 ),
        .Q(f_counter_B[14]),
        .R(cnt0));
FDRE \f_counter_B_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[15]_i_1 ),
        .Q(f_counter_B[15]),
        .R(cnt0));
FDRE \f_counter_B_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[16]_i_1 ),
        .Q(f_counter_B[16]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[16]_i_2 
       (.CI(\n_0_f_counter_B_reg[12]_i_2 ),
        .CO({\n_0_f_counter_B_reg[16]_i_2 ,\n_1_f_counter_B_reg[16]_i_2 ,\n_2_f_counter_B_reg[16]_i_2 ,\n_3_f_counter_B_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[16:13]),
        .S({\n_0_f_counter_B[16]_i_3 ,\n_0_f_counter_B[16]_i_4 ,\n_0_f_counter_B[16]_i_5 ,\n_0_f_counter_B[16]_i_6 }));
FDRE \f_counter_B_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[17]_i_1 ),
        .Q(f_counter_B[17]),
        .R(cnt0));
FDRE \f_counter_B_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[18]_i_1 ),
        .Q(f_counter_B[18]),
        .R(cnt0));
FDRE \f_counter_B_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[19]_i_1 ),
        .Q(f_counter_B[19]),
        .R(cnt0));
FDRE \f_counter_B_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[1]_i_1 ),
        .Q(f_counter_B[1]),
        .R(cnt0));
FDRE \f_counter_B_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[20]_i_1 ),
        .Q(f_counter_B[20]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[20]_i_2 
       (.CI(\n_0_f_counter_B_reg[16]_i_2 ),
        .CO({\n_0_f_counter_B_reg[20]_i_2 ,\n_1_f_counter_B_reg[20]_i_2 ,\n_2_f_counter_B_reg[20]_i_2 ,\n_3_f_counter_B_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[20:17]),
        .S({\n_0_f_counter_B[20]_i_3 ,\n_0_f_counter_B[20]_i_4 ,\n_0_f_counter_B[20]_i_5 ,\n_0_f_counter_B[20]_i_6 }));
FDRE \f_counter_B_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[21]_i_1 ),
        .Q(f_counter_B[21]),
        .R(cnt0));
FDRE \f_counter_B_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[22]_i_1 ),
        .Q(f_counter_B[22]),
        .R(cnt0));
FDRE \f_counter_B_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[23]_i_1 ),
        .Q(f_counter_B[23]),
        .R(cnt0));
FDRE \f_counter_B_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[24]_i_1 ),
        .Q(f_counter_B[24]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[24]_i_2 
       (.CI(\n_0_f_counter_B_reg[20]_i_2 ),
        .CO({\n_0_f_counter_B_reg[24]_i_2 ,\n_1_f_counter_B_reg[24]_i_2 ,\n_2_f_counter_B_reg[24]_i_2 ,\n_3_f_counter_B_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[24:21]),
        .S({\n_0_f_counter_B[24]_i_3 ,\n_0_f_counter_B[24]_i_4 ,\n_0_f_counter_B[24]_i_5 ,\n_0_f_counter_B[24]_i_6 }));
FDRE \f_counter_B_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[25]_i_1 ),
        .Q(f_counter_B[25]),
        .R(cnt0));
FDRE \f_counter_B_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[26]_i_1 ),
        .Q(f_counter_B[26]),
        .R(cnt0));
FDRE \f_counter_B_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[27]_i_1 ),
        .Q(f_counter_B[27]),
        .R(cnt0));
FDRE \f_counter_B_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[28]_i_1 ),
        .Q(f_counter_B[28]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[28]_i_2 
       (.CI(\n_0_f_counter_B_reg[24]_i_2 ),
        .CO({\n_0_f_counter_B_reg[28]_i_2 ,\n_1_f_counter_B_reg[28]_i_2 ,\n_2_f_counter_B_reg[28]_i_2 ,\n_3_f_counter_B_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[28:25]),
        .S({\n_0_f_counter_B[28]_i_3 ,\n_0_f_counter_B[28]_i_4 ,\n_0_f_counter_B[28]_i_5 ,\n_0_f_counter_B[28]_i_6 }));
FDRE \f_counter_B_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[29]_i_1 ),
        .Q(f_counter_B[29]),
        .R(cnt0));
FDRE \f_counter_B_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[2]_i_1 ),
        .Q(f_counter_B[2]),
        .R(cnt0));
FDRE \f_counter_B_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[30]_i_1 ),
        .Q(f_counter_B[30]),
        .R(cnt0));
FDRE \f_counter_B_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[31]_i_1 ),
        .Q(f_counter_B[31]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[31]_i_2 
       (.CI(\n_0_f_counter_B_reg[28]_i_2 ),
        .CO({\NLW_f_counter_B_reg[31]_i_2_CO_UNCONNECTED [3:2],\n_2_f_counter_B_reg[31]_i_2 ,\n_3_f_counter_B_reg[31]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_f_counter_B_reg[31]_i_2_O_UNCONNECTED [3],f_counter_B0[31:29]}),
        .S({1'b0,\n_0_f_counter_B[31]_i_3 ,\n_0_f_counter_B[31]_i_4 ,\n_0_f_counter_B[31]_i_5 }));
FDRE \f_counter_B_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[3]_i_1 ),
        .Q(f_counter_B[3]),
        .R(cnt0));
FDRE \f_counter_B_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[4]_i_1 ),
        .Q(f_counter_B[4]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_f_counter_B_reg[4]_i_2 ,\n_1_f_counter_B_reg[4]_i_2 ,\n_2_f_counter_B_reg[4]_i_2 ,\n_3_f_counter_B_reg[4]_i_2 }),
        .CYINIT(f_counter_B[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[4:1]),
        .S({\n_0_f_counter_B[4]_i_3 ,\n_0_f_counter_B[4]_i_4 ,\n_0_f_counter_B[4]_i_5 ,\n_0_f_counter_B[4]_i_6 }));
FDRE \f_counter_B_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[5]_i_1 ),
        .Q(f_counter_B[5]),
        .R(cnt0));
FDRE \f_counter_B_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[6]_i_1 ),
        .Q(f_counter_B[6]),
        .R(cnt0));
FDRE \f_counter_B_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[7]_i_1 ),
        .Q(f_counter_B[7]),
        .R(cnt0));
FDRE \f_counter_B_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[8]_i_1 ),
        .Q(f_counter_B[8]),
        .R(cnt0));
CARRY4 \f_counter_B_reg[8]_i_2 
       (.CI(\n_0_f_counter_B_reg[4]_i_2 ),
        .CO({\n_0_f_counter_B_reg[8]_i_2 ,\n_1_f_counter_B_reg[8]_i_2 ,\n_2_f_counter_B_reg[8]_i_2 ,\n_3_f_counter_B_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_B0[8:5]),
        .S({\n_0_f_counter_B[8]_i_3 ,\n_0_f_counter_B[8]_i_4 ,\n_0_f_counter_B[8]_i_5 ,\n_0_f_counter_B[8]_i_6 }));
FDRE \f_counter_B_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_B[9]_i_1 ),
        .Q(f_counter_B[9]),
        .R(cnt0));
LUT6 #(
    .INIT(64'h0000000000090000)) 
     \f_counter_C[0]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(n_1_vh_error_f_reg_i_2),
        .I3(filter_state_C[0]),
        .I4(filter_state_C[1]),
        .I5(f_counter_C[0]),
        .O(\n_0_f_counter_C[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[10]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[10]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[10]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[11]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[11]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[11]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[12]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[12]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[12]_i_3 
       (.I0(f_counter_C[12]),
        .O(\n_0_f_counter_C[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[12]_i_4 
       (.I0(f_counter_C[11]),
        .O(\n_0_f_counter_C[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[12]_i_5 
       (.I0(f_counter_C[10]),
        .O(\n_0_f_counter_C[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[12]_i_6 
       (.I0(f_counter_C[9]),
        .O(\n_0_f_counter_C[12]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[13]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[13]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[13]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[14]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[14]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[14]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[15]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[15]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[15]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[16]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[16]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[16]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[16]_i_3 
       (.I0(f_counter_C[16]),
        .O(\n_0_f_counter_C[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[16]_i_4 
       (.I0(f_counter_C[15]),
        .O(\n_0_f_counter_C[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[16]_i_5 
       (.I0(f_counter_C[14]),
        .O(\n_0_f_counter_C[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[16]_i_6 
       (.I0(f_counter_C[13]),
        .O(\n_0_f_counter_C[16]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[17]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[17]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[17]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[18]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[18]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[18]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[19]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[19]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[19]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[1]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[1]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[20]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[20]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[20]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[20]_i_3 
       (.I0(f_counter_C[20]),
        .O(\n_0_f_counter_C[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[20]_i_4 
       (.I0(f_counter_C[19]),
        .O(\n_0_f_counter_C[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[20]_i_5 
       (.I0(f_counter_C[18]),
        .O(\n_0_f_counter_C[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[20]_i_6 
       (.I0(f_counter_C[17]),
        .O(\n_0_f_counter_C[20]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[21]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[21]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[21]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[22]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[22]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[22]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[23]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[23]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[23]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[24]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[24]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[24]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[24]_i_3 
       (.I0(f_counter_C[24]),
        .O(\n_0_f_counter_C[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[24]_i_4 
       (.I0(f_counter_C[23]),
        .O(\n_0_f_counter_C[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[24]_i_5 
       (.I0(f_counter_C[22]),
        .O(\n_0_f_counter_C[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[24]_i_6 
       (.I0(f_counter_C[21]),
        .O(\n_0_f_counter_C[24]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[25]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[25]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[25]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[26]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[26]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[26]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[27]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[27]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[27]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[28]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[28]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[28]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[28]_i_3 
       (.I0(f_counter_C[28]),
        .O(\n_0_f_counter_C[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[28]_i_4 
       (.I0(f_counter_C[27]),
        .O(\n_0_f_counter_C[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[28]_i_5 
       (.I0(f_counter_C[26]),
        .O(\n_0_f_counter_C[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[28]_i_6 
       (.I0(f_counter_C[25]),
        .O(\n_0_f_counter_C[28]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[29]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[29]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[29]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[2]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[2]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[30]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[30]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[30]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[31]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[31]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[31]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[31]_i_3 
       (.I0(f_counter_C[31]),
        .O(\n_0_f_counter_C[31]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[31]_i_4 
       (.I0(f_counter_C[30]),
        .O(\n_0_f_counter_C[31]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[31]_i_5 
       (.I0(f_counter_C[29]),
        .O(\n_0_f_counter_C[31]_i_5 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[3]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[3]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[4]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[4]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[4]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[4]_i_3 
       (.I0(f_counter_C[4]),
        .O(\n_0_f_counter_C[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[4]_i_4 
       (.I0(f_counter_C[3]),
        .O(\n_0_f_counter_C[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[4]_i_5 
       (.I0(f_counter_C[2]),
        .O(\n_0_f_counter_C[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[4]_i_6 
       (.I0(f_counter_C[1]),
        .O(\n_0_f_counter_C[4]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[5]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[5]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[6]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[6]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[7]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[7]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[8]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[8]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[8]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[8]_i_3 
       (.I0(f_counter_C[8]),
        .O(\n_0_f_counter_C[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[8]_i_4 
       (.I0(f_counter_C[7]),
        .O(\n_0_f_counter_C[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[8]_i_5 
       (.I0(f_counter_C[6]),
        .O(\n_0_f_counter_C[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \f_counter_C[8]_i_6 
       (.I0(f_counter_C[5]),
        .O(\n_0_f_counter_C[8]_i_6 ));
LUT6 #(
    .INIT(64'h0000009000000000)) 
     \f_counter_C[9]_i_1 
       (.I0(vh_error_r),
        .I1(vh_error),
        .I2(f_counter_C0[9]),
        .I3(n_1_vh_error_f_reg_i_2),
        .I4(filter_state_C[0]),
        .I5(filter_state_C[1]),
        .O(\n_0_f_counter_C[9]_i_1 ));
FDRE \f_counter_C_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[0]_i_1 ),
        .Q(f_counter_C[0]),
        .R(cnt0));
FDRE \f_counter_C_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[10]_i_1 ),
        .Q(f_counter_C[10]),
        .R(cnt0));
FDRE \f_counter_C_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[11]_i_1 ),
        .Q(f_counter_C[11]),
        .R(cnt0));
FDRE \f_counter_C_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[12]_i_1 ),
        .Q(f_counter_C[12]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[12]_i_2 
       (.CI(\n_0_f_counter_C_reg[8]_i_2 ),
        .CO({\n_0_f_counter_C_reg[12]_i_2 ,\n_1_f_counter_C_reg[12]_i_2 ,\n_2_f_counter_C_reg[12]_i_2 ,\n_3_f_counter_C_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[12:9]),
        .S({\n_0_f_counter_C[12]_i_3 ,\n_0_f_counter_C[12]_i_4 ,\n_0_f_counter_C[12]_i_5 ,\n_0_f_counter_C[12]_i_6 }));
FDRE \f_counter_C_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[13]_i_1 ),
        .Q(f_counter_C[13]),
        .R(cnt0));
FDRE \f_counter_C_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[14]_i_1 ),
        .Q(f_counter_C[14]),
        .R(cnt0));
FDRE \f_counter_C_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[15]_i_1 ),
        .Q(f_counter_C[15]),
        .R(cnt0));
FDRE \f_counter_C_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[16]_i_1 ),
        .Q(f_counter_C[16]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[16]_i_2 
       (.CI(\n_0_f_counter_C_reg[12]_i_2 ),
        .CO({\n_0_f_counter_C_reg[16]_i_2 ,\n_1_f_counter_C_reg[16]_i_2 ,\n_2_f_counter_C_reg[16]_i_2 ,\n_3_f_counter_C_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[16:13]),
        .S({\n_0_f_counter_C[16]_i_3 ,\n_0_f_counter_C[16]_i_4 ,\n_0_f_counter_C[16]_i_5 ,\n_0_f_counter_C[16]_i_6 }));
FDRE \f_counter_C_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[17]_i_1 ),
        .Q(f_counter_C[17]),
        .R(cnt0));
FDRE \f_counter_C_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[18]_i_1 ),
        .Q(f_counter_C[18]),
        .R(cnt0));
FDRE \f_counter_C_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[19]_i_1 ),
        .Q(f_counter_C[19]),
        .R(cnt0));
FDRE \f_counter_C_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[1]_i_1 ),
        .Q(f_counter_C[1]),
        .R(cnt0));
FDRE \f_counter_C_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[20]_i_1 ),
        .Q(f_counter_C[20]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[20]_i_2 
       (.CI(\n_0_f_counter_C_reg[16]_i_2 ),
        .CO({\n_0_f_counter_C_reg[20]_i_2 ,\n_1_f_counter_C_reg[20]_i_2 ,\n_2_f_counter_C_reg[20]_i_2 ,\n_3_f_counter_C_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[20:17]),
        .S({\n_0_f_counter_C[20]_i_3 ,\n_0_f_counter_C[20]_i_4 ,\n_0_f_counter_C[20]_i_5 ,\n_0_f_counter_C[20]_i_6 }));
FDRE \f_counter_C_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[21]_i_1 ),
        .Q(f_counter_C[21]),
        .R(cnt0));
FDRE \f_counter_C_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[22]_i_1 ),
        .Q(f_counter_C[22]),
        .R(cnt0));
FDRE \f_counter_C_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[23]_i_1 ),
        .Q(f_counter_C[23]),
        .R(cnt0));
FDRE \f_counter_C_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[24]_i_1 ),
        .Q(f_counter_C[24]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[24]_i_2 
       (.CI(\n_0_f_counter_C_reg[20]_i_2 ),
        .CO({\n_0_f_counter_C_reg[24]_i_2 ,\n_1_f_counter_C_reg[24]_i_2 ,\n_2_f_counter_C_reg[24]_i_2 ,\n_3_f_counter_C_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[24:21]),
        .S({\n_0_f_counter_C[24]_i_3 ,\n_0_f_counter_C[24]_i_4 ,\n_0_f_counter_C[24]_i_5 ,\n_0_f_counter_C[24]_i_6 }));
FDRE \f_counter_C_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[25]_i_1 ),
        .Q(f_counter_C[25]),
        .R(cnt0));
FDRE \f_counter_C_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[26]_i_1 ),
        .Q(f_counter_C[26]),
        .R(cnt0));
FDRE \f_counter_C_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[27]_i_1 ),
        .Q(f_counter_C[27]),
        .R(cnt0));
FDRE \f_counter_C_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[28]_i_1 ),
        .Q(f_counter_C[28]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[28]_i_2 
       (.CI(\n_0_f_counter_C_reg[24]_i_2 ),
        .CO({\n_0_f_counter_C_reg[28]_i_2 ,\n_1_f_counter_C_reg[28]_i_2 ,\n_2_f_counter_C_reg[28]_i_2 ,\n_3_f_counter_C_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[28:25]),
        .S({\n_0_f_counter_C[28]_i_3 ,\n_0_f_counter_C[28]_i_4 ,\n_0_f_counter_C[28]_i_5 ,\n_0_f_counter_C[28]_i_6 }));
FDRE \f_counter_C_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[29]_i_1 ),
        .Q(f_counter_C[29]),
        .R(cnt0));
FDRE \f_counter_C_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[2]_i_1 ),
        .Q(f_counter_C[2]),
        .R(cnt0));
FDRE \f_counter_C_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[30]_i_1 ),
        .Q(f_counter_C[30]),
        .R(cnt0));
FDRE \f_counter_C_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[31]_i_1 ),
        .Q(f_counter_C[31]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[31]_i_2 
       (.CI(\n_0_f_counter_C_reg[28]_i_2 ),
        .CO({\NLW_f_counter_C_reg[31]_i_2_CO_UNCONNECTED [3:2],\n_2_f_counter_C_reg[31]_i_2 ,\n_3_f_counter_C_reg[31]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_f_counter_C_reg[31]_i_2_O_UNCONNECTED [3],f_counter_C0[31:29]}),
        .S({1'b0,\n_0_f_counter_C[31]_i_3 ,\n_0_f_counter_C[31]_i_4 ,\n_0_f_counter_C[31]_i_5 }));
FDRE \f_counter_C_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[3]_i_1 ),
        .Q(f_counter_C[3]),
        .R(cnt0));
FDRE \f_counter_C_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[4]_i_1 ),
        .Q(f_counter_C[4]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_f_counter_C_reg[4]_i_2 ,\n_1_f_counter_C_reg[4]_i_2 ,\n_2_f_counter_C_reg[4]_i_2 ,\n_3_f_counter_C_reg[4]_i_2 }),
        .CYINIT(f_counter_C[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[4:1]),
        .S({\n_0_f_counter_C[4]_i_3 ,\n_0_f_counter_C[4]_i_4 ,\n_0_f_counter_C[4]_i_5 ,\n_0_f_counter_C[4]_i_6 }));
FDRE \f_counter_C_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[5]_i_1 ),
        .Q(f_counter_C[5]),
        .R(cnt0));
FDRE \f_counter_C_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[6]_i_1 ),
        .Q(f_counter_C[6]),
        .R(cnt0));
FDRE \f_counter_C_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[7]_i_1 ),
        .Q(f_counter_C[7]),
        .R(cnt0));
FDRE \f_counter_C_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[8]_i_1 ),
        .Q(f_counter_C[8]),
        .R(cnt0));
CARRY4 \f_counter_C_reg[8]_i_2 
       (.CI(\n_0_f_counter_C_reg[4]_i_2 ),
        .CO({\n_0_f_counter_C_reg[8]_i_2 ,\n_1_f_counter_C_reg[8]_i_2 ,\n_2_f_counter_C_reg[8]_i_2 ,\n_3_f_counter_C_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(f_counter_C0[8:5]),
        .S({\n_0_f_counter_C[8]_i_3 ,\n_0_f_counter_C[8]_i_4 ,\n_0_f_counter_C[8]_i_5 ,\n_0_f_counter_C[8]_i_6 }));
FDRE \f_counter_C_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_f_counter_C[9]_i_1 ),
        .Q(f_counter_C[9]),
        .R(cnt0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h2332F33F)) 
     \filter_state_A[0]_i_1 
       (.I0(n_1_power_H_in_f_reg_i_3),
        .I1(filter_state_A[0]),
        .I2(power_H_in),
        .I3(power_H_in_r),
        .I4(filter_state_A[1]),
        .O(\n_0_filter_state_A[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00284128)) 
     \filter_state_A[1]_i_1 
       (.I0(filter_state_A[0]),
        .I1(power_H_in),
        .I2(power_H_in_r),
        .I3(filter_state_A[1]),
        .I4(n_1_power_H_in_f_reg_i_3),
        .O(\n_0_filter_state_A[1]_i_1 ));
FDRE \filter_state_A_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_A[0]_i_1 ),
        .Q(filter_state_A[0]),
        .R(cnt0));
FDRE \filter_state_A_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_A[1]_i_1 ),
        .Q(filter_state_A[1]),
        .R(cnt0));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h2332F33F)) 
     \filter_state_B[0]_i_1 
       (.I0(n_1_power_O_in_f_reg_i_3),
        .I1(filter_state_B[0]),
        .I2(power_O_in),
        .I3(power_O_in_r),
        .I4(filter_state_B[1]),
        .O(\n_0_filter_state_B[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00284128)) 
     \filter_state_B[1]_i_1 
       (.I0(filter_state_B[0]),
        .I1(power_O_in),
        .I2(power_O_in_r),
        .I3(filter_state_B[1]),
        .I4(n_1_power_O_in_f_reg_i_3),
        .O(\n_0_filter_state_B[1]_i_1 ));
FDRE \filter_state_B_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_B[0]_i_1 ),
        .Q(filter_state_B[0]),
        .R(cnt0));
FDRE \filter_state_B_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_B[1]_i_1 ),
        .Q(filter_state_B[1]),
        .R(cnt0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h2332F33F)) 
     \filter_state_C[0]_i_1 
       (.I0(n_1_vh_error_f_reg_i_2),
        .I1(filter_state_C[0]),
        .I2(vh_error),
        .I3(vh_error_r),
        .I4(filter_state_C[1]),
        .O(\n_0_filter_state_C[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h100A0A10)) 
     \filter_state_C[1]_i_1 
       (.I0(filter_state_C[0]),
        .I1(n_1_vh_error_f_reg_i_2),
        .I2(filter_state_C[1]),
        .I3(vh_error_r),
        .I4(vh_error),
        .O(\n_0_filter_state_C[1]_i_1 ));
FDRE \filter_state_C_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_C[0]_i_1 ),
        .Q(filter_state_C[0]),
        .R(cnt0));
FDRE \filter_state_C_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_filter_state_C[1]_i_1 ),
        .Q(filter_state_C[1]),
        .R(cnt0));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     lock_i_1
       (.I0(n_0_lock_i_2),
        .I1(cnt[4]),
        .I2(cnt[7]),
        .I3(cnt[5]),
        .I4(cnt[3]),
        .I5(cnt0),
        .O(lock5_out));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hEFFF)) 
     lock_i_2
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[6]),
        .I3(cnt[2]),
        .O(n_0_lock_i_2));
FDRE lock_reg
       (.C(clk),
        .CE(1'b1),
        .D(lock5_out),
        .Q(n_0_lock_reg),
        .R(1'b0));
LUT3 #(
    .INIT(8'hF4)) 
     power_H_error_i_1
       (.I0(O2),
        .I1(power_H_in_f_r),
        .I2(power_H_error),
        .O(n_0_power_H_error_i_1));
FDRE power_H_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_H_error_i_1),
        .Q(power_H_error),
        .R(cnt0));
LUT6 #(
    .INIT(64'hAABAABBAAA8AA88A)) 
     power_H_in_f_i_1
       (.I0(n_0_power_H_in_f_i_2),
        .I1(cnt0),
        .I2(filter_state_A[0]),
        .I3(filter_state_A[1]),
        .I4(n_1_power_H_in_f_reg_i_3),
        .I5(O2),
        .O(n_0_power_H_in_f_i_1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_10
       (.I0(f_counter_A[19]),
        .I1(power_fliter[19]),
        .I2(f_counter_A[18]),
        .I3(power_fliter[18]),
        .I4(power_fliter[20]),
        .I5(f_counter_A[20]),
        .O(n_0_power_H_in_f_i_10));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_11
       (.I0(f_counter_A[17]),
        .I1(power_fliter[17]),
        .I2(f_counter_A[16]),
        .I3(power_fliter[16]),
        .I4(power_fliter[15]),
        .I5(f_counter_A[15]),
        .O(n_0_power_H_in_f_i_11));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_12
       (.I0(f_counter_A[14]),
        .I1(power_fliter[14]),
        .I2(f_counter_A[12]),
        .I3(power_fliter[12]),
        .I4(power_fliter[13]),
        .I5(f_counter_A[13]),
        .O(n_0_power_H_in_f_i_12));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_13
       (.I0(f_counter_A[11]),
        .I1(power_fliter[11]),
        .I2(f_counter_A[10]),
        .I3(power_fliter[10]),
        .I4(power_fliter[9]),
        .I5(f_counter_A[9]),
        .O(n_0_power_H_in_f_i_13));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_14
       (.I0(f_counter_A[8]),
        .I1(power_fliter[8]),
        .I2(f_counter_A[7]),
        .I3(power_fliter[7]),
        .I4(power_fliter[6]),
        .I5(f_counter_A[6]),
        .O(n_0_power_H_in_f_i_14));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_15
       (.I0(f_counter_A[5]),
        .I1(power_fliter[5]),
        .I2(f_counter_A[3]),
        .I3(power_fliter[3]),
        .I4(power_fliter[4]),
        .I5(f_counter_A[4]),
        .O(n_0_power_H_in_f_i_15));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_16
       (.I0(f_counter_A[2]),
        .I1(power_fliter[2]),
        .I2(f_counter_A[0]),
        .I3(power_fliter[0]),
        .I4(power_fliter[1]),
        .I5(f_counter_A[1]),
        .O(n_0_power_H_in_f_i_16));
LUT5 #(
    .INIT(32'h8A8ABA8A)) 
     power_H_in_f_i_2
       (.I0(power_H_in),
        .I1(cnt0),
        .I2(filter_state_A[1]),
        .I3(power_H_in_r),
        .I4(filter_state_A[0]),
        .O(n_0_power_H_in_f_i_2));
LUT4 #(
    .INIT(16'h9009)) 
     power_H_in_f_i_5
       (.I0(power_fliter[30]),
        .I1(f_counter_A[30]),
        .I2(power_fliter[31]),
        .I3(f_counter_A[31]),
        .O(n_0_power_H_in_f_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_6
       (.I0(f_counter_A[28]),
        .I1(power_fliter[28]),
        .I2(f_counter_A[27]),
        .I3(power_fliter[27]),
        .I4(power_fliter[29]),
        .I5(f_counter_A[29]),
        .O(n_0_power_H_in_f_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_7
       (.I0(f_counter_A[26]),
        .I1(power_fliter[26]),
        .I2(f_counter_A[24]),
        .I3(power_fliter[24]),
        .I4(power_fliter[25]),
        .I5(f_counter_A[25]),
        .O(n_0_power_H_in_f_i_7));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_H_in_f_i_9
       (.I0(f_counter_A[23]),
        .I1(power_fliter[23]),
        .I2(f_counter_A[22]),
        .I3(power_fliter[22]),
        .I4(power_fliter[21]),
        .I5(f_counter_A[21]),
        .O(n_0_power_H_in_f_i_9));
FDSE power_H_in_f_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(O2),
        .Q(power_H_in_f_r),
        .S(cnt0));
FDRE power_H_in_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_H_in_f_i_1),
        .Q(O2),
        .R(1'b0));
CARRY4 power_H_in_f_reg_i_3
       (.CI(n_0_power_H_in_f_reg_i_4),
        .CO({NLW_power_H_in_f_reg_i_3_CO_UNCONNECTED[3],n_1_power_H_in_f_reg_i_3,n_2_power_H_in_f_reg_i_3,n_3_power_H_in_f_reg_i_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_H_in_f_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,n_0_power_H_in_f_i_5,n_0_power_H_in_f_i_6,n_0_power_H_in_f_i_7}));
CARRY4 power_H_in_f_reg_i_4
       (.CI(n_0_power_H_in_f_reg_i_8),
        .CO({n_0_power_H_in_f_reg_i_4,n_1_power_H_in_f_reg_i_4,n_2_power_H_in_f_reg_i_4,n_3_power_H_in_f_reg_i_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_H_in_f_reg_i_4_O_UNCONNECTED[3:0]),
        .S({n_0_power_H_in_f_i_9,n_0_power_H_in_f_i_10,n_0_power_H_in_f_i_11,n_0_power_H_in_f_i_12}));
CARRY4 power_H_in_f_reg_i_8
       (.CI(1'b0),
        .CO({n_0_power_H_in_f_reg_i_8,n_1_power_H_in_f_reg_i_8,n_2_power_H_in_f_reg_i_8,n_3_power_H_in_f_reg_i_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_H_in_f_reg_i_8_O_UNCONNECTED[3:0]),
        .S({n_0_power_H_in_f_i_13,n_0_power_H_in_f_i_14,n_0_power_H_in_f_i_15,n_0_power_H_in_f_i_16}));
FDSE power_H_in_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(power_H_in),
        .Q(power_H_in_r),
        .S(cnt0));
LUT3 #(
    .INIT(8'hF4)) 
     power_O_error_i_1
       (.I0(O3),
        .I1(power_O_in_f_r),
        .I2(power_O_error),
        .O(n_0_power_O_error_i_1));
FDRE power_O_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_O_error_i_1),
        .Q(power_O_error),
        .R(cnt0));
LUT6 #(
    .INIT(64'hAABAABBAAA8AA88A)) 
     power_O_in_f_i_1
       (.I0(n_0_power_O_in_f_i_2),
        .I1(cnt0),
        .I2(filter_state_B[0]),
        .I3(filter_state_B[1]),
        .I4(n_1_power_O_in_f_reg_i_3),
        .I5(O3),
        .O(n_0_power_O_in_f_i_1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_10
       (.I0(f_counter_B[20]),
        .I1(power_fliter[20]),
        .I2(f_counter_B[18]),
        .I3(power_fliter[18]),
        .I4(power_fliter[19]),
        .I5(f_counter_B[19]),
        .O(n_0_power_O_in_f_i_10));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_11
       (.I0(f_counter_B[17]),
        .I1(power_fliter[17]),
        .I2(f_counter_B[15]),
        .I3(power_fliter[15]),
        .I4(power_fliter[16]),
        .I5(f_counter_B[16]),
        .O(n_0_power_O_in_f_i_11));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_12
       (.I0(f_counter_B[13]),
        .I1(power_fliter[13]),
        .I2(f_counter_B[12]),
        .I3(power_fliter[12]),
        .I4(power_fliter[14]),
        .I5(f_counter_B[14]),
        .O(n_0_power_O_in_f_i_12));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_13
       (.I0(f_counter_B[10]),
        .I1(power_fliter[10]),
        .I2(f_counter_B[9]),
        .I3(power_fliter[9]),
        .I4(power_fliter[11]),
        .I5(f_counter_B[11]),
        .O(n_0_power_O_in_f_i_13));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_14
       (.I0(f_counter_B[7]),
        .I1(power_fliter[7]),
        .I2(f_counter_B[6]),
        .I3(power_fliter[6]),
        .I4(power_fliter[8]),
        .I5(f_counter_B[8]),
        .O(n_0_power_O_in_f_i_14));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_15
       (.I0(f_counter_B[5]),
        .I1(power_fliter[5]),
        .I2(f_counter_B[3]),
        .I3(power_fliter[3]),
        .I4(power_fliter[4]),
        .I5(f_counter_B[4]),
        .O(n_0_power_O_in_f_i_15));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_16
       (.I0(f_counter_B[2]),
        .I1(power_fliter[2]),
        .I2(f_counter_B[0]),
        .I3(power_fliter[0]),
        .I4(power_fliter[1]),
        .I5(f_counter_B[1]),
        .O(n_0_power_O_in_f_i_16));
LUT5 #(
    .INIT(32'h8A8ABA8A)) 
     power_O_in_f_i_2
       (.I0(power_O_in),
        .I1(cnt0),
        .I2(filter_state_B[1]),
        .I3(power_O_in_r),
        .I4(filter_state_B[0]),
        .O(n_0_power_O_in_f_i_2));
LUT4 #(
    .INIT(16'h9009)) 
     power_O_in_f_i_5
       (.I0(power_fliter[30]),
        .I1(f_counter_B[30]),
        .I2(power_fliter[31]),
        .I3(f_counter_B[31]),
        .O(n_0_power_O_in_f_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_6
       (.I0(f_counter_B[28]),
        .I1(power_fliter[28]),
        .I2(f_counter_B[27]),
        .I3(power_fliter[27]),
        .I4(power_fliter[29]),
        .I5(f_counter_B[29]),
        .O(n_0_power_O_in_f_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_7
       (.I0(f_counter_B[26]),
        .I1(power_fliter[26]),
        .I2(f_counter_B[25]),
        .I3(power_fliter[25]),
        .I4(power_fliter[24]),
        .I5(f_counter_B[24]),
        .O(n_0_power_O_in_f_i_7));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     power_O_in_f_i_9
       (.I0(f_counter_B[23]),
        .I1(power_fliter[23]),
        .I2(f_counter_B[22]),
        .I3(power_fliter[22]),
        .I4(power_fliter[21]),
        .I5(f_counter_B[21]),
        .O(n_0_power_O_in_f_i_9));
FDSE power_O_in_f_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(O3),
        .Q(power_O_in_f_r),
        .S(cnt0));
FDRE power_O_in_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_O_in_f_i_1),
        .Q(O3),
        .R(1'b0));
CARRY4 power_O_in_f_reg_i_3
       (.CI(n_0_power_O_in_f_reg_i_4),
        .CO({NLW_power_O_in_f_reg_i_3_CO_UNCONNECTED[3],n_1_power_O_in_f_reg_i_3,n_2_power_O_in_f_reg_i_3,n_3_power_O_in_f_reg_i_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_O_in_f_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,n_0_power_O_in_f_i_5,n_0_power_O_in_f_i_6,n_0_power_O_in_f_i_7}));
CARRY4 power_O_in_f_reg_i_4
       (.CI(n_0_power_O_in_f_reg_i_8),
        .CO({n_0_power_O_in_f_reg_i_4,n_1_power_O_in_f_reg_i_4,n_2_power_O_in_f_reg_i_4,n_3_power_O_in_f_reg_i_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_O_in_f_reg_i_4_O_UNCONNECTED[3:0]),
        .S({n_0_power_O_in_f_i_9,n_0_power_O_in_f_i_10,n_0_power_O_in_f_i_11,n_0_power_O_in_f_i_12}));
CARRY4 power_O_in_f_reg_i_8
       (.CI(1'b0),
        .CO({n_0_power_O_in_f_reg_i_8,n_1_power_O_in_f_reg_i_8,n_2_power_O_in_f_reg_i_8,n_3_power_O_in_f_reg_i_8}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_power_O_in_f_reg_i_8_O_UNCONNECTED[3:0]),
        .S({n_0_power_O_in_f_i_13,n_0_power_O_in_f_i_14,n_0_power_O_in_f_i_15,n_0_power_O_in_f_i_16}));
FDSE power_O_in_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(power_O_in),
        .Q(power_O_in_r),
        .S(cnt0));
LUT2 #(
    .INIT(4'h2)) 
     power_down_i_1
       (.I0(system_rst),
        .I1(n_0_lock_reg),
        .O(cnt0));
LUT1 #(
    .INIT(2'h1)) 
     power_down_i_2
       (.I0(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(n_0_power_down_i_2));
LUT6 #(
    .INIT(64'h00000000FEEA32EA)) 
     power_down_i_3
       (.I0(n_0_power_down_i_4),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .I2(O1),
        .I3(\n_0_FSM_sequential_power_state_reg[0] ),
        .I4(power_up_7v0),
        .I5(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(n_0_power_down_i_3));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     power_down_i_4
       (.I0(O3),
        .I1(power_up),
        .I2(O2),
        .O(n_0_power_down_i_4));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h7FFF7F7F)) 
     power_down_i_5
       (.I0(O2),
        .I1(power_up),
        .I2(O3),
        .I3(O4),
        .I4(vh_error_en),
        .O(power_up_7v0));
FDRE power_down_reg
       (.C(clk),
        .CE(n_0_power_down_i_2),
        .D(n_0_power_down_i_3),
        .Q(O1),
        .R(cnt0));
LUT2 #(
    .INIT(4'h2)) 
     \power_state[0]_INST_0 
       (.I0(\n_0_FSM_sequential_power_state_reg[0] ),
        .I1(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(power_state[0]));
LUT2 #(
    .INIT(4'h2)) 
     \power_state[1]_INST_0 
       (.I0(\n_0_FSM_sequential_power_state_reg[1] ),
        .I1(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(power_state[1]));
LUT6 #(
    .INIT(64'hFFFFABFB0000A808)) 
     power_up_14v_i_1
       (.I0(n_0_power_up_14v_i_2),
        .I1(n_0_power_up_14v_i_3),
        .I2(\n_0_FSM_sequential_power_state_reg[0] ),
        .I3(n_0_power_up_14v_i_4),
        .I4(\n_0_FSM_sequential_power_state_reg[2] ),
        .I5(power_up_14v),
        .O(n_0_power_up_14v_i_1));
LUT6 #(
    .INIT(64'h000000000F020202)) 
     power_up_14v_i_2
       (.I0(\n_0_FSM_sequential_power_state_reg[1] ),
        .I1(O1),
        .I2(n_0_power_down_i_4),
        .I3(\n_0_FSM_sequential_power_state_reg[0] ),
        .I4(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I5(\n_0_FSM_sequential_power_state_reg[2] ),
        .O(n_0_power_up_14v_i_2));
LUT6 #(
    .INIT(64'hFEFE32FEFFFFFFFF)) 
     power_up_14v_i_3
       (.I0(n_0_power_down_i_4),
        .I1(O1),
        .I2(\n_0_FSM_sequential_power_state[1]_i_4 ),
        .I3(\n_0_delay_cnt[31]_i_9 ),
        .I4(n_0_power_up_14v_i_5),
        .I5(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(n_0_power_up_14v_i_3));
LUT2 #(
    .INIT(4'h1)) 
     power_up_14v_i_4
       (.I0(O1),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(n_0_power_up_14v_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     power_up_14v_i_5
       (.I0(\n_0_FSM_sequential_power_state[1]_i_5 ),
        .I1(\n_0_FSM_sequential_power_state[1]_i_6 ),
        .I2(delay_cnt[26]),
        .I3(delay_cnt[22]),
        .I4(delay_cnt[29]),
        .I5(\n_0_delay_cnt[31]_i_7 ),
        .O(n_0_power_up_14v_i_5));
FDRE power_up_14v_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_up_14v_i_1),
        .Q(power_up_14v),
        .R(cnt0));
LUT6 #(
    .INIT(64'hFFFFCDFD00000101)) 
     power_up_5v_r_i_1
       (.I0(n_0_power_down_i_4),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .I2(\n_0_FSM_sequential_power_state_reg[0] ),
        .I3(\n_0_delay_cnt[31]_i_5 ),
        .I4(\n_0_FSM_sequential_power_state_reg[2] ),
        .I5(power_up_5v),
        .O(n_0_power_up_5v_r_i_1));
FDRE power_up_5v_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_up_5v_r_i_1),
        .Q(power_up_5v),
        .R(cnt0));
LUT6 #(
    .INIT(64'hFFFF40FF00004000)) 
     power_up_7v_i_1
       (.I0(\n_0_FSM_sequential_power_state_reg[0] ),
        .I1(\n_0_FSM_sequential_power_state_reg[1] ),
        .I2(power_up_7v1_out),
        .I3(n_0_power_up_7v_i_2),
        .I4(\n_0_FSM_sequential_power_state_reg[2] ),
        .I5(power_up_7v),
        .O(n_0_power_up_7v_i_1));
LUT6 #(
    .INIT(64'hBA00BAFF00FFFFFF)) 
     power_up_7v_i_2
       (.I0(n_0_power_down_i_4),
        .I1(O4),
        .I2(vh_error_en),
        .I3(\n_0_FSM_sequential_power_state_reg[0] ),
        .I4(O1),
        .I5(\n_0_FSM_sequential_power_state_reg[1] ),
        .O(n_0_power_up_7v_i_2));
FDRE power_up_7v_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_up_7v_i_1),
        .Q(power_up_7v),
        .R(cnt0));
LUT3 #(
    .INIT(8'h04)) 
     power_vh_error_i_1
       (.I0(O4),
        .I1(vh_error_en),
        .I2(O1),
        .O(n_0_power_vh_error_i_1));
FDRE power_vh_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_power_vh_error_i_1),
        .Q(power_vh_error),
        .R(cnt0));
LUT5 #(
    .INIT(32'h0FBF008F)) 
     vh_error_f_i_1
       (.I0(vh_error_r),
        .I1(n_1_vh_error_f_reg_i_2),
        .I2(filter_state_C[1]),
        .I3(filter_state_C[0]),
        .I4(O4),
        .O(n_0_vh_error_f_i_1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_10
       (.I0(f_counter_C[17]),
        .I1(power_fliter[17]),
        .I2(f_counter_C[15]),
        .I3(power_fliter[15]),
        .I4(power_fliter[16]),
        .I5(f_counter_C[16]),
        .O(n_0_vh_error_f_i_10));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_11
       (.I0(f_counter_C[14]),
        .I1(power_fliter[14]),
        .I2(f_counter_C[12]),
        .I3(power_fliter[12]),
        .I4(power_fliter[13]),
        .I5(f_counter_C[13]),
        .O(n_0_vh_error_f_i_11));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_12
       (.I0(f_counter_C[10]),
        .I1(power_fliter[10]),
        .I2(f_counter_C[9]),
        .I3(power_fliter[9]),
        .I4(power_fliter[11]),
        .I5(f_counter_C[11]),
        .O(n_0_vh_error_f_i_12));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_13
       (.I0(f_counter_C[8]),
        .I1(power_fliter[8]),
        .I2(f_counter_C[7]),
        .I3(power_fliter[7]),
        .I4(power_fliter[6]),
        .I5(f_counter_C[6]),
        .O(n_0_vh_error_f_i_13));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_14
       (.I0(f_counter_C[5]),
        .I1(power_fliter[5]),
        .I2(f_counter_C[3]),
        .I3(power_fliter[3]),
        .I4(power_fliter[4]),
        .I5(f_counter_C[4]),
        .O(n_0_vh_error_f_i_14));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_15
       (.I0(f_counter_C[1]),
        .I1(power_fliter[1]),
        .I2(f_counter_C[0]),
        .I3(power_fliter[0]),
        .I4(power_fliter[2]),
        .I5(f_counter_C[2]),
        .O(n_0_vh_error_f_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     vh_error_f_i_4
       (.I0(power_fliter[30]),
        .I1(f_counter_C[30]),
        .I2(power_fliter[31]),
        .I3(f_counter_C[31]),
        .O(n_0_vh_error_f_i_4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_5
       (.I0(f_counter_C[29]),
        .I1(power_fliter[29]),
        .I2(f_counter_C[27]),
        .I3(power_fliter[27]),
        .I4(power_fliter[28]),
        .I5(f_counter_C[28]),
        .O(n_0_vh_error_f_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_6
       (.I0(f_counter_C[26]),
        .I1(power_fliter[26]),
        .I2(f_counter_C[24]),
        .I3(power_fliter[24]),
        .I4(power_fliter[25]),
        .I5(f_counter_C[25]),
        .O(n_0_vh_error_f_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_8
       (.I0(f_counter_C[23]),
        .I1(power_fliter[23]),
        .I2(f_counter_C[22]),
        .I3(power_fliter[22]),
        .I4(power_fliter[21]),
        .I5(f_counter_C[21]),
        .O(n_0_vh_error_f_i_8));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     vh_error_f_i_9
       (.I0(f_counter_C[20]),
        .I1(power_fliter[20]),
        .I2(f_counter_C[18]),
        .I3(power_fliter[18]),
        .I4(power_fliter[19]),
        .I5(f_counter_C[19]),
        .O(n_0_vh_error_f_i_9));
FDSE vh_error_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_0_vh_error_f_i_1),
        .Q(O4),
        .S(cnt0));
CARRY4 vh_error_f_reg_i_2
       (.CI(n_0_vh_error_f_reg_i_3),
        .CO({NLW_vh_error_f_reg_i_2_CO_UNCONNECTED[3],n_1_vh_error_f_reg_i_2,n_2_vh_error_f_reg_i_2,n_3_vh_error_f_reg_i_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vh_error_f_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,n_0_vh_error_f_i_4,n_0_vh_error_f_i_5,n_0_vh_error_f_i_6}));
CARRY4 vh_error_f_reg_i_3
       (.CI(n_0_vh_error_f_reg_i_7),
        .CO({n_0_vh_error_f_reg_i_3,n_1_vh_error_f_reg_i_3,n_2_vh_error_f_reg_i_3,n_3_vh_error_f_reg_i_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vh_error_f_reg_i_3_O_UNCONNECTED[3:0]),
        .S({n_0_vh_error_f_i_8,n_0_vh_error_f_i_9,n_0_vh_error_f_i_10,n_0_vh_error_f_i_11}));
CARRY4 vh_error_f_reg_i_7
       (.CI(1'b0),
        .CO({n_0_vh_error_f_reg_i_7,n_1_vh_error_f_reg_i_7,n_2_vh_error_f_reg_i_7,n_3_vh_error_f_reg_i_7}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vh_error_f_reg_i_7_O_UNCONNECTED[3:0]),
        .S({n_0_vh_error_f_i_12,n_0_vh_error_f_i_13,n_0_vh_error_f_i_14,n_0_vh_error_f_i_15}));
FDSE vh_error_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(vh_error),
        .Q(vh_error_r),
        .S(cnt0));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
