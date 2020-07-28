//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Tue Jul 28 16:08:04 2020
//Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
   (m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_error,
    m00_axi_init_axi_txn,
    m00_axi_txn_done);
  input m00_axi_aclk;
  input m00_axi_aresetn;
  output m00_axi_error;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;

  wire GND_1;
  wire [31:0]axi_full_master_0_M00_AXI_ARADDR;
  wire [1:0]axi_full_master_0_M00_AXI_ARBURST;
  wire [3:0]axi_full_master_0_M00_AXI_ARCACHE;
  wire [0:0]axi_full_master_0_M00_AXI_ARID;
  wire [7:0]axi_full_master_0_M00_AXI_ARLEN;
  wire axi_full_master_0_M00_AXI_ARLOCK;
  wire [2:0]axi_full_master_0_M00_AXI_ARPROT;
  wire [3:0]axi_full_master_0_M00_AXI_ARQOS;
  wire axi_full_master_0_M00_AXI_ARREADY;
  wire [2:0]axi_full_master_0_M00_AXI_ARSIZE;
  wire axi_full_master_0_M00_AXI_ARVALID;
  wire [31:0]axi_full_master_0_M00_AXI_AWADDR;
  wire [1:0]axi_full_master_0_M00_AXI_AWBURST;
  wire [3:0]axi_full_master_0_M00_AXI_AWCACHE;
  wire [0:0]axi_full_master_0_M00_AXI_AWID;
  wire [7:0]axi_full_master_0_M00_AXI_AWLEN;
  wire axi_full_master_0_M00_AXI_AWLOCK;
  wire [2:0]axi_full_master_0_M00_AXI_AWPROT;
  wire [3:0]axi_full_master_0_M00_AXI_AWQOS;
  wire axi_full_master_0_M00_AXI_AWREADY;
  wire [2:0]axi_full_master_0_M00_AXI_AWSIZE;
  wire axi_full_master_0_M00_AXI_AWVALID;
  wire [0:0]axi_full_master_0_M00_AXI_BID;
  wire axi_full_master_0_M00_AXI_BREADY;
  wire [1:0]axi_full_master_0_M00_AXI_BRESP;
  wire axi_full_master_0_M00_AXI_BVALID;
  wire [31:0]axi_full_master_0_M00_AXI_RDATA;
  wire [0:0]axi_full_master_0_M00_AXI_RID;
  wire axi_full_master_0_M00_AXI_RLAST;
  wire axi_full_master_0_M00_AXI_RREADY;
  wire [1:0]axi_full_master_0_M00_AXI_RRESP;
  wire axi_full_master_0_M00_AXI_RVALID;
  wire [31:0]axi_full_master_0_M00_AXI_WDATA;
  wire axi_full_master_0_M00_AXI_WLAST;
  wire axi_full_master_0_M00_AXI_WREADY;
  wire [3:0]axi_full_master_0_M00_AXI_WSTRB;
  wire axi_full_master_0_M00_AXI_WVALID;
  wire axi_full_master_0_m00_axi_error;
  wire axi_full_master_0_m00_axi_txn_done;
  wire m00_axi_aclk_1;
  wire m00_axi_aresetn_1;
  wire m00_axi_init_axi_txn_1;

  assign m00_axi_aclk_1 = m00_axi_aclk;
  assign m00_axi_aresetn_1 = m00_axi_aresetn;
  assign m00_axi_error = axi_full_master_0_m00_axi_error;
  assign m00_axi_init_axi_txn_1 = m00_axi_init_axi_txn;
  assign m00_axi_txn_done = axi_full_master_0_m00_axi_txn_done;
GND GND
       (.G(GND_1));
design_1_axi_full_master_0_0 axi_full_master_0
       (.m00_axi_aclk(m00_axi_aclk_1),
        .m00_axi_araddr(axi_full_master_0_M00_AXI_ARADDR),
        .m00_axi_arburst(axi_full_master_0_M00_AXI_ARBURST),
        .m00_axi_arcache(axi_full_master_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(m00_axi_aresetn_1),
        .m00_axi_arid(axi_full_master_0_M00_AXI_ARID),
        .m00_axi_arlen(axi_full_master_0_M00_AXI_ARLEN),
        .m00_axi_arlock(axi_full_master_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(axi_full_master_0_M00_AXI_ARPROT),
        .m00_axi_arqos(axi_full_master_0_M00_AXI_ARQOS),
        .m00_axi_arready(axi_full_master_0_M00_AXI_ARREADY),
        .m00_axi_arsize(axi_full_master_0_M00_AXI_ARSIZE),
        .m00_axi_arvalid(axi_full_master_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(axi_full_master_0_M00_AXI_AWADDR),
        .m00_axi_awburst(axi_full_master_0_M00_AXI_AWBURST),
        .m00_axi_awcache(axi_full_master_0_M00_AXI_AWCACHE),
        .m00_axi_awid(axi_full_master_0_M00_AXI_AWID),
        .m00_axi_awlen(axi_full_master_0_M00_AXI_AWLEN),
        .m00_axi_awlock(axi_full_master_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(axi_full_master_0_M00_AXI_AWPROT),
        .m00_axi_awqos(axi_full_master_0_M00_AXI_AWQOS),
        .m00_axi_awready(axi_full_master_0_M00_AXI_AWREADY),
        .m00_axi_awsize(axi_full_master_0_M00_AXI_AWSIZE),
        .m00_axi_awvalid(axi_full_master_0_M00_AXI_AWVALID),
        .m00_axi_bid(axi_full_master_0_M00_AXI_BID),
        .m00_axi_bready(axi_full_master_0_M00_AXI_BREADY),
        .m00_axi_bresp(axi_full_master_0_M00_AXI_BRESP),
        .m00_axi_bvalid(axi_full_master_0_M00_AXI_BVALID),
        .m00_axi_error(axi_full_master_0_m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn_1),
        .m00_axi_rdata(axi_full_master_0_M00_AXI_RDATA),
        .m00_axi_rid(axi_full_master_0_M00_AXI_RID),
        .m00_axi_rlast(axi_full_master_0_M00_AXI_RLAST),
        .m00_axi_rready(axi_full_master_0_M00_AXI_RREADY),
        .m00_axi_rresp(axi_full_master_0_M00_AXI_RRESP),
        .m00_axi_rvalid(axi_full_master_0_M00_AXI_RVALID),
        .m00_axi_txn_done(axi_full_master_0_m00_axi_txn_done),
        .m00_axi_wdata(axi_full_master_0_M00_AXI_WDATA),
        .m00_axi_wlast(axi_full_master_0_M00_AXI_WLAST),
        .m00_axi_wready(axi_full_master_0_M00_AXI_WREADY),
        .m00_axi_wstrb(axi_full_master_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(axi_full_master_0_M00_AXI_WVALID));
design_1_axi_full_slave2_0_0 axi_full_slave2_0
       (.s00_axi_aclk(m00_axi_aclk_1),
        .s00_axi_araddr(axi_full_master_0_M00_AXI_ARADDR[9:0]),
        .s00_axi_arburst(axi_full_master_0_M00_AXI_ARBURST),
        .s00_axi_arcache(axi_full_master_0_M00_AXI_ARCACHE),
        .s00_axi_aresetn(m00_axi_aresetn_1),
        .s00_axi_arid(axi_full_master_0_M00_AXI_ARID),
        .s00_axi_arlen(axi_full_master_0_M00_AXI_ARLEN),
        .s00_axi_arlock(axi_full_master_0_M00_AXI_ARLOCK),
        .s00_axi_arprot(axi_full_master_0_M00_AXI_ARPROT),
        .s00_axi_arqos(axi_full_master_0_M00_AXI_ARQOS),
        .s00_axi_arready(axi_full_master_0_M00_AXI_ARREADY),
        .s00_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s00_axi_arsize(axi_full_master_0_M00_AXI_ARSIZE),
        .s00_axi_arvalid(axi_full_master_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(axi_full_master_0_M00_AXI_AWADDR[9:0]),
        .s00_axi_awburst(axi_full_master_0_M00_AXI_AWBURST),
        .s00_axi_awcache(axi_full_master_0_M00_AXI_AWCACHE),
        .s00_axi_awid(axi_full_master_0_M00_AXI_AWID),
        .s00_axi_awlen(axi_full_master_0_M00_AXI_AWLEN),
        .s00_axi_awlock(axi_full_master_0_M00_AXI_AWLOCK),
        .s00_axi_awprot(axi_full_master_0_M00_AXI_AWPROT),
        .s00_axi_awqos(axi_full_master_0_M00_AXI_AWQOS),
        .s00_axi_awready(axi_full_master_0_M00_AXI_AWREADY),
        .s00_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s00_axi_awsize(axi_full_master_0_M00_AXI_AWSIZE),
        .s00_axi_awvalid(axi_full_master_0_M00_AXI_AWVALID),
        .s00_axi_bid(axi_full_master_0_M00_AXI_BID),
        .s00_axi_bready(axi_full_master_0_M00_AXI_BREADY),
        .s00_axi_bresp(axi_full_master_0_M00_AXI_BRESP),
        .s00_axi_bvalid(axi_full_master_0_M00_AXI_BVALID),
        .s00_axi_rdata(axi_full_master_0_M00_AXI_RDATA),
        .s00_axi_rid(axi_full_master_0_M00_AXI_RID),
        .s00_axi_rlast(axi_full_master_0_M00_AXI_RLAST),
        .s00_axi_rready(axi_full_master_0_M00_AXI_RREADY),
        .s00_axi_rresp(axi_full_master_0_M00_AXI_RRESP),
        .s00_axi_rvalid(axi_full_master_0_M00_AXI_RVALID),
        .s00_axi_wdata(axi_full_master_0_M00_AXI_WDATA),
        .s00_axi_wlast(axi_full_master_0_M00_AXI_WLAST),
        .s00_axi_wready(axi_full_master_0_M00_AXI_WREADY),
        .s00_axi_wstrb(axi_full_master_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(axi_full_master_0_M00_AXI_WVALID));
endmodule
