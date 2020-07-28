// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jul 28 15:17:52 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/UV/FPGA/VERIFY/vry_AXI_DMA/vry_AXI_DMA/vry_AXI_DMA.srcs/sources_1/ip/axi_full_slave1_0/axi_full_slave1_0_stub.v
// Design      : axi_full_slave1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_full_slave1_v1_0,Vivado 2014.4" *)
module axi_full_slave1_0(s00_axi_awid, s00_axi_awaddr, s00_axi_awlen, s00_axi_awsize, s00_axi_awburst, s00_axi_awlock, s00_axi_awcache, s00_axi_awprot, s00_axi_awregion, s00_axi_awqos, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wlast, s00_axi_wvalid, s00_axi_wready, s00_axi_bid, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_arid, s00_axi_araddr, s00_axi_arlen, s00_axi_arsize, s00_axi_arburst, s00_axi_arlock, s00_axi_arcache, s00_axi_arprot, s00_axi_arregion, s00_axi_arqos, s00_axi_arvalid, s00_axi_arready, s00_axi_rid, s00_axi_rdata, s00_axi_rresp, s00_axi_rlast, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s00_axi_awid[0:0],s00_axi_awaddr[5:0],s00_axi_awlen[7:0],s00_axi_awsize[2:0],s00_axi_awburst[1:0],s00_axi_awlock,s00_axi_awcache[3:0],s00_axi_awprot[2:0],s00_axi_awregion[3:0],s00_axi_awqos[3:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wlast,s00_axi_wvalid,s00_axi_wready,s00_axi_bid[0:0],s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_arid[0:0],s00_axi_araddr[5:0],s00_axi_arlen[7:0],s00_axi_arsize[2:0],s00_axi_arburst[1:0],s00_axi_arlock,s00_axi_arcache[3:0],s00_axi_arprot[2:0],s00_axi_arregion[3:0],s00_axi_arqos[3:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rid[0:0],s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rlast,s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input [0:0]s00_axi_awid;
  input [5:0]s00_axi_awaddr;
  input [7:0]s00_axi_awlen;
  input [2:0]s00_axi_awsize;
  input [1:0]s00_axi_awburst;
  input s00_axi_awlock;
  input [3:0]s00_axi_awcache;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awregion;
  input [3:0]s00_axi_awqos;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wlast;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [0:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [0:0]s00_axi_arid;
  input [5:0]s00_axi_araddr;
  input [7:0]s00_axi_arlen;
  input [2:0]s00_axi_arsize;
  input [1:0]s00_axi_arburst;
  input s00_axi_arlock;
  input [3:0]s00_axi_arcache;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arregion;
  input [3:0]s00_axi_arqos;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [0:0]s00_axi_rid;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rlast;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
