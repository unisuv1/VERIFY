// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Aug 06 18:20:51 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/POWER_CTRL_0/POWER_CTRL_0_stub.v
// Design      : POWER_CTRL_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "POWER_CTRL,Vivado 2014.4" *)
module POWER_CTRL_0(clk, clk_out, system_rst, power_down, power_state, delay_cnt, down_delay_cnt, power_H_in_f, power_O_in_f, vh_error_f, power_up, power_fliter, power_H_in, power_O_in, vh_error, vh_error_en, power_H_error, power_O_error, power_vh_error, power_up_5v, power_up_14v, power_up_7v)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_out,system_rst,power_down,power_state[3:0],delay_cnt[31:0],down_delay_cnt[31:0],power_H_in_f,power_O_in_f,vh_error_f,power_up,power_fliter[31:0],power_H_in,power_O_in,vh_error,vh_error_en,power_H_error,power_O_error,power_vh_error,power_up_5v,power_up_14v,power_up_7v" */;
  input clk;
  output clk_out;
  input system_rst;
  output power_down;
  output [3:0]power_state;
  output [31:0]delay_cnt;
  output [31:0]down_delay_cnt;
  output power_H_in_f;
  output power_O_in_f;
  output vh_error_f;
  input power_up;
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
endmodule
