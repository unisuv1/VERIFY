// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jul 28 15:07:58 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/UV/FPGA/VERIFY/vry_AXI_DMA/vry_AXI_DMA/vry_AXI_DMA.srcs/sources_1/ip/AXI_FIFO/AXI_FIFO_funcsim.v
// Design      : AXI_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axi_full_slave_v1_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "AXI_FIFO,axi_full_slave_v1_0,{}" *) (* CORE_GENERATION_INFO = "AXI_FIFO,axi_full_slave_v1_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_full_slave,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_ID_WIDTH=1,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=8,C_S00_AXI_AWUSER_WIDTH=1,C_S00_AXI_ARUSER_WIDTH=1,C_S00_AXI_WUSER_WIDTH=1,C_S00_AXI_RUSER_WIDTH=1,C_S00_AXI_BUSER_WIDTH=1}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module AXI_FIFO
   (s00_axi_awid,
    s00_axi_awaddr,
    s00_axi_awlen,
    s00_axi_awsize,
    s00_axi_awburst,
    s00_axi_awlock,
    s00_axi_awcache,
    s00_axi_awprot,
    s00_axi_awregion,
    s00_axi_awqos,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wlast,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bid,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_arid,
    s00_axi_araddr,
    s00_axi_arlen,
    s00_axi_arsize,
    s00_axi_arburst,
    s00_axi_arlock,
    s00_axi_arcache,
    s00_axi_arprot,
    s00_axi_arregion,
    s00_axi_arqos,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rid,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rlast,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input [0:0]s00_axi_awid;
  input [7:0]s00_axi_awaddr;
  input [7:0]s00_axi_awlen;
  input [2:0]s00_axi_awsize;
  input [1:0]s00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input s00_axi_awlock;
  input [3:0]s00_axi_awcache;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awregion;
  input [3:0]s00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input s00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  output [0:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  input [0:0]s00_axi_arid;
  input [7:0]s00_axi_araddr;
  input [7:0]s00_axi_arlen;
  input [2:0]s00_axi_arsize;
  input [1:0]s00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input s00_axi_arlock;
  input [3:0]s00_axi_arcache;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arregion;
  input [3:0]s00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  output [0:0]s00_axi_rid;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output s00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [0:0]s00_axi_arid;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [0:0]s00_axi_awid;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bid[0] = s00_axi_awid;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rid[0] = s00_axi_arid;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
AXI_FIFO_axi_full_slave_v1_0 inst
       (.O1(s00_axi_awready),
        .O2(s00_axi_arready),
        .O3(s00_axi_wready),
        .O4(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_full_slave_v1_0" *) 
module AXI_FIFO_axi_full_slave_v1_0
   (O1,
    O2,
    O3,
    O4,
    s00_axi_rlast,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_awlen,
    s00_axi_arlen,
    s00_axi_awburst,
    s00_axi_arburst,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_wlast,
    s00_axi_wstrb,
    s00_axi_bready);
  output O1;
  output O2;
  output O3;
  output O4;
  output s00_axi_rlast;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [7:0]s00_axi_awlen;
  input [7:0]s00_axi_arlen;
  input [1:0]s00_axi_awburst;
  input [1:0]s00_axi_arburst;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [7:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input [7:0]s00_axi_araddr;
  input s00_axi_wlast;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

AXI_FIFO_axi_full_slave_v1_0_S00_AXI axi_full_slave_v1_0_S00_AXI_inst
       (.O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_full_slave_v1_0_S00_AXI" *) 
module AXI_FIFO_axi_full_slave_v1_0_S00_AXI
   (O1,
    O2,
    O3,
    O4,
    s00_axi_rlast,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_awlen,
    s00_axi_arlen,
    s00_axi_awburst,
    s00_axi_arburst,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_wlast,
    s00_axi_wstrb,
    s00_axi_bready);
  output O1;
  output O2;
  output O3;
  output O4;
  output s00_axi_rlast;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [7:0]s00_axi_awlen;
  input [7:0]s00_axi_arlen;
  input [1:0]s00_axi_awburst;
  input [1:0]s00_axi_arburst;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [7:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input [7:0]s00_axi_araddr;
  input s00_axi_wlast;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire ar_wrap_en;
  wire axi_araddr1;
  wire axi_araddr3;
  wire [7:0]axi_arlen_cntr_reg__0;
  wire axi_arv_arr_flag;
  wire axi_awaddr1;
  wire axi_awaddr3;
  wire [7:0]axi_awlen_cntr_reg__0;
  wire axi_awv_awr_flag;
  wire [7:0]data_out;
  wire [7:0]data_out__0;
  wire [7:0]data_out__1;
  wire [7:0]data_out__2;
  wire [5:0]mem_address;
  wire [31:0]\mem_data_out[0]_0 ;
  wire \n_0_axi_araddr[0]_i_1 ;
  wire \n_0_axi_araddr[1]_i_1 ;
  wire \n_0_axi_araddr[1]_i_3 ;
  wire \n_0_axi_araddr[1]_i_4 ;
  wire \n_0_axi_araddr[1]_i_5 ;
  wire \n_0_axi_araddr[1]_i_6 ;
  wire \n_0_axi_araddr[2]_i_1 ;
  wire \n_0_axi_araddr[2]_i_2 ;
  wire \n_0_axi_araddr[3]_i_1 ;
  wire \n_0_axi_araddr[3]_i_10 ;
  wire \n_0_axi_araddr[3]_i_3 ;
  wire \n_0_axi_araddr[3]_i_4 ;
  wire \n_0_axi_araddr[3]_i_5 ;
  wire \n_0_axi_araddr[3]_i_6 ;
  wire \n_0_axi_araddr[3]_i_7 ;
  wire \n_0_axi_araddr[3]_i_8 ;
  wire \n_0_axi_araddr[3]_i_9 ;
  wire \n_0_axi_araddr[4]_i_1 ;
  wire \n_0_axi_araddr[4]_i_2 ;
  wire \n_0_axi_araddr[5]_i_1 ;
  wire \n_0_axi_araddr[5]_i_2 ;
  wire \n_0_axi_araddr[6]_i_1 ;
  wire \n_0_axi_araddr[6]_i_2 ;
  wire \n_0_axi_araddr[6]_i_3 ;
  wire \n_0_axi_araddr[7]_i_1 ;
  wire \n_0_axi_araddr[7]_i_10 ;
  wire \n_0_axi_araddr[7]_i_11 ;
  wire \n_0_axi_araddr[7]_i_12 ;
  wire \n_0_axi_araddr[7]_i_13 ;
  wire \n_0_axi_araddr[7]_i_14 ;
  wire \n_0_axi_araddr[7]_i_2 ;
  wire \n_0_axi_araddr[7]_i_3 ;
  wire \n_0_axi_araddr[7]_i_4 ;
  wire \n_0_axi_araddr[7]_i_5 ;
  wire \n_0_axi_araddr[7]_i_6 ;
  wire \n_0_axi_araddr[7]_i_8 ;
  wire \n_0_axi_araddr[7]_i_9 ;
  wire \n_0_axi_araddr_reg[0] ;
  wire \n_0_axi_araddr_reg[1] ;
  wire \n_0_axi_araddr_reg[3]_i_2 ;
  wire \n_0_axi_arlen_cntr[7]_i_1 ;
  wire \n_0_axi_arlen_cntr[7]_i_4 ;
  wire n_0_axi_arready_i_1;
  wire n_0_axi_arready_i_2;
  wire n_0_axi_arready_i_3;
  wire n_0_axi_arready_i_4;
  wire n_0_axi_arready_i_5;
  wire n_0_axi_arready_i_6;
  wire n_0_axi_arv_arr_flag_i_1;
  wire \n_0_axi_awaddr[1]_i_3 ;
  wire \n_0_axi_awaddr[1]_i_4 ;
  wire \n_0_axi_awaddr[1]_i_5 ;
  wire \n_0_axi_awaddr[1]_i_6 ;
  wire \n_0_axi_awaddr[2]_i_2 ;
  wire \n_0_axi_awaddr[3]_i_10 ;
  wire \n_0_axi_awaddr[3]_i_3 ;
  wire \n_0_axi_awaddr[3]_i_4 ;
  wire \n_0_axi_awaddr[3]_i_5 ;
  wire \n_0_axi_awaddr[3]_i_6 ;
  wire \n_0_axi_awaddr[3]_i_7 ;
  wire \n_0_axi_awaddr[3]_i_8 ;
  wire \n_0_axi_awaddr[3]_i_9 ;
  wire \n_0_axi_awaddr[4]_i_2 ;
  wire \n_0_axi_awaddr[5]_i_2 ;
  wire \n_0_axi_awaddr[6]_i_2 ;
  wire \n_0_axi_awaddr[6]_i_3 ;
  wire \n_0_axi_awaddr[7]_i_1 ;
  wire \n_0_axi_awaddr[7]_i_10 ;
  wire \n_0_axi_awaddr[7]_i_11 ;
  wire \n_0_axi_awaddr[7]_i_12 ;
  wire \n_0_axi_awaddr[7]_i_13 ;
  wire \n_0_axi_awaddr[7]_i_14 ;
  wire \n_0_axi_awaddr[7]_i_15 ;
  wire \n_0_axi_awaddr[7]_i_16 ;
  wire \n_0_axi_awaddr[7]_i_17 ;
  wire \n_0_axi_awaddr[7]_i_18 ;
  wire \n_0_axi_awaddr[7]_i_19 ;
  wire \n_0_axi_awaddr[7]_i_2 ;
  wire \n_0_axi_awaddr[7]_i_20 ;
  wire \n_0_axi_awaddr[7]_i_21 ;
  wire \n_0_axi_awaddr[7]_i_22 ;
  wire \n_0_axi_awaddr[7]_i_23 ;
  wire \n_0_axi_awaddr[7]_i_5 ;
  wire \n_0_axi_awaddr[7]_i_6 ;
  wire \n_0_axi_awaddr[7]_i_7 ;
  wire \n_0_axi_awaddr[7]_i_9 ;
  wire \n_0_axi_awaddr_reg[0] ;
  wire \n_0_axi_awaddr_reg[1] ;
  wire \n_0_axi_awaddr_reg[2] ;
  wire \n_0_axi_awaddr_reg[3] ;
  wire \n_0_axi_awaddr_reg[3]_i_2 ;
  wire \n_0_axi_awaddr_reg[4] ;
  wire \n_0_axi_awaddr_reg[5] ;
  wire \n_0_axi_awaddr_reg[6] ;
  wire \n_0_axi_awaddr_reg[7] ;
  wire \n_0_axi_awlen_cntr[0]_i_1 ;
  wire \n_0_axi_awlen_cntr[7]_i_1 ;
  wire \n_0_axi_awlen_cntr[7]_i_4 ;
  wire n_0_axi_awready_i_1;
  wire n_0_axi_awready_i_2;
  wire n_0_axi_awv_awr_flag_i_1;
  wire n_0_axi_bvalid_i_1;
  wire n_0_axi_bvalid_i_2;
  wire n_0_axi_rlast_i_1;
  wire n_0_axi_rlast_i_10;
  wire n_0_axi_rlast_i_11;
  wire n_0_axi_rlast_i_3;
  wire n_0_axi_rlast_i_4;
  wire n_0_axi_rlast_i_5;
  wire n_0_axi_rlast_i_6;
  wire n_0_axi_rlast_i_7;
  wire n_0_axi_rlast_i_8;
  wire n_0_axi_rlast_i_9;
  wire n_0_axi_rvalid_i_1;
  wire n_0_axi_wready_i_1;
  wire \n_1_axi_araddr_reg[1]_i_2 ;
  wire \n_1_axi_araddr_reg[3]_i_2 ;
  wire \n_1_axi_araddr_reg[7]_i_7 ;
  wire \n_1_axi_awaddr_reg[1]_i_2 ;
  wire \n_1_axi_awaddr_reg[3]_i_2 ;
  wire \n_1_axi_awaddr_reg[7]_i_4 ;
  wire \n_1_axi_awaddr_reg[7]_i_8 ;
  wire n_1_axi_rlast_reg_i_2;
  wire \n_2_axi_araddr_reg[1]_i_2 ;
  wire \n_2_axi_araddr_reg[3]_i_2 ;
  wire \n_2_axi_araddr_reg[7]_i_7 ;
  wire \n_2_axi_awaddr_reg[1]_i_2 ;
  wire \n_2_axi_awaddr_reg[3]_i_2 ;
  wire \n_2_axi_awaddr_reg[7]_i_4 ;
  wire \n_2_axi_awaddr_reg[7]_i_8 ;
  wire n_2_axi_rlast_reg_i_2;
  wire \n_3_axi_araddr_reg[1]_i_2 ;
  wire \n_3_axi_araddr_reg[3]_i_2 ;
  wire \n_3_axi_araddr_reg[7]_i_7 ;
  wire \n_3_axi_awaddr_reg[1]_i_2 ;
  wire \n_3_axi_awaddr_reg[3]_i_2 ;
  wire \n_3_axi_awaddr_reg[7]_i_4 ;
  wire \n_3_axi_awaddr_reg[7]_i_8 ;
  wire n_3_axi_rlast_reg_i_2;
  wire [7:0]p_0_in;
  wire p_0_in10_out;
  wire p_0_in13_out;
  wire p_0_in16_out;
  wire p_0_in18_out;
  wire [5:0]p_0_in_0;
  wire [7:1]p_0_in__0;
  wire [0:0]p_0_in__1;
  wire [7:0]p_2_in;
  wire [7:0]p_3_out;
  wire [7:0]p_7_out;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]\NLW_axi_araddr_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_araddr_reg[7]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_axi_awaddr_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_axi_awaddr_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_awaddr_reg[7]_i_8_CO_UNCONNECTED ;
  wire [3:0]NLW_axi_rlast_reg_i_2_O_UNCONNECTED;

RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[0]),
        .O(data_out[0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
LUT3 #(
    .INIT(8'h80)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .O(p_0_in18_out));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_2 
       (.I0(p_0_in_0[0]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[2] ),
        .O(mem_address[0]));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_3 
       (.I0(p_0_in_0[1]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[3] ),
        .O(mem_address[1]));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_4 
       (.I0(p_0_in_0[2]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[4] ),
        .O(mem_address[2]));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_5 
       (.I0(p_0_in_0[3]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[5] ),
        .O(mem_address[3]));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_6 
       (.I0(p_0_in_0[4]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[6] ),
        .O(mem_address[4]));
LUT4 #(
    .INIT(16'hB888)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_0_0_i_7 
       (.I0(p_0_in_0[5]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\n_0_axi_awaddr_reg[7] ),
        .O(mem_address[5]));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_1_1 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[1]),
        .O(data_out[1]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_2_2 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[2]),
        .O(data_out[2]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_3_3 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[3]),
        .O(data_out[3]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_4_4 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[4]),
        .O(data_out[4]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_5_5 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[5]),
        .O(data_out[5]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_6_6 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[6]),
        .O(data_out[6]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_63_7_7 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[7]),
        .O(data_out[7]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in18_out));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[0]),
        .Q(\mem_data_out[0]_0 [0]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[1]),
        .Q(\mem_data_out[0]_0 [1]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[2]),
        .Q(\mem_data_out[0]_0 [2]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[3]),
        .Q(\mem_data_out[0]_0 [3]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[4]),
        .Q(\mem_data_out[0]_0 [4]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[5]),
        .Q(\mem_data_out[0]_0 [5]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[6]),
        .Q(\mem_data_out[0]_0 [6]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out[7]),
        .Q(\mem_data_out[0]_0 [7]),
        .R(1'b0));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_0_0 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[8]),
        .O(data_out__0[0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
LUT3 #(
    .INIT(8'h80)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_0_0_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .O(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_1_1 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[9]),
        .O(data_out__0[1]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_2_2 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[10]),
        .O(data_out__0[2]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_3_3 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[11]),
        .O(data_out__0[3]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_4_4 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[12]),
        .O(data_out__0[4]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_5_5 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[13]),
        .O(data_out__0[5]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_6_6 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[14]),
        .O(data_out__0[6]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_63_7_7 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[15]),
        .O(data_out__0[7]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in16_out));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[2]),
        .Q(\mem_data_out[0]_0 [10]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[3]),
        .Q(\mem_data_out[0]_0 [11]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[4]),
        .Q(\mem_data_out[0]_0 [12]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[5]),
        .Q(\mem_data_out[0]_0 [13]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[6]),
        .Q(\mem_data_out[0]_0 [14]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[7]),
        .Q(\mem_data_out[0]_0 [15]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[0]),
        .Q(\mem_data_out[0]_0 [8]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__0[1]),
        .Q(\mem_data_out[0]_0 [9]),
        .R(1'b0));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_0_0 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[16]),
        .O(data_out__1[0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
LUT3 #(
    .INIT(8'h80)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_0_0_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .O(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_1_1 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[17]),
        .O(data_out__1[1]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_2_2 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[18]),
        .O(data_out__1[2]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_3_3 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[19]),
        .O(data_out__1[3]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_4_4 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[20]),
        .O(data_out__1[4]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_5_5 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[21]),
        .O(data_out__1[5]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_6_6 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[22]),
        .O(data_out__1[6]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_63_7_7 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[23]),
        .O(data_out__1[7]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in13_out));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[0]),
        .Q(\mem_data_out[0]_0 [16]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[1]),
        .Q(\mem_data_out[0]_0 [17]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[2]),
        .Q(\mem_data_out[0]_0 [18]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[3]),
        .Q(\mem_data_out[0]_0 [19]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[4]),
        .Q(\mem_data_out[0]_0 [20]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[5]),
        .Q(\mem_data_out[0]_0 [21]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][22] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[6]),
        .Q(\mem_data_out[0]_0 [22]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][23] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__1[7]),
        .Q(\mem_data_out[0]_0 [23]),
        .R(1'b0));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_0_0 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[24]),
        .O(data_out__2[0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
LUT3 #(
    .INIT(8'h80)) 
     \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_0_0_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .O(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_1_1 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[25]),
        .O(data_out__2[1]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_2_2 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[26]),
        .O(data_out__2[2]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_3_3 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[27]),
        .O(data_out__2[3]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_4_4 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[28]),
        .O(data_out__2[4]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_5_5 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[29]),
        .O(data_out__2[5]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_6_6 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[30]),
        .O(data_out__2[6]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
RAM64X1S \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_63_7_7 
       (.A0(mem_address[0]),
        .A1(mem_address[1]),
        .A2(mem_address[2]),
        .A3(mem_address[3]),
        .A4(mem_address[4]),
        .A5(mem_address[5]),
        .D(s00_axi_wdata[31]),
        .O(data_out__2[7]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in10_out));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][24] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[0]),
        .Q(\mem_data_out[0]_0 [24]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][25] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[1]),
        .Q(\mem_data_out[0]_0 [25]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][26] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[2]),
        .Q(\mem_data_out[0]_0 [26]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][27] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[3]),
        .Q(\mem_data_out[0]_0 [27]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][28] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[4]),
        .Q(\mem_data_out[0]_0 [28]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][29] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[5]),
        .Q(\mem_data_out[0]_0 [29]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][30] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[6]),
        .Q(\mem_data_out[0]_0 [30]),
        .R(1'b0));
FDRE \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][31] 
       (.C(s00_axi_aclk),
        .CE(axi_arv_arr_flag),
        .D(data_out__2[7]),
        .Q(\mem_data_out[0]_0 [31]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBBB8888888888888)) 
     \axi_araddr[0]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(s00_axi_arburst[0]),
        .I3(ar_wrap_en),
        .I4(p_3_out[0]),
        .I5(s00_axi_arburst[1]),
        .O(\n_0_axi_araddr[0]_i_1 ));
LUT6 #(
    .INIT(64'hBBB8888888888888)) 
     \axi_araddr[1]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(s00_axi_arburst[0]),
        .I3(ar_wrap_en),
        .I4(p_3_out[1]),
        .I5(s00_axi_arburst[1]),
        .O(\n_0_axi_araddr[1]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_araddr[1]_i_3 
       (.I0(s00_axi_arlen[7]),
        .O(\n_0_axi_araddr[1]_i_3 ));
LUT5 #(
    .INIT(32'h0000DD0D)) 
     \axi_araddr[1]_i_4 
       (.I0(s00_axi_arlen[5]),
        .I1(p_0_in_0[5]),
        .I2(s00_axi_arlen[4]),
        .I3(p_0_in_0[4]),
        .I4(s00_axi_arlen[6]),
        .O(\n_0_axi_araddr[1]_i_4 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \axi_araddr[1]_i_5 
       (.I0(s00_axi_arlen[1]),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_arlen[2]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_arlen[3]),
        .I5(p_0_in_0[3]),
        .O(\n_0_axi_araddr[1]_i_5 ));
LUT2 #(
    .INIT(4'hB)) 
     \axi_araddr[1]_i_6 
       (.I0(p_0_in_0[0]),
        .I1(s00_axi_arlen[0]),
        .O(\n_0_axi_araddr[1]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'hFFEF0020)) 
     \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_arvalid),
        .I3(O2),
        .I4(\n_0_axi_araddr[2]_i_2 ),
        .O(\n_0_axi_araddr[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'hB080F4F7)) 
     \axi_araddr[2]_i_2 
       (.I0(s00_axi_arburst[1]),
        .I1(s00_axi_arburst[0]),
        .I2(p_3_out[2]),
        .I3(ar_wrap_en),
        .I4(p_0_in_0[0]),
        .O(\n_0_axi_araddr[2]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[3]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\n_0_axi_araddr[6]_i_3 ),
        .I5(p_3_out[3]),
        .O(\n_0_axi_araddr[3]_i_1 ));
LUT3 #(
    .INIT(8'hD1)) 
     \axi_araddr[3]_i_10 
       (.I0(\n_0_axi_araddr_reg[0] ),
        .I1(s00_axi_arburst[0]),
        .I2(p_0_in_0[0]),
        .O(\n_0_axi_araddr[3]_i_10 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_araddr[3]_i_3 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arlen[1]),
        .O(\n_0_axi_araddr[3]_i_3 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_araddr[3]_i_4 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arlen[0]),
        .O(\n_0_axi_araddr[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_araddr[3]_i_5 
       (.I0(s00_axi_arburst[0]),
        .O(\n_0_axi_araddr[3]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_araddr[3]_i_6 
       (.I0(s00_axi_arburst[0]),
        .O(\n_0_axi_araddr[3]_i_6 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_araddr[3]_i_7 
       (.I0(s00_axi_arlen[1]),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_arburst[0]),
        .I3(p_0_in_0[3]),
        .O(\n_0_axi_araddr[3]_i_7 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_araddr[3]_i_8 
       (.I0(s00_axi_arlen[0]),
        .I1(p_0_in_0[0]),
        .I2(s00_axi_arburst[0]),
        .I3(p_0_in_0[2]),
        .O(\n_0_axi_araddr[3]_i_8 ));
LUT3 #(
    .INIT(8'hD1)) 
     \axi_araddr[3]_i_9 
       (.I0(\n_0_axi_araddr_reg[1] ),
        .I1(s00_axi_arburst[0]),
        .I2(p_0_in_0[1]),
        .O(\n_0_axi_araddr[3]_i_9 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[4]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(p_0_in_0[2]),
        .I3(\n_0_axi_araddr[4]_i_2 ),
        .I4(\n_0_axi_araddr[6]_i_3 ),
        .I5(p_3_out[4]),
        .O(\n_0_axi_araddr[4]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \axi_araddr[4]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(\n_0_axi_araddr[4]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_araddr[5]_i_1 
       (.I0(s00_axi_araddr[5]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(p_0_in_0[3]),
        .I3(\n_0_axi_araddr[5]_i_2 ),
        .I4(\n_0_axi_araddr[6]_i_3 ),
        .I5(p_3_out[5]),
        .O(\n_0_axi_araddr[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \axi_araddr[5]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .O(\n_0_axi_araddr[5]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_araddr[6]_i_1 
       (.I0(s00_axi_araddr[6]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(p_0_in_0[4]),
        .I3(\n_0_axi_araddr[6]_i_2 ),
        .I4(\n_0_axi_araddr[6]_i_3 ),
        .I5(p_3_out[6]),
        .O(\n_0_axi_araddr[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \axi_araddr[6]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .O(\n_0_axi_araddr[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h1D)) 
     \axi_araddr[6]_i_3 
       (.I0(ar_wrap_en),
        .I1(s00_axi_arburst[0]),
        .I2(s00_axi_arburst[1]),
        .O(\n_0_axi_araddr[6]_i_3 ));
LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
     \axi_araddr[7]_i_1 
       (.I0(\n_0_axi_araddr[7]_i_3 ),
        .I1(s00_axi_arburst[0]),
        .I2(s00_axi_arburst[1]),
        .I3(O4),
        .I4(s00_axi_rready),
        .I5(axi_araddr3),
        .O(\n_0_axi_araddr[7]_i_1 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_araddr[7]_i_10 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arlen[2]),
        .O(\n_0_axi_araddr[7]_i_10 ));
LUT3 #(
    .INIT(8'h21)) 
     \axi_araddr[7]_i_11 
       (.I0(s00_axi_arlen[5]),
        .I1(s00_axi_arburst[0]),
        .I2(p_0_in_0[5]),
        .O(\n_0_axi_araddr[7]_i_11 ));
LUT3 #(
    .INIT(8'h21)) 
     \axi_araddr[7]_i_12 
       (.I0(s00_axi_arlen[4]),
        .I1(s00_axi_arburst[0]),
        .I2(p_0_in_0[4]),
        .O(\n_0_axi_araddr[7]_i_12 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_araddr[7]_i_13 
       (.I0(s00_axi_arlen[3]),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_arburst[0]),
        .I3(p_0_in_0[5]),
        .O(\n_0_axi_araddr[7]_i_13 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_araddr[7]_i_14 
       (.I0(s00_axi_arlen[2]),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_arburst[0]),
        .I3(p_0_in_0[4]),
        .O(\n_0_axi_araddr[7]_i_14 ));
LUT6 #(
    .INIT(64'h88BB88B8888888B8)) 
     \axi_araddr[7]_i_2 
       (.I0(s00_axi_araddr[7]),
        .I1(\n_0_axi_araddr[7]_i_3 ),
        .I2(\n_0_axi_araddr[7]_i_4 ),
        .I3(\n_0_axi_araddr[7]_i_5 ),
        .I4(\n_0_axi_araddr[7]_i_6 ),
        .I5(p_3_out[7]),
        .O(\n_0_axi_araddr[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \axi_araddr[7]_i_3 
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_arvalid),
        .I2(O2),
        .O(\n_0_axi_araddr[7]_i_3 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \axi_araddr[7]_i_4 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[4]),
        .O(\n_0_axi_araddr[7]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \axi_araddr[7]_i_5 
       (.I0(s00_axi_arburst[1]),
        .I1(s00_axi_arburst[0]),
        .O(\n_0_axi_araddr[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \axi_araddr[7]_i_6 
       (.I0(ar_wrap_en),
        .I1(s00_axi_arburst[0]),
        .O(\n_0_axi_araddr[7]_i_6 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_araddr[7]_i_8 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arlen[4]),
        .O(\n_0_axi_araddr[7]_i_8 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_araddr[7]_i_9 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arlen[3]),
        .O(\n_0_axi_araddr[7]_i_9 ));
FDRE \axi_araddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[0]_i_1 ),
        .Q(\n_0_axi_araddr_reg[0] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_araddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[1]_i_1 ),
        .Q(\n_0_axi_araddr_reg[1] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_araddr_reg[1]_i_2 
       (.CI(1'b0),
        .CO({ar_wrap_en,\n_1_axi_araddr_reg[1]_i_2 ,\n_2_axi_araddr_reg[1]_i_2 ,\n_3_axi_araddr_reg[1]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_axi_araddr_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_axi_araddr[1]_i_3 ,\n_0_axi_araddr[1]_i_4 ,\n_0_axi_araddr[1]_i_5 ,\n_0_axi_araddr[1]_i_6 }));
FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[2]_i_1 ),
        .Q(p_0_in_0[0]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[3]_i_1 ),
        .Q(p_0_in_0[1]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_araddr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\n_0_axi_araddr_reg[3]_i_2 ,\n_1_axi_araddr_reg[3]_i_2 ,\n_2_axi_araddr_reg[3]_i_2 ,\n_3_axi_araddr_reg[3]_i_2 }),
        .CYINIT(1'b1),
        .DI({\n_0_axi_araddr[3]_i_3 ,\n_0_axi_araddr[3]_i_4 ,\n_0_axi_araddr[3]_i_5 ,\n_0_axi_araddr[3]_i_6 }),
        .O(p_3_out[3:0]),
        .S({\n_0_axi_araddr[3]_i_7 ,\n_0_axi_araddr[3]_i_8 ,\n_0_axi_araddr[3]_i_9 ,\n_0_axi_araddr[3]_i_10 }));
FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[4]_i_1 ),
        .Q(p_0_in_0[2]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[5]_i_1 ),
        .Q(p_0_in_0[3]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[6]_i_1 ),
        .Q(p_0_in_0[4]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_araddr[7]_i_1 ),
        .D(\n_0_axi_araddr[7]_i_2 ),
        .Q(p_0_in_0[5]),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_araddr_reg[7]_i_7 
       (.CI(\n_0_axi_araddr_reg[3]_i_2 ),
        .CO({\NLW_axi_araddr_reg[7]_i_7_CO_UNCONNECTED [3],\n_1_axi_araddr_reg[7]_i_7 ,\n_2_axi_araddr_reg[7]_i_7 ,\n_3_axi_araddr_reg[7]_i_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,\n_0_axi_araddr[7]_i_8 ,\n_0_axi_araddr[7]_i_9 ,\n_0_axi_araddr[7]_i_10 }),
        .O(p_3_out[7:4]),
        .S({\n_0_axi_araddr[7]_i_11 ,\n_0_axi_araddr[7]_i_12 ,\n_0_axi_araddr[7]_i_13 ,\n_0_axi_araddr[7]_i_14 }));
LUT1 #(
    .INIT(2'h1)) 
     \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg__0[1]),
        .I1(axi_arlen_cntr_reg__0[0]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg__0[2]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .I2(axi_arlen_cntr_reg__0[0]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg__0[3]),
        .I1(axi_arlen_cntr_reg__0[0]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(axi_arlen_cntr_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg__0[2]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .I2(axi_arlen_cntr_reg__0[0]),
        .I3(axi_arlen_cntr_reg__0[3]),
        .I4(axi_arlen_cntr_reg__0[4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg__0[5]),
        .I1(axi_arlen_cntr_reg__0[2]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(axi_arlen_cntr_reg__0[0]),
        .I4(axi_arlen_cntr_reg__0[3]),
        .I5(axi_arlen_cntr_reg__0[4]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \axi_arlen_cntr[6]_i_1 
       (.I0(axi_arlen_cntr_reg__0[6]),
        .I1(\n_0_axi_arlen_cntr[7]_i_4 ),
        .I2(axi_arlen_cntr_reg__0[5]),
        .O(p_0_in[6]));
LUT4 #(
    .INIT(16'h04FF)) 
     \axi_arlen_cntr[7]_i_1 
       (.I0(O2),
        .I1(s00_axi_arvalid),
        .I2(axi_arv_arr_flag),
        .I3(s00_axi_aresetn),
        .O(\n_0_axi_arlen_cntr[7]_i_1 ));
LUT3 #(
    .INIT(8'h80)) 
     \axi_arlen_cntr[7]_i_2 
       (.I0(axi_araddr3),
        .I1(O4),
        .I2(s00_axi_rready),
        .O(axi_araddr1));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \axi_arlen_cntr[7]_i_3 
       (.I0(axi_arlen_cntr_reg__0[7]),
        .I1(axi_arlen_cntr_reg__0[5]),
        .I2(\n_0_axi_arlen_cntr[7]_i_4 ),
        .I3(axi_arlen_cntr_reg__0[6]),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg__0[4]),
        .I1(axi_arlen_cntr_reg__0[3]),
        .I2(axi_arlen_cntr_reg__0[0]),
        .I3(axi_arlen_cntr_reg__0[1]),
        .I4(axi_arlen_cntr_reg__0[2]),
        .O(\n_0_axi_arlen_cntr[7]_i_4 ));
FDRE \axi_arlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[0]),
        .Q(axi_arlen_cntr_reg__0[0]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[1]),
        .Q(axi_arlen_cntr_reg__0[1]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[2]),
        .Q(axi_arlen_cntr_reg__0[2]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[3]),
        .Q(axi_arlen_cntr_reg__0[3]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[4]),
        .Q(axi_arlen_cntr_reg__0[4]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[5]),
        .Q(axi_arlen_cntr_reg__0[5]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[6]),
        .Q(axi_arlen_cntr_reg__0[6]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
FDRE \axi_arlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(p_0_in[7]),
        .Q(axi_arlen_cntr_reg__0[7]),
        .R(\n_0_axi_arlen_cntr[7]_i_1 ));
LUT6 #(
    .INIT(64'h888888A800000020)) 
     axi_arready_i_1
       (.I0(s00_axi_aresetn),
        .I1(O2),
        .I2(s00_axi_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_awv_awr_flag),
        .I5(n_0_axi_arready_i_2),
        .O(n_0_axi_arready_i_1));
LUT6 #(
    .INIT(64'h0000000800000000)) 
     axi_arready_i_2
       (.I0(O4),
        .I1(s00_axi_rready),
        .I2(n_0_axi_arready_i_3),
        .I3(n_0_axi_arready_i_4),
        .I4(n_0_axi_arready_i_5),
        .I5(n_0_axi_arready_i_6),
        .O(n_0_axi_arready_i_2));
LUT4 #(
    .INIT(16'h6FF6)) 
     axi_arready_i_3
       (.I0(s00_axi_arlen[5]),
        .I1(axi_arlen_cntr_reg__0[5]),
        .I2(s00_axi_arlen[4]),
        .I3(axi_arlen_cntr_reg__0[4]),
        .O(n_0_axi_arready_i_3));
LUT4 #(
    .INIT(16'h6FF6)) 
     axi_arready_i_4
       (.I0(s00_axi_arlen[3]),
        .I1(axi_arlen_cntr_reg__0[3]),
        .I2(s00_axi_arlen[2]),
        .I3(axi_arlen_cntr_reg__0[2]),
        .O(n_0_axi_arready_i_4));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h6FF6)) 
     axi_arready_i_5
       (.I0(s00_axi_arlen[1]),
        .I1(axi_arlen_cntr_reg__0[1]),
        .I2(s00_axi_arlen[0]),
        .I3(axi_arlen_cntr_reg__0[0]),
        .O(n_0_axi_arready_i_5));
LUT4 #(
    .INIT(16'h9009)) 
     axi_arready_i_6
       (.I0(s00_axi_arlen[7]),
        .I1(axi_arlen_cntr_reg__0[7]),
        .I2(s00_axi_arlen[6]),
        .I3(axi_arlen_cntr_reg__0[6]),
        .O(n_0_axi_arready_i_6));
FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_arready_i_1),
        .Q(O2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h4444000044440C00)) 
     axi_arv_arr_flag_i_1
       (.I0(n_0_axi_arready_i_2),
        .I1(s00_axi_aresetn),
        .I2(O2),
        .I3(s00_axi_arvalid),
        .I4(axi_arv_arr_flag),
        .I5(axi_awv_awr_flag),
        .O(n_0_axi_arv_arr_flag_i_1));
FDRE axi_arv_arr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_arv_arr_flag_i_1),
        .Q(axi_arv_arr_flag),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBBB8888888888888)) 
     \axi_awaddr[0]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(n_0_axi_awready_i_2),
        .I2(s00_axi_awburst[0]),
        .I3(p_0_in__1),
        .I4(p_7_out[0]),
        .I5(s00_axi_awburst[1]),
        .O(p_2_in[0]));
LUT6 #(
    .INIT(64'hBBB8888888888888)) 
     \axi_awaddr[1]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(n_0_axi_awready_i_2),
        .I2(s00_axi_awburst[0]),
        .I3(p_0_in__1),
        .I4(p_7_out[1]),
        .I5(s00_axi_awburst[1]),
        .O(p_2_in[1]));
LUT1 #(
    .INIT(2'h1)) 
     \axi_awaddr[1]_i_3 
       (.I0(s00_axi_awlen[7]),
        .O(\n_0_axi_awaddr[1]_i_3 ));
LUT5 #(
    .INIT(32'h0000DD0D)) 
     \axi_awaddr[1]_i_4 
       (.I0(s00_axi_awlen[5]),
        .I1(\n_0_axi_awaddr_reg[7] ),
        .I2(s00_axi_awlen[4]),
        .I3(\n_0_axi_awaddr_reg[6] ),
        .I4(s00_axi_awlen[6]),
        .O(\n_0_axi_awaddr[1]_i_4 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \axi_awaddr[1]_i_5 
       (.I0(s00_axi_awlen[1]),
        .I1(\n_0_axi_awaddr_reg[3] ),
        .I2(s00_axi_awlen[2]),
        .I3(\n_0_axi_awaddr_reg[4] ),
        .I4(s00_axi_awlen[3]),
        .I5(\n_0_axi_awaddr_reg[5] ),
        .O(\n_0_axi_awaddr[1]_i_5 ));
LUT2 #(
    .INIT(4'hB)) 
     \axi_awaddr[1]_i_6 
       (.I0(\n_0_axi_awaddr_reg[2] ),
        .I1(s00_axi_awlen[0]),
        .O(\n_0_axi_awaddr[1]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFFFB0008)) 
     \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(O1),
        .I3(axi_awv_awr_flag),
        .I4(\n_0_axi_awaddr[2]_i_2 ),
        .O(p_2_in[2]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hB080F4F7)) 
     \axi_awaddr[2]_i_2 
       (.I0(s00_axi_awburst[1]),
        .I1(s00_axi_awburst[0]),
        .I2(p_7_out[2]),
        .I3(p_0_in__1),
        .I4(\n_0_axi_awaddr_reg[2] ),
        .O(\n_0_axi_awaddr[2]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[3]),
        .I1(n_0_axi_awready_i_2),
        .I2(\n_0_axi_awaddr_reg[2] ),
        .I3(\n_0_axi_awaddr_reg[3] ),
        .I4(\n_0_axi_awaddr[6]_i_3 ),
        .I5(p_7_out[3]),
        .O(p_2_in[3]));
LUT3 #(
    .INIT(8'hD1)) 
     \axi_awaddr[3]_i_10 
       (.I0(\n_0_axi_awaddr_reg[0] ),
        .I1(s00_axi_awburst[0]),
        .I2(\n_0_axi_awaddr_reg[2] ),
        .O(\n_0_axi_awaddr[3]_i_10 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_awaddr[3]_i_3 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awlen[1]),
        .O(\n_0_axi_awaddr[3]_i_3 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_awaddr[3]_i_4 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awlen[0]),
        .O(\n_0_axi_awaddr[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_awaddr[3]_i_5 
       (.I0(s00_axi_awburst[0]),
        .O(\n_0_axi_awaddr[3]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_awaddr[3]_i_6 
       (.I0(s00_axi_awburst[0]),
        .O(\n_0_axi_awaddr[3]_i_6 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_awaddr[3]_i_7 
       (.I0(s00_axi_awlen[1]),
        .I1(\n_0_axi_awaddr_reg[3] ),
        .I2(s00_axi_awburst[0]),
        .I3(\n_0_axi_awaddr_reg[5] ),
        .O(\n_0_axi_awaddr[3]_i_7 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_awaddr[3]_i_8 
       (.I0(s00_axi_awlen[0]),
        .I1(\n_0_axi_awaddr_reg[2] ),
        .I2(s00_axi_awburst[0]),
        .I3(\n_0_axi_awaddr_reg[4] ),
        .O(\n_0_axi_awaddr[3]_i_8 ));
LUT3 #(
    .INIT(8'hD1)) 
     \axi_awaddr[3]_i_9 
       (.I0(\n_0_axi_awaddr_reg[1] ),
        .I1(s00_axi_awburst[0]),
        .I2(\n_0_axi_awaddr_reg[3] ),
        .O(\n_0_axi_awaddr[3]_i_9 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[4]),
        .I1(n_0_axi_awready_i_2),
        .I2(\n_0_axi_awaddr_reg[4] ),
        .I3(\n_0_axi_awaddr[4]_i_2 ),
        .I4(\n_0_axi_awaddr[6]_i_3 ),
        .I5(p_7_out[4]),
        .O(p_2_in[4]));
LUT2 #(
    .INIT(4'h8)) 
     \axi_awaddr[4]_i_2 
       (.I0(\n_0_axi_awaddr_reg[2] ),
        .I1(\n_0_axi_awaddr_reg[3] ),
        .O(\n_0_axi_awaddr[4]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_awaddr[5]_i_1 
       (.I0(s00_axi_awaddr[5]),
        .I1(n_0_axi_awready_i_2),
        .I2(\n_0_axi_awaddr_reg[5] ),
        .I3(\n_0_axi_awaddr[5]_i_2 ),
        .I4(\n_0_axi_awaddr[6]_i_3 ),
        .I5(p_7_out[5]),
        .O(p_2_in[5]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \axi_awaddr[5]_i_2 
       (.I0(\n_0_axi_awaddr_reg[4] ),
        .I1(\n_0_axi_awaddr_reg[3] ),
        .I2(\n_0_axi_awaddr_reg[2] ),
        .O(\n_0_axi_awaddr[5]_i_2 ));
LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
     \axi_awaddr[6]_i_1 
       (.I0(s00_axi_awaddr[6]),
        .I1(n_0_axi_awready_i_2),
        .I2(\n_0_axi_awaddr_reg[6] ),
        .I3(\n_0_axi_awaddr[6]_i_2 ),
        .I4(\n_0_axi_awaddr[6]_i_3 ),
        .I5(p_7_out[6]),
        .O(p_2_in[6]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \axi_awaddr[6]_i_2 
       (.I0(\n_0_axi_awaddr_reg[5] ),
        .I1(\n_0_axi_awaddr_reg[2] ),
        .I2(\n_0_axi_awaddr_reg[3] ),
        .I3(\n_0_axi_awaddr_reg[4] ),
        .O(\n_0_axi_awaddr[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h1D)) 
     \axi_awaddr[6]_i_3 
       (.I0(p_0_in__1),
        .I1(s00_axi_awburst[0]),
        .I2(s00_axi_awburst[1]),
        .O(\n_0_axi_awaddr[6]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_awaddr[7]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\n_0_axi_awaddr[7]_i_1 ));
LUT4 #(
    .INIT(16'h44D4)) 
     \axi_awaddr[7]_i_10 
       (.I0(axi_awlen_cntr_reg__0[5]),
        .I1(s00_axi_awlen[5]),
        .I2(s00_axi_awlen[4]),
        .I3(axi_awlen_cntr_reg__0[4]),
        .O(\n_0_axi_awaddr[7]_i_10 ));
LUT4 #(
    .INIT(16'h44D4)) 
     \axi_awaddr[7]_i_11 
       (.I0(axi_awlen_cntr_reg__0[3]),
        .I1(s00_axi_awlen[3]),
        .I2(s00_axi_awlen[2]),
        .I3(axi_awlen_cntr_reg__0[2]),
        .O(\n_0_axi_awaddr[7]_i_11 ));
LUT4 #(
    .INIT(16'h44D4)) 
     \axi_awaddr[7]_i_12 
       (.I0(axi_awlen_cntr_reg__0[1]),
        .I1(s00_axi_awlen[1]),
        .I2(s00_axi_awlen[0]),
        .I3(axi_awlen_cntr_reg__0[0]),
        .O(\n_0_axi_awaddr[7]_i_12 ));
LUT4 #(
    .INIT(16'h9009)) 
     \axi_awaddr[7]_i_13 
       (.I0(s00_axi_awlen[7]),
        .I1(axi_awlen_cntr_reg__0[7]),
        .I2(s00_axi_awlen[6]),
        .I3(axi_awlen_cntr_reg__0[6]),
        .O(\n_0_axi_awaddr[7]_i_13 ));
LUT4 #(
    .INIT(16'h9009)) 
     \axi_awaddr[7]_i_14 
       (.I0(s00_axi_awlen[5]),
        .I1(axi_awlen_cntr_reg__0[5]),
        .I2(s00_axi_awlen[4]),
        .I3(axi_awlen_cntr_reg__0[4]),
        .O(\n_0_axi_awaddr[7]_i_14 ));
LUT4 #(
    .INIT(16'h9009)) 
     \axi_awaddr[7]_i_15 
       (.I0(s00_axi_awlen[3]),
        .I1(axi_awlen_cntr_reg__0[3]),
        .I2(s00_axi_awlen[2]),
        .I3(axi_awlen_cntr_reg__0[2]),
        .O(\n_0_axi_awaddr[7]_i_15 ));
LUT4 #(
    .INIT(16'h9009)) 
     \axi_awaddr[7]_i_16 
       (.I0(s00_axi_awlen[1]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .I2(s00_axi_awlen[0]),
        .I3(axi_awlen_cntr_reg__0[0]),
        .O(\n_0_axi_awaddr[7]_i_16 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_awaddr[7]_i_17 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awlen[4]),
        .O(\n_0_axi_awaddr[7]_i_17 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_awaddr[7]_i_18 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awlen[3]),
        .O(\n_0_axi_awaddr[7]_i_18 ));
LUT2 #(
    .INIT(4'h1)) 
     \axi_awaddr[7]_i_19 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awlen[2]),
        .O(\n_0_axi_awaddr[7]_i_19 ));
LUT6 #(
    .INIT(64'hEAEAEAAAAAAAAAAA)) 
     \axi_awaddr[7]_i_2 
       (.I0(n_0_axi_awready_i_2),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awburst[0]),
        .I4(s00_axi_awburst[1]),
        .I5(axi_awaddr3),
        .O(\n_0_axi_awaddr[7]_i_2 ));
LUT3 #(
    .INIT(8'h21)) 
     \axi_awaddr[7]_i_20 
       (.I0(s00_axi_awlen[5]),
        .I1(s00_axi_awburst[0]),
        .I2(\n_0_axi_awaddr_reg[7] ),
        .O(\n_0_axi_awaddr[7]_i_20 ));
LUT3 #(
    .INIT(8'h21)) 
     \axi_awaddr[7]_i_21 
       (.I0(s00_axi_awlen[4]),
        .I1(s00_axi_awburst[0]),
        .I2(\n_0_axi_awaddr_reg[6] ),
        .O(\n_0_axi_awaddr[7]_i_21 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_awaddr[7]_i_22 
       (.I0(s00_axi_awlen[3]),
        .I1(\n_0_axi_awaddr_reg[5] ),
        .I2(s00_axi_awburst[0]),
        .I3(\n_0_axi_awaddr_reg[7] ),
        .O(\n_0_axi_awaddr[7]_i_22 ));
LUT4 #(
    .INIT(16'hF909)) 
     \axi_awaddr[7]_i_23 
       (.I0(s00_axi_awlen[2]),
        .I1(\n_0_axi_awaddr_reg[4] ),
        .I2(s00_axi_awburst[0]),
        .I3(\n_0_axi_awaddr_reg[6] ),
        .O(\n_0_axi_awaddr[7]_i_23 ));
LUT6 #(
    .INIT(64'h88BB88B8888888B8)) 
     \axi_awaddr[7]_i_3 
       (.I0(s00_axi_awaddr[7]),
        .I1(n_0_axi_awready_i_2),
        .I2(\n_0_axi_awaddr[7]_i_5 ),
        .I3(\n_0_axi_awaddr[7]_i_6 ),
        .I4(\n_0_axi_awaddr[7]_i_7 ),
        .I5(p_7_out[7]),
        .O(p_2_in[7]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \axi_awaddr[7]_i_5 
       (.I0(\n_0_axi_awaddr_reg[7] ),
        .I1(\n_0_axi_awaddr_reg[5] ),
        .I2(\n_0_axi_awaddr_reg[2] ),
        .I3(\n_0_axi_awaddr_reg[3] ),
        .I4(\n_0_axi_awaddr_reg[4] ),
        .I5(\n_0_axi_awaddr_reg[6] ),
        .O(\n_0_axi_awaddr[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \axi_awaddr[7]_i_6 
       (.I0(s00_axi_awburst[1]),
        .I1(s00_axi_awburst[0]),
        .O(\n_0_axi_awaddr[7]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \axi_awaddr[7]_i_7 
       (.I0(p_0_in__1),
        .I1(s00_axi_awburst[0]),
        .O(\n_0_axi_awaddr[7]_i_7 ));
LUT4 #(
    .INIT(16'h44D4)) 
     \axi_awaddr[7]_i_9 
       (.I0(axi_awlen_cntr_reg__0[7]),
        .I1(s00_axi_awlen[7]),
        .I2(s00_axi_awlen[6]),
        .I3(axi_awlen_cntr_reg__0[6]),
        .O(\n_0_axi_awaddr[7]_i_9 ));
FDRE \axi_awaddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[0]),
        .Q(\n_0_axi_awaddr_reg[0] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_awaddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[1]),
        .Q(\n_0_axi_awaddr_reg[1] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_awaddr_reg[1]_i_2 
       (.CI(1'b0),
        .CO({p_0_in__1,\n_1_axi_awaddr_reg[1]_i_2 ,\n_2_axi_awaddr_reg[1]_i_2 ,\n_3_axi_awaddr_reg[1]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_axi_awaddr_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_axi_awaddr[1]_i_3 ,\n_0_axi_awaddr[1]_i_4 ,\n_0_axi_awaddr[1]_i_5 ,\n_0_axi_awaddr[1]_i_6 }));
FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[2]),
        .Q(\n_0_axi_awaddr_reg[2] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[3]),
        .Q(\n_0_axi_awaddr_reg[3] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_awaddr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\n_0_axi_awaddr_reg[3]_i_2 ,\n_1_axi_awaddr_reg[3]_i_2 ,\n_2_axi_awaddr_reg[3]_i_2 ,\n_3_axi_awaddr_reg[3]_i_2 }),
        .CYINIT(1'b1),
        .DI({\n_0_axi_awaddr[3]_i_3 ,\n_0_axi_awaddr[3]_i_4 ,\n_0_axi_awaddr[3]_i_5 ,\n_0_axi_awaddr[3]_i_6 }),
        .O(p_7_out[3:0]),
        .S({\n_0_axi_awaddr[3]_i_7 ,\n_0_axi_awaddr[3]_i_8 ,\n_0_axi_awaddr[3]_i_9 ,\n_0_axi_awaddr[3]_i_10 }));
FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[4]),
        .Q(\n_0_axi_awaddr_reg[4] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[5]),
        .Q(\n_0_axi_awaddr_reg[5] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[6]),
        .Q(\n_0_axi_awaddr_reg[6] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\n_0_axi_awaddr[7]_i_2 ),
        .D(p_2_in[7]),
        .Q(\n_0_axi_awaddr_reg[7] ),
        .R(\n_0_axi_awaddr[7]_i_1 ));
CARRY4 \axi_awaddr_reg[7]_i_4 
       (.CI(1'b0),
        .CO({axi_awaddr3,\n_1_axi_awaddr_reg[7]_i_4 ,\n_2_axi_awaddr_reg[7]_i_4 ,\n_3_axi_awaddr_reg[7]_i_4 }),
        .CYINIT(1'b1),
        .DI({\n_0_axi_awaddr[7]_i_9 ,\n_0_axi_awaddr[7]_i_10 ,\n_0_axi_awaddr[7]_i_11 ,\n_0_axi_awaddr[7]_i_12 }),
        .O(\NLW_axi_awaddr_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\n_0_axi_awaddr[7]_i_13 ,\n_0_axi_awaddr[7]_i_14 ,\n_0_axi_awaddr[7]_i_15 ,\n_0_axi_awaddr[7]_i_16 }));
CARRY4 \axi_awaddr_reg[7]_i_8 
       (.CI(\n_0_axi_awaddr_reg[3]_i_2 ),
        .CO({\NLW_axi_awaddr_reg[7]_i_8_CO_UNCONNECTED [3],\n_1_axi_awaddr_reg[7]_i_8 ,\n_2_axi_awaddr_reg[7]_i_8 ,\n_3_axi_awaddr_reg[7]_i_8 }),
        .CYINIT(1'b0),
        .DI({1'b0,\n_0_axi_awaddr[7]_i_17 ,\n_0_axi_awaddr[7]_i_18 ,\n_0_axi_awaddr[7]_i_19 }),
        .O(p_7_out[7:4]),
        .S({\n_0_axi_awaddr[7]_i_20 ,\n_0_axi_awaddr[7]_i_21 ,\n_0_axi_awaddr[7]_i_22 ,\n_0_axi_awaddr[7]_i_23 }));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg__0[0]),
        .O(\n_0_axi_awlen_cntr[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg__0[1]),
        .I1(axi_awlen_cntr_reg__0[0]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg__0[2]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .I2(axi_awlen_cntr_reg__0[0]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg__0[3]),
        .I1(axi_awlen_cntr_reg__0[0]),
        .I2(axi_awlen_cntr_reg__0[1]),
        .I3(axi_awlen_cntr_reg__0[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg__0[2]),
        .I1(axi_awlen_cntr_reg__0[1]),
        .I2(axi_awlen_cntr_reg__0[0]),
        .I3(axi_awlen_cntr_reg__0[3]),
        .I4(axi_awlen_cntr_reg__0[4]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg__0[5]),
        .I1(axi_awlen_cntr_reg__0[2]),
        .I2(axi_awlen_cntr_reg__0[1]),
        .I3(axi_awlen_cntr_reg__0[0]),
        .I4(axi_awlen_cntr_reg__0[3]),
        .I5(axi_awlen_cntr_reg__0[4]),
        .O(p_0_in__0[5]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \axi_awlen_cntr[6]_i_1 
       (.I0(axi_awlen_cntr_reg__0[6]),
        .I1(\n_0_axi_awlen_cntr[7]_i_4 ),
        .I2(axi_awlen_cntr_reg__0[5]),
        .O(p_0_in__0[6]));
LUT4 #(
    .INIT(16'h10FF)) 
     \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awv_awr_flag),
        .I1(O1),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_aresetn),
        .O(\n_0_axi_awlen_cntr[7]_i_1 ));
LUT3 #(
    .INIT(8'h80)) 
     \axi_awlen_cntr[7]_i_2 
       (.I0(axi_awaddr3),
        .I1(O3),
        .I2(s00_axi_wvalid),
        .O(axi_awaddr1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \axi_awlen_cntr[7]_i_3 
       (.I0(axi_awlen_cntr_reg__0[7]),
        .I1(axi_awlen_cntr_reg__0[5]),
        .I2(\n_0_axi_awlen_cntr[7]_i_4 ),
        .I3(axi_awlen_cntr_reg__0[6]),
        .O(p_0_in__0[7]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg__0[4]),
        .I1(axi_awlen_cntr_reg__0[3]),
        .I2(axi_awlen_cntr_reg__0[0]),
        .I3(axi_awlen_cntr_reg__0[1]),
        .I4(axi_awlen_cntr_reg__0[2]),
        .O(\n_0_axi_awlen_cntr[7]_i_4 ));
FDRE \axi_awlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(\n_0_axi_awlen_cntr[0]_i_1 ),
        .Q(axi_awlen_cntr_reg__0[0]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[1]),
        .Q(axi_awlen_cntr_reg__0[1]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[2]),
        .Q(axi_awlen_cntr_reg__0[2]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[3]),
        .Q(axi_awlen_cntr_reg__0[3]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[4]),
        .Q(axi_awlen_cntr_reg__0[4]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[5]),
        .Q(axi_awlen_cntr_reg__0[5]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[6]),
        .Q(axi_awlen_cntr_reg__0[6]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
FDRE \axi_awlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr1),
        .D(p_0_in__0[7]),
        .Q(axi_awlen_cntr_reg__0[7]),
        .R(\n_0_axi_awlen_cntr[7]_i_1 ));
LUT6 #(
    .INIT(64'hF444000044440000)) 
     axi_awready_i_1
       (.I0(axi_arv_arr_flag),
        .I1(n_0_axi_awready_i_2),
        .I2(s00_axi_wlast),
        .I3(O3),
        .I4(s00_axi_aresetn),
        .I5(O1),
        .O(n_0_axi_awready_i_1));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h02)) 
     axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(O1),
        .I2(axi_awv_awr_flag),
        .O(n_0_axi_awready_i_2));
FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_awready_i_1),
        .Q(O1),
        .R(1'b0));
LUT6 #(
    .INIT(64'h40F0F0F040404040)) 
     axi_awv_awr_flag_i_1
       (.I0(axi_arv_arr_flag),
        .I1(n_0_axi_awready_i_2),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_wlast),
        .I4(O3),
        .I5(axi_awv_awr_flag),
        .O(n_0_axi_awv_awr_flag_i_1));
FDRE axi_awv_awr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_awv_awr_flag_i_1),
        .Q(axi_awv_awr_flag),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00008000FF008000)) 
     axi_bvalid_i_1
       (.I0(n_0_axi_bvalid_i_2),
        .I1(axi_awv_awr_flag),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_aresetn),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(n_0_axi_bvalid_i_1));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h8)) 
     axi_bvalid_i_2
       (.I0(s00_axi_wlast),
        .I1(O3),
        .O(n_0_axi_bvalid_i_2));
FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bvalid_i_1),
        .Q(s00_axi_bvalid),
        .R(1'b0));
LUT6 #(
    .INIT(64'h007000FF007000F0)) 
     axi_rlast_i_1
       (.I0(axi_araddr3),
        .I1(O4),
        .I2(n_0_axi_rlast_i_3),
        .I3(\n_0_axi_arlen_cntr[7]_i_1 ),
        .I4(s00_axi_rready),
        .I5(s00_axi_rlast),
        .O(n_0_axi_rlast_i_1));
LUT4 #(
    .INIT(16'h9009)) 
     axi_rlast_i_10
       (.I0(axi_arlen_cntr_reg__0[2]),
        .I1(s00_axi_arlen[2]),
        .I2(axi_arlen_cntr_reg__0[3]),
        .I3(s00_axi_arlen[3]),
        .O(n_0_axi_rlast_i_10));
LUT4 #(
    .INIT(16'h9009)) 
     axi_rlast_i_11
       (.I0(axi_arlen_cntr_reg__0[0]),
        .I1(s00_axi_arlen[0]),
        .I2(axi_arlen_cntr_reg__0[1]),
        .I3(s00_axi_arlen[1]),
        .O(n_0_axi_rlast_i_11));
LUT6 #(
    .INIT(64'h0000000001000000)) 
     axi_rlast_i_3
       (.I0(n_0_axi_arready_i_3),
        .I1(n_0_axi_arready_i_4),
        .I2(n_0_axi_arready_i_5),
        .I3(n_0_axi_arready_i_6),
        .I4(axi_arv_arr_flag),
        .I5(s00_axi_rlast),
        .O(n_0_axi_rlast_i_3));
LUT4 #(
    .INIT(16'h44D4)) 
     axi_rlast_i_4
       (.I0(axi_arlen_cntr_reg__0[7]),
        .I1(s00_axi_arlen[7]),
        .I2(s00_axi_arlen[6]),
        .I3(axi_arlen_cntr_reg__0[6]),
        .O(n_0_axi_rlast_i_4));
LUT4 #(
    .INIT(16'h44D4)) 
     axi_rlast_i_5
       (.I0(axi_arlen_cntr_reg__0[5]),
        .I1(s00_axi_arlen[5]),
        .I2(s00_axi_arlen[4]),
        .I3(axi_arlen_cntr_reg__0[4]),
        .O(n_0_axi_rlast_i_5));
LUT4 #(
    .INIT(16'h44D4)) 
     axi_rlast_i_6
       (.I0(axi_arlen_cntr_reg__0[3]),
        .I1(s00_axi_arlen[3]),
        .I2(s00_axi_arlen[2]),
        .I3(axi_arlen_cntr_reg__0[2]),
        .O(n_0_axi_rlast_i_6));
LUT4 #(
    .INIT(16'h44D4)) 
     axi_rlast_i_7
       (.I0(axi_arlen_cntr_reg__0[1]),
        .I1(s00_axi_arlen[1]),
        .I2(s00_axi_arlen[0]),
        .I3(axi_arlen_cntr_reg__0[0]),
        .O(n_0_axi_rlast_i_7));
LUT4 #(
    .INIT(16'h9009)) 
     axi_rlast_i_8
       (.I0(s00_axi_arlen[7]),
        .I1(axi_arlen_cntr_reg__0[7]),
        .I2(s00_axi_arlen[6]),
        .I3(axi_arlen_cntr_reg__0[6]),
        .O(n_0_axi_rlast_i_8));
LUT4 #(
    .INIT(16'h9009)) 
     axi_rlast_i_9
       (.I0(axi_arlen_cntr_reg__0[4]),
        .I1(s00_axi_arlen[4]),
        .I2(axi_arlen_cntr_reg__0[5]),
        .I3(s00_axi_arlen[5]),
        .O(n_0_axi_rlast_i_9));
FDRE axi_rlast_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rlast_i_1),
        .Q(s00_axi_rlast),
        .R(1'b0));
CARRY4 axi_rlast_reg_i_2
       (.CI(1'b0),
        .CO({axi_araddr3,n_1_axi_rlast_reg_i_2,n_2_axi_rlast_reg_i_2,n_3_axi_rlast_reg_i_2}),
        .CYINIT(1'b1),
        .DI({n_0_axi_rlast_i_4,n_0_axi_rlast_i_5,n_0_axi_rlast_i_6,n_0_axi_rlast_i_7}),
        .O(NLW_axi_rlast_reg_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_axi_rlast_i_8,n_0_axi_rlast_i_9,n_0_axi_rlast_i_10,n_0_axi_rlast_i_11}));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h7400)) 
     axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(O4),
        .I2(axi_arv_arr_flag),
        .I3(s00_axi_aresetn),
        .O(n_0_axi_rvalid_i_1));
FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_i_1),
        .Q(O4),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00F08080)) 
     axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awv_awr_flag),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_wlast),
        .I4(O3),
        .O(n_0_axi_wready_i_1));
FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wready_i_1),
        .Q(O3),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[0]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [0]),
        .O(s00_axi_rdata[0]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[10]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [10]),
        .O(s00_axi_rdata[10]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[11]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [11]),
        .O(s00_axi_rdata[11]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[12]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [12]),
        .O(s00_axi_rdata[12]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[13]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [13]),
        .O(s00_axi_rdata[13]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[14]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [14]),
        .O(s00_axi_rdata[14]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[15]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [15]),
        .O(s00_axi_rdata[15]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[16]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [16]),
        .O(s00_axi_rdata[16]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[17]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [17]),
        .O(s00_axi_rdata[17]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[18]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [18]),
        .O(s00_axi_rdata[18]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[19]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [19]),
        .O(s00_axi_rdata[19]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[1]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [1]),
        .O(s00_axi_rdata[1]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[20]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [20]),
        .O(s00_axi_rdata[20]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[21]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [21]),
        .O(s00_axi_rdata[21]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[22]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [22]),
        .O(s00_axi_rdata[22]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[23]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [23]),
        .O(s00_axi_rdata[23]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[24]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [24]),
        .O(s00_axi_rdata[24]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[25]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [25]),
        .O(s00_axi_rdata[25]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[26]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [26]),
        .O(s00_axi_rdata[26]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[27]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [27]),
        .O(s00_axi_rdata[27]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[28]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [28]),
        .O(s00_axi_rdata[28]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[29]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [29]),
        .O(s00_axi_rdata[29]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[2]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [2]),
        .O(s00_axi_rdata[2]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[30]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [30]),
        .O(s00_axi_rdata[30]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[31]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [31]),
        .O(s00_axi_rdata[31]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[3]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [3]),
        .O(s00_axi_rdata[3]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[4]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [4]),
        .O(s00_axi_rdata[4]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[5]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [5]),
        .O(s00_axi_rdata[5]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[6]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [6]),
        .O(s00_axi_rdata[6]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[7]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [7]),
        .O(s00_axi_rdata[7]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[8]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [8]),
        .O(s00_axi_rdata[8]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \s00_axi_rdata[9]_INST_0 
       (.I0(O4),
        .I1(\mem_data_out[0]_0 [9]),
        .O(s00_axi_rdata[9]));
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
