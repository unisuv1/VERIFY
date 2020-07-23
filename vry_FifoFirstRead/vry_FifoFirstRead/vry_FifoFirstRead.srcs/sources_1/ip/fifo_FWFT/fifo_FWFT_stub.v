// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Jul 23 14:42:36 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/UV/FPGA/VERIFY/vry_FifoFirstRead/vry_FifoFirstRead/vry_FifoFirstRead.srcs/sources_1/ip/fifo_FWFT/fifo_FWFT_stub.v
// Design      : fifo_FWFT
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *)
module fifo_FWFT(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[63:0],wr_en,rd_en,dout[63:0],full,empty" */;
  input clk;
  input rst;
  input [63:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output empty;
endmodule
