// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jul 28 16:08:04 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/UV/FPGA/VERIFY/vry_AXI_DMA/vry_AXI_DMA/vry_AXI_DMA.srcs/sources_1/ip/AXI_FIFO_BRIDGE/AXI_FIFO_BRIDGE_funcsim.v
// Design      : AXI_FIFO_BRIDGE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axi_full_master_v1_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "AXI_FIFO_BRIDGE,axi_full_master_v1_0,{}" *) (* CORE_GENERATION_INFO = "AXI_FIFO_BRIDGE,axi_full_master_v1_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_full_master,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M00_AXI_TARGET_SLAVE_BASE_ADDR=0x40000000,C_M00_AXI_BURST_LEN=16,C_M00_AXI_ID_WIDTH=1,C_M00_AXI_ADDR_WIDTH=32,C_M00_AXI_DATA_WIDTH=32,C_M00_AXI_AWUSER_WIDTH=1,C_M00_AXI_ARUSER_WIDTH=1,C_M00_AXI_WUSER_WIDTH=1,C_M00_AXI_RUSER_WIDTH=1,C_M00_AXI_BUSER_WIDTH=1}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module AXI_FIFO_BRIDGE
   (m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error);
  output [0:0]m00_axi_awid;
  output [31:0]m00_axi_awaddr;
  output [7:0]m00_axi_awlen;
  output [2:0]m00_axi_awsize;
  output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  output [3:0]m00_axi_awcache;
  output [2:0]m00_axi_awprot;
  output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  input [0:0]m00_axi_bid;
  input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  output [0:0]m00_axi_arid;
  output [31:0]m00_axi_araddr;
  output [7:0]m00_axi_arlen;
  output [2:0]m00_axi_arsize;
  output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  output [3:0]m00_axi_arcache;
  output [2:0]m00_axi_arprot;
  output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  input [0:0]m00_axi_rid;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:6]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:6]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31:6] = \^m00_axi_araddr [31:6];
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const1> ;
  assign m00_axi_arlen[2] = \<const1> ;
  assign m00_axi_arlen[1] = \<const1> ;
  assign m00_axi_arlen[0] = \<const1> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_awaddr[31:6] = \^m00_axi_awaddr [31:6];
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const1> ;
  assign m00_axi_awlen[2] = \<const1> ;
  assign m00_axi_awlen[1] = \<const1> ;
  assign m00_axi_awlen[0] = \<const1> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
AXI_FIFO_BRIDGE_axi_full_master_v1_0 inst
       (.M_AXI_BREADY(m00_axi_bready),
        .O1(m00_axi_rready),
        .O2(m00_axi_arvalid),
        .O3(m00_axi_awvalid),
        .O4(m00_axi_wvalid),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp[1]),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp[1]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "axi_full_master_v1_0" *) 
module AXI_FIFO_BRIDGE_axi_full_master_v1_0
   (M_AXI_BREADY,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    O1,
    O2,
    O3,
    O4,
    m00_axi_wlast,
    m00_axi_error,
    m00_axi_txn_done,
    m00_axi_bvalid,
    m00_axi_init_axi_txn,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_arready,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_rdata,
    m00_axi_rlast,
    m00_axi_bresp,
    m00_axi_rresp);
  output M_AXI_BREADY;
  output [25:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [25:0]m00_axi_araddr;
  output O1;
  output O2;
  output O3;
  output O4;
  output m00_axi_wlast;
  output m00_axi_error;
  output m00_axi_txn_done;
  input m00_axi_bvalid;
  input m00_axi_init_axi_txn;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_arready;
  input m00_axi_awready;
  input m00_axi_wready;
  input [31:0]m00_axi_rdata;
  input m00_axi_rlast;
  input [0:0]m00_axi_bresp;
  input [0:0]m00_axi_rresp;

  wire M_AXI_BREADY;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;

AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI axi_full_master_v1_0_M00_AXI_inst
       (.M_AXI_BREADY(M_AXI_BREADY),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "axi_full_master_v1_0_M00_AXI" *) 
module AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI
   (M_AXI_BREADY,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    O1,
    O2,
    O3,
    O4,
    m00_axi_wlast,
    m00_axi_error,
    m00_axi_txn_done,
    m00_axi_bvalid,
    m00_axi_init_axi_txn,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_rvalid,
    m00_axi_arready,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_rdata,
    m00_axi_rlast,
    m00_axi_bresp,
    m00_axi_rresp);
  output M_AXI_BREADY;
  output [25:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [25:0]m00_axi_araddr;
  output O1;
  output O2;
  output O3;
  output O4;
  output m00_axi_wlast;
  output m00_axi_error;
  output m00_axi_txn_done;
  input m00_axi_bvalid;
  input m00_axi_init_axi_txn;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_rvalid;
  input m00_axi_arready;
  input m00_axi_awready;
  input m00_axi_wready;
  input [31:0]m00_axi_rdata;
  input m00_axi_rlast;
  input [0:0]m00_axi_bresp;
  input [0:0]m00_axi_rresp;

  wire M_AXI_BREADY;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [31:29]axi_araddr_reg;
  wire axi_arvalid0;
  wire [31:29]axi_awaddr_reg;
  wire axi_awvalid0;
  wire axi_awvalid1;
  wire error_reg;
  wire [31:0]expected_rdata_reg;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [1:0]mst_exec_state;
  wire n_0_ERROR_i_1;
  wire \n_0_axi_araddr[13]_i_2 ;
  wire \n_0_axi_araddr[13]_i_3 ;
  wire \n_0_axi_araddr[13]_i_4 ;
  wire \n_0_axi_araddr[13]_i_5 ;
  wire \n_0_axi_araddr[17]_i_2 ;
  wire \n_0_axi_araddr[17]_i_3 ;
  wire \n_0_axi_araddr[17]_i_4 ;
  wire \n_0_axi_araddr[17]_i_5 ;
  wire \n_0_axi_araddr[21]_i_2 ;
  wire \n_0_axi_araddr[21]_i_3 ;
  wire \n_0_axi_araddr[21]_i_4 ;
  wire \n_0_axi_araddr[21]_i_5 ;
  wire \n_0_axi_araddr[25]_i_2 ;
  wire \n_0_axi_araddr[25]_i_3 ;
  wire \n_0_axi_araddr[25]_i_4 ;
  wire \n_0_axi_araddr[25]_i_5 ;
  wire \n_0_axi_araddr[28]_i_3 ;
  wire \n_0_axi_araddr[28]_i_4 ;
  wire \n_0_axi_araddr[28]_i_5 ;
  wire \n_0_axi_araddr[28]_i_6 ;
  wire \n_0_axi_araddr[30]_i_2 ;
  wire \n_0_axi_araddr[30]_i_3 ;
  wire \n_0_axi_araddr[9]_i_2 ;
  wire \n_0_axi_araddr[9]_i_3 ;
  wire \n_0_axi_araddr[9]_i_4 ;
  wire \n_0_axi_araddr[9]_i_5 ;
  wire \n_0_axi_araddr_reg[13]_i_1 ;
  wire \n_0_axi_araddr_reg[17]_i_1 ;
  wire \n_0_axi_araddr_reg[21]_i_1 ;
  wire \n_0_axi_araddr_reg[25]_i_1 ;
  wire \n_0_axi_araddr_reg[28]_i_2 ;
  wire \n_0_axi_araddr_reg[9]_i_1 ;
  wire n_0_axi_arvalid_i_1;
  wire \n_0_axi_awaddr[13]_i_2 ;
  wire \n_0_axi_awaddr[13]_i_3 ;
  wire \n_0_axi_awaddr[13]_i_4 ;
  wire \n_0_axi_awaddr[13]_i_5 ;
  wire \n_0_axi_awaddr[17]_i_2 ;
  wire \n_0_axi_awaddr[17]_i_3 ;
  wire \n_0_axi_awaddr[17]_i_4 ;
  wire \n_0_axi_awaddr[17]_i_5 ;
  wire \n_0_axi_awaddr[21]_i_2 ;
  wire \n_0_axi_awaddr[21]_i_3 ;
  wire \n_0_axi_awaddr[21]_i_4 ;
  wire \n_0_axi_awaddr[21]_i_5 ;
  wire \n_0_axi_awaddr[25]_i_2 ;
  wire \n_0_axi_awaddr[25]_i_3 ;
  wire \n_0_axi_awaddr[25]_i_4 ;
  wire \n_0_axi_awaddr[25]_i_5 ;
  wire \n_0_axi_awaddr[28]_i_4 ;
  wire \n_0_axi_awaddr[28]_i_5 ;
  wire \n_0_axi_awaddr[28]_i_6 ;
  wire \n_0_axi_awaddr[28]_i_7 ;
  wire \n_0_axi_awaddr[30]_i_2 ;
  wire \n_0_axi_awaddr[30]_i_3 ;
  wire \n_0_axi_awaddr[9]_i_2 ;
  wire \n_0_axi_awaddr[9]_i_3 ;
  wire \n_0_axi_awaddr[9]_i_4 ;
  wire \n_0_axi_awaddr[9]_i_5 ;
  wire \n_0_axi_awaddr_reg[13]_i_1 ;
  wire \n_0_axi_awaddr_reg[17]_i_1 ;
  wire \n_0_axi_awaddr_reg[21]_i_1 ;
  wire \n_0_axi_awaddr_reg[25]_i_1 ;
  wire \n_0_axi_awaddr_reg[28]_i_3 ;
  wire \n_0_axi_awaddr_reg[9]_i_1 ;
  wire n_0_axi_awvalid_i_1;
  wire n_0_axi_bready_i_1;
  wire n_0_axi_rready_i_1;
  wire \n_0_axi_wdata[11]_i_2 ;
  wire \n_0_axi_wdata[11]_i_3 ;
  wire \n_0_axi_wdata[11]_i_4 ;
  wire \n_0_axi_wdata[11]_i_5 ;
  wire \n_0_axi_wdata[15]_i_2 ;
  wire \n_0_axi_wdata[15]_i_3 ;
  wire \n_0_axi_wdata[15]_i_4 ;
  wire \n_0_axi_wdata[15]_i_5 ;
  wire \n_0_axi_wdata[19]_i_2 ;
  wire \n_0_axi_wdata[19]_i_3 ;
  wire \n_0_axi_wdata[19]_i_4 ;
  wire \n_0_axi_wdata[19]_i_5 ;
  wire \n_0_axi_wdata[23]_i_2 ;
  wire \n_0_axi_wdata[23]_i_3 ;
  wire \n_0_axi_wdata[23]_i_4 ;
  wire \n_0_axi_wdata[23]_i_5 ;
  wire \n_0_axi_wdata[27]_i_2 ;
  wire \n_0_axi_wdata[27]_i_3 ;
  wire \n_0_axi_wdata[27]_i_4 ;
  wire \n_0_axi_wdata[27]_i_5 ;
  wire \n_0_axi_wdata[31]_i_3 ;
  wire \n_0_axi_wdata[31]_i_4 ;
  wire \n_0_axi_wdata[31]_i_5 ;
  wire \n_0_axi_wdata[31]_i_6 ;
  wire \n_0_axi_wdata[3]_i_2 ;
  wire \n_0_axi_wdata[3]_i_3 ;
  wire \n_0_axi_wdata[3]_i_4 ;
  wire \n_0_axi_wdata[3]_i_5 ;
  wire \n_0_axi_wdata[7]_i_2 ;
  wire \n_0_axi_wdata[7]_i_3 ;
  wire \n_0_axi_wdata[7]_i_4 ;
  wire \n_0_axi_wdata[7]_i_5 ;
  wire \n_0_axi_wdata_reg[11]_i_1 ;
  wire \n_0_axi_wdata_reg[15]_i_1 ;
  wire \n_0_axi_wdata_reg[19]_i_1 ;
  wire \n_0_axi_wdata_reg[23]_i_1 ;
  wire \n_0_axi_wdata_reg[27]_i_1 ;
  wire \n_0_axi_wdata_reg[3]_i_1 ;
  wire \n_0_axi_wdata_reg[7]_i_1 ;
  wire n_0_axi_wlast_i_1;
  wire n_0_axi_wlast_i_2;
  wire n_0_axi_wvalid_i_1;
  wire n_0_burst_read_active_i_1;
  wire n_0_burst_read_active_reg;
  wire n_0_burst_write_active_i_1;
  wire n_0_burst_write_active_reg;
  wire n_0_compare_done_i_1;
  wire n_0_compare_done_i_2;
  wire n_0_error_reg_i_1;
  wire n_0_error_reg_i_2;
  wire \n_0_expected_rdata[0]_i_3 ;
  wire \n_0_expected_rdata[0]_i_4 ;
  wire \n_0_expected_rdata[0]_i_5 ;
  wire \n_0_expected_rdata[0]_i_6 ;
  wire \n_0_expected_rdata[12]_i_2 ;
  wire \n_0_expected_rdata[12]_i_3 ;
  wire \n_0_expected_rdata[12]_i_4 ;
  wire \n_0_expected_rdata[12]_i_5 ;
  wire \n_0_expected_rdata[16]_i_2 ;
  wire \n_0_expected_rdata[16]_i_3 ;
  wire \n_0_expected_rdata[16]_i_4 ;
  wire \n_0_expected_rdata[16]_i_5 ;
  wire \n_0_expected_rdata[20]_i_2 ;
  wire \n_0_expected_rdata[20]_i_3 ;
  wire \n_0_expected_rdata[20]_i_4 ;
  wire \n_0_expected_rdata[20]_i_5 ;
  wire \n_0_expected_rdata[24]_i_2 ;
  wire \n_0_expected_rdata[24]_i_3 ;
  wire \n_0_expected_rdata[24]_i_4 ;
  wire \n_0_expected_rdata[24]_i_5 ;
  wire \n_0_expected_rdata[28]_i_2 ;
  wire \n_0_expected_rdata[28]_i_3 ;
  wire \n_0_expected_rdata[28]_i_4 ;
  wire \n_0_expected_rdata[28]_i_5 ;
  wire \n_0_expected_rdata[4]_i_2 ;
  wire \n_0_expected_rdata[4]_i_3 ;
  wire \n_0_expected_rdata[4]_i_4 ;
  wire \n_0_expected_rdata[4]_i_5 ;
  wire \n_0_expected_rdata[8]_i_2 ;
  wire \n_0_expected_rdata[8]_i_3 ;
  wire \n_0_expected_rdata[8]_i_4 ;
  wire \n_0_expected_rdata[8]_i_5 ;
  wire \n_0_expected_rdata_reg[0]_i_2 ;
  wire \n_0_expected_rdata_reg[12]_i_1 ;
  wire \n_0_expected_rdata_reg[16]_i_1 ;
  wire \n_0_expected_rdata_reg[20]_i_1 ;
  wire \n_0_expected_rdata_reg[24]_i_1 ;
  wire \n_0_expected_rdata_reg[4]_i_1 ;
  wire \n_0_expected_rdata_reg[8]_i_1 ;
  wire \n_0_m00_axi_araddr[29]_INST_0_i_1 ;
  wire \n_0_m00_axi_araddr[29]_INST_0_i_2 ;
  wire \n_0_m00_axi_araddr[29]_INST_0_i_3 ;
  wire \n_0_m00_axi_awaddr[29]_INST_0_i_1 ;
  wire \n_0_m00_axi_awaddr[29]_INST_0_i_2 ;
  wire \n_0_m00_axi_awaddr[29]_INST_0_i_3 ;
  wire \n_0_mst_exec_state[0]_i_1 ;
  wire \n_0_mst_exec_state[1]_i_1 ;
  wire \n_0_read_burst_counter[4]_i_1 ;
  wire \n_0_read_burst_counter_reg[0] ;
  wire \n_0_read_burst_counter_reg[1] ;
  wire \n_0_read_burst_counter_reg[2] ;
  wire \n_0_read_burst_counter_reg[3] ;
  wire \n_0_read_index[4]_i_1 ;
  wire n_0_read_mismatch_i_10;
  wire n_0_read_mismatch_i_11;
  wire n_0_read_mismatch_i_12;
  wire n_0_read_mismatch_i_13;
  wire n_0_read_mismatch_i_14;
  wire n_0_read_mismatch_i_15;
  wire n_0_read_mismatch_i_4;
  wire n_0_read_mismatch_i_5;
  wire n_0_read_mismatch_i_6;
  wire n_0_read_mismatch_i_8;
  wire n_0_read_mismatch_i_9;
  wire n_0_read_mismatch_reg_i_3;
  wire n_0_read_mismatch_reg_i_7;
  wire n_0_reads_done_i_1;
  wire n_0_reads_done_i_2;
  wire n_0_start_single_burst_read_i_1;
  wire n_0_start_single_burst_write_i_1;
  wire \n_0_write_burst_counter[4]_i_1 ;
  wire \n_0_write_burst_counter_reg[0] ;
  wire \n_0_write_burst_counter_reg[1] ;
  wire \n_0_write_burst_counter_reg[2] ;
  wire \n_0_write_burst_counter_reg[3] ;
  wire \n_0_write_index[0]_i_1 ;
  wire \n_0_write_index[4]_i_1 ;
  wire n_0_writes_done_i_1;
  wire \n_1_axi_araddr_reg[13]_i_1 ;
  wire \n_1_axi_araddr_reg[17]_i_1 ;
  wire \n_1_axi_araddr_reg[21]_i_1 ;
  wire \n_1_axi_araddr_reg[25]_i_1 ;
  wire \n_1_axi_araddr_reg[28]_i_2 ;
  wire \n_1_axi_araddr_reg[9]_i_1 ;
  wire \n_1_axi_awaddr_reg[13]_i_1 ;
  wire \n_1_axi_awaddr_reg[17]_i_1 ;
  wire \n_1_axi_awaddr_reg[21]_i_1 ;
  wire \n_1_axi_awaddr_reg[25]_i_1 ;
  wire \n_1_axi_awaddr_reg[28]_i_3 ;
  wire \n_1_axi_awaddr_reg[9]_i_1 ;
  wire \n_1_axi_wdata_reg[11]_i_1 ;
  wire \n_1_axi_wdata_reg[15]_i_1 ;
  wire \n_1_axi_wdata_reg[19]_i_1 ;
  wire \n_1_axi_wdata_reg[23]_i_1 ;
  wire \n_1_axi_wdata_reg[27]_i_1 ;
  wire \n_1_axi_wdata_reg[31]_i_2 ;
  wire \n_1_axi_wdata_reg[3]_i_1 ;
  wire \n_1_axi_wdata_reg[7]_i_1 ;
  wire \n_1_expected_rdata_reg[0]_i_2 ;
  wire \n_1_expected_rdata_reg[12]_i_1 ;
  wire \n_1_expected_rdata_reg[16]_i_1 ;
  wire \n_1_expected_rdata_reg[20]_i_1 ;
  wire \n_1_expected_rdata_reg[24]_i_1 ;
  wire \n_1_expected_rdata_reg[28]_i_1 ;
  wire \n_1_expected_rdata_reg[4]_i_1 ;
  wire \n_1_expected_rdata_reg[8]_i_1 ;
  wire n_1_read_mismatch_reg_i_3;
  wire n_1_read_mismatch_reg_i_7;
  wire \n_2_axi_araddr_reg[13]_i_1 ;
  wire \n_2_axi_araddr_reg[17]_i_1 ;
  wire \n_2_axi_araddr_reg[21]_i_1 ;
  wire \n_2_axi_araddr_reg[25]_i_1 ;
  wire \n_2_axi_araddr_reg[28]_i_2 ;
  wire \n_2_axi_araddr_reg[9]_i_1 ;
  wire \n_2_axi_awaddr_reg[13]_i_1 ;
  wire \n_2_axi_awaddr_reg[17]_i_1 ;
  wire \n_2_axi_awaddr_reg[21]_i_1 ;
  wire \n_2_axi_awaddr_reg[25]_i_1 ;
  wire \n_2_axi_awaddr_reg[28]_i_3 ;
  wire \n_2_axi_awaddr_reg[9]_i_1 ;
  wire \n_2_axi_wdata_reg[11]_i_1 ;
  wire \n_2_axi_wdata_reg[15]_i_1 ;
  wire \n_2_axi_wdata_reg[19]_i_1 ;
  wire \n_2_axi_wdata_reg[23]_i_1 ;
  wire \n_2_axi_wdata_reg[27]_i_1 ;
  wire \n_2_axi_wdata_reg[31]_i_2 ;
  wire \n_2_axi_wdata_reg[3]_i_1 ;
  wire \n_2_axi_wdata_reg[7]_i_1 ;
  wire \n_2_expected_rdata_reg[0]_i_2 ;
  wire \n_2_expected_rdata_reg[12]_i_1 ;
  wire \n_2_expected_rdata_reg[16]_i_1 ;
  wire \n_2_expected_rdata_reg[20]_i_1 ;
  wire \n_2_expected_rdata_reg[24]_i_1 ;
  wire \n_2_expected_rdata_reg[28]_i_1 ;
  wire \n_2_expected_rdata_reg[4]_i_1 ;
  wire \n_2_expected_rdata_reg[8]_i_1 ;
  wire \n_2_m00_axi_araddr[29]_INST_0 ;
  wire \n_2_m00_axi_awaddr[29]_INST_0 ;
  wire n_2_read_mismatch_reg_i_2;
  wire n_2_read_mismatch_reg_i_3;
  wire n_2_read_mismatch_reg_i_7;
  wire \n_3_axi_araddr_reg[13]_i_1 ;
  wire \n_3_axi_araddr_reg[17]_i_1 ;
  wire \n_3_axi_araddr_reg[21]_i_1 ;
  wire \n_3_axi_araddr_reg[25]_i_1 ;
  wire \n_3_axi_araddr_reg[28]_i_2 ;
  wire \n_3_axi_araddr_reg[30]_i_1 ;
  wire \n_3_axi_araddr_reg[9]_i_1 ;
  wire \n_3_axi_awaddr_reg[13]_i_1 ;
  wire \n_3_axi_awaddr_reg[17]_i_1 ;
  wire \n_3_axi_awaddr_reg[21]_i_1 ;
  wire \n_3_axi_awaddr_reg[25]_i_1 ;
  wire \n_3_axi_awaddr_reg[28]_i_3 ;
  wire \n_3_axi_awaddr_reg[30]_i_1 ;
  wire \n_3_axi_awaddr_reg[9]_i_1 ;
  wire \n_3_axi_wdata_reg[11]_i_1 ;
  wire \n_3_axi_wdata_reg[15]_i_1 ;
  wire \n_3_axi_wdata_reg[19]_i_1 ;
  wire \n_3_axi_wdata_reg[23]_i_1 ;
  wire \n_3_axi_wdata_reg[27]_i_1 ;
  wire \n_3_axi_wdata_reg[31]_i_2 ;
  wire \n_3_axi_wdata_reg[3]_i_1 ;
  wire \n_3_axi_wdata_reg[7]_i_1 ;
  wire \n_3_expected_rdata_reg[0]_i_2 ;
  wire \n_3_expected_rdata_reg[12]_i_1 ;
  wire \n_3_expected_rdata_reg[16]_i_1 ;
  wire \n_3_expected_rdata_reg[20]_i_1 ;
  wire \n_3_expected_rdata_reg[24]_i_1 ;
  wire \n_3_expected_rdata_reg[28]_i_1 ;
  wire \n_3_expected_rdata_reg[4]_i_1 ;
  wire \n_3_expected_rdata_reg[8]_i_1 ;
  wire \n_3_m00_axi_araddr[29]_INST_0 ;
  wire \n_3_m00_axi_awaddr[29]_INST_0 ;
  wire n_3_read_mismatch_reg_i_2;
  wire n_3_read_mismatch_reg_i_3;
  wire n_3_read_mismatch_reg_i_7;
  wire \n_4_axi_araddr_reg[13]_i_1 ;
  wire \n_4_axi_araddr_reg[17]_i_1 ;
  wire \n_4_axi_araddr_reg[21]_i_1 ;
  wire \n_4_axi_araddr_reg[25]_i_1 ;
  wire \n_4_axi_araddr_reg[28]_i_2 ;
  wire \n_4_axi_araddr_reg[9]_i_1 ;
  wire \n_4_axi_awaddr_reg[13]_i_1 ;
  wire \n_4_axi_awaddr_reg[17]_i_1 ;
  wire \n_4_axi_awaddr_reg[21]_i_1 ;
  wire \n_4_axi_awaddr_reg[25]_i_1 ;
  wire \n_4_axi_awaddr_reg[28]_i_3 ;
  wire \n_4_axi_awaddr_reg[9]_i_1 ;
  wire \n_4_axi_wdata_reg[11]_i_1 ;
  wire \n_4_axi_wdata_reg[15]_i_1 ;
  wire \n_4_axi_wdata_reg[19]_i_1 ;
  wire \n_4_axi_wdata_reg[23]_i_1 ;
  wire \n_4_axi_wdata_reg[27]_i_1 ;
  wire \n_4_axi_wdata_reg[31]_i_2 ;
  wire \n_4_axi_wdata_reg[3]_i_1 ;
  wire \n_4_axi_wdata_reg[7]_i_1 ;
  wire \n_4_expected_rdata_reg[0]_i_2 ;
  wire \n_4_expected_rdata_reg[12]_i_1 ;
  wire \n_4_expected_rdata_reg[16]_i_1 ;
  wire \n_4_expected_rdata_reg[20]_i_1 ;
  wire \n_4_expected_rdata_reg[24]_i_1 ;
  wire \n_4_expected_rdata_reg[28]_i_1 ;
  wire \n_4_expected_rdata_reg[4]_i_1 ;
  wire \n_4_expected_rdata_reg[8]_i_1 ;
  wire \n_5_axi_araddr_reg[13]_i_1 ;
  wire \n_5_axi_araddr_reg[17]_i_1 ;
  wire \n_5_axi_araddr_reg[21]_i_1 ;
  wire \n_5_axi_araddr_reg[25]_i_1 ;
  wire \n_5_axi_araddr_reg[28]_i_2 ;
  wire \n_5_axi_araddr_reg[9]_i_1 ;
  wire \n_5_axi_awaddr_reg[13]_i_1 ;
  wire \n_5_axi_awaddr_reg[17]_i_1 ;
  wire \n_5_axi_awaddr_reg[21]_i_1 ;
  wire \n_5_axi_awaddr_reg[25]_i_1 ;
  wire \n_5_axi_awaddr_reg[28]_i_3 ;
  wire \n_5_axi_awaddr_reg[9]_i_1 ;
  wire \n_5_axi_wdata_reg[11]_i_1 ;
  wire \n_5_axi_wdata_reg[15]_i_1 ;
  wire \n_5_axi_wdata_reg[19]_i_1 ;
  wire \n_5_axi_wdata_reg[23]_i_1 ;
  wire \n_5_axi_wdata_reg[27]_i_1 ;
  wire \n_5_axi_wdata_reg[31]_i_2 ;
  wire \n_5_axi_wdata_reg[3]_i_1 ;
  wire \n_5_axi_wdata_reg[7]_i_1 ;
  wire \n_5_expected_rdata_reg[0]_i_2 ;
  wire \n_5_expected_rdata_reg[12]_i_1 ;
  wire \n_5_expected_rdata_reg[16]_i_1 ;
  wire \n_5_expected_rdata_reg[20]_i_1 ;
  wire \n_5_expected_rdata_reg[24]_i_1 ;
  wire \n_5_expected_rdata_reg[28]_i_1 ;
  wire \n_5_expected_rdata_reg[4]_i_1 ;
  wire \n_5_expected_rdata_reg[8]_i_1 ;
  wire \n_6_axi_araddr_reg[13]_i_1 ;
  wire \n_6_axi_araddr_reg[17]_i_1 ;
  wire \n_6_axi_araddr_reg[21]_i_1 ;
  wire \n_6_axi_araddr_reg[25]_i_1 ;
  wire \n_6_axi_araddr_reg[28]_i_2 ;
  wire \n_6_axi_araddr_reg[30]_i_1 ;
  wire \n_6_axi_araddr_reg[9]_i_1 ;
  wire \n_6_axi_awaddr_reg[13]_i_1 ;
  wire \n_6_axi_awaddr_reg[17]_i_1 ;
  wire \n_6_axi_awaddr_reg[21]_i_1 ;
  wire \n_6_axi_awaddr_reg[25]_i_1 ;
  wire \n_6_axi_awaddr_reg[28]_i_3 ;
  wire \n_6_axi_awaddr_reg[30]_i_1 ;
  wire \n_6_axi_awaddr_reg[9]_i_1 ;
  wire \n_6_axi_wdata_reg[11]_i_1 ;
  wire \n_6_axi_wdata_reg[15]_i_1 ;
  wire \n_6_axi_wdata_reg[19]_i_1 ;
  wire \n_6_axi_wdata_reg[23]_i_1 ;
  wire \n_6_axi_wdata_reg[27]_i_1 ;
  wire \n_6_axi_wdata_reg[31]_i_2 ;
  wire \n_6_axi_wdata_reg[3]_i_1 ;
  wire \n_6_axi_wdata_reg[7]_i_1 ;
  wire \n_6_expected_rdata_reg[0]_i_2 ;
  wire \n_6_expected_rdata_reg[12]_i_1 ;
  wire \n_6_expected_rdata_reg[16]_i_1 ;
  wire \n_6_expected_rdata_reg[20]_i_1 ;
  wire \n_6_expected_rdata_reg[24]_i_1 ;
  wire \n_6_expected_rdata_reg[28]_i_1 ;
  wire \n_6_expected_rdata_reg[4]_i_1 ;
  wire \n_6_expected_rdata_reg[8]_i_1 ;
  wire \n_7_axi_araddr_reg[13]_i_1 ;
  wire \n_7_axi_araddr_reg[17]_i_1 ;
  wire \n_7_axi_araddr_reg[21]_i_1 ;
  wire \n_7_axi_araddr_reg[25]_i_1 ;
  wire \n_7_axi_araddr_reg[28]_i_2 ;
  wire \n_7_axi_araddr_reg[30]_i_1 ;
  wire \n_7_axi_araddr_reg[9]_i_1 ;
  wire \n_7_axi_awaddr_reg[13]_i_1 ;
  wire \n_7_axi_awaddr_reg[17]_i_1 ;
  wire \n_7_axi_awaddr_reg[21]_i_1 ;
  wire \n_7_axi_awaddr_reg[25]_i_1 ;
  wire \n_7_axi_awaddr_reg[28]_i_3 ;
  wire \n_7_axi_awaddr_reg[30]_i_1 ;
  wire \n_7_axi_awaddr_reg[9]_i_1 ;
  wire \n_7_axi_wdata_reg[11]_i_1 ;
  wire \n_7_axi_wdata_reg[15]_i_1 ;
  wire \n_7_axi_wdata_reg[19]_i_1 ;
  wire \n_7_axi_wdata_reg[23]_i_1 ;
  wire \n_7_axi_wdata_reg[27]_i_1 ;
  wire \n_7_axi_wdata_reg[31]_i_2 ;
  wire \n_7_axi_wdata_reg[3]_i_1 ;
  wire \n_7_axi_wdata_reg[7]_i_1 ;
  wire \n_7_expected_rdata_reg[0]_i_2 ;
  wire \n_7_expected_rdata_reg[12]_i_1 ;
  wire \n_7_expected_rdata_reg[16]_i_1 ;
  wire \n_7_expected_rdata_reg[20]_i_1 ;
  wire \n_7_expected_rdata_reg[24]_i_1 ;
  wire \n_7_expected_rdata_reg[28]_i_1 ;
  wire \n_7_expected_rdata_reg[4]_i_1 ;
  wire \n_7_expected_rdata_reg[8]_i_1 ;
  wire [4:0]p_0_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [4:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [4:1]p_0_in__2;
  wire p_15_in;
  wire p_22_in;
  wire read_index0;
  wire [4:0]read_index_reg__0;
  wire read_mismatch;
  wire read_mismatch0;
  wire read_mismatch1;
  wire reads_done;
  wire start_single_burst_read;
  wire start_single_burst_write;
  wire write_index0;
  wire [4:0]write_index_reg__0;
  wire writes_done;
  wire [3:1]\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_m00_axi_araddr[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_m00_axi_araddr[29]_INST_0_O_UNCONNECTED ;
  wire [3:2]\NLW_m00_axi_awaddr[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_m00_axi_awaddr[29]_INST_0_O_UNCONNECTED ;
  wire [3:3]NLW_read_mismatch_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_read_mismatch_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_read_mismatch_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_read_mismatch_reg_i_7_O_UNCONNECTED;

LUT6 #(
    .INIT(64'hAAFFFFCFAA000000)) 
     ERROR_i_1
       (.I0(error_reg),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .I5(m00_axi_error),
        .O(n_0_ERROR_i_1));
FDRE ERROR_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_ERROR_i_1),
        .Q(m00_axi_error),
        .R(n_0_compare_done_i_1));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[13]_i_2 
       (.I0(m00_axi_araddr[7]),
        .O(\n_0_axi_araddr[13]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[13]_i_3 
       (.I0(m00_axi_araddr[6]),
        .O(\n_0_axi_araddr[13]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[13]_i_4 
       (.I0(m00_axi_araddr[5]),
        .O(\n_0_axi_araddr[13]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[13]_i_5 
       (.I0(m00_axi_araddr[4]),
        .O(\n_0_axi_araddr[13]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[17]_i_2 
       (.I0(m00_axi_araddr[11]),
        .O(\n_0_axi_araddr[17]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[17]_i_3 
       (.I0(m00_axi_araddr[10]),
        .O(\n_0_axi_araddr[17]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[17]_i_4 
       (.I0(m00_axi_araddr[9]),
        .O(\n_0_axi_araddr[17]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[17]_i_5 
       (.I0(m00_axi_araddr[8]),
        .O(\n_0_axi_araddr[17]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[21]_i_2 
       (.I0(m00_axi_araddr[15]),
        .O(\n_0_axi_araddr[21]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[21]_i_3 
       (.I0(m00_axi_araddr[14]),
        .O(\n_0_axi_araddr[21]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[21]_i_4 
       (.I0(m00_axi_araddr[13]),
        .O(\n_0_axi_araddr[21]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[21]_i_5 
       (.I0(m00_axi_araddr[12]),
        .O(\n_0_axi_araddr[21]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[25]_i_2 
       (.I0(m00_axi_araddr[19]),
        .O(\n_0_axi_araddr[25]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[25]_i_3 
       (.I0(m00_axi_araddr[18]),
        .O(\n_0_axi_araddr[25]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[25]_i_4 
       (.I0(m00_axi_araddr[17]),
        .O(\n_0_axi_araddr[25]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[25]_i_5 
       (.I0(m00_axi_araddr[16]),
        .O(\n_0_axi_araddr[25]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \axi_araddr[28]_i_1 
       (.I0(O2),
        .I1(m00_axi_arready),
        .O(axi_arvalid0));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[28]_i_3 
       (.I0(axi_araddr_reg[29]),
        .O(\n_0_axi_araddr[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[28]_i_4 
       (.I0(m00_axi_araddr[22]),
        .O(\n_0_axi_araddr[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[28]_i_5 
       (.I0(m00_axi_araddr[21]),
        .O(\n_0_axi_araddr[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[28]_i_6 
       (.I0(m00_axi_araddr[20]),
        .O(\n_0_axi_araddr[28]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[30]_i_2 
       (.I0(axi_araddr_reg[31]),
        .O(\n_0_axi_araddr[30]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[30]_i_3 
       (.I0(axi_araddr_reg[30]),
        .O(\n_0_axi_araddr[30]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[9]_i_2 
       (.I0(m00_axi_araddr[3]),
        .O(\n_0_axi_araddr[9]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[9]_i_3 
       (.I0(m00_axi_araddr[2]),
        .O(\n_0_axi_araddr[9]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_araddr[9]_i_4 
       (.I0(m00_axi_araddr[1]),
        .O(\n_0_axi_araddr[9]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_araddr[9]_i_5 
       (.I0(m00_axi_araddr[0]),
        .O(\n_0_axi_araddr[9]_i_5 ));
FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[13]_i_1 ),
        .Q(m00_axi_araddr[4]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[13]_i_1 ),
        .Q(m00_axi_araddr[5]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[13]_i_1 ),
        .Q(m00_axi_araddr[6]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[13]_i_1 ),
        .Q(m00_axi_araddr[7]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[13]_i_1 
       (.CI(\n_0_axi_araddr_reg[9]_i_1 ),
        .CO({\n_0_axi_araddr_reg[13]_i_1 ,\n_1_axi_araddr_reg[13]_i_1 ,\n_2_axi_araddr_reg[13]_i_1 ,\n_3_axi_araddr_reg[13]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_araddr_reg[13]_i_1 ,\n_5_axi_araddr_reg[13]_i_1 ,\n_6_axi_araddr_reg[13]_i_1 ,\n_7_axi_araddr_reg[13]_i_1 }),
        .S({\n_0_axi_araddr[13]_i_2 ,\n_0_axi_araddr[13]_i_3 ,\n_0_axi_araddr[13]_i_4 ,\n_0_axi_araddr[13]_i_5 }));
FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[17]_i_1 ),
        .Q(m00_axi_araddr[8]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[17]_i_1 ),
        .Q(m00_axi_araddr[9]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[17]_i_1 ),
        .Q(m00_axi_araddr[10]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[17]_i_1 ),
        .Q(m00_axi_araddr[11]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[17]_i_1 
       (.CI(\n_0_axi_araddr_reg[13]_i_1 ),
        .CO({\n_0_axi_araddr_reg[17]_i_1 ,\n_1_axi_araddr_reg[17]_i_1 ,\n_2_axi_araddr_reg[17]_i_1 ,\n_3_axi_araddr_reg[17]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_araddr_reg[17]_i_1 ,\n_5_axi_araddr_reg[17]_i_1 ,\n_6_axi_araddr_reg[17]_i_1 ,\n_7_axi_araddr_reg[17]_i_1 }),
        .S({\n_0_axi_araddr[17]_i_2 ,\n_0_axi_araddr[17]_i_3 ,\n_0_axi_araddr[17]_i_4 ,\n_0_axi_araddr[17]_i_5 }));
FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[21]_i_1 ),
        .Q(m00_axi_araddr[12]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[21]_i_1 ),
        .Q(m00_axi_araddr[13]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[21]_i_1 ),
        .Q(m00_axi_araddr[14]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[21]_i_1 ),
        .Q(m00_axi_araddr[15]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[21]_i_1 
       (.CI(\n_0_axi_araddr_reg[17]_i_1 ),
        .CO({\n_0_axi_araddr_reg[21]_i_1 ,\n_1_axi_araddr_reg[21]_i_1 ,\n_2_axi_araddr_reg[21]_i_1 ,\n_3_axi_araddr_reg[21]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_araddr_reg[21]_i_1 ,\n_5_axi_araddr_reg[21]_i_1 ,\n_6_axi_araddr_reg[21]_i_1 ,\n_7_axi_araddr_reg[21]_i_1 }),
        .S({\n_0_axi_araddr[21]_i_2 ,\n_0_axi_araddr[21]_i_3 ,\n_0_axi_araddr[21]_i_4 ,\n_0_axi_araddr[21]_i_5 }));
FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[25]_i_1 ),
        .Q(m00_axi_araddr[16]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[25]_i_1 ),
        .Q(m00_axi_araddr[17]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[25]_i_1 ),
        .Q(m00_axi_araddr[18]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[25]_i_1 ),
        .Q(m00_axi_araddr[19]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[25]_i_1 
       (.CI(\n_0_axi_araddr_reg[21]_i_1 ),
        .CO({\n_0_axi_araddr_reg[25]_i_1 ,\n_1_axi_araddr_reg[25]_i_1 ,\n_2_axi_araddr_reg[25]_i_1 ,\n_3_axi_araddr_reg[25]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_araddr_reg[25]_i_1 ,\n_5_axi_araddr_reg[25]_i_1 ,\n_6_axi_araddr_reg[25]_i_1 ,\n_7_axi_araddr_reg[25]_i_1 }),
        .S({\n_0_axi_araddr[25]_i_2 ,\n_0_axi_araddr[25]_i_3 ,\n_0_axi_araddr[25]_i_4 ,\n_0_axi_araddr[25]_i_5 }));
FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[28]_i_2 ),
        .Q(m00_axi_araddr[20]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[28]_i_2 ),
        .Q(m00_axi_araddr[21]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[28]_i_2 ),
        .Q(m00_axi_araddr[22]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[28]_i_2 
       (.CI(\n_0_axi_araddr_reg[25]_i_1 ),
        .CO({\n_0_axi_araddr_reg[28]_i_2 ,\n_1_axi_araddr_reg[28]_i_2 ,\n_2_axi_araddr_reg[28]_i_2 ,\n_3_axi_araddr_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_araddr_reg[28]_i_2 ,\n_5_axi_araddr_reg[28]_i_2 ,\n_6_axi_araddr_reg[28]_i_2 ,\n_7_axi_araddr_reg[28]_i_2 }),
        .S({\n_0_axi_araddr[28]_i_3 ,\n_0_axi_araddr[28]_i_4 ,\n_0_axi_araddr[28]_i_5 ,\n_0_axi_araddr[28]_i_6 }));
FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[28]_i_2 ),
        .Q(axi_araddr_reg[29]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[30]_i_1 ),
        .Q(axi_araddr_reg[30]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[30]_i_1 
       (.CI(\n_0_axi_araddr_reg[28]_i_2 ),
        .CO({\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\n_3_axi_araddr_reg[30]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED [3:2],\n_6_axi_araddr_reg[30]_i_1 ,\n_7_axi_araddr_reg[30]_i_1 }),
        .S({1'b0,1'b0,\n_0_axi_araddr[30]_i_2 ,\n_0_axi_araddr[30]_i_3 }));
FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[30]_i_1 ),
        .Q(axi_araddr_reg[31]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_7_axi_araddr_reg[9]_i_1 ),
        .Q(m00_axi_araddr[0]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_6_axi_araddr_reg[9]_i_1 ),
        .Q(m00_axi_araddr[1]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_5_axi_araddr_reg[9]_i_1 ),
        .Q(m00_axi_araddr[2]),
        .R(axi_awvalid1));
FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\n_4_axi_araddr_reg[9]_i_1 ),
        .Q(m00_axi_araddr[3]),
        .R(axi_awvalid1));
CARRY4 \axi_araddr_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\n_0_axi_araddr_reg[9]_i_1 ,\n_1_axi_araddr_reg[9]_i_1 ,\n_2_axi_araddr_reg[9]_i_1 ,\n_3_axi_araddr_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_axi_araddr_reg[9]_i_1 ,\n_5_axi_araddr_reg[9]_i_1 ,\n_6_axi_araddr_reg[9]_i_1 ,\n_7_axi_araddr_reg[9]_i_1 }),
        .S({\n_0_axi_araddr[9]_i_2 ,\n_0_axi_araddr[9]_i_3 ,\n_0_axi_araddr[9]_i_4 ,\n_0_axi_araddr[9]_i_5 }));
LUT4 #(
    .INIT(16'h0544)) 
     axi_arvalid_i_1
       (.I0(axi_awvalid1),
        .I1(start_single_burst_read),
        .I2(m00_axi_arready),
        .I3(O2),
        .O(n_0_axi_arvalid_i_1));
FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_arvalid_i_1),
        .Q(O2),
        .R(1'b0));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[13]_i_2 
       (.I0(m00_axi_awaddr[7]),
        .O(\n_0_axi_awaddr[13]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[13]_i_3 
       (.I0(m00_axi_awaddr[6]),
        .O(\n_0_axi_awaddr[13]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[13]_i_4 
       (.I0(m00_axi_awaddr[5]),
        .O(\n_0_axi_awaddr[13]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[13]_i_5 
       (.I0(m00_axi_awaddr[4]),
        .O(\n_0_axi_awaddr[13]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[17]_i_2 
       (.I0(m00_axi_awaddr[11]),
        .O(\n_0_axi_awaddr[17]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[17]_i_3 
       (.I0(m00_axi_awaddr[10]),
        .O(\n_0_axi_awaddr[17]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[17]_i_4 
       (.I0(m00_axi_awaddr[9]),
        .O(\n_0_axi_awaddr[17]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[17]_i_5 
       (.I0(m00_axi_awaddr[8]),
        .O(\n_0_axi_awaddr[17]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[21]_i_2 
       (.I0(m00_axi_awaddr[15]),
        .O(\n_0_axi_awaddr[21]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[21]_i_3 
       (.I0(m00_axi_awaddr[14]),
        .O(\n_0_axi_awaddr[21]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[21]_i_4 
       (.I0(m00_axi_awaddr[13]),
        .O(\n_0_axi_awaddr[21]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[21]_i_5 
       (.I0(m00_axi_awaddr[12]),
        .O(\n_0_axi_awaddr[21]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[25]_i_2 
       (.I0(m00_axi_awaddr[19]),
        .O(\n_0_axi_awaddr[25]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[25]_i_3 
       (.I0(m00_axi_awaddr[18]),
        .O(\n_0_axi_awaddr[25]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[25]_i_4 
       (.I0(m00_axi_awaddr[17]),
        .O(\n_0_axi_awaddr[25]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[25]_i_5 
       (.I0(m00_axi_awaddr[16]),
        .O(\n_0_axi_awaddr[25]_i_5 ));
LUT3 #(
    .INIT(8'h2F)) 
     \axi_awaddr[28]_i_1 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .I2(m00_axi_aresetn),
        .O(axi_awvalid1));
LUT2 #(
    .INIT(4'h8)) 
     \axi_awaddr[28]_i_2 
       (.I0(O3),
        .I1(m00_axi_awready),
        .O(axi_awvalid0));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[28]_i_4 
       (.I0(axi_awaddr_reg[29]),
        .O(\n_0_axi_awaddr[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[28]_i_5 
       (.I0(m00_axi_awaddr[22]),
        .O(\n_0_axi_awaddr[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[28]_i_6 
       (.I0(m00_axi_awaddr[21]),
        .O(\n_0_axi_awaddr[28]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[28]_i_7 
       (.I0(m00_axi_awaddr[20]),
        .O(\n_0_axi_awaddr[28]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[30]_i_2 
       (.I0(axi_awaddr_reg[31]),
        .O(\n_0_axi_awaddr[30]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[30]_i_3 
       (.I0(axi_awaddr_reg[30]),
        .O(\n_0_axi_awaddr[30]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[9]_i_2 
       (.I0(m00_axi_awaddr[3]),
        .O(\n_0_axi_awaddr[9]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[9]_i_3 
       (.I0(m00_axi_awaddr[2]),
        .O(\n_0_axi_awaddr[9]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_awaddr[9]_i_4 
       (.I0(m00_axi_awaddr[1]),
        .O(\n_0_axi_awaddr[9]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_awaddr[9]_i_5 
       (.I0(m00_axi_awaddr[0]),
        .O(\n_0_axi_awaddr[9]_i_5 ));
FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[13]_i_1 ),
        .Q(m00_axi_awaddr[4]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[13]_i_1 ),
        .Q(m00_axi_awaddr[5]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[13]_i_1 ),
        .Q(m00_axi_awaddr[6]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[13]_i_1 ),
        .Q(m00_axi_awaddr[7]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[13]_i_1 
       (.CI(\n_0_axi_awaddr_reg[9]_i_1 ),
        .CO({\n_0_axi_awaddr_reg[13]_i_1 ,\n_1_axi_awaddr_reg[13]_i_1 ,\n_2_axi_awaddr_reg[13]_i_1 ,\n_3_axi_awaddr_reg[13]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_awaddr_reg[13]_i_1 ,\n_5_axi_awaddr_reg[13]_i_1 ,\n_6_axi_awaddr_reg[13]_i_1 ,\n_7_axi_awaddr_reg[13]_i_1 }),
        .S({\n_0_axi_awaddr[13]_i_2 ,\n_0_axi_awaddr[13]_i_3 ,\n_0_axi_awaddr[13]_i_4 ,\n_0_axi_awaddr[13]_i_5 }));
FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[17]_i_1 ),
        .Q(m00_axi_awaddr[8]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[17]_i_1 ),
        .Q(m00_axi_awaddr[9]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[17]_i_1 ),
        .Q(m00_axi_awaddr[10]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[17]_i_1 ),
        .Q(m00_axi_awaddr[11]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[17]_i_1 
       (.CI(\n_0_axi_awaddr_reg[13]_i_1 ),
        .CO({\n_0_axi_awaddr_reg[17]_i_1 ,\n_1_axi_awaddr_reg[17]_i_1 ,\n_2_axi_awaddr_reg[17]_i_1 ,\n_3_axi_awaddr_reg[17]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_awaddr_reg[17]_i_1 ,\n_5_axi_awaddr_reg[17]_i_1 ,\n_6_axi_awaddr_reg[17]_i_1 ,\n_7_axi_awaddr_reg[17]_i_1 }),
        .S({\n_0_axi_awaddr[17]_i_2 ,\n_0_axi_awaddr[17]_i_3 ,\n_0_axi_awaddr[17]_i_4 ,\n_0_axi_awaddr[17]_i_5 }));
FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[21]_i_1 ),
        .Q(m00_axi_awaddr[12]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[21]_i_1 ),
        .Q(m00_axi_awaddr[13]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[21]_i_1 ),
        .Q(m00_axi_awaddr[14]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[21]_i_1 ),
        .Q(m00_axi_awaddr[15]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[21]_i_1 
       (.CI(\n_0_axi_awaddr_reg[17]_i_1 ),
        .CO({\n_0_axi_awaddr_reg[21]_i_1 ,\n_1_axi_awaddr_reg[21]_i_1 ,\n_2_axi_awaddr_reg[21]_i_1 ,\n_3_axi_awaddr_reg[21]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_awaddr_reg[21]_i_1 ,\n_5_axi_awaddr_reg[21]_i_1 ,\n_6_axi_awaddr_reg[21]_i_1 ,\n_7_axi_awaddr_reg[21]_i_1 }),
        .S({\n_0_axi_awaddr[21]_i_2 ,\n_0_axi_awaddr[21]_i_3 ,\n_0_axi_awaddr[21]_i_4 ,\n_0_axi_awaddr[21]_i_5 }));
FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[25]_i_1 ),
        .Q(m00_axi_awaddr[16]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[25]_i_1 ),
        .Q(m00_axi_awaddr[17]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[25]_i_1 ),
        .Q(m00_axi_awaddr[18]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[25]_i_1 ),
        .Q(m00_axi_awaddr[19]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[25]_i_1 
       (.CI(\n_0_axi_awaddr_reg[21]_i_1 ),
        .CO({\n_0_axi_awaddr_reg[25]_i_1 ,\n_1_axi_awaddr_reg[25]_i_1 ,\n_2_axi_awaddr_reg[25]_i_1 ,\n_3_axi_awaddr_reg[25]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_awaddr_reg[25]_i_1 ,\n_5_axi_awaddr_reg[25]_i_1 ,\n_6_axi_awaddr_reg[25]_i_1 ,\n_7_axi_awaddr_reg[25]_i_1 }),
        .S({\n_0_axi_awaddr[25]_i_2 ,\n_0_axi_awaddr[25]_i_3 ,\n_0_axi_awaddr[25]_i_4 ,\n_0_axi_awaddr[25]_i_5 }));
FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[28]_i_3 ),
        .Q(m00_axi_awaddr[20]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[28]_i_3 ),
        .Q(m00_axi_awaddr[21]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[28]_i_3 ),
        .Q(m00_axi_awaddr[22]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[28]_i_3 
       (.CI(\n_0_axi_awaddr_reg[25]_i_1 ),
        .CO({\n_0_axi_awaddr_reg[28]_i_3 ,\n_1_axi_awaddr_reg[28]_i_3 ,\n_2_axi_awaddr_reg[28]_i_3 ,\n_3_axi_awaddr_reg[28]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_awaddr_reg[28]_i_3 ,\n_5_axi_awaddr_reg[28]_i_3 ,\n_6_axi_awaddr_reg[28]_i_3 ,\n_7_axi_awaddr_reg[28]_i_3 }),
        .S({\n_0_axi_awaddr[28]_i_4 ,\n_0_axi_awaddr[28]_i_5 ,\n_0_axi_awaddr[28]_i_6 ,\n_0_axi_awaddr[28]_i_7 }));
FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[28]_i_3 ),
        .Q(axi_awaddr_reg[29]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[30]_i_1 ),
        .Q(axi_awaddr_reg[30]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[30]_i_1 
       (.CI(\n_0_axi_awaddr_reg[28]_i_3 ),
        .CO({\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\n_3_axi_awaddr_reg[30]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED [3:2],\n_6_axi_awaddr_reg[30]_i_1 ,\n_7_axi_awaddr_reg[30]_i_1 }),
        .S({1'b0,1'b0,\n_0_axi_awaddr[30]_i_2 ,\n_0_axi_awaddr[30]_i_3 }));
FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[30]_i_1 ),
        .Q(axi_awaddr_reg[31]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_7_axi_awaddr_reg[9]_i_1 ),
        .Q(m00_axi_awaddr[0]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_6_axi_awaddr_reg[9]_i_1 ),
        .Q(m00_axi_awaddr[1]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_5_axi_awaddr_reg[9]_i_1 ),
        .Q(m00_axi_awaddr[2]),
        .R(axi_awvalid1));
FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_awvalid0),
        .D(\n_4_axi_awaddr_reg[9]_i_1 ),
        .Q(m00_axi_awaddr[3]),
        .R(axi_awvalid1));
CARRY4 \axi_awaddr_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\n_0_axi_awaddr_reg[9]_i_1 ,\n_1_axi_awaddr_reg[9]_i_1 ,\n_2_axi_awaddr_reg[9]_i_1 ,\n_3_axi_awaddr_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_axi_awaddr_reg[9]_i_1 ,\n_5_axi_awaddr_reg[9]_i_1 ,\n_6_axi_awaddr_reg[9]_i_1 ,\n_7_axi_awaddr_reg[9]_i_1 }),
        .S({\n_0_axi_awaddr[9]_i_2 ,\n_0_axi_awaddr[9]_i_3 ,\n_0_axi_awaddr[9]_i_4 ,\n_0_axi_awaddr[9]_i_5 }));
LUT4 #(
    .INIT(16'h0544)) 
     axi_awvalid_i_1
       (.I0(axi_awvalid1),
        .I1(start_single_burst_write),
        .I2(m00_axi_awready),
        .I3(O3),
        .O(n_0_axi_awvalid_i_1));
FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_awvalid_i_1),
        .Q(O3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h2)) 
     axi_bready_i_1
       (.I0(m00_axi_bvalid),
        .I1(M_AXI_BREADY),
        .O(n_0_axi_bready_i_1));
FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bready_i_1),
        .Q(M_AXI_BREADY),
        .R(axi_awvalid1));
LUT4 #(
    .INIT(16'h1454)) 
     axi_rready_i_1
       (.I0(axi_awvalid1),
        .I1(O1),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_rlast),
        .O(n_0_axi_rready_i_1));
FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rready_i_1),
        .Q(O1),
        .R(1'b0));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[11]_i_2 
       (.I0(m00_axi_wdata[11]),
        .O(\n_0_axi_wdata[11]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[11]_i_3 
       (.I0(m00_axi_wdata[10]),
        .O(\n_0_axi_wdata[11]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[11]_i_4 
       (.I0(m00_axi_wdata[9]),
        .O(\n_0_axi_wdata[11]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[11]_i_5 
       (.I0(m00_axi_wdata[8]),
        .O(\n_0_axi_wdata[11]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[15]_i_2 
       (.I0(m00_axi_wdata[15]),
        .O(\n_0_axi_wdata[15]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[15]_i_3 
       (.I0(m00_axi_wdata[14]),
        .O(\n_0_axi_wdata[15]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[15]_i_4 
       (.I0(m00_axi_wdata[13]),
        .O(\n_0_axi_wdata[15]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[15]_i_5 
       (.I0(m00_axi_wdata[12]),
        .O(\n_0_axi_wdata[15]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[19]_i_2 
       (.I0(m00_axi_wdata[19]),
        .O(\n_0_axi_wdata[19]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[19]_i_3 
       (.I0(m00_axi_wdata[18]),
        .O(\n_0_axi_wdata[19]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[19]_i_4 
       (.I0(m00_axi_wdata[17]),
        .O(\n_0_axi_wdata[19]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[19]_i_5 
       (.I0(m00_axi_wdata[16]),
        .O(\n_0_axi_wdata[19]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[23]_i_2 
       (.I0(m00_axi_wdata[23]),
        .O(\n_0_axi_wdata[23]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[23]_i_3 
       (.I0(m00_axi_wdata[22]),
        .O(\n_0_axi_wdata[23]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[23]_i_4 
       (.I0(m00_axi_wdata[21]),
        .O(\n_0_axi_wdata[23]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[23]_i_5 
       (.I0(m00_axi_wdata[20]),
        .O(\n_0_axi_wdata[23]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[27]_i_2 
       (.I0(m00_axi_wdata[27]),
        .O(\n_0_axi_wdata[27]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[27]_i_3 
       (.I0(m00_axi_wdata[26]),
        .O(\n_0_axi_wdata[27]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[27]_i_4 
       (.I0(m00_axi_wdata[25]),
        .O(\n_0_axi_wdata[27]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[27]_i_5 
       (.I0(m00_axi_wdata[24]),
        .O(\n_0_axi_wdata[27]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \axi_wdata[31]_i_1 
       (.I0(O4),
        .I1(m00_axi_wready),
        .O(p_22_in));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[31]_i_3 
       (.I0(m00_axi_wdata[31]),
        .O(\n_0_axi_wdata[31]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[31]_i_4 
       (.I0(m00_axi_wdata[30]),
        .O(\n_0_axi_wdata[31]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[31]_i_5 
       (.I0(m00_axi_wdata[29]),
        .O(\n_0_axi_wdata[31]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[31]_i_6 
       (.I0(m00_axi_wdata[28]),
        .O(\n_0_axi_wdata[31]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[3]_i_2 
       (.I0(m00_axi_wdata[3]),
        .O(\n_0_axi_wdata[3]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[3]_i_3 
       (.I0(m00_axi_wdata[2]),
        .O(\n_0_axi_wdata[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[3]_i_4 
       (.I0(m00_axi_wdata[1]),
        .O(\n_0_axi_wdata[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \axi_wdata[3]_i_5 
       (.I0(m00_axi_wdata[0]),
        .O(\n_0_axi_wdata[3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[7]_i_2 
       (.I0(m00_axi_wdata[7]),
        .O(\n_0_axi_wdata[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[7]_i_3 
       (.I0(m00_axi_wdata[6]),
        .O(\n_0_axi_wdata[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[7]_i_4 
       (.I0(m00_axi_wdata[5]),
        .O(\n_0_axi_wdata[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \axi_wdata[7]_i_5 
       (.I0(m00_axi_wdata[4]),
        .O(\n_0_axi_wdata[7]_i_5 ));
FDSE \axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[3]_i_1 ),
        .Q(m00_axi_wdata[0]),
        .S(axi_awvalid1));
FDRE \axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[11]_i_1 ),
        .Q(m00_axi_wdata[10]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[11]_i_1 ),
        .Q(m00_axi_wdata[11]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[11]_i_1 
       (.CI(\n_0_axi_wdata_reg[7]_i_1 ),
        .CO({\n_0_axi_wdata_reg[11]_i_1 ,\n_1_axi_wdata_reg[11]_i_1 ,\n_2_axi_wdata_reg[11]_i_1 ,\n_3_axi_wdata_reg[11]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[11]_i_1 ,\n_5_axi_wdata_reg[11]_i_1 ,\n_6_axi_wdata_reg[11]_i_1 ,\n_7_axi_wdata_reg[11]_i_1 }),
        .S({\n_0_axi_wdata[11]_i_2 ,\n_0_axi_wdata[11]_i_3 ,\n_0_axi_wdata[11]_i_4 ,\n_0_axi_wdata[11]_i_5 }));
FDRE \axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[15]_i_1 ),
        .Q(m00_axi_wdata[12]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[15]_i_1 ),
        .Q(m00_axi_wdata[13]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[15]_i_1 ),
        .Q(m00_axi_wdata[14]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[15]_i_1 ),
        .Q(m00_axi_wdata[15]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[15]_i_1 
       (.CI(\n_0_axi_wdata_reg[11]_i_1 ),
        .CO({\n_0_axi_wdata_reg[15]_i_1 ,\n_1_axi_wdata_reg[15]_i_1 ,\n_2_axi_wdata_reg[15]_i_1 ,\n_3_axi_wdata_reg[15]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[15]_i_1 ,\n_5_axi_wdata_reg[15]_i_1 ,\n_6_axi_wdata_reg[15]_i_1 ,\n_7_axi_wdata_reg[15]_i_1 }),
        .S({\n_0_axi_wdata[15]_i_2 ,\n_0_axi_wdata[15]_i_3 ,\n_0_axi_wdata[15]_i_4 ,\n_0_axi_wdata[15]_i_5 }));
FDRE \axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[19]_i_1 ),
        .Q(m00_axi_wdata[16]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[19]_i_1 ),
        .Q(m00_axi_wdata[17]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[19]_i_1 ),
        .Q(m00_axi_wdata[18]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[19]_i_1 ),
        .Q(m00_axi_wdata[19]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[19]_i_1 
       (.CI(\n_0_axi_wdata_reg[15]_i_1 ),
        .CO({\n_0_axi_wdata_reg[19]_i_1 ,\n_1_axi_wdata_reg[19]_i_1 ,\n_2_axi_wdata_reg[19]_i_1 ,\n_3_axi_wdata_reg[19]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[19]_i_1 ,\n_5_axi_wdata_reg[19]_i_1 ,\n_6_axi_wdata_reg[19]_i_1 ,\n_7_axi_wdata_reg[19]_i_1 }),
        .S({\n_0_axi_wdata[19]_i_2 ,\n_0_axi_wdata[19]_i_3 ,\n_0_axi_wdata[19]_i_4 ,\n_0_axi_wdata[19]_i_5 }));
FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[3]_i_1 ),
        .Q(m00_axi_wdata[1]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[23]_i_1 ),
        .Q(m00_axi_wdata[20]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[23]_i_1 ),
        .Q(m00_axi_wdata[21]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[23]_i_1 ),
        .Q(m00_axi_wdata[22]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[23]_i_1 ),
        .Q(m00_axi_wdata[23]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[23]_i_1 
       (.CI(\n_0_axi_wdata_reg[19]_i_1 ),
        .CO({\n_0_axi_wdata_reg[23]_i_1 ,\n_1_axi_wdata_reg[23]_i_1 ,\n_2_axi_wdata_reg[23]_i_1 ,\n_3_axi_wdata_reg[23]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[23]_i_1 ,\n_5_axi_wdata_reg[23]_i_1 ,\n_6_axi_wdata_reg[23]_i_1 ,\n_7_axi_wdata_reg[23]_i_1 }),
        .S({\n_0_axi_wdata[23]_i_2 ,\n_0_axi_wdata[23]_i_3 ,\n_0_axi_wdata[23]_i_4 ,\n_0_axi_wdata[23]_i_5 }));
FDRE \axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[27]_i_1 ),
        .Q(m00_axi_wdata[24]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[27]_i_1 ),
        .Q(m00_axi_wdata[25]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[27]_i_1 ),
        .Q(m00_axi_wdata[26]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[27]_i_1 ),
        .Q(m00_axi_wdata[27]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[27]_i_1 
       (.CI(\n_0_axi_wdata_reg[23]_i_1 ),
        .CO({\n_0_axi_wdata_reg[27]_i_1 ,\n_1_axi_wdata_reg[27]_i_1 ,\n_2_axi_wdata_reg[27]_i_1 ,\n_3_axi_wdata_reg[27]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[27]_i_1 ,\n_5_axi_wdata_reg[27]_i_1 ,\n_6_axi_wdata_reg[27]_i_1 ,\n_7_axi_wdata_reg[27]_i_1 }),
        .S({\n_0_axi_wdata[27]_i_2 ,\n_0_axi_wdata[27]_i_3 ,\n_0_axi_wdata[27]_i_4 ,\n_0_axi_wdata[27]_i_5 }));
FDRE \axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[31]_i_2 ),
        .Q(m00_axi_wdata[28]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[31]_i_2 ),
        .Q(m00_axi_wdata[29]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[3]_i_1 ),
        .Q(m00_axi_wdata[2]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[31]_i_2 ),
        .Q(m00_axi_wdata[30]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[31]_i_2 ),
        .Q(m00_axi_wdata[31]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[31]_i_2 
       (.CI(\n_0_axi_wdata_reg[27]_i_1 ),
        .CO({\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED [3],\n_1_axi_wdata_reg[31]_i_2 ,\n_2_axi_wdata_reg[31]_i_2 ,\n_3_axi_wdata_reg[31]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[31]_i_2 ,\n_5_axi_wdata_reg[31]_i_2 ,\n_6_axi_wdata_reg[31]_i_2 ,\n_7_axi_wdata_reg[31]_i_2 }),
        .S({\n_0_axi_wdata[31]_i_3 ,\n_0_axi_wdata[31]_i_4 ,\n_0_axi_wdata[31]_i_5 ,\n_0_axi_wdata[31]_i_6 }));
FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[3]_i_1 ),
        .Q(m00_axi_wdata[3]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_axi_wdata_reg[3]_i_1 ,\n_1_axi_wdata_reg[3]_i_1 ,\n_2_axi_wdata_reg[3]_i_1 ,\n_3_axi_wdata_reg[3]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_axi_wdata_reg[3]_i_1 ,\n_5_axi_wdata_reg[3]_i_1 ,\n_6_axi_wdata_reg[3]_i_1 ,\n_7_axi_wdata_reg[3]_i_1 }),
        .S({\n_0_axi_wdata[3]_i_2 ,\n_0_axi_wdata[3]_i_3 ,\n_0_axi_wdata[3]_i_4 ,\n_0_axi_wdata[3]_i_5 }));
FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[7]_i_1 ),
        .Q(m00_axi_wdata[4]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[7]_i_1 ),
        .Q(m00_axi_wdata[5]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_5_axi_wdata_reg[7]_i_1 ),
        .Q(m00_axi_wdata[6]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_4_axi_wdata_reg[7]_i_1 ),
        .Q(m00_axi_wdata[7]),
        .R(axi_awvalid1));
CARRY4 \axi_wdata_reg[7]_i_1 
       (.CI(\n_0_axi_wdata_reg[3]_i_1 ),
        .CO({\n_0_axi_wdata_reg[7]_i_1 ,\n_1_axi_wdata_reg[7]_i_1 ,\n_2_axi_wdata_reg[7]_i_1 ,\n_3_axi_wdata_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_axi_wdata_reg[7]_i_1 ,\n_5_axi_wdata_reg[7]_i_1 ,\n_6_axi_wdata_reg[7]_i_1 ,\n_7_axi_wdata_reg[7]_i_1 }),
        .S({\n_0_axi_wdata[7]_i_2 ,\n_0_axi_wdata[7]_i_3 ,\n_0_axi_wdata[7]_i_4 ,\n_0_axi_wdata[7]_i_5 }));
FDRE \axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_7_axi_wdata_reg[11]_i_1 ),
        .Q(m00_axi_wdata[8]),
        .R(axi_awvalid1));
FDRE \axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(p_22_in),
        .D(\n_6_axi_wdata_reg[11]_i_1 ),
        .Q(m00_axi_wdata[9]),
        .R(axi_awvalid1));
LUT5 #(
    .INIT(32'h00BF0080)) 
     axi_wlast_i_1
       (.I0(n_0_axi_wlast_i_2),
        .I1(m00_axi_wready),
        .I2(O4),
        .I3(axi_awvalid1),
        .I4(m00_axi_wlast),
        .O(n_0_axi_wlast_i_1));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00400000)) 
     axi_wlast_i_2
       (.I0(write_index_reg__0[0]),
        .I1(write_index_reg__0[1]),
        .I2(write_index_reg__0[2]),
        .I3(write_index_reg__0[4]),
        .I4(write_index_reg__0[3]),
        .O(n_0_axi_wlast_i_2));
FDRE axi_wlast_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wlast_i_1),
        .Q(m00_axi_wlast),
        .R(1'b0));
LUT5 #(
    .INIT(32'h05445544)) 
     axi_wvalid_i_1
       (.I0(axi_awvalid1),
        .I1(start_single_burst_write),
        .I2(m00_axi_wlast),
        .I3(O4),
        .I4(m00_axi_wready),
        .O(n_0_axi_wvalid_i_1));
FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wvalid_i_1),
        .Q(O4),
        .R(1'b0));
LUT6 #(
    .INIT(64'h5555155555550000)) 
     burst_read_active_i_1
       (.I0(axi_awvalid1),
        .I1(O1),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_rlast),
        .I4(start_single_burst_read),
        .I5(n_0_burst_read_active_reg),
        .O(n_0_burst_read_active_i_1));
FDRE burst_read_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_burst_read_active_i_1),
        .Q(n_0_burst_read_active_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h45554444)) 
     burst_write_active_i_1
       (.I0(axi_awvalid1),
        .I1(start_single_burst_write),
        .I2(m00_axi_bvalid),
        .I3(M_AXI_BREADY),
        .I4(n_0_burst_write_active_reg),
        .O(n_0_burst_write_active_i_1));
FDRE burst_write_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_burst_write_active_i_1),
        .Q(n_0_burst_write_active_reg),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     compare_done_i_1
       (.I0(m00_axi_aresetn),
        .O(n_0_compare_done_i_1));
LUT5 #(
    .INIT(32'hFFFBF000)) 
     compare_done_i_2
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(m00_axi_txn_done),
        .O(n_0_compare_done_i_2));
FDRE compare_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_compare_done_i_2),
        .Q(m00_axi_txn_done),
        .R(n_0_compare_done_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
     error_reg_i_1
       (.I0(n_0_error_reg_i_2),
        .I1(m00_axi_bresp),
        .I2(m00_axi_rresp),
        .I3(p_15_in),
        .I4(read_mismatch),
        .I5(error_reg),
        .O(n_0_error_reg_i_1));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     error_reg_i_2
       (.I0(M_AXI_BREADY),
        .I1(m00_axi_bvalid),
        .O(n_0_error_reg_i_2));
FDRE error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_error_reg_i_1),
        .Q(error_reg),
        .R(axi_awvalid1));
LUT2 #(
    .INIT(4'h8)) 
     \expected_rdata[0]_i_1 
       (.I0(m00_axi_rvalid),
        .I1(O1),
        .O(p_15_in));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[0]_i_3 
       (.I0(expected_rdata_reg[3]),
        .O(\n_0_expected_rdata[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[0]_i_4 
       (.I0(expected_rdata_reg[2]),
        .O(\n_0_expected_rdata[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[0]_i_5 
       (.I0(expected_rdata_reg[1]),
        .O(\n_0_expected_rdata[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \expected_rdata[0]_i_6 
       (.I0(expected_rdata_reg[0]),
        .O(\n_0_expected_rdata[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[12]_i_2 
       (.I0(expected_rdata_reg[15]),
        .O(\n_0_expected_rdata[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[12]_i_3 
       (.I0(expected_rdata_reg[14]),
        .O(\n_0_expected_rdata[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[12]_i_4 
       (.I0(expected_rdata_reg[13]),
        .O(\n_0_expected_rdata[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[12]_i_5 
       (.I0(expected_rdata_reg[12]),
        .O(\n_0_expected_rdata[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[16]_i_2 
       (.I0(expected_rdata_reg[19]),
        .O(\n_0_expected_rdata[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[16]_i_3 
       (.I0(expected_rdata_reg[18]),
        .O(\n_0_expected_rdata[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[16]_i_4 
       (.I0(expected_rdata_reg[17]),
        .O(\n_0_expected_rdata[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[16]_i_5 
       (.I0(expected_rdata_reg[16]),
        .O(\n_0_expected_rdata[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[20]_i_2 
       (.I0(expected_rdata_reg[23]),
        .O(\n_0_expected_rdata[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[20]_i_3 
       (.I0(expected_rdata_reg[22]),
        .O(\n_0_expected_rdata[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[20]_i_4 
       (.I0(expected_rdata_reg[21]),
        .O(\n_0_expected_rdata[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[20]_i_5 
       (.I0(expected_rdata_reg[20]),
        .O(\n_0_expected_rdata[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[24]_i_2 
       (.I0(expected_rdata_reg[27]),
        .O(\n_0_expected_rdata[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[24]_i_3 
       (.I0(expected_rdata_reg[26]),
        .O(\n_0_expected_rdata[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[24]_i_4 
       (.I0(expected_rdata_reg[25]),
        .O(\n_0_expected_rdata[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[24]_i_5 
       (.I0(expected_rdata_reg[24]),
        .O(\n_0_expected_rdata[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[28]_i_2 
       (.I0(expected_rdata_reg[31]),
        .O(\n_0_expected_rdata[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[28]_i_3 
       (.I0(expected_rdata_reg[30]),
        .O(\n_0_expected_rdata[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[28]_i_4 
       (.I0(expected_rdata_reg[29]),
        .O(\n_0_expected_rdata[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[28]_i_5 
       (.I0(expected_rdata_reg[28]),
        .O(\n_0_expected_rdata[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[4]_i_2 
       (.I0(expected_rdata_reg[7]),
        .O(\n_0_expected_rdata[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[4]_i_3 
       (.I0(expected_rdata_reg[6]),
        .O(\n_0_expected_rdata[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[4]_i_4 
       (.I0(expected_rdata_reg[5]),
        .O(\n_0_expected_rdata[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[4]_i_5 
       (.I0(expected_rdata_reg[4]),
        .O(\n_0_expected_rdata[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[8]_i_2 
       (.I0(expected_rdata_reg[11]),
        .O(\n_0_expected_rdata[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[8]_i_3 
       (.I0(expected_rdata_reg[10]),
        .O(\n_0_expected_rdata[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[8]_i_4 
       (.I0(expected_rdata_reg[9]),
        .O(\n_0_expected_rdata[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \expected_rdata[8]_i_5 
       (.I0(expected_rdata_reg[8]),
        .O(\n_0_expected_rdata[8]_i_5 ));
FDSE \expected_rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[0]_i_2 ),
        .Q(expected_rdata_reg[0]),
        .S(axi_awvalid1));
CARRY4 \expected_rdata_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_expected_rdata_reg[0]_i_2 ,\n_1_expected_rdata_reg[0]_i_2 ,\n_2_expected_rdata_reg[0]_i_2 ,\n_3_expected_rdata_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_expected_rdata_reg[0]_i_2 ,\n_5_expected_rdata_reg[0]_i_2 ,\n_6_expected_rdata_reg[0]_i_2 ,\n_7_expected_rdata_reg[0]_i_2 }),
        .S({\n_0_expected_rdata[0]_i_3 ,\n_0_expected_rdata[0]_i_4 ,\n_0_expected_rdata[0]_i_5 ,\n_0_expected_rdata[0]_i_6 }));
FDRE \expected_rdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[8]_i_1 ),
        .Q(expected_rdata_reg[10]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[8]_i_1 ),
        .Q(expected_rdata_reg[11]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[12]_i_1 ),
        .Q(expected_rdata_reg[12]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[12]_i_1 
       (.CI(\n_0_expected_rdata_reg[8]_i_1 ),
        .CO({\n_0_expected_rdata_reg[12]_i_1 ,\n_1_expected_rdata_reg[12]_i_1 ,\n_2_expected_rdata_reg[12]_i_1 ,\n_3_expected_rdata_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[12]_i_1 ,\n_5_expected_rdata_reg[12]_i_1 ,\n_6_expected_rdata_reg[12]_i_1 ,\n_7_expected_rdata_reg[12]_i_1 }),
        .S({\n_0_expected_rdata[12]_i_2 ,\n_0_expected_rdata[12]_i_3 ,\n_0_expected_rdata[12]_i_4 ,\n_0_expected_rdata[12]_i_5 }));
FDRE \expected_rdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[12]_i_1 ),
        .Q(expected_rdata_reg[13]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[12]_i_1 ),
        .Q(expected_rdata_reg[14]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[12]_i_1 ),
        .Q(expected_rdata_reg[15]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[16]_i_1 ),
        .Q(expected_rdata_reg[16]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[16]_i_1 
       (.CI(\n_0_expected_rdata_reg[12]_i_1 ),
        .CO({\n_0_expected_rdata_reg[16]_i_1 ,\n_1_expected_rdata_reg[16]_i_1 ,\n_2_expected_rdata_reg[16]_i_1 ,\n_3_expected_rdata_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[16]_i_1 ,\n_5_expected_rdata_reg[16]_i_1 ,\n_6_expected_rdata_reg[16]_i_1 ,\n_7_expected_rdata_reg[16]_i_1 }),
        .S({\n_0_expected_rdata[16]_i_2 ,\n_0_expected_rdata[16]_i_3 ,\n_0_expected_rdata[16]_i_4 ,\n_0_expected_rdata[16]_i_5 }));
FDRE \expected_rdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[16]_i_1 ),
        .Q(expected_rdata_reg[17]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[16]_i_1 ),
        .Q(expected_rdata_reg[18]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[16]_i_1 ),
        .Q(expected_rdata_reg[19]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[0]_i_2 ),
        .Q(expected_rdata_reg[1]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[20]_i_1 ),
        .Q(expected_rdata_reg[20]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[20]_i_1 
       (.CI(\n_0_expected_rdata_reg[16]_i_1 ),
        .CO({\n_0_expected_rdata_reg[20]_i_1 ,\n_1_expected_rdata_reg[20]_i_1 ,\n_2_expected_rdata_reg[20]_i_1 ,\n_3_expected_rdata_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[20]_i_1 ,\n_5_expected_rdata_reg[20]_i_1 ,\n_6_expected_rdata_reg[20]_i_1 ,\n_7_expected_rdata_reg[20]_i_1 }),
        .S({\n_0_expected_rdata[20]_i_2 ,\n_0_expected_rdata[20]_i_3 ,\n_0_expected_rdata[20]_i_4 ,\n_0_expected_rdata[20]_i_5 }));
FDRE \expected_rdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[20]_i_1 ),
        .Q(expected_rdata_reg[21]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[20]_i_1 ),
        .Q(expected_rdata_reg[22]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[20]_i_1 ),
        .Q(expected_rdata_reg[23]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[24]_i_1 ),
        .Q(expected_rdata_reg[24]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[24]_i_1 
       (.CI(\n_0_expected_rdata_reg[20]_i_1 ),
        .CO({\n_0_expected_rdata_reg[24]_i_1 ,\n_1_expected_rdata_reg[24]_i_1 ,\n_2_expected_rdata_reg[24]_i_1 ,\n_3_expected_rdata_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[24]_i_1 ,\n_5_expected_rdata_reg[24]_i_1 ,\n_6_expected_rdata_reg[24]_i_1 ,\n_7_expected_rdata_reg[24]_i_1 }),
        .S({\n_0_expected_rdata[24]_i_2 ,\n_0_expected_rdata[24]_i_3 ,\n_0_expected_rdata[24]_i_4 ,\n_0_expected_rdata[24]_i_5 }));
FDRE \expected_rdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[24]_i_1 ),
        .Q(expected_rdata_reg[25]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[24]_i_1 ),
        .Q(expected_rdata_reg[26]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[24]_i_1 ),
        .Q(expected_rdata_reg[27]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[28]_i_1 ),
        .Q(expected_rdata_reg[28]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[28]_i_1 
       (.CI(\n_0_expected_rdata_reg[24]_i_1 ),
        .CO({\NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_expected_rdata_reg[28]_i_1 ,\n_2_expected_rdata_reg[28]_i_1 ,\n_3_expected_rdata_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[28]_i_1 ,\n_5_expected_rdata_reg[28]_i_1 ,\n_6_expected_rdata_reg[28]_i_1 ,\n_7_expected_rdata_reg[28]_i_1 }),
        .S({\n_0_expected_rdata[28]_i_2 ,\n_0_expected_rdata[28]_i_3 ,\n_0_expected_rdata[28]_i_4 ,\n_0_expected_rdata[28]_i_5 }));
FDRE \expected_rdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[28]_i_1 ),
        .Q(expected_rdata_reg[29]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[0]_i_2 ),
        .Q(expected_rdata_reg[2]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[28]_i_1 ),
        .Q(expected_rdata_reg[30]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[28]_i_1 ),
        .Q(expected_rdata_reg[31]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[0]_i_2 ),
        .Q(expected_rdata_reg[3]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[4]_i_1 ),
        .Q(expected_rdata_reg[4]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[4]_i_1 
       (.CI(\n_0_expected_rdata_reg[0]_i_2 ),
        .CO({\n_0_expected_rdata_reg[4]_i_1 ,\n_1_expected_rdata_reg[4]_i_1 ,\n_2_expected_rdata_reg[4]_i_1 ,\n_3_expected_rdata_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[4]_i_1 ,\n_5_expected_rdata_reg[4]_i_1 ,\n_6_expected_rdata_reg[4]_i_1 ,\n_7_expected_rdata_reg[4]_i_1 }),
        .S({\n_0_expected_rdata[4]_i_2 ,\n_0_expected_rdata[4]_i_3 ,\n_0_expected_rdata[4]_i_4 ,\n_0_expected_rdata[4]_i_5 }));
FDRE \expected_rdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[4]_i_1 ),
        .Q(expected_rdata_reg[5]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_5_expected_rdata_reg[4]_i_1 ),
        .Q(expected_rdata_reg[6]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_4_expected_rdata_reg[4]_i_1 ),
        .Q(expected_rdata_reg[7]),
        .R(axi_awvalid1));
FDRE \expected_rdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_7_expected_rdata_reg[8]_i_1 ),
        .Q(expected_rdata_reg[8]),
        .R(axi_awvalid1));
CARRY4 \expected_rdata_reg[8]_i_1 
       (.CI(\n_0_expected_rdata_reg[4]_i_1 ),
        .CO({\n_0_expected_rdata_reg[8]_i_1 ,\n_1_expected_rdata_reg[8]_i_1 ,\n_2_expected_rdata_reg[8]_i_1 ,\n_3_expected_rdata_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_expected_rdata_reg[8]_i_1 ,\n_5_expected_rdata_reg[8]_i_1 ,\n_6_expected_rdata_reg[8]_i_1 ,\n_7_expected_rdata_reg[8]_i_1 }),
        .S({\n_0_expected_rdata[8]_i_2 ,\n_0_expected_rdata[8]_i_3 ,\n_0_expected_rdata[8]_i_4 ,\n_0_expected_rdata[8]_i_5 }));
FDRE \expected_rdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\n_6_expected_rdata_reg[8]_i_1 ),
        .Q(expected_rdata_reg[9]),
        .R(axi_awvalid1));
FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(n_0_compare_done_i_1));
FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn),
        .Q(init_txn_ff),
        .R(n_0_compare_done_i_1));
CARRY4 \m00_axi_araddr[29]_INST_0 
       (.CI(1'b0),
        .CO({\NLW_m00_axi_araddr[29]_INST_0_CO_UNCONNECTED [3:2],\n_2_m00_axi_araddr[29]_INST_0 ,\n_3_m00_axi_araddr[29]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_araddr_reg[30],1'b0}),
        .O({\NLW_m00_axi_araddr[29]_INST_0_O_UNCONNECTED [3],m00_axi_araddr[25:23]}),
        .S({1'b0,\n_0_m00_axi_araddr[29]_INST_0_i_1 ,\n_0_m00_axi_araddr[29]_INST_0_i_2 ,\n_0_m00_axi_araddr[29]_INST_0_i_3 }));
LUT1 #(
    .INIT(2'h2)) 
     \m00_axi_araddr[29]_INST_0_i_1 
       (.I0(axi_araddr_reg[31]),
        .O(\n_0_m00_axi_araddr[29]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \m00_axi_araddr[29]_INST_0_i_2 
       (.I0(axi_araddr_reg[30]),
        .O(\n_0_m00_axi_araddr[29]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \m00_axi_araddr[29]_INST_0_i_3 
       (.I0(axi_araddr_reg[29]),
        .O(\n_0_m00_axi_araddr[29]_INST_0_i_3 ));
CARRY4 \m00_axi_awaddr[29]_INST_0 
       (.CI(1'b0),
        .CO({\NLW_m00_axi_awaddr[29]_INST_0_CO_UNCONNECTED [3:2],\n_2_m00_axi_awaddr[29]_INST_0 ,\n_3_m00_axi_awaddr[29]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_awaddr_reg[30],1'b0}),
        .O({\NLW_m00_axi_awaddr[29]_INST_0_O_UNCONNECTED [3],m00_axi_awaddr[25:23]}),
        .S({1'b0,\n_0_m00_axi_awaddr[29]_INST_0_i_1 ,\n_0_m00_axi_awaddr[29]_INST_0_i_2 ,\n_0_m00_axi_awaddr[29]_INST_0_i_3 }));
LUT1 #(
    .INIT(2'h2)) 
     \m00_axi_awaddr[29]_INST_0_i_1 
       (.I0(axi_awaddr_reg[31]),
        .O(\n_0_m00_axi_awaddr[29]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \m00_axi_awaddr[29]_INST_0_i_2 
       (.I0(axi_awaddr_reg[30]),
        .O(\n_0_m00_axi_awaddr[29]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \m00_axi_awaddr[29]_INST_0_i_3 
       (.I0(axi_awaddr_reg[29]),
        .O(\n_0_m00_axi_awaddr[29]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h00FF0F2200000F22)) 
     \mst_exec_state[0]_i_1 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .I2(writes_done),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .I5(reads_done),
        .O(\n_0_mst_exec_state[0]_i_1 ));
LUT3 #(
    .INIT(8'h38)) 
     \mst_exec_state[1]_i_1 
       (.I0(writes_done),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\n_0_mst_exec_state[1]_i_1 ));
FDRE \mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\n_0_mst_exec_state[0]_i_1 ),
        .Q(mst_exec_state[0]),
        .R(n_0_compare_done_i_1));
FDRE \mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\n_0_mst_exec_state[1]_i_1 ),
        .Q(mst_exec_state[1]),
        .R(n_0_compare_done_i_1));
LUT1 #(
    .INIT(2'h1)) 
     \read_burst_counter[0]_i_1 
       (.I0(\n_0_read_burst_counter_reg[0] ),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \read_burst_counter[1]_i_1 
       (.I0(\n_0_read_burst_counter_reg[0] ),
        .I1(\n_0_read_burst_counter_reg[1] ),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \read_burst_counter[2]_i_1 
       (.I0(\n_0_read_burst_counter_reg[1] ),
        .I1(\n_0_read_burst_counter_reg[0] ),
        .I2(\n_0_read_burst_counter_reg[2] ),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \read_burst_counter[3]_i_1 
       (.I0(\n_0_read_burst_counter_reg[2] ),
        .I1(\n_0_read_burst_counter_reg[0] ),
        .I2(\n_0_read_burst_counter_reg[1] ),
        .I3(\n_0_read_burst_counter_reg[3] ),
        .O(p_0_in__0[3]));
LUT3 #(
    .INIT(8'h08)) 
     \read_burst_counter[4]_i_1 
       (.I0(m00_axi_arready),
        .I1(O2),
        .I2(p_0_in6_in),
        .O(\n_0_read_burst_counter[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \read_burst_counter[4]_i_2 
       (.I0(\n_0_read_burst_counter_reg[3] ),
        .I1(\n_0_read_burst_counter_reg[1] ),
        .I2(\n_0_read_burst_counter_reg[0] ),
        .I3(\n_0_read_burst_counter_reg[2] ),
        .I4(p_0_in6_in),
        .O(p_0_in__0[4]));
FDRE \read_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\n_0_read_burst_counter[4]_i_1 ),
        .D(p_0_in__0[0]),
        .Q(\n_0_read_burst_counter_reg[0] ),
        .R(axi_awvalid1));
FDRE \read_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\n_0_read_burst_counter[4]_i_1 ),
        .D(p_0_in__0[1]),
        .Q(\n_0_read_burst_counter_reg[1] ),
        .R(axi_awvalid1));
FDRE \read_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\n_0_read_burst_counter[4]_i_1 ),
        .D(p_0_in__0[2]),
        .Q(\n_0_read_burst_counter_reg[2] ),
        .R(axi_awvalid1));
FDRE \read_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\n_0_read_burst_counter[4]_i_1 ),
        .D(p_0_in__0[3]),
        .Q(\n_0_read_burst_counter_reg[3] ),
        .R(axi_awvalid1));
FDRE \read_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\n_0_read_burst_counter[4]_i_1 ),
        .D(p_0_in__0[4]),
        .Q(p_0_in6_in),
        .R(axi_awvalid1));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \read_index[0]_i_1 
       (.I0(read_index_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \read_index[1]_i_1 
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \read_index[2]_i_1 
       (.I0(read_index_reg__0[1]),
        .I1(read_index_reg__0[0]),
        .I2(read_index_reg__0[2]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \read_index[3]_i_1 
       (.I0(read_index_reg__0[2]),
        .I1(read_index_reg__0[0]),
        .I2(read_index_reg__0[1]),
        .I3(read_index_reg__0[3]),
        .O(p_0_in[3]));
LUT2 #(
    .INIT(4'hE)) 
     \read_index[4]_i_1 
       (.I0(axi_awvalid1),
        .I1(start_single_burst_read),
        .O(\n_0_read_index[4]_i_1 ));
LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
     \read_index[4]_i_2 
       (.I0(read_index_reg__0[4]),
        .I1(read_index_reg__0[2]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[1]),
        .I4(read_index_reg__0[3]),
        .I5(p_15_in),
        .O(read_index0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \read_index[4]_i_3 
       (.I0(read_index_reg__0[4]),
        .I1(read_index_reg__0[2]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[1]),
        .I4(read_index_reg__0[3]),
        .O(p_0_in[4]));
FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in[0]),
        .Q(read_index_reg__0[0]),
        .R(\n_0_read_index[4]_i_1 ));
FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in[1]),
        .Q(read_index_reg__0[1]),
        .R(\n_0_read_index[4]_i_1 ));
FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in[2]),
        .Q(read_index_reg__0[2]),
        .R(\n_0_read_index[4]_i_1 ));
FDRE \read_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in[3]),
        .Q(read_index_reg__0[3]),
        .R(\n_0_read_index[4]_i_1 ));
FDRE \read_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_index0),
        .D(p_0_in[4]),
        .Q(read_index_reg__0[4]),
        .R(\n_0_read_index[4]_i_1 ));
LUT3 #(
    .INIT(8'h80)) 
     read_mismatch_i_1
       (.I0(O1),
        .I1(m00_axi_rvalid),
        .I2(read_mismatch1),
        .O(read_mismatch0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_10
       (.I0(expected_rdata_reg[17]),
        .I1(m00_axi_rdata[17]),
        .I2(expected_rdata_reg[16]),
        .I3(m00_axi_rdata[16]),
        .I4(m00_axi_rdata[15]),
        .I5(expected_rdata_reg[15]),
        .O(n_0_read_mismatch_i_10));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_11
       (.I0(expected_rdata_reg[14]),
        .I1(m00_axi_rdata[14]),
        .I2(expected_rdata_reg[13]),
        .I3(m00_axi_rdata[13]),
        .I4(m00_axi_rdata[12]),
        .I5(expected_rdata_reg[12]),
        .O(n_0_read_mismatch_i_11));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_12
       (.I0(expected_rdata_reg[11]),
        .I1(m00_axi_rdata[11]),
        .I2(expected_rdata_reg[10]),
        .I3(m00_axi_rdata[10]),
        .I4(m00_axi_rdata[9]),
        .I5(expected_rdata_reg[9]),
        .O(n_0_read_mismatch_i_12));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_13
       (.I0(expected_rdata_reg[8]),
        .I1(m00_axi_rdata[8]),
        .I2(expected_rdata_reg[7]),
        .I3(m00_axi_rdata[7]),
        .I4(m00_axi_rdata[6]),
        .I5(expected_rdata_reg[6]),
        .O(n_0_read_mismatch_i_13));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_14
       (.I0(expected_rdata_reg[5]),
        .I1(m00_axi_rdata[5]),
        .I2(expected_rdata_reg[4]),
        .I3(m00_axi_rdata[4]),
        .I4(m00_axi_rdata[3]),
        .I5(expected_rdata_reg[3]),
        .O(n_0_read_mismatch_i_14));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_15
       (.I0(expected_rdata_reg[2]),
        .I1(m00_axi_rdata[2]),
        .I2(expected_rdata_reg[1]),
        .I3(m00_axi_rdata[1]),
        .I4(m00_axi_rdata[0]),
        .I5(expected_rdata_reg[0]),
        .O(n_0_read_mismatch_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     read_mismatch_i_4
       (.I0(expected_rdata_reg[31]),
        .I1(m00_axi_rdata[31]),
        .I2(expected_rdata_reg[30]),
        .I3(m00_axi_rdata[30]),
        .O(n_0_read_mismatch_i_4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_5
       (.I0(expected_rdata_reg[29]),
        .I1(m00_axi_rdata[29]),
        .I2(expected_rdata_reg[28]),
        .I3(m00_axi_rdata[28]),
        .I4(m00_axi_rdata[27]),
        .I5(expected_rdata_reg[27]),
        .O(n_0_read_mismatch_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_6
       (.I0(expected_rdata_reg[26]),
        .I1(m00_axi_rdata[26]),
        .I2(expected_rdata_reg[25]),
        .I3(m00_axi_rdata[25]),
        .I4(m00_axi_rdata[24]),
        .I5(expected_rdata_reg[24]),
        .O(n_0_read_mismatch_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_8
       (.I0(expected_rdata_reg[23]),
        .I1(m00_axi_rdata[23]),
        .I2(expected_rdata_reg[22]),
        .I3(m00_axi_rdata[22]),
        .I4(m00_axi_rdata[21]),
        .I5(expected_rdata_reg[21]),
        .O(n_0_read_mismatch_i_8));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     read_mismatch_i_9
       (.I0(expected_rdata_reg[20]),
        .I1(m00_axi_rdata[20]),
        .I2(expected_rdata_reg[19]),
        .I3(m00_axi_rdata[19]),
        .I4(m00_axi_rdata[18]),
        .I5(expected_rdata_reg[18]),
        .O(n_0_read_mismatch_i_9));
FDRE read_mismatch_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_mismatch0),
        .Q(read_mismatch),
        .R(axi_awvalid1));
CARRY4 read_mismatch_reg_i_2
       (.CI(n_0_read_mismatch_reg_i_3),
        .CO({NLW_read_mismatch_reg_i_2_CO_UNCONNECTED[3],read_mismatch1,n_2_read_mismatch_reg_i_2,n_3_read_mismatch_reg_i_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,n_0_read_mismatch_i_4,n_0_read_mismatch_i_5,n_0_read_mismatch_i_6}));
CARRY4 read_mismatch_reg_i_3
       (.CI(n_0_read_mismatch_reg_i_7),
        .CO({n_0_read_mismatch_reg_i_3,n_1_read_mismatch_reg_i_3,n_2_read_mismatch_reg_i_3,n_3_read_mismatch_reg_i_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch_reg_i_3_O_UNCONNECTED[3:0]),
        .S({n_0_read_mismatch_i_8,n_0_read_mismatch_i_9,n_0_read_mismatch_i_10,n_0_read_mismatch_i_11}));
CARRY4 read_mismatch_reg_i_7
       (.CI(1'b0),
        .CO({n_0_read_mismatch_reg_i_7,n_1_read_mismatch_reg_i_7,n_2_read_mismatch_reg_i_7,n_3_read_mismatch_reg_i_7}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch_reg_i_7_O_UNCONNECTED[3:0]),
        .S({n_0_read_mismatch_i_12,n_0_read_mismatch_i_13,n_0_read_mismatch_i_14,n_0_read_mismatch_i_15}));
LUT5 #(
    .INIT(32'hFFFF4000)) 
     reads_done_i_1
       (.I0(n_0_reads_done_i_2),
        .I1(O1),
        .I2(m00_axi_rvalid),
        .I3(p_0_in6_in),
        .I4(reads_done),
        .O(n_0_reads_done_i_1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hFFFF7FFF)) 
     reads_done_i_2
       (.I0(read_index_reg__0[3]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[2]),
        .I4(read_index_reg__0[4]),
        .O(n_0_reads_done_i_2));
FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_reads_done_i_1),
        .Q(reads_done),
        .R(axi_awvalid1));
LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
     start_single_burst_read_i_1
       (.I0(O2),
        .I1(n_0_burst_read_active_reg),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(reads_done),
        .I5(start_single_burst_read),
        .O(n_0_start_single_burst_read_i_1));
FDRE start_single_burst_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_start_single_burst_read_i_1),
        .Q(start_single_burst_read),
        .R(n_0_compare_done_i_1));
LUT6 #(
    .INIT(64'hFFFFF0FF00000100)) 
     start_single_burst_write_i_1
       (.I0(O3),
        .I1(n_0_burst_write_active_reg),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .I4(writes_done),
        .I5(start_single_burst_write),
        .O(n_0_start_single_burst_write_i_1));
FDRE start_single_burst_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_start_single_burst_write_i_1),
        .Q(start_single_burst_write),
        .R(n_0_compare_done_i_1));
LUT1 #(
    .INIT(2'h1)) 
     \write_burst_counter[0]_i_1 
       (.I0(\n_0_write_burst_counter_reg[0] ),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \write_burst_counter[1]_i_1 
       (.I0(\n_0_write_burst_counter_reg[0] ),
        .I1(\n_0_write_burst_counter_reg[1] ),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \write_burst_counter[2]_i_1 
       (.I0(\n_0_write_burst_counter_reg[1] ),
        .I1(\n_0_write_burst_counter_reg[0] ),
        .I2(\n_0_write_burst_counter_reg[2] ),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \write_burst_counter[3]_i_1 
       (.I0(\n_0_write_burst_counter_reg[2] ),
        .I1(\n_0_write_burst_counter_reg[0] ),
        .I2(\n_0_write_burst_counter_reg[1] ),
        .I3(\n_0_write_burst_counter_reg[3] ),
        .O(p_0_in__1[3]));
LUT3 #(
    .INIT(8'h08)) 
     \write_burst_counter[4]_i_1 
       (.I0(m00_axi_awready),
        .I1(O3),
        .I2(p_0_in9_in),
        .O(\n_0_write_burst_counter[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \write_burst_counter[4]_i_2 
       (.I0(\n_0_write_burst_counter_reg[3] ),
        .I1(\n_0_write_burst_counter_reg[1] ),
        .I2(\n_0_write_burst_counter_reg[0] ),
        .I3(\n_0_write_burst_counter_reg[2] ),
        .I4(p_0_in9_in),
        .O(p_0_in__1[4]));
FDRE \write_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\n_0_write_burst_counter[4]_i_1 ),
        .D(p_0_in__1[0]),
        .Q(\n_0_write_burst_counter_reg[0] ),
        .R(axi_awvalid1));
FDRE \write_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\n_0_write_burst_counter[4]_i_1 ),
        .D(p_0_in__1[1]),
        .Q(\n_0_write_burst_counter_reg[1] ),
        .R(axi_awvalid1));
FDRE \write_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\n_0_write_burst_counter[4]_i_1 ),
        .D(p_0_in__1[2]),
        .Q(\n_0_write_burst_counter_reg[2] ),
        .R(axi_awvalid1));
FDRE \write_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\n_0_write_burst_counter[4]_i_1 ),
        .D(p_0_in__1[3]),
        .Q(\n_0_write_burst_counter_reg[3] ),
        .R(axi_awvalid1));
FDRE \write_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\n_0_write_burst_counter[4]_i_1 ),
        .D(p_0_in__1[4]),
        .Q(p_0_in9_in),
        .R(axi_awvalid1));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \write_index[0]_i_1 
       (.I0(write_index_reg__0[0]),
        .O(\n_0_write_index[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \write_index[1]_i_1 
       (.I0(write_index_reg__0[0]),
        .I1(write_index_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \write_index[2]_i_1 
       (.I0(write_index_reg__0[1]),
        .I1(write_index_reg__0[0]),
        .I2(write_index_reg__0[2]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \write_index[3]_i_1 
       (.I0(write_index_reg__0[2]),
        .I1(write_index_reg__0[0]),
        .I2(write_index_reg__0[1]),
        .I3(write_index_reg__0[3]),
        .O(p_0_in__2[3]));
LUT2 #(
    .INIT(4'hE)) 
     \write_index[4]_i_1 
       (.I0(axi_awvalid1),
        .I1(start_single_burst_write),
        .O(\n_0_write_index[4]_i_1 ));
LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
     \write_index[4]_i_2 
       (.I0(write_index_reg__0[4]),
        .I1(write_index_reg__0[2]),
        .I2(write_index_reg__0[0]),
        .I3(write_index_reg__0[1]),
        .I4(write_index_reg__0[3]),
        .I5(p_22_in),
        .O(write_index0));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \write_index[4]_i_3 
       (.I0(write_index_reg__0[4]),
        .I1(write_index_reg__0[2]),
        .I2(write_index_reg__0[0]),
        .I3(write_index_reg__0[1]),
        .I4(write_index_reg__0[3]),
        .O(p_0_in__2[4]));
FDRE \write_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(\n_0_write_index[0]_i_1 ),
        .Q(write_index_reg__0[0]),
        .R(\n_0_write_index[4]_i_1 ));
FDRE \write_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[1]),
        .Q(write_index_reg__0[1]),
        .R(\n_0_write_index[4]_i_1 ));
FDRE \write_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[2]),
        .Q(write_index_reg__0[2]),
        .R(\n_0_write_index[4]_i_1 ));
FDRE \write_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[3]),
        .Q(write_index_reg__0[3]),
        .R(\n_0_write_index[4]_i_1 ));
FDRE \write_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_index0),
        .D(p_0_in__2[4]),
        .Q(write_index_reg__0[4]),
        .R(\n_0_write_index[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'hFF80)) 
     writes_done_i_1
       (.I0(p_0_in9_in),
        .I1(M_AXI_BREADY),
        .I2(m00_axi_bvalid),
        .I3(writes_done),
        .O(n_0_writes_done_i_1));
FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(n_0_writes_done_i_1),
        .Q(writes_done),
        .R(axi_awvalid1));
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
