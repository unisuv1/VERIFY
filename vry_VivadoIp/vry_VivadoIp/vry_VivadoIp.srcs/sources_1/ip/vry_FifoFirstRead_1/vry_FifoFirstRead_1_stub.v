// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Mon Jul 27 11:51:27 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/vry_FifoFirstRead_1/vry_FifoFirstRead_1_stub.v
// Design      : vry_FifoFirstRead_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vry_FifoFirstRead,Vivado 2014.4" *)
module vry_FifoFirstRead_1(rst_n, sclk, full)
/* synthesis syn_black_box black_box_pad_pin="rst_n,sclk,full" */;
  input rst_n;
  input sclk;
  output full;
endmodule
