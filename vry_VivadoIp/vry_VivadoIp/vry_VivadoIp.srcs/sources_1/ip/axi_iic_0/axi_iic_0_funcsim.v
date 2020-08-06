// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Aug 06 17:22:24 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/axi_iic_0/axi_iic_0_funcsim.v
// Design      : axi_iic_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_iic,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "axi_iic_0,axi_iic,{}" *) 
(* core_generation_info = "axi_iic_0,axi_iic,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=25000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0,C_DEFAULT_VALUE=0x00}" *) 
(* NotValidForBitStream *)
module axi_iic_0
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) output iic2intc_irpt;
  input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_I" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_T" *) output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
GND GND
       (.G(\<const0> ));
axi_iic_0_axi_iic__parameterized0 U0
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [7:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO
   (Rc_Data_Exists,
    Rc_addr,
    Rc_fifo_data,
    D,
    buffer_Empty,
    I1,
    I2,
    s_axi_aclk,
    O6,
    Rc_fifo_wr_d,
    Rc_fifo_wr,
    I3,
    I4,
    Rc_fifo_rd,
    Rc_fifo_rd_d);
  output Rc_Data_Exists;
  output [0:3]Rc_addr;
  output [0:7]Rc_fifo_data;
  output [1:0]D;
  output buffer_Empty;
  input I1;
  input I2;
  input s_axi_aclk;
  input [7:0]O6;
  input Rc_fifo_wr_d;
  input Rc_fifo_wr;
  input I3;
  input I4;
  input Rc_fifo_rd;
  input Rc_fifo_rd_d;

  wire CI;
  wire [1:0]D;
  wire D_0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire [7:0]O6;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire buffer_Empty;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire s_axi_aclk;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(D_0),
        .Q(Rc_addr[0]),
        .R(I1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Rc_addr[2],Rc_addr[1],Rc_addr[0]}),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D_0}),
        .S({S,S2_out,S4_out,S6_out}));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[0].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[0]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2__1 
       (.I0(I3),
        .I1(Rc_addr[0]),
        .I2(Rc_addr[1]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[2]),
        .I5(I4),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
     \Addr_Counters[0].MUXCY_L_I_i_3__0 
       (.I0(Rc_fifo_wr_d),
        .I1(Rc_fifo_wr),
        .I2(Rc_addr[2]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[1]),
        .I5(Rc_addr[0]),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(Rc_addr[1]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[1].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[1]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(Rc_addr[2]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[2].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[2]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(Rc_addr[3]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[3].XORCY_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[3]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(Rc_Data_Exists),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_2__0
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(buffer_Empty));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[7]),
        .Q(Rc_fifo_data[0]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[6]),
        .Q(Rc_fifo_data[1]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[2].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[5]),
        .Q(Rc_fifo_data[2]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[3].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[4]),
        .Q(Rc_fifo_data[3]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[4].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[3]),
        .Q(Rc_fifo_data[4]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[5].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[2]),
        .Q(Rc_fifo_data[5]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[6].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[1]),
        .Q(Rc_fifo_data[6]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[7].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O6[0]),
        .Q(Rc_fifo_data[7]));
LUT1 #(
    .INIT(2'h1)) 
     \sr_i[1]_i_1 
       (.I0(Rc_Data_Exists),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \sr_i[2]_i_1 
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO_0
   (Tx_data_exists,
    Tx_addr,
    Tx_fifo_data,
    O1,
    O2,
    I9,
    buffer_Empty,
    I13,
    Tx_fifo_rst,
    I1,
    s_axi_aclk,
    s_axi_wdata,
    Tx_fifo_wr_d,
    Tx_fifo_wr,
    I2,
    txFifoRd,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    rdCntrFrmTxFifo,
    sda_clean,
    shift_reg_ld);
  output Tx_data_exists;
  output [0:3]Tx_addr;
  output [0:7]Tx_fifo_data;
  output O1;
  output O2;
  output [0:0]I9;
  output buffer_Empty;
  output [0:0]I13;
  input Tx_fifo_rst;
  input I1;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input Tx_fifo_wr_d;
  input Tx_fifo_wr;
  input I2;
  input txFifoRd;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input rdCntrFrmTxFifo;
  input sda_clean;
  input shift_reg_ld;

  wire CI;
  wire D;
  wire I1;
  wire [0:0]I13;
  wire I2;
  wire [0:0]I9;
  wire O1;
  wire O2;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire buffer_Empty;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3 ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire sda_clean;
  wire shift_reg_ld;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(D),
        .Q(Tx_addr[0]),
        .R(Tx_fifo_rst));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Tx_addr[2],Tx_addr[1],Tx_addr[0]}),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[0].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[0]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2__0 
       (.I0(I2),
        .I1(Tx_addr[0]),
        .I2(Tx_addr[1]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[2]),
        .I5(txFifoRd),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
     \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_addr[2]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[1]),
        .I5(Tx_addr[0]),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(Tx_addr[1]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[1].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[1]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(Tx_addr[2]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[2].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[2]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(Tx_addr[3]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[3].XORCY_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[3]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(Tx_data_exists),
        .R(Tx_fifo_rst));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_2
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(buffer_Empty));
LUT1 #(
    .INIT(2'h1)) 
     \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1 
       (.I0(Tx_addr[3]),
        .O(O2));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(Tx_fifo_data[0]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(Tx_fifo_data[1]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[2].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(Tx_fifo_data[2]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[3].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(Tx_fifo_data[3]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[4].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(Tx_fifo_data[4]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[5].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(Tx_fifo_data[5]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[6].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(Tx_fifo_data[6]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[7].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(Tx_fifo_data[7]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_int[0]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(sda_clean),
        .I2(shift_reg_ld),
        .O(I13));
LUT1 #(
    .INIT(2'h1)) 
     \sr_i[0]_i_1 
       (.I0(Tx_data_exists),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \sr_i[3]_i_1 
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(I9));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO__parameterized0
   (O1,
    O2,
    p_3_in,
    O3,
    buffer_Empty,
    Tx_fifo_rst,
    I1,
    s_axi_aclk,
    I2,
    I3,
    ctrl_fifo_wr_i,
    Tx_fifo_rd,
    Tx_fifo_rd_d,
    Tx_data_exists,
    txFifoRd,
    rdCntrFrmTxFifo,
    Q,
    I9);
  output O1;
  output [0:0]O2;
  output p_3_in;
  output O3;
  output buffer_Empty;
  input Tx_fifo_rst;
  input I1;
  input s_axi_aclk;
  input I2;
  input I3;
  input ctrl_fifo_wr_i;
  input Tx_fifo_rd;
  input Tx_fifo_rd_d;
  input Tx_data_exists;
  input txFifoRd;
  input rdCntrFrmTxFifo;
  input [0:0]Q;
  input [0:0]I9;

  wire CI;
  wire D;
  wire I1;
  wire I2;
  wire I3;
  wire [0:0]I9;
  wire O1;
  wire [0:0]O2;
  wire O3;
  wire [0:0]Q;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire Tx_data_exists;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire buffer_Empty;
  wire ctrl_fifo_wr_i;
  wire [1:1]dynamic_MSMS;
  wire \n_0_Addr_Counters[0].FDRE_I ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ;
  wire \n_0_Addr_Counters[1].FDRE_I ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].FDRE_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].FDRE_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(D),
        .Q(\n_0_Addr_Counters[0].FDRE_I ),
        .R(Tx_fifo_rst));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\n_0_Addr_Counters[2].FDRE_I ,\n_0_Addr_Counters[1].FDRE_I ,\n_0_Addr_Counters[0].FDRE_I }),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[0].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(ctrl_fifo_wr_i),
        .I1(\n_0_Addr_Counters[0].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[3].FDRE_I ),
        .I4(\n_0_Addr_Counters[2].FDRE_I ),
        .I5(txFifoRd),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \Addr_Counters[0].MUXCY_L_I_i_3__1 
       (.I0(ctrl_fifo_wr_i),
        .I1(\n_0_Addr_Counters[2].FDRE_I ),
        .I2(\n_0_Addr_Counters[3].FDRE_I ),
        .I3(\n_0_Addr_Counters[1].FDRE_I ),
        .I4(\n_0_Addr_Counters[0].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(\n_0_Addr_Counters[1].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(\n_0_Addr_Counters[2].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[2].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(\n_0_Addr_Counters[3].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(O1),
        .R(Tx_fifo_rst));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_3__0
       (.I0(\n_0_Addr_Counters[0].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[3].FDRE_I ),
        .I3(\n_0_Addr_Counters[2].FDRE_I ),
        .O(buffer_Empty));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(I2),
        .Q(O2));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(I3),
        .Q(dynamic_MSMS));
LUT4 #(
    .INIT(16'h0800)) 
     callingReadAccess_i_1
       (.I0(dynamic_MSMS),
        .I1(Tx_fifo_rd),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_data_exists),
        .O(p_3_in));
LUT4 #(
    .INIT(16'h3313)) 
     \cr_i[5]_i_3 
       (.I0(dynamic_MSMS),
        .I1(Q),
        .I2(Tx_data_exists),
        .I3(I9),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module axi_iic_0_address_decoder
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    I21,
    I20,
    I19,
    I18,
    I17,
    I16,
    I15,
    I14,
    I13,
    I12,
    O7,
    E,
    O8,
    reset2Bus_Error,
    O9,
    D,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    O10,
    O11,
    O12,
    Q,
    s_axi_aclk,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    I1,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    I2,
    sw_rst_cond_d1,
    s_axi_wdata,
    I3,
    I22,
    rxCntDone,
    I23,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I24,
    I25,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I26,
    ipif_glbl_irpt_enable_reg,
    gpo,
    I27,
    s_axi_bresp);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output [0:0]I16;
  output [0:0]I15;
  output [0:0]I14;
  output [0:0]I13;
  output [0:0]I12;
  output O7;
  output [0:0]E;
  output [0:0]O8;
  output reset2Bus_Error;
  output [0:0]O9;
  output [8:0]D;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output O10;
  output O11;
  output O12;
  input Q;
  input s_axi_aclk;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input [0:0]I1;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input [8:0]I2;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input I3;
  input I22;
  input rxCntDone;
  input I23;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I24;
  input [7:0]I25;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I26;
  input ipif_glbl_irpt_enable_reg;
  input [0:0]gpo;
  input [1:0]I27;
  input [0:0]s_axi_bresp;

  wire [0:2]AXI_Bus2IP_CS;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire [0:0]Bus2IIC_RdCE;
  wire [8:0]D;
  wire [0:0]E;
  wire [0:0]I1;
  wire I10;
  wire I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [0:0]I15;
  wire [0:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire [8:0]I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire I22;
  wire I23;
  wire I24;
  wire [7:0]I25;
  wire I26;
  wire [1:0]I27;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IIC2Bus_Data1;
  wire [24:31]Intr2Bus_DBus__0;
  wire \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [0:0]O8;
  wire [0:0]O9;
  wire Q;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire n_0_Bus_RNW_reg_i_1;
  wire \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ;
  wire \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ;
  wire \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ;
  wire \n_0_s_axi_rdata_i[7]_i_5 ;
  wire \n_0_s_axi_rdata_i[7]_i_6 ;
  wire \n_0_s_axi_rdata_i[7]_i_7 ;
  wire \n_0_s_axi_rdata_i[7]_i_8 ;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_25_in;
  wire p_28_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire reset2Bus_Error;
  wire rxCntDone;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_bresp;
  wire [4:0]s_axi_wdata;
  wire sw_rst_cond_d1;

(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hFE00)) 
     AXI_IP2Bus_RdAck2_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(I3),
        .O(AXI_IP2Bus_RdAck20));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h00FE)) 
     AXI_IP2Bus_WrAck2_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(I3),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     Bus_RNW_reg_i_1
       (.I0(I3),
        .I1(Q),
        .I2(O3),
        .O(n_0_Bus_RNW_reg_i_1));
FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Bus_RNW_reg_i_1),
        .Q(O3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FIFO_GEN_DTR.Tx_fifo_wr_i_1 
       (.I0(p_16_in),
        .I1(O3),
        .O(O7));
LUT5 #(
    .INIT(32'h00400000)) 
     \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(I2[4]),
        .I1(I2[3]),
        .I2(p_1_in),
        .I3(I2[2]),
        .I4(I2[5]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ),
        .Q(p_25_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(I2[2]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I4(I2[5]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ),
        .Q(O1),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(I2[2]),
        .I4(I2[5]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ),
        .Q(p_17_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(I2[2]),
        .I1(I2[6]),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(I2[3]),
        .I4(I2[5]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ),
        .Q(p_16_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(I2[4]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[2]),
        .I4(I2[5]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ),
        .Q(p_15_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(I2[4]),
        .I4(I2[5]),
        .I5(I2[2]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ),
        .Q(p_14_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(I2[4]),
        .I3(I2[2]),
        .I4(I2[5]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ),
        .Q(p_13_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(I2[2]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[4]),
        .I4(I2[5]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ),
        .Q(p_12_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(I2[5]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[2]),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ),
        .Q(p_11_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(I2[5]),
        .I4(I2[2]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ),
        .Q(p_10_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 
       (.I0(I2[4]),
        .I1(I2[6]),
        .I2(I2[5]),
        .I3(I2[2]),
        .I4(I2[3]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ),
        .Q(p_9_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(I2[4]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[5]),
        .I4(I2[2]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ),
        .Q(p_8_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(I2[4]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[2]),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(I2[5]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ),
        .Q(p_7_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(I2[4]),
        .I3(I2[5]),
        .I4(I2[2]),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ),
        .Q(p_6_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 
       (.I0(I2[3]),
        .I1(I2[6]),
        .I2(I2[5]),
        .I3(I2[2]),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ),
        .Q(p_5_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(I2[2]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[5]),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ),
        .Q(p_4_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 
       (.I0(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[2]),
        .I4(I2[5]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ),
        .Q(p_3_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 
       (.I0(I2[2]),
        .I1(I2[3]),
        .I2(I2[6]),
        .I3(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I4(I2[5]),
        .I5(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ),
        .Q(p_2_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'hF4FFF4F4FFFFFFFF)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 
       (.I0(AXI_IP2Bus_WrAck1),
        .I1(AXI_IP2Bus_WrAck2),
        .I2(I1),
        .I3(AXI_IP2Bus_RdAck1),
        .I4(AXI_IP2Bus_RdAck2),
        .I5(s_axi_aresetn),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 
       (.I0(I2[3]),
        .I1(I2[4]),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(I2[2]),
        .I4(I2[5]),
        .I5(I2[6]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 ));
FDRE \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 ),
        .Q(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h40000000)) 
     \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(I2[5]),
        .I1(I2[3]),
        .I2(I2[2]),
        .I3(p_1_in),
        .I4(I2[4]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ),
        .Q(p_28_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h00000020)) 
     \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(p_1_in),
        .I1(I2[4]),
        .I2(I2[5]),
        .I3(I2[3]),
        .I4(I2[2]),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ),
        .Q(O2),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \GPO_GEN.gpo_i[31]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(p_9_in),
        .I2(O3),
        .I3(gpo),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(I2[6]),
        .I1(I2[8]),
        .I2(Q),
        .I3(I2[7]),
        .O(p_1_in));
FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_in),
        .Q(AXI_Bus2IP_CS[0]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT3 #(
    .INIT(8'h02)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_1 
       (.I0(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ),
        .I1(I2[4]),
        .I2(I2[5]),
        .O(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_2 
       (.I0(I2[3]),
        .I1(I2[7]),
        .I2(Q),
        .I3(I2[2]),
        .I4(I2[6]),
        .I5(I2[8]),
        .O(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ));
FDRE \MEM_DECODE_GEN[1].cs_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ),
        .Q(AXI_Bus2IP_CS[1]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \MEM_DECODE_GEN[2].cs_out_i[2]_i_1 
       (.I0(I2[8]),
        .I1(Q),
        .O(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ));
FDRE \MEM_DECODE_GEN[2].cs_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .Q(AXI_Bus2IP_CS[2]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \RD_FIFO_CNTRL.Rc_fifo_rd_i_1 
       (.I0(p_15_in),
        .I1(O3),
        .O(Bus2IIC_RdCE));
LUT2 #(
    .INIT(4'h2)) 
     \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1 
       (.I0(p_10_in),
        .I1(O3),
        .O(I13));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \adr_i[0]_i_1 
       (.I0(p_14_in),
        .I1(O3),
        .O(I12));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \cr_i[0]_i_1 
       (.I0(O1),
        .I1(O3),
        .O(E));
LUT6 #(
    .INIT(64'h00030003AAAA0003)) 
     \cr_i[5]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(I22),
        .I2(rxCntDone),
        .I3(I23),
        .I4(O1),
        .I5(O3),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \ip_irpt_enable_reg[7]_i_1 
       (.I0(p_25_in),
        .I1(O3),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[4]),
        .I1(p_28_in),
        .I2(O3),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h0F0E)) 
     irpt_wrack_d1_i_1
       (.I0(p_25_in),
        .I1(p_28_in),
        .I2(O3),
        .I3(O2),
        .O(irpt_wrack));
LUT2 #(
    .INIT(4'h2)) 
     reset_trig_i_1
       (.I0(O5),
        .I1(sw_rst_cond_d1),
        .O(O4));
LUT4 #(
    .INIT(16'hFB08)) 
     \s_axi_bresp_i[1]_i_1 
       (.I0(reset2Bus_Error),
        .I1(I27[1]),
        .I2(I27[0]),
        .I3(s_axi_bresp),
        .O(O12));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[0]_i_1 
       (.I0(Intr2Bus_DBus__0[31]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I4),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[0]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[0]_i_2 
       (.I0(I26),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[0]),
        .O(Intr2Bus_DBus__0[31]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[1]_i_1 
       (.I0(Intr2Bus_DBus__0[30]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I5),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[1]_i_2 
       (.I0(p_1_in17_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[1]),
        .O(Intr2Bus_DBus__0[30]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[2]_i_1 
       (.I0(Intr2Bus_DBus__0[29]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I6),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[2]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[2]_i_2 
       (.I0(p_1_in14_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[2]),
        .O(Intr2Bus_DBus__0[29]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'h10000000)) 
     \s_axi_rdata_i[31]_i_2 
       (.I0(p_25_in),
        .I1(O2),
        .I2(p_28_in),
        .I3(O3),
        .I4(ipif_glbl_irpt_enable_reg),
        .O(D[8]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[3]_i_1 
       (.I0(Intr2Bus_DBus__0[28]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I7),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[3]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[3]_i_2 
       (.I0(p_1_in11_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[3]),
        .O(Intr2Bus_DBus__0[28]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[4]_i_1 
       (.I0(Intr2Bus_DBus__0[27]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I8),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[4]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[4]_i_2 
       (.I0(p_1_in8_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[4]),
        .O(Intr2Bus_DBus__0[27]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[5]_i_1 
       (.I0(Intr2Bus_DBus__0[26]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I9),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[5]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[5]_i_2 
       (.I0(p_1_in5_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[5]),
        .O(Intr2Bus_DBus__0[26]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[6]_i_1 
       (.I0(Intr2Bus_DBus__0[25]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I10),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[6]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[6]_i_2 
       (.I0(p_1_in2_in),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[6]),
        .O(Intr2Bus_DBus__0[25]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
     \s_axi_rdata_i[7]_i_1 
       (.I0(Intr2Bus_DBus__0[24]),
        .I1(I2[7]),
        .I2(IIC2Bus_Data1),
        .I3(I11),
        .I4(I2[1]),
        .I5(I2[0]),
        .O(D[7]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[7]_i_2 
       (.I0(I24),
        .I1(O2),
        .I2(O3),
        .I3(p_25_in),
        .I4(I25[7]),
        .O(Intr2Bus_DBus__0[24]));
LUT4 #(
    .INIT(16'hFFFE)) 
     \s_axi_rdata_i[7]_i_3 
       (.I0(\n_0_s_axi_rdata_i[7]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[7]_i_6 ),
        .I2(\n_0_s_axi_rdata_i[7]_i_7 ),
        .I3(\n_0_s_axi_rdata_i[7]_i_8 ),
        .O(IIC2Bus_Data1));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[7]_i_5 
       (.I0(p_7_in),
        .I1(p_3_in),
        .I2(O3),
        .I3(p_4_in),
        .I4(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .I5(p_2_in),
        .O(\n_0_s_axi_rdata_i[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hF0E0)) 
     \s_axi_rdata_i[7]_i_6 
       (.I0(p_8_in),
        .I1(p_6_in),
        .I2(O3),
        .I3(p_9_in),
        .O(\n_0_s_axi_rdata_i[7]_i_6 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[7]_i_7 
       (.I0(p_10_in),
        .I1(p_13_in),
        .I2(O3),
        .I3(p_14_in),
        .I4(p_11_in),
        .I5(p_12_in),
        .O(\n_0_s_axi_rdata_i[7]_i_7 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[7]_i_8 
       (.I0(p_5_in),
        .I1(p_15_in),
        .I2(O3),
        .I3(p_16_in),
        .I4(O1),
        .I5(p_17_in),
        .O(\n_0_s_axi_rdata_i[7]_i_8 ));
LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
     \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[2]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_wdata[0]),
        .I4(O3),
        .I5(AXI_Bus2IP_CS[1]),
        .O(reset2Bus_Error));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     sw_rst_cond_d1_i_1
       (.I0(O3),
        .I1(AXI_Bus2IP_CS[1]),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[0]),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tbuf_i[7]_i_1 
       (.I0(p_4_in),
        .I1(O3),
        .O(I18));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thddat_i[7]_i_1 
       (.I0(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .I1(O3),
        .O(I21));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thdsta_i[7]_i_1 
       (.I0(p_6_in),
        .I1(O3),
        .O(I16));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thigh_i[7]_i_1 
       (.I0(p_3_in),
        .I1(O3),
        .O(I19));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tlow_i[7]_i_1 
       (.I0(p_2_in),
        .I1(O3),
        .O(I20));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsudat_i[7]_i_1 
       (.I0(p_5_in),
        .I1(O3),
        .O(I17));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsusta_i[7]_i_1 
       (.I0(p_8_in),
        .I1(O3),
        .O(I14));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsusto_i[7]_i_1 
       (.I0(p_7_in),
        .I1(O3),
        .O(I15));
endmodule

(* ORIG_REF_NAME = "axi_iic" *) 
module axi_iic_0_axi_iic__parameterized0
   (s_axi_rdata,
    s_axi_rresp,
    s_axi_arready,
    s_axi_awready,
    iic2intc_irpt,
    s_axi_bvalid,
    s_axi_rvalid,
    sda_t,
    scl_t,
    gpo,
    s_axi_bresp,
    s_axi_aresetn,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_rready);
  output [8:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output s_axi_arready;
  output s_axi_awready;
  output iic2intc_irpt;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output sda_t;
  output scl_t;
  output [0:0]gpo;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_bready;
  input s_axi_rready;

  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [8:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

axi_iic_0_iic X_IIC
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "axi_ipif_ssp1" *) 
module axi_iic_0_axi_ipif_ssp1
   (p_18_in,
    s_axi_rresp,
    SR,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    Q,
    I21,
    I20,
    I19,
    I18,
    I17,
    I16,
    I15,
    I14,
    I13,
    I12,
    O1,
    E,
    s_axi_arready,
    s_axi_awready,
    iic2intc_irpt,
    O2,
    Bus2IIC_RdCE,
    O3,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_wdata,
    Tx_fifo_data,
    O33,
    Rc_addr,
    O35,
    Rc_fifo_data,
    O34,
    O36,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    IIC2Bus_IntrEvent,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    I22,
    rxCntDone,
    I23,
    s_axi_bready,
    s_axi_rready,
    O19,
    I24,
    Tx_addr,
    O24,
    I25,
    I26,
    I27,
    I28,
    gpo);
  output p_18_in;
  output [0:0]s_axi_rresp;
  output [0:0]SR;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [2:0]Q;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output [0:0]I16;
  output [0:0]I15;
  output [0:0]I14;
  output [0:0]I13;
  output [0:0]I12;
  output O1;
  output [0:0]E;
  output s_axi_arready;
  output s_axi_awready;
  output iic2intc_irpt;
  output [0:0]O2;
  output [0:0]Bus2IIC_RdCE;
  output O3;
  output [8:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_wdata;
  input [0:7]Tx_fifo_data;
  input [7:0]O33;
  input [0:3]Rc_addr;
  input [7:0]O35;
  input [0:7]Rc_fifo_data;
  input [7:0]O34;
  input [7:0]O36;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input [0:7]IIC2Bus_IntrEvent;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input I22;
  input rxCntDone;
  input I23;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]O19;
  input I24;
  input [0:3]Tx_addr;
  input [3:0]O24;
  input I25;
  input I26;
  input I27;
  input I28;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus_RNW_reg;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [0:0]I15;
  wire [0:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ;
  wire O1;
  wire [0:0]O19;
  wire [0:0]O2;
  wire [3:0]O24;
  wire O3;
  wire [7:0]O33;
  wire [7:0]O34;
  wire [7:0]O35;
  wire [7:0]O36;
  wire [2:0]Q;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire [0:0]SR;
  wire [0:3]Tx_addr;
  wire [0:7]Tx_fifo_data;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire n_0_X_INTERRUPT_CONTROL;
  wire n_10_AXI_LITE_IPIF_I;
  wire n_11_AXI_LITE_IPIF_I;
  wire n_12_AXI_LITE_IPIF_I;
  wire n_13_X_INTERRUPT_CONTROL;
  wire n_15_X_INTERRUPT_CONTROL;
  wire n_16_X_INTERRUPT_CONTROL;
  wire n_25_AXI_LITE_IPIF_I;
  wire n_32_AXI_LITE_IPIF_I;
  wire n_7_X_INTERRUPT_CONTROL;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in7_in;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [8:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [8:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sw_rst_cond_d1;

FDRE AXI_IP2Bus_RdAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck2),
        .Q(AXI_IP2Bus_RdAck1),
        .R(1'b0));
FDRE AXI_IP2Bus_RdAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck20),
        .Q(AXI_IP2Bus_RdAck2),
        .R(1'b0));
FDRE AXI_IP2Bus_WrAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_WrAck2),
        .Q(AXI_IP2Bus_WrAck1),
        .R(1'b0));
FDRE AXI_IP2Bus_WrAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_12_AXI_LITE_IPIF_I),
        .Q(AXI_IP2Bus_WrAck2),
        .R(1'b0));
axi_iic_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .E(E),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2(I2),
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(n_7_X_INTERRUPT_CONTROL),
        .I25({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,n_13_X_INTERRUPT_CONTROL,p_0_in1_in,n_15_X_INTERRUPT_CONTROL,n_16_X_INTERRUPT_CONTROL}),
        .I26(n_0_X_INTERRUPT_CONTROL),
        .I27(I24),
        .I28(I25),
        .I29(I26),
        .I3(I3),
        .I30(I27),
        .I31(I28),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(p_18_in),
        .O10(O3),
        .O19(O19),
        .O2(Bus_RNW_reg),
        .O24(O24),
        .O3(n_10_AXI_LITE_IPIF_I),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O4(n_11_AXI_LITE_IPIF_I),
        .O5(n_12_AXI_LITE_IPIF_I),
        .O6(O1),
        .O7(n_25_AXI_LITE_IPIF_I),
        .O8(O2),
        .O9(n_32_AXI_LITE_IPIF_I),
        .Q(Q),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[8],s_axi_wdata[3:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond_d1(sw_rst_cond_d1));
axi_iic_0_interrupt_control X_INTERRUPT_CONTROL
       (.E(n_25_AXI_LITE_IPIF_I),
        .I1(SR),
        .I2(n_32_AXI_LITE_IPIF_I),
        .I3(Bus_RNW_reg),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .O1(n_0_X_INTERRUPT_CONTROL),
        .O2(n_7_X_INTERRUPT_CONTROL),
        .Q({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,n_13_X_INTERRUPT_CONTROL,p_0_in1_in,n_15_X_INTERRUPT_CONTROL,n_16_X_INTERRUPT_CONTROL}),
        .iic2intc_irpt(iic2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]));
axi_iic_0_soft_reset X_SOFT_RESET
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .I1(n_11_AXI_LITE_IPIF_I),
        .I2(n_10_AXI_LITE_IPIF_I),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module axi_iic_0_axi_lite_ipif
   (O1,
    p_27_in,
    s_axi_rresp,
    O2,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    Q,
    O3,
    O4,
    O5,
    I21,
    I20,
    I19,
    I18,
    I17,
    I16,
    I15,
    I14,
    I13,
    I12,
    O6,
    E,
    O7,
    s_axi_arready,
    s_axi_awready,
    O8,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    O9,
    O10,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    sw_rst_cond_d1,
    s_axi_wdata,
    Tx_fifo_data,
    O33,
    Rc_addr,
    O35,
    Rc_fifo_data,
    O34,
    O36,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    I22,
    rxCntDone,
    I23,
    I24,
    I25,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I26,
    ipif_glbl_irpt_enable_reg,
    s_axi_bready,
    s_axi_rready,
    O19,
    I27,
    Tx_addr,
    O24,
    I28,
    I29,
    I30,
    I31,
    gpo);
  output O1;
  output p_27_in;
  output [0:0]s_axi_rresp;
  output O2;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [2:0]Q;
  output O3;
  output O4;
  output O5;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output [0:0]I16;
  output [0:0]I15;
  output [0:0]I14;
  output [0:0]I13;
  output [0:0]I12;
  output O6;
  output [0:0]E;
  output [0:0]O7;
  output s_axi_arready;
  output s_axi_awready;
  output [0:0]O8;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output O9;
  output O10;
  output [8:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input [0:7]Tx_fifo_data;
  input [7:0]O33;
  input [0:3]Rc_addr;
  input [7:0]O35;
  input [0:7]Rc_fifo_data;
  input [7:0]O34;
  input [7:0]O36;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input I22;
  input rxCntDone;
  input I23;
  input I24;
  input [7:0]I25;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I26;
  input ipif_glbl_irpt_enable_reg;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]O19;
  input I27;
  input [0:3]Tx_addr;
  input [3:0]O24;
  input I28;
  input I29;
  input I30;
  input I31;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [0:0]I15;
  wire [0:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire I22;
  wire I23;
  wire I24;
  wire [7:0]I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire [0:0]O19;
  wire O2;
  wire [3:0]O24;
  wire O3;
  wire [7:0]O33;
  wire [7:0]O34;
  wire [7:0]O35;
  wire [7:0]O36;
  wire O4;
  wire O5;
  wire O6;
  wire [0:0]O7;
  wire [0:0]O8;
  wire O9;
  wire [2:0]Q;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [0:7]Tx_fifo_data;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [8:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sw_rst_cond_d1;

axi_iic_0_slave_attachment I_SLAVE_ATTACHMENT
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .E(E),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2(I2),
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(I27),
        .I28(I28),
        .I29(I29),
        .I3(I3),
        .I30(I30),
        .I31(I31),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O9),
        .O11(O10),
        .O19(O19),
        .O2(p_27_in),
        .O24(O24),
        .O3(O2),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O4(O3),
        .O5(O4),
        .O6(O5),
        .O7(O6),
        .O8(O7),
        .O9(O8),
        .Q(Q),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_iic_0_cdc_sync
   (O1,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output O1;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire D;
  wire O1;
  wire Sda_clean;
  wire \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  wire \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire s_axi_aclk;
  wire sda_i;
  wire sda_rin_d1;

(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_i),
        .Q(D),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .Q(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .Q(Sda_clean),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     detect_stop_i_3
       (.I0(Sda_clean),
        .I1(sda_rin_d1),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_iic_0_cdc_sync_4
   (O2,
    Scl_clean,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output O2;
  output Scl_clean;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire D;
  wire O2;
  wire Scl_clean;
  wire \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ;
  wire \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;

(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_i),
        .Q(D),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 ),
        .Q(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .Q(Scl_clean),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     scl_rising_edge_i_1
       (.I0(Scl_clean),
        .I1(scl_rin_d1),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module axi_iic_0_debounce
   (O2,
    Scl_clean,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output O2;
  output Scl_clean;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire O2;
  wire Scl_clean;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;

axi_iic_0_cdc_sync_4 INPUT_DOUBLE_REGS
       (.O2(O2),
        .Scl_clean(Scl_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module axi_iic_0_debounce_3
   (O1,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output O1;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire O1;
  wire Sda_clean;
  wire s_axi_aclk;
  wire sda_i;
  wire sda_rin_d1;

axi_iic_0_cdc_sync INPUT_DOUBLE_REGS
       (.O1(O1),
        .Sda_clean(Sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "dynamic_master" *) 
module axi_iic_0_dynamic_master
   (callingReadAccess,
    rdCntrFrmTxFifo,
    rxCntDone,
    firstDynStartSeen,
    D,
    txak,
    Tx_fifo_rst,
    ackDataState,
    s_axi_aclk,
    p_3_in,
    Tx_fifo_data,
    rdCntrFrmTxFifo0,
    earlyAckDataState,
    I1,
    s_axi_wdata,
    Q,
    p_18_in,
    Bus_RNW_reg,
    earlyAckHdr);
  output callingReadAccess;
  output rdCntrFrmTxFifo;
  output rxCntDone;
  output firstDynStartSeen;
  output [0:0]D;
  output txak;
  input Tx_fifo_rst;
  input ackDataState;
  input s_axi_aclk;
  input p_3_in;
  input [0:7]Tx_fifo_data;
  input rdCntrFrmTxFifo0;
  input earlyAckDataState;
  input I1;
  input [0:0]s_axi_wdata;
  input [1:0]Q;
  input p_18_in;
  input Bus_RNW_reg;
  input earlyAckHdr;

  wire Bus_RNW_reg;
  wire [0:0]D;
  wire I1;
  wire [1:0]Q;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rst;
  wire ackDataState;
  wire ackDataState_d1;
  wire callingReadAccess;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire earlyAckDataState;
  wire earlyAckDataState_d1;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire n_0_Cr_txModeSelect_clr_i_1;
  wire n_0_Cr_txModeSelect_set_i_1;
  wire \n_0_rdByteCntr[0]_i_1 ;
  wire \n_0_rdByteCntr[0]_i_3 ;
  wire \n_0_rdByteCntr[0]_i_4 ;
  wire \n_0_rdByteCntr[2]_i_2 ;
  wire \n_0_rdByteCntr[3]_i_2 ;
  wire n_0_rxCntDone_i_2;
  wire [7:0]p_0_in;
  wire p_18_in;
  wire p_3_in;
  wire [0:7]rdByteCntr_reg__0;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rxCntDone;
  wire rxCntDone0;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire txak;

(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     Cr_txModeSelect_clr_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(n_0_Cr_txModeSelect_clr_i_1));
FDRE Cr_txModeSelect_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Cr_txModeSelect_clr_i_1),
        .Q(cr_txModeSelect_clr),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     Cr_txModeSelect_set_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(n_0_Cr_txModeSelect_set_i_1));
FDRE Cr_txModeSelect_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Cr_txModeSelect_set_i_1),
        .Q(cr_txModeSelect_set),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
     \LEVEL_1_GEN.master_sda_i_2 
       (.I0(Q[1]),
        .I1(earlyAckDataState),
        .I2(rdByteCntr_reg__0[0]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(callingReadAccess),
        .I5(n_0_rxCntDone_i_2),
        .O(txak));
FDRE ackDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ackDataState),
        .Q(ackDataState_d1),
        .R(Tx_fifo_rst));
FDRE callingReadAccess_reg
       (.C(s_axi_aclk),
        .CE(p_3_in),
        .D(Tx_fifo_data[7]),
        .Q(callingReadAccess),
        .R(Tx_fifo_rst));
LUT6 #(
    .INIT(64'h33303330AAAA3330)) 
     \cr_i[4]_i_1 
       (.I0(s_axi_wdata),
        .I1(cr_txModeSelect_clr),
        .I2(cr_txModeSelect_set),
        .I3(Q[0]),
        .I4(p_18_in),
        .I5(Bus_RNW_reg),
        .O(D));
FDRE earlyAckDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(earlyAckDataState),
        .Q(earlyAckDataState_d1),
        .R(Tx_fifo_rst));
FDRE firstDynStartSeen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(firstDynStartSeen),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
     \rdByteCntr[0]_i_1 
       (.I0(rdCntrFrmTxFifo),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(\n_0_rdByteCntr[0]_i_3 ),
        .I4(earlyAckDataState),
        .I5(earlyAckDataState_d1),
        .O(\n_0_rdByteCntr[0]_i_1 ));
LUT5 #(
    .INIT(32'hBBB8888B)) 
     \rdByteCntr[0]_i_2 
       (.I0(Tx_fifo_data[0]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[1]),
        .I3(\n_0_rdByteCntr[0]_i_4 ),
        .I4(rdByteCntr_reg__0[0]),
        .O(p_0_in[7]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rdByteCntr[0]_i_3 
       (.I0(rdByteCntr_reg__0[1]),
        .I1(rdByteCntr_reg__0[2]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[3]),
        .O(\n_0_rdByteCntr[0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rdByteCntr[0]_i_4 
       (.I0(rdByteCntr_reg__0[3]),
        .I1(rdByteCntr_reg__0[5]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[2]),
        .O(\n_0_rdByteCntr[0]_i_4 ));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[1]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[0]_i_4 ),
        .I3(rdByteCntr_reg__0[1]),
        .O(p_0_in[6]));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[2]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[2]_i_2 ),
        .I3(rdByteCntr_reg__0[2]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \rdByteCntr[2]_i_2 
       (.I0(rdByteCntr_reg__0[4]),
        .I1(rdByteCntr_reg__0[6]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[3]),
        .O(\n_0_rdByteCntr[2]_i_2 ));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[3]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[3]_i_2 ),
        .I3(rdByteCntr_reg__0[3]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \rdByteCntr[3]_i_2 
       (.I0(rdByteCntr_reg__0[5]),
        .I1(rdByteCntr_reg__0[7]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[4]),
        .O(\n_0_rdByteCntr[3]_i_2 ));
LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
     \rdByteCntr[4]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[6]),
        .I5(rdByteCntr_reg__0[4]),
        .O(p_0_in[3]));
LUT5 #(
    .INIT(32'hBBB8888B)) 
     \rdByteCntr[5]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[5]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[6]_i_1 
       (.I0(Tx_fifo_data[6]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h8B)) 
     \rdByteCntr[7]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .O(p_0_in[0]));
FDRE \rdByteCntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[7]),
        .Q(rdByteCntr_reg__0[0]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[6]),
        .Q(rdByteCntr_reg__0[1]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[5]),
        .Q(rdByteCntr_reg__0[2]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[4]),
        .Q(rdByteCntr_reg__0[3]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[3]),
        .Q(rdByteCntr_reg__0[4]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[2]),
        .Q(rdByteCntr_reg__0[5]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[1]),
        .Q(rdByteCntr_reg__0[6]),
        .R(Tx_fifo_rst));
FDRE \rdByteCntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[0]),
        .Q(rdByteCntr_reg__0[7]),
        .R(Tx_fifo_rst));
FDRE rdCntrFrmTxFifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo0),
        .Q(rdCntrFrmTxFifo),
        .R(Tx_fifo_rst));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     rxCntDone_i_1
       (.I0(ackDataState_d1),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(callingReadAccess),
        .I4(n_0_rxCntDone_i_2),
        .I5(ackDataState),
        .O(rxCntDone0));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     rxCntDone_i_2
       (.I0(rdByteCntr_reg__0[2]),
        .I1(rdByteCntr_reg__0[1]),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[3]),
        .I5(rdByteCntr_reg__0[4]),
        .O(n_0_rxCntDone_i_2));
FDRE rxCntDone_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCntDone0),
        .Q(rxCntDone),
        .R(Tx_fifo_rst));
endmodule

(* ORIG_REF_NAME = "filter" *) 
module axi_iic_0_filter
   (O1,
    Sda_clean,
    O2,
    Scl_clean,
    sda_rin_d1,
    scl_rin_d1,
    scl_i,
    s_axi_aclk,
    sda_i);
  output O1;
  output Sda_clean;
  output O2;
  output Scl_clean;
  input sda_rin_d1;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;
  input sda_i;

  wire O1;
  wire O2;
  wire Scl_clean;
  wire Sda_clean;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire sda_i;
  wire sda_rin_d1;

axi_iic_0_debounce SCL_DEBOUNCE
       (.O2(O2),
        .Scl_clean(Scl_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1));
axi_iic_0_debounce_3 SDA_DEBOUNCE
       (.O1(O1),
        .Sda_clean(Sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "iic" *) 
module axi_iic_0_iic
   (s_axi_rdata,
    s_axi_rresp,
    s_axi_arready,
    s_axi_awready,
    iic2intc_irpt,
    s_axi_bvalid,
    s_axi_rvalid,
    sda_t,
    scl_t,
    gpo,
    s_axi_bresp,
    s_axi_aresetn,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_rready);
  output [8:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output s_axi_arready;
  output s_axi_awready;
  output iic2intc_irpt;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output sda_t;
  output scl_t;
  output [0:0]gpo;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_bready;
  input s_axi_rready;

  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire Aas;
  wire Abgc;
  wire Al;
  wire Bb;
  wire [2:4]Bus2IIC_Addr;
  wire [3:3]Bus2IIC_RdCE;
  wire [1:7]Cr;
  wire [0:7]Data_i2c;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_full;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire Ro_prev;
  wire Srw;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_full;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire Tx_under_prev;
  wire Txer;
  wire ackDataState;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire callingReadAccess;
  wire ctrl_fifo_wr_i;
  wire dtre_d1;
  wire [0:0]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire n_0_FILTER_I;
  wire n_0_WRITE_FIFO_CTRL_I;
  wire n_10_IIC_CONTROL_I;
  wire n_10_X_AXI_IPIF_SSP1;
  wire n_11_X_AXI_IPIF_SSP1;
  wire n_12_X_AXI_IPIF_SSP1;
  wire n_13_WRITE_FIFO_I;
  wire n_13_X_AXI_IPIF_SSP1;
  wire n_14_WRITE_FIFO_I;
  wire n_14_X_AXI_IPIF_SSP1;
  wire n_15_X_AXI_IPIF_SSP1;
  wire n_16_X_AXI_IPIF_SSP1;
  wire n_17_WRITE_FIFO_I;
  wire n_17_X_AXI_IPIF_SSP1;
  wire n_18_X_AXI_IPIF_SSP1;
  wire n_19_IIC_CONTROL_I;
  wire n_19_X_AXI_IPIF_SSP1;
  wire n_20_IIC_CONTROL_I;
  wire n_20_X_AXI_IPIF_SSP1;
  wire n_21_IIC_CONTROL_I;
  wire n_21_X_AXI_IPIF_SSP1;
  wire n_22_IIC_CONTROL_I;
  wire n_24_REG_INTERFACE_I;
  wire n_25_REG_INTERFACE_I;
  wire n_25_X_AXI_IPIF_SSP1;
  wire n_26_REG_INTERFACE_I;
  wire n_27_X_AXI_IPIF_SSP1;
  wire n_2_FILTER_I;
  wire n_2_X_AXI_IPIF_SSP1;
  wire n_35_REG_INTERFACE_I;
  wire n_36_REG_INTERFACE_I;
  wire n_3_WRITE_FIFO_CTRL_I;
  wire n_45_REG_INTERFACE_I;
  wire n_46_REG_INTERFACE_I;
  wire n_47_REG_INTERFACE_I;
  wire n_48_REG_INTERFACE_I;
  wire n_4_DYN_MASTER_I;
  wire n_50_REG_INTERFACE_I;
  wire n_52_REG_INTERFACE_I;
  wire n_53_REG_INTERFACE_I;
  wire n_54_REG_INTERFACE_I;
  wire n_55_REG_INTERFACE_I;
  wire n_56_REG_INTERFACE_I;
  wire n_57_REG_INTERFACE_I;
  wire n_58_REG_INTERFACE_I;
  wire n_59_REG_INTERFACE_I;
  wire n_60_REG_INTERFACE_I;
  wire n_61_REG_INTERFACE_I;
  wire n_62_REG_INTERFACE_I;
  wire n_63_REG_INTERFACE_I;
  wire n_72_REG_INTERFACE_I;
  wire n_73_REG_INTERFACE_I;
  wire n_74_REG_INTERFACE_I;
  wire n_75_REG_INTERFACE_I;
  wire n_84_REG_INTERFACE_I;
  wire n_85_REG_INTERFACE_I;
  wire n_86_REG_INTERFACE_I;
  wire n_87_REG_INTERFACE_I;
  wire n_88_REG_INTERFACE_I;
  wire n_89_REG_INTERFACE_I;
  wire n_90_REG_INTERFACE_I;
  wire n_91_REG_INTERFACE_I;
  wire new_rcv_dta_d1;
  wire [0:0]p_0_out;
  wire [6:6]p_1_out;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [8:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_clean;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_t;
  wire sda_clean;
  wire sda_i;
  wire sda_rin_d1;
  wire sda_t;
  wire shift_reg_ld;
  wire [0:0]sr_i;
  wire [7:0]timing_param_tbuf_i;
  wire [7:0]timing_param_thddat_i;
  wire [7:0]timing_param_thdsta_i;
  wire [7:0]timing_param_thigh_i;
  wire [7:0]timing_param_tlow_i;
  wire [7:0]timing_param_tsudat_i;
  wire [7:0]timing_param_tsusta_i;
  wire [7:0]timing_param_tsusto_i;
  wire txFifoRd;
  wire txak;

axi_iic_0_dynamic_master DYN_MASTER_I
       (.Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(n_4_DYN_MASTER_I),
        .I1(n_91_REG_INTERFACE_I),
        .Q({Cr[3],Cr[4]}),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rst(Tx_fifo_rst),
        .ackDataState(ackDataState),
        .callingReadAccess(callingReadAccess),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[3]),
        .txak(txak));
axi_iic_0_filter FILTER_I
       (.O1(n_0_FILTER_I),
        .O2(n_2_FILTER_I),
        .Scl_clean(scl_clean),
        .Sda_clean(sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
axi_iic_0_iic_control IIC_CONTROL_I
       (.Aas(Aas),
        .Bb(Bb),
        .D({Al,Txer,n_10_IIC_CONTROL_I,p_0_out}),
        .E(n_21_X_AXI_IPIF_SSP1),
        .I1(n_2_FILTER_I),
        .I10(timing_param_tbuf_i),
        .I11(timing_param_tsudat_i),
        .I12(n_0_FILTER_I),
        .I13(n_17_WRITE_FIFO_I),
        .I2(n_90_REG_INTERFACE_I),
        .I3({n_57_REG_INTERFACE_I,n_58_REG_INTERFACE_I,n_59_REG_INTERFACE_I,n_60_REG_INTERFACE_I,n_61_REG_INTERFACE_I,n_62_REG_INTERFACE_I,n_63_REG_INTERFACE_I}),
        .I4(timing_param_tsusto_i),
        .I5(timing_param_thigh_i),
        .I6(timing_param_tsusta_i),
        .I7(timing_param_thddat_i),
        .I8(timing_param_thdsta_i),
        .I9(timing_param_tlow_i),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .O1({Srw,Abgc}),
        .O2(n_19_IIC_CONTROL_I),
        .O3(n_20_IIC_CONTROL_I),
        .O4(n_21_IIC_CONTROL_I),
        .O5(n_22_IIC_CONTROL_I),
        .O6({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .Q({Cr[1],Cr[2],Cr[4],Cr[5],Cr[7]}),
        .Ro_prev(Ro_prev),
        .SR(n_52_REG_INTERFACE_I),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3],Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6]}),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_under_prev(Tx_under_prev),
        .ackDataState(ackDataState),
        .callingReadAccess(callingReadAccess),
        .dtre_d1(dtre_d1),
        .dynamic_MSMS(dynamic_MSMS),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[5]),
        .scl_clean(scl_clean),
        .scl_rin_d1(scl_rin_d1),
        .scl_t(scl_t),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .sda_t(sda_t),
        .shift_reg_ld(shift_reg_ld),
        .sr_i(sr_i),
        .txak(txak));
axi_iic_0_SRL_FIFO READ_FIFO_I
       (.D({p_1_out,Rc_fifo_full}),
        .I1(n_2_X_AXI_IPIF_SSP1),
        .I2(n_53_REG_INTERFACE_I),
        .I3(n_46_REG_INTERFACE_I),
        .I4(n_47_REG_INTERFACE_I),
        .O6({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .buffer_Empty(buffer_Empty),
        .s_axi_aclk(s_axi_aclk));
axi_iic_0_reg_interface REG_INTERFACE_I
       (.Aas(Aas),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D(Ro_prev),
        .E(n_21_X_AXI_IPIF_SSP1),
        .I1(n_2_X_AXI_IPIF_SSP1),
        .I10(n_19_IIC_CONTROL_I),
        .I11({n_21_IIC_CONTROL_I,n_4_DYN_MASTER_I,n_25_X_AXI_IPIF_SSP1}),
        .I12(n_19_X_AXI_IPIF_SSP1),
        .I13(n_18_X_AXI_IPIF_SSP1),
        .I14(n_17_X_AXI_IPIF_SSP1),
        .I15(n_16_X_AXI_IPIF_SSP1),
        .I16(n_15_X_AXI_IPIF_SSP1),
        .I17(n_14_X_AXI_IPIF_SSP1),
        .I18(n_13_X_AXI_IPIF_SSP1),
        .I19(n_12_X_AXI_IPIF_SSP1),
        .I2(n_14_WRITE_FIFO_I),
        .I20(n_11_X_AXI_IPIF_SSP1),
        .I21(n_10_X_AXI_IPIF_SSP1),
        .I22({Al,Txer,Tx_under_prev,n_10_IIC_CONTROL_I,p_0_out}),
        .I3(n_20_X_AXI_IPIF_SSP1),
        .I4(n_20_IIC_CONTROL_I),
        .I5(n_13_WRITE_FIFO_I),
        .I6(n_27_X_AXI_IPIF_SSP1),
        .I7({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4]}),
        .I8(n_0_WRITE_FIFO_CTRL_I),
        .I9({p_1_out,Rc_fifo_full,Tx_fifo_full,Srw,Bb,Abgc}),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .O1(sr_i),
        .O10(n_46_REG_INTERFACE_I),
        .O11(n_47_REG_INTERFACE_I),
        .O12(n_48_REG_INTERFACE_I),
        .O13(n_50_REG_INTERFACE_I),
        .O14(n_53_REG_INTERFACE_I),
        .O15(n_54_REG_INTERFACE_I),
        .O16(n_55_REG_INTERFACE_I),
        .O17(n_56_REG_INTERFACE_I),
        .O18({n_57_REG_INTERFACE_I,n_58_REG_INTERFACE_I,n_59_REG_INTERFACE_I,n_60_REG_INTERFACE_I,n_61_REG_INTERFACE_I,n_62_REG_INTERFACE_I,n_63_REG_INTERFACE_I}),
        .O19(timing_param_thdsta_i),
        .O2(n_24_REG_INTERFACE_I),
        .O20(n_72_REG_INTERFACE_I),
        .O21(n_73_REG_INTERFACE_I),
        .O22(n_74_REG_INTERFACE_I),
        .O23(n_75_REG_INTERFACE_I),
        .O24(timing_param_tsudat_i),
        .O25(n_84_REG_INTERFACE_I),
        .O26(n_85_REG_INTERFACE_I),
        .O27(n_86_REG_INTERFACE_I),
        .O28(n_87_REG_INTERFACE_I),
        .O29(n_88_REG_INTERFACE_I),
        .O3(n_25_REG_INTERFACE_I),
        .O30(n_89_REG_INTERFACE_I),
        .O31(n_90_REG_INTERFACE_I),
        .O32(n_91_REG_INTERFACE_I),
        .O33(timing_param_tsusta_i),
        .O34(timing_param_tsusto_i),
        .O35(timing_param_tbuf_i),
        .O36(timing_param_thigh_i),
        .O4(n_26_REG_INTERFACE_I),
        .O5(timing_param_thddat_i),
        .O6(n_35_REG_INTERFACE_I),
        .O7(n_36_REG_INTERFACE_I),
        .O8(timing_param_tlow_i),
        .O9(n_45_REG_INTERFACE_I),
        .Q({Cr[1],Cr[2],Cr[3],Cr[4],Cr[5],Cr[7]}),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .SR(n_52_REG_INTERFACE_I),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .buffer_Empty(buffer_Empty_0),
        .buffer_Empty_0(buffer_Empty_1),
        .buffer_Empty_1(buffer_Empty),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .dtre_d1(dtre_d1),
        .firstDynStartSeen(firstDynStartSeen),
        .gpo(gpo),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .txFifoRd(txFifoRd));
FDRE Rc_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_rd),
        .Q(Rc_fifo_rd_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Rc_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_wr),
        .Q(Rc_fifo_wr_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Tx_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_rd),
        .Q(Tx_fifo_rd_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Tx_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_wr),
        .Q(Tx_fifo_wr_d),
        .R(n_2_X_AXI_IPIF_SSP1));
axi_iic_0_SRL_FIFO__parameterized0 WRITE_FIFO_CTRL_I
       (.I1(n_48_REG_INTERFACE_I),
        .I2(n_25_REG_INTERFACE_I),
        .I3(n_24_REG_INTERFACE_I),
        .I9(Bb),
        .O1(n_0_WRITE_FIFO_CTRL_I),
        .O2(dynamic_MSMS),
        .O3(n_3_WRITE_FIFO_CTRL_I),
        .Q(Cr[5]),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .buffer_Empty(buffer_Empty_0),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .txFifoRd(txFifoRd));
axi_iic_0_SRL_FIFO_0 WRITE_FIFO_I
       (.I1(n_50_REG_INTERFACE_I),
        .I13(n_17_WRITE_FIFO_I),
        .I2(n_45_REG_INTERFACE_I),
        .I9(Tx_fifo_full),
        .O1(n_13_WRITE_FIFO_I),
        .O2(n_14_WRITE_FIFO_I),
        .Tx_addr(Tx_addr),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .buffer_Empty(buffer_Empty_1),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sda_clean(sda_clean),
        .shift_reg_ld(shift_reg_ld),
        .txFifoRd(txFifoRd));
axi_iic_0_axi_ipif_ssp1 X_AXI_IPIF_SSP1
       (.Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .E(n_21_X_AXI_IPIF_SSP1),
        .I1(n_56_REG_INTERFACE_I),
        .I10(n_88_REG_INTERFACE_I),
        .I11(n_89_REG_INTERFACE_I),
        .I12(n_19_X_AXI_IPIF_SSP1),
        .I13(n_18_X_AXI_IPIF_SSP1),
        .I14(n_17_X_AXI_IPIF_SSP1),
        .I15(n_16_X_AXI_IPIF_SSP1),
        .I16(n_15_X_AXI_IPIF_SSP1),
        .I17(n_14_X_AXI_IPIF_SSP1),
        .I18(n_13_X_AXI_IPIF_SSP1),
        .I19(n_12_X_AXI_IPIF_SSP1),
        .I2(n_72_REG_INTERFACE_I),
        .I20(n_11_X_AXI_IPIF_SSP1),
        .I21(n_10_X_AXI_IPIF_SSP1),
        .I22(n_22_IIC_CONTROL_I),
        .I23(n_3_WRITE_FIFO_CTRL_I),
        .I24(n_54_REG_INTERFACE_I),
        .I25(n_55_REG_INTERFACE_I),
        .I26(n_26_REG_INTERFACE_I),
        .I27(n_35_REG_INTERFACE_I),
        .I28(n_36_REG_INTERFACE_I),
        .I3(n_73_REG_INTERFACE_I),
        .I4(n_74_REG_INTERFACE_I),
        .I5(n_75_REG_INTERFACE_I),
        .I6(n_84_REG_INTERFACE_I),
        .I7(n_85_REG_INTERFACE_I),
        .I8(n_86_REG_INTERFACE_I),
        .I9(n_87_REG_INTERFACE_I),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .O1(n_20_X_AXI_IPIF_SSP1),
        .O19(timing_param_thdsta_i[0]),
        .O2(n_25_X_AXI_IPIF_SSP1),
        .O24(timing_param_tsudat_i[3:0]),
        .O3(n_27_X_AXI_IPIF_SSP1),
        .O33(timing_param_tsusta_i),
        .O34(timing_param_tsusto_i),
        .O35(timing_param_tbuf_i),
        .O36(timing_param_thigh_i),
        .Q({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4]}),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .SR(n_2_X_AXI_IPIF_SSP1),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[7:0]}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "iic_control" *) 
module axi_iic_0_iic_control
   (New_rcv_dta,
    shift_reg_ld,
    sda_rin_d1,
    scl_rin_d1,
    rsta_d1,
    Tx_under_prev,
    dtre_d1,
    Bb,
    D,
    earlyAckHdr,
    earlyAckDataState,
    ackDataState,
    rdy_new_xmt_i,
    O1,
    Aas,
    O2,
    O3,
    O4,
    O5,
    sda_t,
    scl_t,
    rdCntrFrmTxFifo0,
    O6,
    SR,
    s_axi_aclk,
    sda_clean,
    scl_clean,
    I1,
    Ro_prev,
    Q,
    sr_i,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    new_rcv_dta_d1,
    s_axi_wdata,
    p_3_in,
    firstDynStartSeen,
    E,
    txak,
    Tx_fifo_rd,
    Tx_fifo_rd_d,
    Tx_data_exists,
    dynamic_MSMS,
    Msms_set,
    callingReadAccess,
    Tx_fifo_data,
    I12,
    I13);
  output New_rcv_dta;
  output shift_reg_ld;
  output sda_rin_d1;
  output scl_rin_d1;
  output rsta_d1;
  output Tx_under_prev;
  output dtre_d1;
  output Bb;
  output [3:0]D;
  output earlyAckHdr;
  output earlyAckDataState;
  output ackDataState;
  output rdy_new_xmt_i;
  output [1:0]O1;
  output Aas;
  output O2;
  output O3;
  output [0:0]O4;
  output O5;
  output sda_t;
  output scl_t;
  output rdCntrFrmTxFifo0;
  output [7:0]O6;
  input [0:0]SR;
  input s_axi_aclk;
  input sda_clean;
  input scl_clean;
  input I1;
  input Ro_prev;
  input [4:0]Q;
  input [0:0]sr_i;
  input I2;
  input [6:0]I3;
  input [7:0]I4;
  input [7:0]I5;
  input [7:0]I6;
  input [7:0]I7;
  input [7:0]I8;
  input [7:0]I9;
  input [7:0]I10;
  input [7:0]I11;
  input new_rcv_dta_d1;
  input [0:0]s_axi_wdata;
  input p_3_in;
  input firstDynStartSeen;
  input [0:0]E;
  input txak;
  input Tx_fifo_rd;
  input Tx_fifo_rd_d;
  input Tx_data_exists;
  input [0:0]dynamic_MSMS;
  input Msms_set;
  input callingReadAccess;
  input [6:0]Tx_fifo_data;
  input I12;
  input [0:0]I13;

  wire Aas;
  wire AckDataState0_out;
  wire Bb;
  wire [3:0]D;
  wire [0:0]E;
  wire EarlyAckDataState0;
  wire EarlyAckHdr0;
  wire I1;
  wire [7:0]I10;
  wire [7:0]I11;
  wire I12;
  wire [0:0]I13;
  wire I2;
  wire [6:0]I3;
  wire [7:0]I4;
  wire [7:0]I5;
  wire [7:0]I6;
  wire [7:0]I7;
  wire [7:0]I8;
  wire [7:0]I9;
  wire Msms_set;
  wire New_rcv_dta;
  wire [1:0]O1;
  wire O2;
  wire O3;
  wire [0:0]O4;
  wire O5;
  wire [7:0]O6;
  wire [4:0]Q;
  wire Ro_prev;
  wire Rsta_rst;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [6:0]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_under_prev;
  wire ackDataState;
  wire al_i0;
  wire arb_lost;
  wire arb_lost0;
  wire bit_cnt_en;
  wire bit_cnt_en0;
  wire bus_busy_d1;
  wire callingReadAccess;
  wire detect_start;
  wire dtc_i;
  wire dtc_i_d1;
  wire dtc_i_d2;
  wire dtre_d1;
  wire [0:0]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire gen_stop_d1;
  wire i2c_header_en;
  wire i2c_header_en0;
  wire master_slave;
  wire msms_d1;
  wire msms_d2;
  wire msms_rst_i;
  wire n_0_BITCNT;
  wire n_0_CLKCNT;
  wire \n_0_FSM_onehot_state[1]_i_3 ;
  wire \n_0_FSM_onehot_state[1]_i_4 ;
  wire \n_0_FSM_onehot_state[2]_i_1 ;
  wire \n_0_FSM_onehot_state[3]_i_1 ;
  wire \n_0_FSM_onehot_state[4]_i_2 ;
  wire \n_0_FSM_onehot_state[5]_i_2 ;
  wire \n_0_FSM_onehot_state[7]_i_1 ;
  wire \n_0_FSM_onehot_state[7]_i_3 ;
  wire \n_0_FSM_onehot_state[7]_i_6 ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[0] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[1] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[2] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[3] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[4] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[5] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[6] ;
(* RTL_KEEP = "yes" *)   wire \n_0_FSM_onehot_state_reg[7] ;
  wire \n_0_FSM_sequential_scl_state[1]_i_2 ;
  wire \n_0_FSM_sequential_scl_state[2]_i_3 ;
  wire n_0_I2CDATA_REG;
  wire n_0_I2CHEADER_REG;
  wire \n_0_LEVEL_1_GEN.master_sda_reg ;
  wire n_0_SETUP_CNT;
  wire n_0_al_i_i_1;
  wire n_0_al_prevent_i_1;
  wire n_0_al_prevent_reg;
  wire n_0_arb_lost_i_1;
  wire n_0_arb_lost_i_2;
  wire n_0_bus_busy_i_1;
  wire n_0_detect_start_i_1;
  wire n_0_detect_stop_i_1;
  wire n_0_detect_stop_i_2;
  wire n_0_detect_stop_reg;
  wire n_0_gen_start_i_1;
  wire n_0_gen_start_reg;
  wire n_0_gen_stop_i_1;
  wire n_0_gen_stop_reg;
  wire n_0_master_slave_i_1;
  wire n_0_msms_d1_i_1;
  wire n_0_msms_d1_i_2;
  wire n_0_msms_rst_i_i_1;
  wire n_0_msms_rst_i_i_2;
  wire n_0_msms_rst_i_i_3;
  wire n_0_new_rcv_dta_i_i_1;
  wire n_0_rdy_new_xmt_i_i_1;
  wire n_0_scl_cout_reg_i_1;
  wire n_0_scl_falling_edge_i_1;
  wire n_0_sda_cout_reg_i_3;
  wire n_0_sda_sample_i_1;
  wire n_0_sda_setup_reg;
  wire n_0_shift_reg_en_i_2;
  wire n_0_slave_sda_reg;
  wire n_0_sm_stop_i_1;
  wire n_0_sm_stop_reg;
  wire n_0_stop_scl_reg_i_4;
  wire n_0_tx_under_prev_i_i_1;
  wire n_0_tx_under_prev_i_i_3;
  wire n_0_txer_edge_i_1;
  wire n_0_txer_i_i_1;
  wire n_0_txer_i_reg;
  wire n_1_CLKCNT;
  wire n_1_I2CHEADER_REG;
  wire n_2_BITCNT;
  wire n_2_CLKCNT;
  wire n_2_I2CDATA_REG;
  wire n_2_I2CHEADER_REG;
  wire n_3_CLKCNT;
  wire n_3_I2CDATA_REG;
  wire n_3_I2CHEADER_REG;
  wire n_4_CLKCNT;
  wire n_4_I2CDATA_REG;
  wire n_4_I2CHEADER_REG;
  wire n_5_CLKCNT;
  wire n_5_I2CDATA_REG;
  wire n_6_CLKCNT;
  wire n_6_I2CDATA_REG;
  wire n_6_I2CHEADER_REG;
  wire n_7_I2CDATA_REG;
  wire n_7_I2CHEADER_REG;
  wire n_8_I2CDATA_REG;
  wire n_8_I2CHEADER_REG;
  wire new_rcv_dta_d1;
  wire next_scl_state0;
  wire p_3_in;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire ro_prev_d1;
  wire rsta_d1;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire scl_clean;
  wire scl_cout_reg;
  wire scl_f_edg_d1;
  wire scl_f_edg_d2;
  wire scl_f_edg_d3;
  wire scl_falling_edge;
  wire scl_rin_d1;
  wire scl_rising_edge;
(* RTL_KEEP = "yes" *)   wire [3:0]scl_state;
  wire scl_t;
  wire sda_clean;
  wire sda_cout1;
  wire sda_cout_reg;
  wire sda_rin_d1;
  wire sda_sample;
  wire sda_t;
  wire [7:7]shift_reg;
  wire shift_reg_en;
  wire shift_reg_en0;
  wire shift_reg_ld;
  wire shift_reg_ld0;
  wire shift_reg_ld_d1;
  wire sm_stop;
  wire [0:0]sr_i;
  wire state1;
  wire stop_scl_reg;
  wire tx_under_prev_d1;
  wire tx_under_prev_i0;
  wire txak;
  wire txer_i;

LUT2 #(
    .INIT(4'h8)) 
     AckDataState_i_1
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(Q[0]),
        .O(AckDataState0_out));
FDRE AckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AckDataState0_out),
        .Q(ackDataState),
        .R(1'b0));
axi_iic_0_upcnt_n__parameterized0 BITCNT
       (.E(n_0_BITCNT),
        .EarlyAckDataState0(EarlyAckDataState0),
        .I1(\n_0_FSM_onehot_state[7]_i_6 ),
        .O1(n_2_BITCNT),
        .Q(Q[0]),
        .SR(SR),
        .bit_cnt_en(bit_cnt_en),
        .detect_start(detect_start),
        .dtc_i(dtc_i),
        .out({\n_0_FSM_onehot_state_reg[7] ,\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[4] ,\n_0_FSM_onehot_state_reg[3] ,\n_0_FSM_onehot_state_reg[2] ,\n_0_FSM_onehot_state_reg[1] }),
        .s_axi_aclk(s_axi_aclk),
        .scl_falling_edge(scl_falling_edge),
        .state1(state1));
axi_iic_0_upcnt_n CLKCNT
       (.D({n_0_CLKCNT,n_1_CLKCNT,n_2_CLKCNT,n_3_CLKCNT}),
        .E(n_6_CLKCNT),
        .I1(n_0_sda_cout_reg_i_3),
        .I10(I10),
        .I2(\n_0_FSM_sequential_scl_state[1]_i_2 ),
        .I3(\n_0_FSM_sequential_scl_state[2]_i_3 ),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(n_4_CLKCNT),
        .O2(n_5_CLKCNT),
        .Q(Q[3]),
        .SR(SR),
        .arb_lost(arb_lost),
        .next_scl_state0(next_scl_state0),
        .out(scl_state),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_cout1(sda_cout1),
        .sda_cout_reg(sda_cout_reg),
        .stop_scl_reg(stop_scl_reg));
FDRE EarlyAckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckDataState0),
        .Q(earlyAckDataState),
        .R(SR));
LUT2 #(
    .INIT(4'h8)) 
     EarlyAckHdr_i_1
       (.I0(scl_f_edg_d3),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .O(EarlyAckHdr0));
FDRE EarlyAckHdr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckHdr0),
        .Q(earlyAckHdr),
        .R(SR));
LUT3 #(
    .INIT(8'h02)) 
     \FSM_onehot_state[1]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[1]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[1]_i_4 
       (.I0(sda_sample),
        .I1(arb_lost),
        .O(\n_0_FSM_onehot_state[1]_i_4 ));
LUT6 #(
    .INIT(64'hAAAABBBAAAAAAAAA)) 
     \FSM_onehot_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(detect_start),
        .O(\n_0_FSM_onehot_state[2]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_state[3]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[3]_i_1 ));
LUT4 #(
    .INIT(16'h0002)) 
     \FSM_onehot_state[4]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(Ro_prev),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[4]_i_2 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[5]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[5]_i_2 ));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_onehot_state[7]_i_1 
       (.I0(n_0_detect_stop_reg),
        .I1(Q[0]),
        .O(\n_0_FSM_onehot_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_state[7]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(detect_start),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[7]_i_3 ));
LUT3 #(
    .INIT(8'hBA)) 
     \FSM_onehot_state[7]_i_4 
       (.I0(scl_f_edg_d2),
        .I1(Ro_prev),
        .I2(ro_prev_d1),
        .O(state1));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[7]_i_6 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[7]_i_6 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(1'b0),
        .Q(\n_0_FSM_onehot_state_reg[0] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(n_3_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .S(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(\n_0_FSM_onehot_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(\n_0_FSM_onehot_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(n_2_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(n_1_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(n_0_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(n_0_BITCNT),
        .D(\n_0_FSM_onehot_state[7]_i_3 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \FSM_sequential_scl_state[0]_i_6 
       (.I0(Bb),
        .I1(master_slave),
        .I2(n_0_gen_start_reg),
        .O(next_scl_state0));
LUT4 #(
    .INIT(16'h5DFD)) 
     \FSM_sequential_scl_state[1]_i_2 
       (.I0(scl_state[0]),
        .I1(sda_clean),
        .I2(scl_state[2]),
        .I3(scl_clean),
        .O(\n_0_FSM_sequential_scl_state[1]_i_2 ));
LUT6 #(
    .INIT(64'hAAAAA8AA0000A8AA)) 
     \FSM_sequential_scl_state[2]_i_3 
       (.I0(scl_state[1]),
        .I1(Q[3]),
        .I2(arb_lost),
        .I3(stop_scl_reg),
        .I4(scl_state[0]),
        .I5(sda_clean),
        .O(\n_0_FSM_sequential_scl_state[2]_i_3 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_scl_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(n_6_CLKCNT),
        .D(n_3_CLKCNT),
        .Q(scl_state[0]),
        .R(SR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_scl_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_6_CLKCNT),
        .D(n_2_CLKCNT),
        .Q(scl_state[1]),
        .R(SR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_scl_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_6_CLKCNT),
        .D(n_1_CLKCNT),
        .Q(scl_state[2]),
        .R(SR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_scl_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_6_CLKCNT),
        .D(n_0_CLKCNT),
        .Q(scl_state[3]),
        .R(SR));
axi_iic_0_shift8 I2CDATA_REG
       (.I1(shift_reg_ld),
        .I13(I13),
        .I2(Tx_under_prev),
        .O1(n_0_I2CDATA_REG),
        .Q({shift_reg,n_2_I2CDATA_REG,n_3_I2CDATA_REG,n_4_I2CDATA_REG,n_5_I2CDATA_REG,n_6_I2CDATA_REG,n_7_I2CDATA_REG,n_8_I2CDATA_REG}),
        .SR(SR),
        .Tx_fifo_data(Tx_fifo_data),
        .out({\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[5] ,\n_0_FSM_onehot_state_reg[2] }),
        .s_axi_aclk(s_axi_aclk),
        .shift_reg_en(shift_reg_en),
        .txak(txak));
axi_iic_0_shift8_1 I2CHEADER_REG
       (.D({n_0_I2CHEADER_REG,n_1_I2CHEADER_REG,n_2_I2CHEADER_REG,n_3_I2CHEADER_REG}),
        .E(i2c_header_en),
        .I1(\n_0_FSM_onehot_state[4]_i_2 ),
        .I10(\n_0_FSM_onehot_state[5]_i_2 ),
        .I2(shift_reg),
        .I3(I3),
        .I4(O1),
        .I5(Tx_under_prev),
        .I6(n_0_detect_stop_reg),
        .I7(Aas),
        .I8(\n_0_FSM_onehot_state[1]_i_3 ),
        .I9(\n_0_FSM_onehot_state[1]_i_4 ),
        .O1(n_4_I2CHEADER_REG),
        .O2(n_6_I2CHEADER_REG),
        .O3(n_7_I2CHEADER_REG),
        .O4(n_8_I2CHEADER_REG),
        .Q({Q[4],Q[2],Q[0]}),
        .Ro_prev(Ro_prev),
        .SR(SR),
        .arb_lost(arb_lost),
        .detect_start(detect_start),
        .master_slave(master_slave),
        .out({\n_0_FSM_onehot_state_reg[7] ,\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[5] ,\n_0_FSM_onehot_state_reg[4] ,\n_0_FSM_onehot_state_reg[3] ,\n_0_FSM_onehot_state_reg[2] ,\n_0_FSM_onehot_state_reg[1] }),
        .s_axi_aclk(s_axi_aclk),
        .sda_clean(sda_clean),
        .sda_sample(sda_sample),
        .shift_reg_ld0(shift_reg_ld0),
        .txak(txak));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \IIC2Bus_IntrEvent[4]_i_1 
       (.I0(Bb),
        .O(D[1]));
LUT1 #(
    .INIT(2'h1)) 
     \IIC2Bus_IntrEvent[6]_i_1 
       (.I0(Aas),
        .O(D[0]));
FDSE \LEVEL_1_GEN.master_sda_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_I2CDATA_REG),
        .Q(\n_0_LEVEL_1_GEN.master_sda_reg ),
        .S(SR));
LUT2 #(
    .INIT(4'h2)) 
     \RD_FIFO_CNTRL.Rc_fifo_wr_i_1 
       (.I0(New_rcv_dta),
        .I1(new_rcv_dta_d1),
        .O(O3));
axi_iic_0_upcnt_n_2 SETUP_CNT
       (.I1(n_0_sda_setup_reg),
        .I11(I11),
        .I2(Tx_under_prev),
        .I3(n_0_gen_stop_reg),
        .O1(n_0_SETUP_CNT),
        .Q({Q[3],Q[0]}),
        .SR(SR),
        .gen_stop_d1(gen_stop_d1),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .tx_under_prev_d1(tx_under_prev_d1));
FDRE aas_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_7_I2CHEADER_REG),
        .Q(Aas),
        .R(1'b0));
FDRE abgc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_6_I2CHEADER_REG),
        .Q(O1[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     al_i_i_1
       (.I0(al_i0),
        .I1(master_slave),
        .I2(Q[3]),
        .O(n_0_al_i_i_1));
LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
     al_i_i_2
       (.I0(arb_lost),
        .I1(n_0_detect_stop_reg),
        .I2(n_0_al_prevent_reg),
        .I3(n_0_sm_stop_reg),
        .I4(bus_busy_d1),
        .I5(n_0_gen_start_reg),
        .O(al_i0));
FDRE al_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_al_i_i_1),
        .Q(D[3]),
        .R(SR));
LUT5 #(
    .INIT(32'h22222220)) 
     al_prevent_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(n_0_gen_stop_reg),
        .I3(n_0_sm_stop_reg),
        .I4(n_0_al_prevent_reg),
        .O(n_0_al_prevent_i_1));
FDRE al_prevent_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_al_prevent_i_1),
        .Q(n_0_al_prevent_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h000000002AEA2A2A)) 
     arb_lost_i_1
       (.I0(arb_lost),
        .I1(arb_lost0),
        .I2(master_slave),
        .I3(sda_clean),
        .I4(sda_cout_reg),
        .I5(n_0_arb_lost_i_2),
        .O(n_0_arb_lost_i_1));
LUT5 #(
    .INIT(32'hCCCDFFFF)) 
     arb_lost_i_2
       (.I0(scl_state[1]),
        .I1(scl_state[3]),
        .I2(scl_state[0]),
        .I3(scl_state[2]),
        .I4(Q[0]),
        .O(n_0_arb_lost_i_2));
FDRE arb_lost_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_arb_lost_i_1),
        .Q(arb_lost),
        .R(1'b0));
LUT4 #(
    .INIT(16'hAAA8)) 
     bit_cnt_en_i_1
       (.I0(scl_falling_edge),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .O(bit_cnt_en0));
FDRE bit_cnt_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bit_cnt_en0),
        .Q(bit_cnt_en),
        .R(SR));
FDRE bus_busy_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bb),
        .Q(bus_busy_d1),
        .R(SR));
LUT4 #(
    .INIT(16'h00E0)) 
     bus_busy_i_1
       (.I0(Bb),
        .I1(detect_start),
        .I2(Q[0]),
        .I3(n_0_detect_stop_reg),
        .O(n_0_bus_busy_i_1));
FDRE bus_busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bus_busy_i_1),
        .Q(Bb),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAA33333000)) 
     \cr_i[2]_i_1 
       (.I0(s_axi_wdata),
        .I1(Rsta_rst),
        .I2(p_3_in),
        .I3(firstDynStartSeen),
        .I4(Q[3]),
        .I5(E),
        .O(O4));
LUT5 #(
    .INIT(32'h00000020)) 
     \cr_i[2]_i_2 
       (.I0(scl_state[1]),
        .I1(scl_state[2]),
        .I2(Q[3]),
        .I3(scl_state[3]),
        .I4(scl_state[0]),
        .O(Rsta_rst));
LUT6 #(
    .INIT(64'hEEFEEEEEEEEEEEEE)) 
     \cr_i[5]_i_2 
       (.I0(n_0_sm_stop_reg),
        .I1(msms_rst_i),
        .I2(Tx_fifo_rd),
        .I3(Tx_fifo_rd_d),
        .I4(Tx_data_exists),
        .I5(dynamic_MSMS),
        .O(O5));
FDRE \data_i2c_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_8_I2CDATA_REG),
        .Q(O6[0]),
        .R(SR));
FDRE \data_i2c_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_7_I2CDATA_REG),
        .Q(O6[1]),
        .R(SR));
FDRE \data_i2c_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_6_I2CDATA_REG),
        .Q(O6[2]),
        .R(SR));
FDRE \data_i2c_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_5_I2CDATA_REG),
        .Q(O6[3]),
        .R(SR));
FDRE \data_i2c_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_4_I2CDATA_REG),
        .Q(O6[4]),
        .R(SR));
FDRE \data_i2c_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_3_I2CDATA_REG),
        .Q(O6[5]),
        .R(SR));
FDRE \data_i2c_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(n_2_I2CDATA_REG),
        .Q(O6[6]),
        .R(SR));
FDRE \data_i2c_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(n_0_new_rcv_dta_i_i_1),
        .D(shift_reg),
        .Q(O6[7]),
        .R(SR));
LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
     detect_start_i_1
       (.I0(detect_start),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(\n_0_FSM_onehot_state_reg[2] ),
        .O(n_0_detect_start_i_1));
FDRE detect_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_detect_start_i_1),
        .Q(detect_start),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000F2020000)) 
     detect_stop_i_1
       (.I0(n_0_detect_stop_reg),
        .I1(n_0_detect_stop_i_2),
        .I2(I12),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(detect_start),
        .O(n_0_detect_stop_i_1));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h2)) 
     detect_stop_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .O(n_0_detect_stop_i_2));
FDRE detect_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_detect_stop_i_1),
        .Q(n_0_detect_stop_reg),
        .R(1'b0));
FDRE dtc_i_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i),
        .Q(dtc_i_d1),
        .R(SR));
FDRE dtc_i_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i_d1),
        .Q(dtc_i_d2),
        .R(SR));
FDRE dtc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_2_BITCNT),
        .Q(dtc_i),
        .R(1'b0));
FDRE dtre_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_i),
        .Q(dtre_d1),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h22A200A0)) 
     gen_start_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(n_0_gen_start_reg),
        .O(n_0_gen_start_i_1));
FDRE gen_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_start_i_1),
        .Q(n_0_gen_start_reg),
        .R(1'b0));
FDRE gen_stop_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_stop_reg),
        .Q(gen_stop_d1),
        .R(SR));
LUT6 #(
    .INIT(64'h22222A2200000A00)) 
     gen_stop_i_1
       (.I0(Q[0]),
        .I1(n_0_detect_stop_reg),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(arb_lost),
        .I5(n_0_gen_stop_reg),
        .O(n_0_gen_stop_i_1));
FDRE gen_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_stop_i_1),
        .Q(n_0_gen_stop_reg),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     i2c_header_en_i_1
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(scl_rising_edge),
        .O(i2c_header_en0));
FDRE i2c_header_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i2c_header_en0),
        .Q(i2c_header_en),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h00C0A0A0)) 
     master_slave_i_1
       (.I0(msms_d1),
        .I1(master_slave),
        .I2(Q[0]),
        .I3(arb_lost),
        .I4(Bb),
        .O(n_0_master_slave_i_1));
FDRE master_slave_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_master_slave_i_1),
        .Q(master_slave),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     msms_d1_i_1
       (.I0(n_0_msms_d1_i_2),
        .I1(msms_rst_i),
        .O(n_0_msms_d1_i_1));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFAA)) 
     msms_d1_i_2
       (.I0(Q[1]),
        .I1(dtc_i_d2),
        .I2(dtc_i_d1),
        .I3(msms_d1),
        .I4(Msms_set),
        .I5(n_0_txer_i_reg),
        .O(n_0_msms_d1_i_2));
FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_d1_i_1),
        .Q(msms_d1),
        .R(SR));
FDRE msms_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d1),
        .Q(msms_d2),
        .R(SR));
LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
     msms_rst_i_i_1
       (.I0(msms_rst_i),
        .I1(n_0_msms_rst_i_i_2),
        .I2(n_0_msms_rst_i_i_3),
        .I3(arb_lost0),
        .I4(master_slave),
        .I5(Q[0]),
        .O(n_0_msms_rst_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h2)) 
     msms_rst_i_i_2
       (.I0(sda_cout_reg),
        .I1(sda_clean),
        .O(n_0_msms_rst_i_i_2));
LUT4 #(
    .INIT(16'hF0F1)) 
     msms_rst_i_i_3
       (.I0(scl_state[2]),
        .I1(scl_state[0]),
        .I2(scl_state[3]),
        .I3(scl_state[1]),
        .O(n_0_msms_rst_i_i_3));
LUT3 #(
    .INIT(8'hA8)) 
     msms_rst_i_i_4
       (.I0(scl_rising_edge),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .O(arb_lost0));
FDRE msms_rst_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_rst_i_i_1),
        .Q(msms_rst_i),
        .R(1'b0));
LUT3 #(
    .INIT(8'h08)) 
     new_rcv_dta_i_i_1
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(scl_falling_edge),
        .I2(Ro_prev),
        .O(n_0_new_rcv_dta_i_i_1));
FDRE new_rcv_dta_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_new_rcv_dta_i_i_1),
        .Q(New_rcv_dta),
        .R(SR));
LUT3 #(
    .INIT(8'h80)) 
     rdCntrFrmTxFifo_i_1
       (.I0(earlyAckHdr),
        .I1(Tx_data_exists),
        .I2(callingReadAccess),
        .O(rdCntrFrmTxFifo0));
LUT6 #(
    .INIT(64'h222F2F2F22202020)) 
     rdy_new_xmt_i_i_1
       (.I0(shift_reg_ld_d1),
        .I1(shift_reg_ld),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(Q[1]),
        .I5(rdy_new_xmt_i),
        .O(n_0_rdy_new_xmt_i_i_1));
FDRE rdy_new_xmt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rdy_new_xmt_i_i_1),
        .Q(rdy_new_xmt_i),
        .R(SR));
FDRE ro_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(ro_prev_d1),
        .R(SR));
FDRE rsta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rsta_d1),
        .R(SR));
FDRE rsta_tx_under_prev_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(O2),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00005417)) 
     scl_cout_reg_i_1
       (.I0(scl_state[3]),
        .I1(scl_state[0]),
        .I2(scl_state[1]),
        .I3(scl_state[2]),
        .I4(Ro_prev),
        .O(n_0_scl_cout_reg_i_1));
FDSE scl_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_scl_cout_reg_i_1),
        .Q(scl_cout_reg),
        .S(SR));
FDRE scl_f_edg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_falling_edge),
        .Q(scl_f_edg_d1),
        .R(SR));
FDRE scl_f_edg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d1),
        .Q(scl_f_edg_d2),
        .R(SR));
FDRE scl_f_edg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d2),
        .Q(scl_f_edg_d3),
        .R(SR));
LUT2 #(
    .INIT(4'h2)) 
     scl_falling_edge_i_1
       (.I0(scl_rin_d1),
        .I1(scl_clean),
        .O(n_0_scl_falling_edge_i_1));
FDRE scl_falling_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_scl_falling_edge_i_1),
        .Q(scl_falling_edge),
        .R(SR));
FDRE scl_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_clean),
        .Q(scl_rin_d1),
        .R(1'b0));
FDRE scl_rising_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(scl_rising_edge),
        .R(SR));
LUT4 #(
    .INIT(16'h0010)) 
     scl_t_INST_0
       (.I0(Ro_prev),
        .I1(n_0_sda_setup_reg),
        .I2(scl_cout_reg),
        .I3(O2),
        .O(scl_t));
LUT6 #(
    .INIT(64'hABFBABFBABFBABAB)) 
     sda_cout_reg_i_3
       (.I0(scl_state[1]),
        .I1(scl_state[0]),
        .I2(scl_state[2]),
        .I3(sda_cout1),
        .I4(Q[3]),
        .I5(\n_0_LEVEL_1_GEN.master_sda_reg ),
        .O(n_0_sda_cout_reg_i_3));
FDSE sda_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_4_CLKCNT),
        .Q(sda_cout_reg),
        .S(SR));
FDRE sda_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_clean),
        .Q(sda_rin_d1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     sda_sample_i_1
       (.I0(sda_clean),
        .I1(scl_rising_edge),
        .I2(sda_sample),
        .O(n_0_sda_sample_i_1));
FDRE sda_sample_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_sda_sample_i_1),
        .Q(sda_sample),
        .R(SR));
FDRE sda_setup_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_SETUP_CNT),
        .Q(n_0_sda_setup_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'h55455040)) 
     sda_t_INST_0
       (.I0(stop_scl_reg),
        .I1(sda_cout_reg),
        .I2(master_slave),
        .I3(arb_lost),
        .I4(n_0_slave_sda_reg),
        .O(sda_t));
LUT4 #(
    .INIT(16'hFF80)) 
     shift_reg_en_i_1
       (.I0(master_slave),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(scl_rising_edge),
        .I3(n_0_shift_reg_en_i_2),
        .O(shift_reg_en0));
LUT5 #(
    .INIT(32'h0000F888)) 
     shift_reg_en_i_2
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(scl_rising_edge),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(scl_f_edg_d2),
        .I4(detect_start),
        .O(n_0_shift_reg_en_i_2));
FDRE shift_reg_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_en0),
        .Q(shift_reg_en),
        .R(SR));
FDRE shift_reg_ld_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld),
        .Q(shift_reg_ld_d1),
        .R(SR));
FDRE shift_reg_ld_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld0),
        .Q(shift_reg_ld),
        .R(SR));
FDSE slave_sda_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_4_I2CHEADER_REG),
        .Q(n_0_slave_sda_reg),
        .S(SR));
LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
     sm_stop_i_1
       (.I0(n_0_sm_stop_reg),
        .I1(state1),
        .I2(sm_stop),
        .I3(master_slave),
        .I4(Q[0]),
        .I5(n_0_detect_stop_reg),
        .O(n_0_sm_stop_i_1));
LUT5 #(
    .INIT(32'h40404000)) 
     sm_stop_i_2
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(sda_sample),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .O(sm_stop));
FDRE sm_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_sm_stop_i_1),
        .Q(n_0_sm_stop_reg),
        .R(1'b0));
FDRE srw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_8_I2CHEADER_REG),
        .Q(O1[1]),
        .R(1'b0));
LUT3 #(
    .INIT(8'hE0)) 
     stop_scl_reg_i_2
       (.I0(n_0_sm_stop_reg),
        .I1(n_0_gen_stop_reg),
        .I2(n_0_stop_scl_reg_i_4),
        .O(sda_cout1));
LUT6 #(
    .INIT(64'hFFFFFAFAFFFFFAFB)) 
     stop_scl_reg_i_4
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(n_0_stop_scl_reg_i_4));
FDRE stop_scl_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_5_CLKCNT),
        .Q(stop_scl_reg),
        .R(SR));
FDRE tx_under_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(tx_under_prev_d1),
        .R(SR));
LUT6 #(
    .INIT(64'hAAAA0020AAAA0000)) 
     tx_under_prev_i_i_1
       (.I0(Q[0]),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(sr_i),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(tx_under_prev_i0),
        .I5(Tx_under_prev),
        .O(n_0_tx_under_prev_i_i_1));
LUT6 #(
    .INIT(64'h4100000000000000)) 
     tx_under_prev_i_i_2
       (.I0(n_0_gen_stop_reg),
        .I1(Aas),
        .I2(O1[1]),
        .I3(n_0_tx_under_prev_i_i_3),
        .I4(scl_falling_edge),
        .I5(sr_i),
        .O(tx_under_prev_i0));
LUT2 #(
    .INIT(4'hE)) 
     tx_under_prev_i_i_3
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .O(n_0_tx_under_prev_i_i_3));
FDRE tx_under_prev_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_tx_under_prev_i_i_1),
        .Q(Tx_under_prev),
        .R(1'b0));
LUT6 #(
    .INIT(64'hE200E2000000E200)) 
     txer_edge_i_1
       (.I0(D[2]),
        .I1(txer_i),
        .I2(sda_sample),
        .I3(Q[0]),
        .I4(scl_f_edg_d2),
        .I5(scl_falling_edge),
        .O(n_0_txer_edge_i_1));
LUT4 #(
    .INIT(16'hAAA8)) 
     txer_edge_i_2
       (.I0(scl_falling_edge),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .O(txer_i));
FDRE txer_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_txer_edge_i_1),
        .Q(D[2]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
     txer_i_i_1
       (.I0(sda_sample),
        .I1(scl_falling_edge),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(n_0_txer_i_reg),
        .O(n_0_txer_i_i_1));
FDRE txer_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_txer_i_i_1),
        .Q(n_0_txer_i_reg),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module axi_iic_0_interrupt_control
   (O1,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    O2,
    ipif_glbl_irpt_enable_reg,
    Q,
    iic2intc_irpt,
    I1,
    irpt_wrack,
    s_axi_aclk,
    I2,
    I3,
    p_27_in,
    s_axi_wdata,
    IIC2Bus_IntrEvent,
    E);
  output O1;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output O2;
  output ipif_glbl_irpt_enable_reg;
  output [7:0]Q;
  output iic2intc_irpt;
  input I1;
  input irpt_wrack;
  input s_axi_aclk;
  input I2;
  input I3;
  input p_27_in;
  input [7:0]s_axi_wdata;
  input [0:7]IIC2Bus_IntrEvent;
  input [0:0]E;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire [0:7]IIC2Bus_IntrEvent;
  wire O1;
  wire O2;
  wire [7:0]Q;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ;
  wire n_0_iic2intc_irpt_INST_0_i_1;
  wire n_0_iic2intc_irpt_INST_0_i_2;
  wire n_0_iic2intc_irpt_INST_0_i_3;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;

LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[0]),
        .I4(O1),
        .I5(IIC2Bus_IntrEvent[0]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ),
        .Q(O1),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in17_in),
        .I5(IIC2Bus_IntrEvent[1]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ),
        .Q(p_1_in17_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[2]),
        .I4(p_1_in14_in),
        .I5(IIC2Bus_IntrEvent[2]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ),
        .Q(p_1_in14_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[3]),
        .I4(p_1_in11_in),
        .I5(IIC2Bus_IntrEvent[3]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ),
        .Q(p_1_in11_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[4]),
        .I4(p_1_in8_in),
        .I5(IIC2Bus_IntrEvent[4]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ),
        .Q(p_1_in8_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[5]),
        .I4(p_1_in5_in),
        .I5(IIC2Bus_IntrEvent[5]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ),
        .Q(p_1_in5_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[6]),
        .I4(p_1_in2_in),
        .I5(IIC2Bus_IntrEvent[6]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ),
        .Q(p_1_in2_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[7]),
        .I4(O2),
        .I5(IIC2Bus_IntrEvent[7]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ),
        .Q(O2),
        .R(I1));
LUT4 #(
    .INIT(16'hAAA8)) 
     iic2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(n_0_iic2intc_irpt_INST_0_i_1),
        .I2(n_0_iic2intc_irpt_INST_0_i_2),
        .I3(n_0_iic2intc_irpt_INST_0_i_3),
        .O(iic2intc_irpt));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     iic2intc_irpt_INST_0_i_1
       (.I0(Q[3]),
        .I1(p_1_in11_in),
        .I2(p_1_in5_in),
        .I3(Q[5]),
        .I4(p_1_in8_in),
        .I5(Q[4]),
        .O(n_0_iic2intc_irpt_INST_0_i_1));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     iic2intc_irpt_INST_0_i_2
       (.I0(Q[6]),
        .I1(p_1_in2_in),
        .I2(O1),
        .I3(Q[0]),
        .I4(O2),
        .I5(Q[7]),
        .O(n_0_iic2intc_irpt_INST_0_i_2));
LUT4 #(
    .INIT(16'hF888)) 
     iic2intc_irpt_INST_0_i_3
       (.I0(Q[2]),
        .I1(p_1_in14_in),
        .I2(Q[1]),
        .I3(p_1_in17_in),
        .O(n_0_iic2intc_irpt_INST_0_i_3));
FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(I1));
FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(I1));
FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "reg_interface" *) 
module axi_iic_0_reg_interface
   (IIC2Bus_IntrEvent,
    Q,
    D,
    Tx_fifo_wr,
    Tx_fifo_rd,
    Tx_fifo_rst,
    new_rcv_dta_d1,
    Rc_fifo_wr,
    Rc_fifo_rd,
    O1,
    gpo,
    Msms_set,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    ctrl_fifo_wr_i,
    O13,
    txFifoRd,
    SR,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O36,
    I1,
    I2,
    s_axi_aclk,
    I3,
    rdy_new_xmt_i,
    New_rcv_dta,
    I4,
    Bus2IIC_RdCE,
    I5,
    Aas,
    I6,
    Rc_Data_Exists,
    Rc_addr,
    s_axi_wdata,
    I7,
    Tx_fifo_wr_d,
    Rc_fifo_wr_d,
    Rc_fifo_rd_d,
    buffer_Empty,
    rdCntrFrmTxFifo,
    Tx_fifo_rd_d,
    I8,
    buffer_Empty_0,
    Tx_data_exists,
    buffer_Empty_1,
    I9,
    dtre_d1,
    rsta_d1,
    I10,
    firstDynStartSeen,
    p_3_in,
    E,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22);
  output [0:7]IIC2Bus_IntrEvent;
  output [5:0]Q;
  output [0:0]D;
  output Tx_fifo_wr;
  output Tx_fifo_rd;
  output Tx_fifo_rst;
  output new_rcv_dta_d1;
  output Rc_fifo_wr;
  output Rc_fifo_rd;
  output [0:0]O1;
  output [0:0]gpo;
  output Msms_set;
  output O2;
  output O3;
  output O4;
  output [7:0]O5;
  output O6;
  output O7;
  output [7:0]O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output ctrl_fifo_wr_i;
  output O13;
  output txFifoRd;
  output [0:0]SR;
  output O14;
  output O15;
  output O16;
  output O17;
  output [6:0]O18;
  output [7:0]O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output [7:0]O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output [7:0]O33;
  output [7:0]O34;
  output [7:0]O35;
  output [7:0]O36;
  input I1;
  input I2;
  input s_axi_aclk;
  input I3;
  input rdy_new_xmt_i;
  input New_rcv_dta;
  input I4;
  input [0:0]Bus2IIC_RdCE;
  input I5;
  input Aas;
  input I6;
  input Rc_Data_Exists;
  input [0:3]Rc_addr;
  input [9:0]s_axi_wdata;
  input [2:0]I7;
  input Tx_fifo_wr_d;
  input Rc_fifo_wr_d;
  input Rc_fifo_rd_d;
  input buffer_Empty;
  input rdCntrFrmTxFifo;
  input Tx_fifo_rd_d;
  input I8;
  input buffer_Empty_0;
  input Tx_data_exists;
  input buffer_Empty_1;
  input [5:0]I9;
  input dtre_d1;
  input rsta_d1;
  input I10;
  input firstDynStartSeen;
  input p_3_in;
  input [0:0]E;
  input [2:0]I11;
  input [0:0]I12;
  input [0:0]I13;
  input [0:0]I14;
  input [0:0]I15;
  input [0:0]I16;
  input [0:0]I17;
  input [0:0]I18;
  input [0:0]I19;
  input [0:0]I20;
  input [0:0]I21;
  input [4:0]I22;

  wire Aas;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:6]Cr;
  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire [2:0]I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [0:0]I15;
  wire [0:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [4:0]I22;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [2:0]I7;
  wire I8;
  wire [5:0]I9;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire [0:0]O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire [6:0]O18;
  wire [7:0]O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire [7:0]O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire [7:0]O33;
  wire [7:0]O34;
  wire [7:0]O35;
  wire [7:0]O36;
  wire O4;
  wire [7:0]O5;
  wire O6;
  wire O7;
  wire [7:0]O8;
  wire O9;
  wire [5:0]Q;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire ctrl_fifo_wr_i;
  wire dtre_d1;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire msms_d1;
  wire \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ;
  wire n_0_msms_set_i_i_1;
  wire \n_0_s_axi_rdata_i[1]_i_12 ;
  wire \n_0_s_axi_rdata_i[2]_i_12 ;
  wire \n_0_s_axi_rdata_i[3]_i_12 ;
  wire \n_0_s_axi_rdata_i[4]_i_12 ;
  wire \n_0_s_axi_rdata_i[5]_i_12 ;
  wire \n_0_s_axi_rdata_i[6]_i_12 ;
  wire \n_0_s_axi_rdata_i[7]_i_17 ;
  wire new_rcv_dta_d1;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_1_in6_in;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire s_axi_aclk;
  wire [9:0]s_axi_wdata;
  wire [1:7]sr_i;
  wire txFifoRd;

(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .O(O9));
LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_4__0 
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .O(O10));
LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_5 
       (.I0(Rc_fifo_rd),
        .I1(Rc_fifo_rd_d),
        .O(O11));
LUT6 #(
    .INIT(64'hBFBFBBBF88888888)) 
     Data_Exists_DFF_i_1
       (.I0(ctrl_fifo_wr_i),
        .I1(buffer_Empty),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_rd),
        .I4(Tx_fifo_rd_d),
        .I5(I8),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h2FFF2020)) 
     Data_Exists_DFF_i_1__0
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .I2(buffer_Empty_0),
        .I3(txFifoRd),
        .I4(Tx_data_exists),
        .O(O13));
LUT6 #(
    .INIT(64'hFF2FFFFF20202020)) 
     Data_Exists_DFF_i_1__1
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .I2(buffer_Empty_1),
        .I3(Rc_fifo_rd_d),
        .I4(Rc_fifo_rd),
        .I5(Rc_Data_Exists),
        .O(O14));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hFFF4)) 
     Data_Exists_DFF_i_2__1
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_fifo_rst),
        .I3(I1),
        .O(ctrl_fifo_wr_i));
LUT3 #(
    .INIT(8'hF4)) 
     Data_Exists_DFF_i_3
       (.I0(Tx_fifo_rd_d),
        .I1(Tx_fifo_rd),
        .I2(rdCntrFrmTxFifo),
        .O(txFifoRd));
FDRE \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(IIC2Bus_IntrEvent[7]),
        .R(I1));
FDRE \FIFO_GEN_DTR.Tx_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i),
        .Q(Tx_fifo_rd),
        .R(I1));
FDSE \FIFO_GEN_DTR.Tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr[6]),
        .Q(Tx_fifo_rst),
        .S(I1));
FDRE \FIFO_GEN_DTR.Tx_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I3),
        .Q(Tx_fifo_wr),
        .R(I1));
LUT3 #(
    .INIT(8'h02)) 
     \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(Tx_fifo_rst),
        .I2(I1),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(Tx_fifo_rst),
        .I2(I1),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \FSM_sequential_scl_state[3]_i_1 
       (.I0(Q[0]),
        .O(SR));
FDRE \GPO_GEN.gpo_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I6),
        .Q(gpo),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22[4]),
        .Q(IIC2Bus_IntrEvent[0]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22[3]),
        .Q(IIC2Bus_IntrEvent[1]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22[2]),
        .Q(IIC2Bus_IntrEvent[2]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(IIC2Bus_IntrEvent[3]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22[1]),
        .Q(IIC2Bus_IntrEvent[4]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Aas),
        .Q(IIC2Bus_IntrEvent[5]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I22[0]),
        .Q(IIC2Bus_IntrEvent[6]),
        .R(I1));
FDRE \RD_FIFO_CNTRL.Rc_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IIC_RdCE),
        .Q(Rc_fifo_rd),
        .R(I1));
FDRE \RD_FIFO_CNTRL.Rc_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I4),
        .Q(Rc_fifo_wr),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I13),
        .D(s_axi_wdata[3]),
        .Q(p_1_in6_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I13),
        .D(s_axi_wdata[2]),
        .Q(p_1_in4_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I13),
        .D(s_axi_wdata[1]),
        .Q(p_1_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I13),
        .D(s_axi_wdata[0]),
        .Q(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .R(I1));
LUT5 #(
    .INIT(32'h00200000)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_1 
       (.I0(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ),
        .I1(Msms_set),
        .I2(Rc_Data_Exists),
        .I3(I1),
        .I4(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ));
LUT4 #(
    .INIT(16'h9009)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_2 
       (.I0(p_1_in4_in),
        .I1(Rc_addr[2]),
        .I2(p_1_in),
        .I3(Rc_addr[1]),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ));
LUT4 #(
    .INIT(16'h9009)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_3 
       (.I0(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .I1(Rc_addr[0]),
        .I2(p_1_in6_in),
        .I3(Rc_addr[3]),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ));
FDRE \RD_FIFO_CNTRL.ro_prev_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ),
        .Q(D),
        .R(1'b0));
FDRE \adr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[7]),
        .Q(O18[6]),
        .R(I1));
FDRE \adr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[6]),
        .Q(O18[5]),
        .R(I1));
FDRE \adr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[5]),
        .Q(O18[4]),
        .R(I1));
FDRE \adr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[4]),
        .Q(O18[3]),
        .R(I1));
FDRE \adr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[3]),
        .Q(O18[2]),
        .R(I1));
FDRE \adr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[2]),
        .Q(O18[1]),
        .R(I1));
FDRE \adr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I12),
        .D(s_axi_wdata[1]),
        .Q(O18[0]),
        .R(I1));
FDRE \cr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Cr[0]),
        .R(I1));
FDRE \cr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[5]),
        .R(I1));
FDRE \cr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I11[2]),
        .Q(Q[4]),
        .R(I1));
FDRE \cr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[3]),
        .R(I1));
FDRE \cr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I11[1]),
        .Q(Q[2]),
        .R(I1));
FDRE \cr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I11[0]),
        .Q(Q[1]),
        .R(I1));
FDRE \cr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Cr[6]),
        .R(I1));
FDRE \cr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(I1));
LUT4 #(
    .INIT(16'h00E0)) 
     firstDynStartSeen_i_1
       (.I0(firstDynStartSeen),
        .I1(p_3_in),
        .I2(Q[1]),
        .I3(Tx_fifo_rst),
        .O(O32));
FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(msms_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h3032003000220000)) 
     msms_set_i_i_1
       (.I0(D),
        .I1(I1),
        .I2(I9[1]),
        .I3(Q[1]),
        .I4(msms_d1),
        .I5(Msms_set),
        .O(n_0_msms_set_i_i_1));
FDRE msms_set_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_set_i_i_1),
        .Q(Msms_set),
        .R(1'b0));
FDRE new_rcv_dta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(New_rcv_dta),
        .Q(new_rcv_dta_d1),
        .R(I1));
LUT6 #(
    .INIT(64'hA2A2A2A200A00000)) 
     rsta_tx_under_prev_i_1
       (.I0(Q[0]),
        .I1(dtre_d1),
        .I2(O1),
        .I3(rsta_d1),
        .I4(Q[4]),
        .I5(I10),
        .O(O31));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \s_axi_rdata_i[0]_i_12 
       (.I0(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .I1(I7[1]),
        .I2(O8[0]),
        .I3(I7[2]),
        .I4(Q[0]),
        .O(O15));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \s_axi_rdata_i[0]_i_13 
       (.I0(gpo),
        .I1(I7[1]),
        .I2(O5[0]),
        .I3(I7[2]),
        .I4(sr_i[7]),
        .O(O16));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \s_axi_rdata_i[1]_i_12 
       (.I0(p_1_in),
        .I1(I7[1]),
        .I2(O8[1]),
        .I3(I7[2]),
        .I4(Cr[6]),
        .O(\n_0_s_axi_rdata_i[1]_i_12 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[1]_i_13 
       (.I0(IIC2Bus_IntrEvent[5]),
        .I1(I7[2]),
        .I2(O5[1]),
        .I3(I7[1]),
        .O(O4));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[1]_i_8 
       (.I0(O18[0]),
        .I1(I7[1]),
        .I2(O19[1]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[1]_i_12 ),
        .O(O17));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \s_axi_rdata_i[2]_i_12 
       (.I0(p_1_in4_in),
        .I1(I7[1]),
        .I2(O8[2]),
        .I3(I7[2]),
        .I4(Q[1]),
        .O(\n_0_s_axi_rdata_i[2]_i_12 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[2]_i_13 
       (.I0(sr_i[5]),
        .I1(I7[2]),
        .I2(O5[2]),
        .I3(I7[1]),
        .O(O6));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[2]_i_8 
       (.I0(O18[1]),
        .I1(I7[1]),
        .I2(O19[2]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[2]_i_12 ),
        .O(O20));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \s_axi_rdata_i[3]_i_12 
       (.I0(p_1_in6_in),
        .I1(I7[1]),
        .I2(O8[3]),
        .I3(I7[2]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_12 ));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[3]_i_13 
       (.I0(sr_i[4]),
        .I1(I7[2]),
        .I2(O5[3]),
        .I3(I7[1]),
        .O(O7));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[3]_i_8 
       (.I0(O18[2]),
        .I1(I7[1]),
        .I2(O19[3]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[3]_i_12 ),
        .O(O21));
LUT6 #(
    .INIT(64'h0088008833300030)) 
     \s_axi_rdata_i[4]_i_11 
       (.I0(O24[4]),
        .I1(I7[0]),
        .I2(sr_i[3]),
        .I3(I7[2]),
        .I4(O5[4]),
        .I5(I7[1]),
        .O(O23));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[4]_i_12 
       (.I0(Q[3]),
        .I1(I7[2]),
        .I2(O8[4]),
        .I3(I7[1]),
        .O(\n_0_s_axi_rdata_i[4]_i_12 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[4]_i_8 
       (.I0(O18[3]),
        .I1(I7[1]),
        .I2(O19[4]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[4]_i_12 ),
        .O(O22));
LUT6 #(
    .INIT(64'h0088008833300030)) 
     \s_axi_rdata_i[5]_i_11 
       (.I0(O24[5]),
        .I1(I7[0]),
        .I2(sr_i[2]),
        .I3(I7[2]),
        .I4(O5[5]),
        .I5(I7[1]),
        .O(O26));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[5]_i_12 
       (.I0(Q[4]),
        .I1(I7[2]),
        .I2(O8[5]),
        .I3(I7[1]),
        .O(\n_0_s_axi_rdata_i[5]_i_12 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[5]_i_8 
       (.I0(O18[4]),
        .I1(I7[1]),
        .I2(O19[5]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[5]_i_12 ),
        .O(O25));
LUT6 #(
    .INIT(64'h0088008833300030)) 
     \s_axi_rdata_i[6]_i_11 
       (.I0(O24[6]),
        .I1(I7[0]),
        .I2(sr_i[1]),
        .I3(I7[2]),
        .I4(O5[6]),
        .I5(I7[1]),
        .O(O28));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[6]_i_12 
       (.I0(Q[5]),
        .I1(I7[2]),
        .I2(O8[6]),
        .I3(I7[1]),
        .O(\n_0_s_axi_rdata_i[6]_i_12 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[6]_i_8 
       (.I0(O18[5]),
        .I1(I7[1]),
        .I2(O19[6]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[6]_i_12 ),
        .O(O27));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[7]_i_13 
       (.I0(O18[6]),
        .I1(I7[1]),
        .I2(O19[7]),
        .I3(I7[2]),
        .I4(I7[0]),
        .I5(\n_0_s_axi_rdata_i[7]_i_17 ),
        .O(O29));
LUT6 #(
    .INIT(64'h0088008833300030)) 
     \s_axi_rdata_i[7]_i_16 
       (.I0(O24[7]),
        .I1(I7[0]),
        .I2(O1),
        .I3(I7[2]),
        .I4(O5[7]),
        .I5(I7[1]),
        .O(O30));
LUT4 #(
    .INIT(16'h00E2)) 
     \s_axi_rdata_i[7]_i_17 
       (.I0(Cr[0]),
        .I1(I7[2]),
        .I2(O8[7]),
        .I3(I7[1]),
        .O(\n_0_s_axi_rdata_i[7]_i_17 ));
FDRE \sr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I5),
        .Q(O1),
        .R(I1));
FDRE \sr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[5]),
        .Q(sr_i[1]),
        .R(I1));
FDRE \sr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[4]),
        .Q(sr_i[2]),
        .R(I1));
FDRE \sr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[3]),
        .Q(sr_i[3]),
        .R(I1));
FDRE \sr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[2]),
        .Q(sr_i[4]),
        .R(I1));
FDRE \sr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[1]),
        .Q(sr_i[5]),
        .R(I1));
FDRE \sr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I9[0]),
        .Q(sr_i[7]),
        .R(I1));
FDSE \timing_param_tbuf_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[0]),
        .Q(O35[0]),
        .S(I1));
FDRE \timing_param_tbuf_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[1]),
        .Q(O35[1]),
        .R(I1));
FDSE \timing_param_tbuf_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[2]),
        .Q(O35[2]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[3]),
        .Q(O35[3]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[4]),
        .Q(O35[4]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[5]),
        .Q(O35[5]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[6]),
        .Q(O35[6]),
        .S(I1));
FDRE \timing_param_tbuf_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[7]),
        .Q(O35[7]),
        .R(I1));
FDSE \timing_param_thddat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[0]),
        .Q(O5[0]),
        .S(I1));
FDRE \timing_param_thddat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[1]),
        .Q(O5[1]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[2]),
        .Q(O5[2]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[3]),
        .Q(O5[3]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[4]),
        .Q(O5[4]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[5]),
        .Q(O5[5]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[6]),
        .Q(O5[6]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[7]),
        .Q(O5[7]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[0]),
        .Q(O19[0]),
        .S(I1));
FDSE \timing_param_thdsta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[1]),
        .Q(O19[1]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[2]),
        .Q(O19[2]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[3]),
        .Q(O19[3]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[4]),
        .Q(O19[4]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[5]),
        .Q(O19[5]),
        .S(I1));
FDSE \timing_param_thdsta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[6]),
        .Q(O19[6]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I16),
        .D(s_axi_wdata[7]),
        .Q(O19[7]),
        .R(I1));
FDRE \timing_param_thigh_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[0]),
        .Q(O36[0]),
        .R(I1));
FDSE \timing_param_thigh_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[1]),
        .Q(O36[1]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[2]),
        .Q(O36[2]),
        .S(I1));
FDRE \timing_param_thigh_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[3]),
        .Q(O36[3]),
        .R(I1));
FDSE \timing_param_thigh_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[4]),
        .Q(O36[4]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[5]),
        .Q(O36[5]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[6]),
        .Q(O36[6]),
        .S(I1));
FDRE \timing_param_thigh_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[7]),
        .Q(O36[7]),
        .R(I1));
FDRE \timing_param_tlow_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[0]),
        .Q(O8[0]),
        .R(I1));
FDSE \timing_param_tlow_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[1]),
        .Q(O8[1]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[2]),
        .Q(O8[2]),
        .S(I1));
FDRE \timing_param_tlow_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[3]),
        .Q(O8[3]),
        .R(I1));
FDSE \timing_param_tlow_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[4]),
        .Q(O8[4]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[5]),
        .Q(O8[5]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[6]),
        .Q(O8[6]),
        .S(I1));
FDRE \timing_param_tlow_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[7]),
        .Q(O8[7]),
        .R(I1));
FDSE \timing_param_tsudat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[0]),
        .Q(O24[0]),
        .S(I1));
FDRE \timing_param_tsudat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[1]),
        .Q(O24[1]),
        .R(I1));
FDSE \timing_param_tsudat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[2]),
        .Q(O24[2]),
        .S(I1));
FDSE \timing_param_tsudat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[3]),
        .Q(O24[3]),
        .S(I1));
FDRE \timing_param_tsudat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[4]),
        .Q(O24[4]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[5]),
        .Q(O24[5]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[6]),
        .Q(O24[6]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[7]),
        .Q(O24[7]),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[0]),
        .Q(O33[0]),
        .R(I1));
FDSE \timing_param_tsusta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[1]),
        .Q(O33[1]),
        .S(I1));
FDSE \timing_param_tsusta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[2]),
        .Q(O33[2]),
        .S(I1));
FDSE \timing_param_tsusta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[3]),
        .Q(O33[3]),
        .S(I1));
FDRE \timing_param_tsusta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[4]),
        .Q(O33[4]),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[5]),
        .Q(O33[5]),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[6]),
        .Q(O33[6]),
        .R(I1));
FDSE \timing_param_tsusta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I14),
        .D(s_axi_wdata[7]),
        .Q(O33[7]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[0]),
        .Q(O34[0]),
        .S(I1));
FDRE \timing_param_tsusto_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[1]),
        .Q(O34[1]),
        .R(I1));
FDSE \timing_param_tsusto_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[2]),
        .Q(O34[2]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[3]),
        .Q(O34[3]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[4]),
        .Q(O34[4]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[5]),
        .Q(O34[5]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[6]),
        .Q(O34[6]),
        .S(I1));
FDRE \timing_param_tsusto_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I15),
        .D(s_axi_wdata[7]),
        .Q(O34[7]),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module axi_iic_0_shift8
   (O1,
    Q,
    I1,
    shift_reg_en,
    out,
    I2,
    txak,
    Tx_fifo_data,
    SR,
    s_axi_aclk,
    I13);
  output O1;
  output [7:0]Q;
  input I1;
  input shift_reg_en;
  input [2:0]out;
  input I2;
  input txak;
  input [6:0]Tx_fifo_data;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]I13;

  wire I1;
  wire [0:0]I13;
  wire I2;
  wire O1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [6:0]Tx_fifo_data;
  wire \n_0_data_int[1]_i_1 ;
  wire \n_0_data_int[2]_i_1 ;
  wire \n_0_data_int[3]_i_1 ;
  wire \n_0_data_int[4]_i_1 ;
  wire \n_0_data_int[5]_i_1 ;
  wire \n_0_data_int[6]_i_1 ;
  wire \n_0_data_int[7]_i_1 ;
  wire \n_0_data_int[7]_i_2 ;
  wire [2:0]out;
  wire s_axi_aclk;
  wire shift_reg_en;
  wire txak;

LUT6 #(
    .INIT(64'hBABBBABBBA88BABB)) 
     \LEVEL_1_GEN.master_sda_i_1 
       (.I0(Q[7]),
        .I1(out[0]),
        .I2(I2),
        .I3(out[1]),
        .I4(out[2]),
        .I5(txak),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[1]_i_1 
       (.I0(Tx_fifo_data[0]),
        .I1(Q[0]),
        .I2(I1),
        .O(\n_0_data_int[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[2]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(Q[1]),
        .I2(I1),
        .O(\n_0_data_int[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[3]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(Q[2]),
        .I2(I1),
        .O(\n_0_data_int[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[4]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(Q[3]),
        .I2(I1),
        .O(\n_0_data_int[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[5]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(Q[4]),
        .I2(I1),
        .O(\n_0_data_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[6]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(Q[5]),
        .I2(I1),
        .O(\n_0_data_int[6]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \data_int[7]_i_1 
       (.I0(I1),
        .I1(shift_reg_en),
        .O(\n_0_data_int[7]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \data_int[7]_i_2 
       (.I0(Tx_fifo_data[6]),
        .I1(Q[6]),
        .I2(I1),
        .O(\n_0_data_int[7]_i_2 ));
FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(I13),
        .Q(Q[0]),
        .R(SR));
FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[1]_i_1 ),
        .Q(Q[1]),
        .R(SR));
FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[2]_i_1 ),
        .Q(Q[2]),
        .R(SR));
FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[3]_i_1 ),
        .Q(Q[3]),
        .R(SR));
FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[4]_i_1 ),
        .Q(Q[4]),
        .R(SR));
FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[5]_i_1 ),
        .Q(Q[5]),
        .R(SR));
FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[6]_i_1 ),
        .Q(Q[6]),
        .R(SR));
FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[7]_i_2 ),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module axi_iic_0_shift8_1
   (D,
    O1,
    shift_reg_ld0,
    O2,
    O3,
    O4,
    out,
    I1,
    master_slave,
    I3,
    Q,
    txak,
    I2,
    I4,
    detect_start,
    I5,
    I6,
    I7,
    I8,
    I9,
    arb_lost,
    sda_sample,
    I10,
    Ro_prev,
    SR,
    E,
    s_axi_aclk,
    sda_clean);
  output [3:0]D;
  output O1;
  output shift_reg_ld0;
  output O2;
  output O3;
  output O4;
  input [6:0]out;
  input I1;
  input master_slave;
  input [6:0]I3;
  input [2:0]Q;
  input txak;
  input [0:0]I2;
  input [1:0]I4;
  input detect_start;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input arb_lost;
  input sda_sample;
  input I10;
  input Ro_prev;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;
  input sda_clean;

  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire [0:0]I2;
  wire [6:0]I3;
  wire [1:0]I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [2:0]Q;
  wire Ro_prev;
  wire [0:0]SR;
  wire addr_match;
  wire arb_lost;
  wire detect_start;
  wire master_slave;
  wire \n_0_FSM_onehot_state[1]_i_2 ;
  wire \n_0_FSM_onehot_state[4]_i_3 ;
  wire \n_0_FSM_onehot_state[5]_i_3 ;
  wire \n_0_FSM_onehot_state[5]_i_4 ;
  wire \n_0_FSM_onehot_state[6]_i_2 ;
  wire \n_0_FSM_onehot_state[6]_i_3 ;
  wire n_0_abgc_i_i_2;
  wire n_0_abgc_i_i_3;
  wire \n_0_data_int_reg[0] ;
  wire n_0_shift_reg_ld_i_2;
  wire n_0_slave_sda_i_3;
  wire n_0_slave_sda_i_4;
  wire [6:0]out;
  wire [6:0]p_1_in;
  wire s_axi_aclk;
  wire sda_clean;
  wire sda_sample;
  wire shift_reg_ld0;
  wire txak;

(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FSM_onehot_state[1]_i_1 
       (.I0(\n_0_FSM_onehot_state[1]_i_2 ),
        .I1(out[1]),
        .I2(out[0]),
        .O(D[0]));
LUT6 #(
    .INIT(64'hFFFF7430FF007400)) 
     \FSM_onehot_state[1]_i_2 
       (.I0(detect_start),
        .I1(out[3]),
        .I2(I8),
        .I3(\n_0_FSM_onehot_state[6]_i_3 ),
        .I4(out[2]),
        .I5(I9),
        .O(\n_0_FSM_onehot_state[1]_i_2 ));
LUT5 #(
    .INIT(32'h000000E2)) 
     \FSM_onehot_state[4]_i_1 
       (.I0(I1),
        .I1(out[2]),
        .I2(\n_0_FSM_onehot_state[4]_i_3 ),
        .I3(out[1]),
        .I4(out[0]),
        .O(D[1]));
LUT6 #(
    .INIT(64'h0000001011110010)) 
     \FSM_onehot_state[4]_i_3 
       (.I0(arb_lost),
        .I1(sda_sample),
        .I2(addr_match),
        .I3(\n_0_data_int_reg[0] ),
        .I4(master_slave),
        .I5(Q[1]),
        .O(\n_0_FSM_onehot_state[4]_i_3 ));
LUT6 #(
    .INIT(64'h0101010000000100)) 
     \FSM_onehot_state[5]_i_1 
       (.I0(arb_lost),
        .I1(sda_sample),
        .I2(I10),
        .I3(\n_0_FSM_onehot_state[5]_i_3 ),
        .I4(out[2]),
        .I5(\n_0_FSM_onehot_state[5]_i_4 ),
        .O(D[2]));
LUT5 #(
    .INIT(32'h00000002)) 
     \FSM_onehot_state[5]_i_3 
       (.I0(out[6]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[5]),
        .I4(\n_0_FSM_onehot_state[6]_i_3 ),
        .O(\n_0_FSM_onehot_state[5]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'hB888)) 
     \FSM_onehot_state[5]_i_4 
       (.I0(Q[1]),
        .I1(master_slave),
        .I2(\n_0_data_int_reg[0] ),
        .I3(addr_match),
        .O(\n_0_FSM_onehot_state[5]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     \FSM_onehot_state[6]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\n_0_FSM_onehot_state[6]_i_2 ),
        .O(D[3]));
LUT6 #(
    .INIT(64'h101F101010101010)) 
     \FSM_onehot_state[6]_i_2 
       (.I0(\n_0_FSM_onehot_state[6]_i_3 ),
        .I1(detect_start),
        .I2(out[3]),
        .I3(out[4]),
        .I4(Ro_prev),
        .I5(out[5]),
        .O(\n_0_FSM_onehot_state[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_state[6]_i_3 
       (.I0(addr_match),
        .I1(master_slave),
        .O(\n_0_FSM_onehot_state[6]_i_3 ));
LUT5 #(
    .INIT(32'h00E00000)) 
     aas_i_i_1
       (.I0(I7),
        .I1(out[2]),
        .I2(Q[0]),
        .I3(I6),
        .I4(addr_match),
        .O(O3));
LUT6 #(
    .INIT(64'h000000000000EA00)) 
     abgc_i_i_1
       (.I0(I4[0]),
        .I1(n_0_abgc_i_i_2),
        .I2(n_0_abgc_i_i_3),
        .I3(Q[0]),
        .I4(I6),
        .I5(detect_start),
        .O(O2));
LUT4 #(
    .INIT(16'h0004)) 
     abgc_i_i_2
       (.I0(\n_0_data_int_reg[0] ),
        .I1(Q[2]),
        .I2(p_1_in[0]),
        .I3(p_1_in[6]),
        .O(n_0_abgc_i_i_2));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     abgc_i_i_3
       (.I0(p_1_in[2]),
        .I1(p_1_in[1]),
        .I2(out[2]),
        .I3(p_1_in[5]),
        .I4(p_1_in[3]),
        .I5(p_1_in[4]),
        .O(n_0_abgc_i_i_3));
FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(sda_clean),
        .Q(\n_0_data_int_reg[0] ),
        .R(SR));
FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\n_0_data_int_reg[0] ),
        .Q(p_1_in[0]),
        .R(SR));
FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(p_1_in[1]),
        .R(SR));
FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(SR));
FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(SR));
FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(SR));
FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(SR));
FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(SR));
LUT5 #(
    .INIT(32'hFFFFFFEA)) 
     shift_reg_ld_i_1
       (.I0(out[6]),
        .I1(out[3]),
        .I2(detect_start),
        .I3(I5),
        .I4(n_0_shift_reg_ld_i_2),
        .O(shift_reg_ld0));
LUT5 #(
    .INIT(32'hF8F8A808)) 
     shift_reg_ld_i_2
       (.I0(out[2]),
        .I1(\n_0_data_int_reg[0] ),
        .I2(master_slave),
        .I3(Q[1]),
        .I4(out[0]),
        .O(n_0_shift_reg_ld_i_2));
LUT6 #(
    .INIT(64'hABBBA888ABBBABBB)) 
     slave_sda_i_1
       (.I0(txak),
        .I1(out[5]),
        .I2(out[2]),
        .I3(addr_match),
        .I4(I2),
        .I5(out[4]),
        .O(O1));
LUT5 #(
    .INIT(32'hEAAAAAEA)) 
     slave_sda_i_2
       (.I0(I4[0]),
        .I1(n_0_slave_sda_i_3),
        .I2(n_0_slave_sda_i_4),
        .I3(I3[6]),
        .I4(p_1_in[6]),
        .O(addr_match));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     slave_sda_i_3
       (.I0(p_1_in[0]),
        .I1(I3[0]),
        .I2(I3[2]),
        .I3(p_1_in[2]),
        .I4(I3[1]),
        .I5(p_1_in[1]),
        .O(n_0_slave_sda_i_3));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     slave_sda_i_4
       (.I0(p_1_in[3]),
        .I1(I3[3]),
        .I2(I3[5]),
        .I3(p_1_in[5]),
        .I4(I3[4]),
        .I5(p_1_in[4]),
        .O(n_0_slave_sda_i_4));
LUT4 #(
    .INIT(16'hE200)) 
     srw_i_i_1
       (.I0(I4[1]),
        .I1(out[2]),
        .I2(\n_0_data_int_reg[0] ),
        .I3(Q[0]),
        .O(O4));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module axi_iic_0_slave_attachment
   (O1,
    O2,
    s_axi_rresp,
    O3,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    Q,
    O4,
    O5,
    O6,
    I21,
    I20,
    I19,
    I18,
    I17,
    I16,
    I15,
    I14,
    I13,
    I12,
    O7,
    E,
    O8,
    s_axi_arready,
    s_axi_awready,
    O9,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    O10,
    O11,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    s_axi_aresetn,
    sw_rst_cond_d1,
    s_axi_wdata,
    Tx_fifo_data,
    O33,
    Rc_addr,
    O35,
    Rc_fifo_data,
    O34,
    O36,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    I22,
    rxCntDone,
    I23,
    I24,
    I25,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I26,
    ipif_glbl_irpt_enable_reg,
    s_axi_bready,
    s_axi_rready,
    O19,
    I27,
    Tx_addr,
    O24,
    I28,
    I29,
    I30,
    I31,
    gpo);
  output O1;
  output O2;
  output [0:0]s_axi_rresp;
  output O3;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [2:0]Q;
  output O4;
  output O5;
  output O6;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output [0:0]I16;
  output [0:0]I15;
  output [0:0]I14;
  output [0:0]I13;
  output [0:0]I12;
  output O7;
  output [0:0]E;
  output [0:0]O8;
  output s_axi_arready;
  output s_axi_awready;
  output [0:0]O9;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output O10;
  output O11;
  output [8:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input s_axi_aresetn;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input [0:7]Tx_fifo_data;
  input [7:0]O33;
  input [0:3]Rc_addr;
  input [7:0]O35;
  input [0:7]Rc_fifo_data;
  input [7:0]O34;
  input [7:0]O36;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input I22;
  input rxCntDone;
  input I23;
  input I24;
  input [7:0]I25;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I26;
  input ipif_glbl_irpt_enable_reg;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]O19;
  input I27;
  input [0:3]Tx_addr;
  input [3:0]O24;
  input I28;
  input I29;
  input I30;
  input I31;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire [24:31]AXI_IP2Bus_Data;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire [0:6]Bus2IIC_Addr;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [0:0]I15;
  wire [0:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire I22;
  wire I23;
  wire I24;
  wire [7:0]I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [0:0]Intr2Bus_DBus;
  wire O1;
  wire O10;
  wire O11;
  wire [0:0]O19;
  wire O2;
  wire [3:0]O24;
  wire O3;
  wire [7:0]O33;
  wire [7:0]O34;
  wire [7:0]O35;
  wire [7:0]O36;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [0:0]O8;
  wire [0:0]O9;
  wire [2:0]Q;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [0:7]Tx_fifo_data;
  wire bus2ip_rnw_i0;
  wire clear;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \n_0_bus2ip_addr_i[0]_i_1 ;
  wire \n_0_bus2ip_addr_i[1]_i_1 ;
  wire \n_0_bus2ip_addr_i[2]_i_1 ;
  wire \n_0_bus2ip_addr_i[3]_i_1 ;
  wire \n_0_bus2ip_addr_i[4]_i_1 ;
  wire \n_0_bus2ip_addr_i[5]_i_1 ;
  wire \n_0_bus2ip_addr_i[6]_i_1 ;
  wire \n_0_bus2ip_addr_i[7]_i_1 ;
  wire \n_0_bus2ip_addr_i[8]_i_1 ;
  wire \n_0_bus2ip_addr_i[8]_i_2 ;
  wire \n_0_bus2ip_addr_i_reg[0] ;
  wire \n_0_bus2ip_addr_i_reg[1] ;
  wire n_0_bus2ip_rnw_i_i_1;
  wire n_0_bus2ip_rnw_i_reg;
  wire n_0_s_axi_bvalid_i_i_1;
  wire \n_0_s_axi_rdata_i[0]_i_10 ;
  wire \n_0_s_axi_rdata_i[0]_i_11 ;
  wire \n_0_s_axi_rdata_i[0]_i_4 ;
  wire \n_0_s_axi_rdata_i[0]_i_5 ;
  wire \n_0_s_axi_rdata_i[0]_i_6 ;
  wire \n_0_s_axi_rdata_i[0]_i_7 ;
  wire \n_0_s_axi_rdata_i[0]_i_8 ;
  wire \n_0_s_axi_rdata_i[0]_i_9 ;
  wire \n_0_s_axi_rdata_i[1]_i_10 ;
  wire \n_0_s_axi_rdata_i[1]_i_11 ;
  wire \n_0_s_axi_rdata_i[1]_i_4 ;
  wire \n_0_s_axi_rdata_i[1]_i_5 ;
  wire \n_0_s_axi_rdata_i[1]_i_6 ;
  wire \n_0_s_axi_rdata_i[1]_i_7 ;
  wire \n_0_s_axi_rdata_i[1]_i_9 ;
  wire \n_0_s_axi_rdata_i[2]_i_10 ;
  wire \n_0_s_axi_rdata_i[2]_i_11 ;
  wire \n_0_s_axi_rdata_i[2]_i_4 ;
  wire \n_0_s_axi_rdata_i[2]_i_5 ;
  wire \n_0_s_axi_rdata_i[2]_i_6 ;
  wire \n_0_s_axi_rdata_i[2]_i_7 ;
  wire \n_0_s_axi_rdata_i[2]_i_9 ;
  wire \n_0_s_axi_rdata_i[31]_i_1 ;
  wire \n_0_s_axi_rdata_i[3]_i_10 ;
  wire \n_0_s_axi_rdata_i[3]_i_11 ;
  wire \n_0_s_axi_rdata_i[3]_i_4 ;
  wire \n_0_s_axi_rdata_i[3]_i_5 ;
  wire \n_0_s_axi_rdata_i[3]_i_6 ;
  wire \n_0_s_axi_rdata_i[3]_i_7 ;
  wire \n_0_s_axi_rdata_i[3]_i_9 ;
  wire \n_0_s_axi_rdata_i[4]_i_10 ;
  wire \n_0_s_axi_rdata_i[4]_i_4 ;
  wire \n_0_s_axi_rdata_i[4]_i_5 ;
  wire \n_0_s_axi_rdata_i[4]_i_6 ;
  wire \n_0_s_axi_rdata_i[4]_i_7 ;
  wire \n_0_s_axi_rdata_i[4]_i_9 ;
  wire \n_0_s_axi_rdata_i[5]_i_10 ;
  wire \n_0_s_axi_rdata_i[5]_i_4 ;
  wire \n_0_s_axi_rdata_i[5]_i_5 ;
  wire \n_0_s_axi_rdata_i[5]_i_6 ;
  wire \n_0_s_axi_rdata_i[5]_i_7 ;
  wire \n_0_s_axi_rdata_i[5]_i_9 ;
  wire \n_0_s_axi_rdata_i[6]_i_10 ;
  wire \n_0_s_axi_rdata_i[6]_i_4 ;
  wire \n_0_s_axi_rdata_i[6]_i_5 ;
  wire \n_0_s_axi_rdata_i[6]_i_6 ;
  wire \n_0_s_axi_rdata_i[6]_i_7 ;
  wire \n_0_s_axi_rdata_i[6]_i_9 ;
  wire \n_0_s_axi_rdata_i[7]_i_10 ;
  wire \n_0_s_axi_rdata_i[7]_i_11 ;
  wire \n_0_s_axi_rdata_i[7]_i_12 ;
  wire \n_0_s_axi_rdata_i[7]_i_14 ;
  wire \n_0_s_axi_rdata_i[7]_i_15 ;
  wire \n_0_s_axi_rdata_i[7]_i_9 ;
  wire \n_0_s_axi_rdata_i_reg[0]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[1]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[2]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[3]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[4]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[5]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[6]_i_3 ;
  wire \n_0_s_axi_rdata_i_reg[7]_i_4 ;
  wire n_0_s_axi_rvalid_i_i_1;
  wire n_0_start2_i_1;
  wire \n_0_state[0]_i_1 ;
  wire \n_0_state[1]_i_1 ;
  wire n_35_I_DECODER;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_9_in;
  wire [3:0]plusOp;
  wire reset2Bus_Error;
  wire rst;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [8:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire [1:0]state;
  wire state1;
  wire sw_rst_cond_d1;
  wire timeout;

(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .O(plusOp[2]));
LUT2 #(
    .INIT(4'h9)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I3(timeout),
        .O(plusOp[3]));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .R(clear));
FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(timeout),
        .R(clear));
axi_iic_0_address_decoder I_DECODER
       (.AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D({Intr2Bus_DBus,AXI_IP2Bus_Data[24],AXI_IP2Bus_Data[25],AXI_IP2Bus_Data[26],AXI_IP2Bus_Data[27],AXI_IP2Bus_Data[28],AXI_IP2Bus_Data[29],AXI_IP2Bus_Data[30],AXI_IP2Bus_Data[31]}),
        .E(E),
        .I1(timeout),
        .I10(\n_0_s_axi_rdata_i_reg[6]_i_3 ),
        .I11(\n_0_s_axi_rdata_i_reg[7]_i_4 ),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2({Bus2IIC_Addr[0],Bus2IIC_Addr[1],Q,Bus2IIC_Addr[5],Bus2IIC_Addr[6],\n_0_bus2ip_addr_i_reg[1] ,\n_0_bus2ip_addr_i_reg[0] }),
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(state),
        .I3(n_0_bus2ip_rnw_i_reg),
        .I4(\n_0_s_axi_rdata_i_reg[0]_i_3 ),
        .I5(\n_0_s_axi_rdata_i_reg[1]_i_3 ),
        .I6(\n_0_s_axi_rdata_i_reg[2]_i_3 ),
        .I7(\n_0_s_axi_rdata_i_reg[3]_i_3 ),
        .I8(\n_0_s_axi_rdata_i_reg[4]_i_3 ),
        .I9(\n_0_s_axi_rdata_i_reg[5]_i_3 ),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(n_35_I_DECODER),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(start2),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset2Bus_Error(reset2Bus_Error),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_wdata(s_axi_wdata),
        .sw_rst_cond_d1(sw_rst_cond_d1));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[0]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[1]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[2]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[3]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[4]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[5]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[6]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_awaddr[7]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[7]_i_1 ));
LUT5 #(
    .INIT(32'h000000EA)) 
     \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\n_0_bus2ip_addr_i[8]_i_1 ));
LUT5 #(
    .INIT(32'hCCCACCCC)) 
     \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_awaddr[8]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\n_0_bus2ip_addr_i[8]_i_2 ));
FDRE \bus2ip_addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[0]_i_1 ),
        .Q(\n_0_bus2ip_addr_i_reg[0] ),
        .R(rst));
FDRE \bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[1]_i_1 ),
        .Q(\n_0_bus2ip_addr_i_reg[1] ),
        .R(rst));
FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[2]_i_1 ),
        .Q(Bus2IIC_Addr[6]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[3]_i_1 ),
        .Q(Bus2IIC_Addr[5]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[4]_i_1 ),
        .Q(Q[0]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[5]_i_1 ),
        .Q(Q[1]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[6]_i_1 ),
        .Q(Q[2]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[7]_i_1 ),
        .Q(Bus2IIC_Addr[1]),
        .R(rst));
FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_bus2ip_addr_i[8]_i_1 ),
        .D(\n_0_bus2ip_addr_i[8]_i_2 ),
        .Q(Bus2IIC_Addr[0]),
        .R(rst));
LUT6 #(
    .INIT(64'h000200FF00020002)) 
     bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst),
        .I4(bus2ip_rnw_i0),
        .I5(n_0_bus2ip_rnw_i_reg),
        .O(n_0_bus2ip_rnw_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     bus2ip_rnw_i_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(bus2ip_rnw_i0));
FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bus2ip_rnw_i_i_1),
        .Q(n_0_bus2ip_rnw_i_reg),
        .R(1'b0));
FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_Bus2IP_Reset),
        .Q(rst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     s_axi_arready_INST_0
       (.I0(AXI_IP2Bus_RdAck1),
        .I1(AXI_IP2Bus_RdAck2),
        .I2(timeout),
        .O(s_axi_arready));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_35_I_DECODER),
        .Q(s_axi_bresp),
        .R(rst));
LUT6 #(
    .INIT(64'h000800FF00080008)) 
     s_axi_bvalid_i_i_1
       (.I0(s_axi_awready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(n_0_s_axi_bvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_bvalid_i_i_1),
        .Q(s_axi_bvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[0]_i_10 
       (.I0(O34[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[0]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[0]_i_10 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[0]_i_11 
       (.I0(Tx_addr[0]),
        .I1(Q[1]),
        .I2(O24[0]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(I28),
        .O(\n_0_s_axi_rdata_i[0]_i_11 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[0]_i_4 
       (.I0(\n_0_s_axi_rdata_i[0]_i_6 ),
        .I1(Tx_fifo_data[7]),
        .I2(\n_0_s_axi_rdata_i[0]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(\n_0_s_axi_rdata_i[0]_i_8 ),
        .O(\n_0_s_axi_rdata_i[0]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[0]_i_5 
       (.I0(\n_0_s_axi_rdata_i[0]_i_9 ),
        .I1(Rc_fifo_data[7]),
        .I2(\n_0_s_axi_rdata_i[0]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(\n_0_s_axi_rdata_i[0]_i_11 ),
        .O(\n_0_s_axi_rdata_i[0]_i_5 ));
LUT6 #(
    .INIT(64'h00000000FDAD5D0D)) 
     \s_axi_rdata_i[0]_i_6 
       (.I0(Q[1]),
        .I1(O33[0]),
        .I2(Q[0]),
        .I3(Rc_addr[0]),
        .I4(O35[0]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[0]_i_6 ));
LUT6 #(
    .INIT(64'h00000000F8C83808)) 
     \s_axi_rdata_i[0]_i_7 
       (.I0(O33[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Rc_addr[0]),
        .I4(O35[0]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[0]_i_7 ));
LUT5 #(
    .INIT(32'h40FF4000)) 
     \s_axi_rdata_i[0]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(O19),
        .I3(Q[0]),
        .I4(I27),
        .O(\n_0_s_axi_rdata_i[0]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[0]_i_9 
       (.I0(Q[1]),
        .I1(O34[0]),
        .I2(Q[0]),
        .I3(O36[0]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[0]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[1]_i_10 
       (.I0(O34[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[1]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[1]_i_10 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[1]_i_11 
       (.I0(Tx_addr[1]),
        .I1(Q[1]),
        .I2(O24[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(I29),
        .O(\n_0_s_axi_rdata_i[1]_i_11 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[1]_i_4 
       (.I0(\n_0_s_axi_rdata_i[1]_i_6 ),
        .I1(Tx_fifo_data[6]),
        .I2(\n_0_s_axi_rdata_i[1]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I1),
        .O(\n_0_s_axi_rdata_i[1]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[1]_i_5 
       (.I0(\n_0_s_axi_rdata_i[1]_i_9 ),
        .I1(Rc_fifo_data[6]),
        .I2(\n_0_s_axi_rdata_i[1]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(\n_0_s_axi_rdata_i[1]_i_11 ),
        .O(\n_0_s_axi_rdata_i[1]_i_5 ));
LUT6 #(
    .INIT(64'h00000000FDAD5D0D)) 
     \s_axi_rdata_i[1]_i_6 
       (.I0(Q[1]),
        .I1(O33[1]),
        .I2(Q[0]),
        .I3(Rc_addr[1]),
        .I4(O35[1]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[1]_i_6 ));
LUT6 #(
    .INIT(64'h00000000F8C83808)) 
     \s_axi_rdata_i[1]_i_7 
       (.I0(O33[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Rc_addr[1]),
        .I4(O35[1]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[1]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[1]_i_9 
       (.I0(Q[1]),
        .I1(O34[1]),
        .I2(Q[0]),
        .I3(O36[1]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[1]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[2]_i_10 
       (.I0(O34[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[2]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[2]_i_10 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[2]_i_11 
       (.I0(Tx_addr[2]),
        .I1(Q[1]),
        .I2(O24[2]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(I30),
        .O(\n_0_s_axi_rdata_i[2]_i_11 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[2]_i_4 
       (.I0(\n_0_s_axi_rdata_i[2]_i_6 ),
        .I1(Tx_fifo_data[5]),
        .I2(\n_0_s_axi_rdata_i[2]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I2),
        .O(\n_0_s_axi_rdata_i[2]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[2]_i_5 
       (.I0(\n_0_s_axi_rdata_i[2]_i_9 ),
        .I1(Rc_fifo_data[5]),
        .I2(\n_0_s_axi_rdata_i[2]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(\n_0_s_axi_rdata_i[2]_i_11 ),
        .O(\n_0_s_axi_rdata_i[2]_i_5 ));
LUT6 #(
    .INIT(64'h00000000FDAD5D0D)) 
     \s_axi_rdata_i[2]_i_6 
       (.I0(Q[1]),
        .I1(O33[2]),
        .I2(Q[0]),
        .I3(Rc_addr[2]),
        .I4(O35[2]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[2]_i_6 ));
LUT6 #(
    .INIT(64'h00000000F8C83808)) 
     \s_axi_rdata_i[2]_i_7 
       (.I0(O33[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Rc_addr[2]),
        .I4(O35[2]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[2]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[2]_i_9 
       (.I0(Q[1]),
        .I1(O34[2]),
        .I2(Q[0]),
        .I3(O36[2]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[2]_i_9 ));
LUT2 #(
    .INIT(4'h2)) 
     \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\n_0_s_axi_rdata_i[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[3]_i_10 
       (.I0(O34[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[3]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_10 ));
LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
     \s_axi_rdata_i[3]_i_11 
       (.I0(Tx_addr[3]),
        .I1(Q[1]),
        .I2(O24[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(I31),
        .O(\n_0_s_axi_rdata_i[3]_i_11 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[3]_i_4 
       (.I0(\n_0_s_axi_rdata_i[3]_i_6 ),
        .I1(Tx_fifo_data[4]),
        .I2(\n_0_s_axi_rdata_i[3]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I3),
        .O(\n_0_s_axi_rdata_i[3]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[3]_i_5 
       (.I0(\n_0_s_axi_rdata_i[3]_i_9 ),
        .I1(Rc_fifo_data[4]),
        .I2(\n_0_s_axi_rdata_i[3]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(\n_0_s_axi_rdata_i[3]_i_11 ),
        .O(\n_0_s_axi_rdata_i[3]_i_5 ));
LUT6 #(
    .INIT(64'h00000000FDAD5D0D)) 
     \s_axi_rdata_i[3]_i_6 
       (.I0(Q[1]),
        .I1(O33[3]),
        .I2(Q[0]),
        .I3(Rc_addr[3]),
        .I4(O35[3]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_6 ));
LUT6 #(
    .INIT(64'h00000000F8C83808)) 
     \s_axi_rdata_i[3]_i_7 
       (.I0(O33[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Rc_addr[3]),
        .I4(O35[3]),
        .I5(Q[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[3]_i_9 
       (.I0(Q[1]),
        .I1(O34[3]),
        .I2(Q[0]),
        .I3(O36[3]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[4]_i_10 
       (.I0(O34[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[4]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[4]_i_10 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[4]_i_4 
       (.I0(\n_0_s_axi_rdata_i[4]_i_6 ),
        .I1(Tx_fifo_data[3]),
        .I2(\n_0_s_axi_rdata_i[4]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I4),
        .O(\n_0_s_axi_rdata_i[4]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[4]_i_5 
       (.I0(\n_0_s_axi_rdata_i[4]_i_9 ),
        .I1(Rc_fifo_data[3]),
        .I2(\n_0_s_axi_rdata_i[4]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I5),
        .O(\n_0_s_axi_rdata_i[4]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[4]_i_6 
       (.I0(Q[1]),
        .I1(O33[4]),
        .I2(Q[0]),
        .I3(O35[4]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[4]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[4]_i_7 
       (.I0(O33[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O35[4]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[4]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[4]_i_9 
       (.I0(Q[1]),
        .I1(O34[4]),
        .I2(Q[0]),
        .I3(O36[4]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[4]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[5]_i_10 
       (.I0(O34[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[5]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[5]_i_10 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[5]_i_4 
       (.I0(\n_0_s_axi_rdata_i[5]_i_6 ),
        .I1(Tx_fifo_data[2]),
        .I2(\n_0_s_axi_rdata_i[5]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I6),
        .O(\n_0_s_axi_rdata_i[5]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[5]_i_5 
       (.I0(\n_0_s_axi_rdata_i[5]_i_9 ),
        .I1(Rc_fifo_data[2]),
        .I2(\n_0_s_axi_rdata_i[5]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I7),
        .O(\n_0_s_axi_rdata_i[5]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[5]_i_6 
       (.I0(Q[1]),
        .I1(O33[5]),
        .I2(Q[0]),
        .I3(O35[5]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[5]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[5]_i_7 
       (.I0(O33[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O35[5]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[5]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[5]_i_9 
       (.I0(Q[1]),
        .I1(O34[5]),
        .I2(Q[0]),
        .I3(O36[5]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[5]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[6]_i_10 
       (.I0(O34[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[6]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[6]_i_10 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[6]_i_4 
       (.I0(\n_0_s_axi_rdata_i[6]_i_6 ),
        .I1(Tx_fifo_data[1]),
        .I2(\n_0_s_axi_rdata_i[6]_i_7 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I8),
        .O(\n_0_s_axi_rdata_i[6]_i_4 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[6]_i_5 
       (.I0(\n_0_s_axi_rdata_i[6]_i_9 ),
        .I1(Rc_fifo_data[1]),
        .I2(\n_0_s_axi_rdata_i[6]_i_10 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I9),
        .O(\n_0_s_axi_rdata_i[6]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[6]_i_6 
       (.I0(Q[1]),
        .I1(O33[6]),
        .I2(Q[0]),
        .I3(O35[6]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[6]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[6]_i_7 
       (.I0(O33[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O35[6]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[6]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[6]_i_9 
       (.I0(Q[1]),
        .I1(O34[6]),
        .I2(Q[0]),
        .I3(O36[6]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[6]_i_9 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[7]_i_10 
       (.I0(\n_0_s_axi_rdata_i[7]_i_14 ),
        .I1(Rc_fifo_data[0]),
        .I2(\n_0_s_axi_rdata_i[7]_i_15 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I11),
        .O(\n_0_s_axi_rdata_i[7]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[7]_i_11 
       (.I0(Q[1]),
        .I1(O33[7]),
        .I2(Q[0]),
        .I3(O35[7]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[7]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[7]_i_12 
       (.I0(O33[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O35[7]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[7]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT5 #(
    .INIT(32'h0000AD0D)) 
     \s_axi_rdata_i[7]_i_14 
       (.I0(Q[1]),
        .I1(O34[7]),
        .I2(Q[0]),
        .I3(O36[7]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[7]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT5 #(
    .INIT(32'h0000C808)) 
     \s_axi_rdata_i[7]_i_15 
       (.I0(O34[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(O36[7]),
        .I4(Q[2]),
        .O(\n_0_s_axi_rdata_i[7]_i_15 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \s_axi_rdata_i[7]_i_9 
       (.I0(\n_0_s_axi_rdata_i[7]_i_11 ),
        .I1(Tx_fifo_data[0]),
        .I2(\n_0_s_axi_rdata_i[7]_i_12 ),
        .I3(Bus2IIC_Addr[5]),
        .I4(I10),
        .O(\n_0_s_axi_rdata_i[7]_i_9 ));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[0]_i_3 
       (.I0(\n_0_s_axi_rdata_i[0]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[0]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[0]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[1]_i_3 
       (.I0(\n_0_s_axi_rdata_i[1]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[1]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[1]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[2]_i_3 
       (.I0(\n_0_s_axi_rdata_i[2]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[2]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[2]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(Intr2Bus_DBus),
        .Q(s_axi_rdata[8]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[3]_i_3 
       (.I0(\n_0_s_axi_rdata_i[3]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[3]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[3]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[4]_i_3 
       (.I0(\n_0_s_axi_rdata_i[4]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[4]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[4]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[5]_i_3 
       (.I0(\n_0_s_axi_rdata_i[5]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[5]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[5]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[6]_i_3 
       (.I0(\n_0_s_axi_rdata_i[6]_i_4 ),
        .I1(\n_0_s_axi_rdata_i[6]_i_5 ),
        .O(\n_0_s_axi_rdata_i_reg[6]_i_3 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
MUXF7 \s_axi_rdata_i_reg[7]_i_4 
       (.I0(\n_0_s_axi_rdata_i[7]_i_9 ),
        .I1(\n_0_s_axi_rdata_i[7]_i_10 ),
        .O(\n_0_s_axi_rdata_i_reg[7]_i_4 ),
        .S(Bus2IIC_Addr[6]));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(reset2Bus_Error),
        .Q(s_axi_rresp),
        .R(rst));
LUT6 #(
    .INIT(64'h000800FF00080008)) 
     s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(n_0_s_axi_rvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_rvalid_i_i_1),
        .Q(s_axi_rvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     s_axi_wready_INST_0
       (.I0(AXI_IP2Bus_WrAck1),
        .I1(AXI_IP2Bus_WrAck2),
        .I2(timeout),
        .O(s_axi_awready));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT5 #(
    .INIT(32'h000000F8)) 
     start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(n_0_start2_i_1));
FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_start2_i_1),
        .Q(start2),
        .R(rst));
LUT5 #(
    .INIT(32'h0FCAFFCA)) 
     \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awready),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state1),
        .O(\n_0_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
     \state[1]_i_1 
       (.I0(state1),
        .I1(p_9_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s_axi_arready),
        .O(\n_0_state[1]_i_1 ));
LUT4 #(
    .INIT(16'hF888)) 
     \state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1));
LUT2 #(
    .INIT(4'h8)) 
     \state[1]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_9_in));
FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[0]_i_1 ),
        .Q(state[0]),
        .R(rst));
FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[1]_i_1 ),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "soft_reset" *) 
module axi_iic_0_soft_reset
   (sw_rst_cond_d1,
    AXI_Bus2IP_Reset,
    SR,
    I1,
    s_axi_aclk,
    I2,
    s_axi_aresetn);
  output sw_rst_cond_d1;
  output AXI_Bus2IP_Reset;
  output [0:0]SR;
  input I1;
  input s_axi_aclk;
  input I2;
  input s_axi_aresetn;

  wire AXI_Bus2IP_Reset;
  wire D;
  wire I1;
  wire I2;
  wire Q;
  wire [0:0]SR;
  wire \n_0_RESET_FLOPS[1].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ;
  wire \n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ;
  wire \n_0_RESET_FLOPS[3].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ;
  wire reset_trig;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sw_rst_cond_d1;

LUT2 #(
    .INIT(4'hB)) 
     \GPO_GEN.gpo_i[31]_i_1 
       (.I0(\n_0_RESET_FLOPS[3].RST_FLOPS ),
        .I1(s_axi_aresetn),
        .O(SR));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig),
        .Q(Q),
        .R(AXI_Bus2IP_Reset));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ),
        .Q(\n_0_RESET_FLOPS[1].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(Q),
        .O(\n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ),
        .Q(D),
        .R(AXI_Bus2IP_Reset));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(\n_0_RESET_FLOPS[1].RST_FLOPS ),
        .O(\n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ),
        .Q(\n_0_RESET_FLOPS[3].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(D),
        .O(\n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ));
FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(reset_trig),
        .R(AXI_Bus2IP_Reset));
LUT1 #(
    .INIT(2'h1)) 
     rst_i_1
       (.I0(s_axi_aresetn),
        .O(AXI_Bus2IP_Reset));
FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(sw_rst_cond_d1),
        .R(AXI_Bus2IP_Reset));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n
   (D,
    O1,
    O2,
    E,
    out,
    I4,
    I5,
    I6,
    I7,
    scl_clean,
    I8,
    I9,
    I10,
    Q,
    stop_scl_reg,
    arb_lost,
    I1,
    sda_cout_reg,
    sda_cout1,
    next_scl_state0,
    sda_clean,
    I2,
    I3,
    SR,
    s_axi_aclk);
  output [3:0]D;
  output O1;
  output O2;
  output [0:0]E;
  input [3:0]out;
  input [7:0]I4;
  input [7:0]I5;
  input [7:0]I6;
  input [7:0]I7;
  input scl_clean;
  input [7:0]I8;
  input [7:0]I9;
  input [7:0]I10;
  input [0:0]Q;
  input stop_scl_reg;
  input arb_lost;
  input I1;
  input sda_cout_reg;
  input sda_cout1;
  input next_scl_state0;
  input sda_clean;
  input I2;
  input I3;
  input [0:0]SR;
  input s_axi_aclk;

  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire [7:0]I10;
  wire I2;
  wire I3;
  wire [7:0]I4;
  wire [7:0]I5;
  wire [7:0]I6;
  wire [7:0]I7;
  wire [7:0]I8;
  wire [7:0]I9;
  wire O1;
  wire O2;
  wire [0:0]Q;
  wire [0:0]SR;
  wire arb_lost;
  wire clk_cnt_en1;
  wire clk_cnt_en11_out;
  wire clk_cnt_en12_out;
  wire clk_cnt_rst;
  wire \n_0_FSM_sequential_scl_state[0]_i_10 ;
  wire \n_0_FSM_sequential_scl_state[0]_i_2 ;
  wire \n_0_FSM_sequential_scl_state[0]_i_3 ;
  wire \n_0_FSM_sequential_scl_state[0]_i_7 ;
  wire \n_0_FSM_sequential_scl_state[0]_i_8 ;
  wire \n_0_FSM_sequential_scl_state[0]_i_9 ;
  wire \n_0_FSM_sequential_scl_state[1]_i_3 ;
  wire \n_0_FSM_sequential_scl_state[2]_i_2 ;
  wire \n_0_FSM_sequential_scl_state[2]_i_4 ;
  wire \n_0_FSM_sequential_scl_state[2]_i_5 ;
  wire \n_0_FSM_sequential_scl_state[2]_i_6 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_10 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_11 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_12 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_13 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_4 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_8 ;
  wire \n_0_FSM_sequential_scl_state[3]_i_9 ;
  wire \n_0_q_int[0]_i_1 ;
  wire \n_0_q_int[0]_i_2 ;
  wire \n_0_q_int[0]_i_4 ;
  wire \n_0_q_int[0]_i_5 ;
  wire \n_0_q_int[0]_i_6 ;
  wire \n_0_q_int[0]_i_7 ;
  wire \n_0_q_int[1]_i_1 ;
  wire \n_0_q_int[2]_i_1 ;
  wire \n_0_q_int[2]_i_2 ;
  wire \n_0_q_int[3]_i_1 ;
  wire \n_0_q_int[4]_i_1 ;
  wire \n_0_q_int[5]_i_1 ;
  wire \n_0_q_int[6]_i_1 ;
  wire \n_0_q_int[7]_i_1 ;
  wire n_0_sda_cout_reg_i_4;
  wire n_0_sda_cout_reg_i_5;
  wire n_0_sda_cout_reg_i_6;
  wire next_scl_state0;
  wire next_scl_state1;
  wire next_scl_state10_out;
  wire next_scl_state13_out;
  wire [3:0]out;
  wire [0:7]q_int_reg__0;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_cout1;
  wire sda_cout18_out;
  wire sda_cout_reg;
  wire stop_scl;
  wire stop_scl_reg;

LUT4 #(
    .INIT(16'h00E2)) 
     \FSM_sequential_scl_state[0]_i_1 
       (.I0(\n_0_FSM_sequential_scl_state[0]_i_2 ),
        .I1(out[0]),
        .I2(\n_0_FSM_sequential_scl_state[0]_i_3 ),
        .I3(out[3]),
        .O(D[0]));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[0]_i_10 
       (.I0(q_int_reg__0[7]),
        .I1(I9[0]),
        .I2(I9[2]),
        .I3(q_int_reg__0[5]),
        .I4(I9[1]),
        .I5(q_int_reg__0[6]),
        .O(\n_0_FSM_sequential_scl_state[0]_i_10 ));
LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
     \FSM_sequential_scl_state[0]_i_2 
       (.I0(arb_lost),
        .I1(next_scl_state13_out),
        .I2(out[1]),
        .I3(next_scl_state10_out),
        .I4(out[2]),
        .I5(next_scl_state0),
        .O(\n_0_FSM_sequential_scl_state[0]_i_2 ));
LUT5 #(
    .INIT(32'h035FF350)) 
     \FSM_sequential_scl_state[0]_i_3 
       (.I0(scl_clean),
        .I1(\n_0_FSM_sequential_scl_state[2]_i_2 ),
        .I2(out[2]),
        .I3(out[1]),
        .I4(sda_clean),
        .O(\n_0_FSM_sequential_scl_state[0]_i_3 ));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     \FSM_sequential_scl_state[0]_i_4 
       (.I0(I8[7]),
        .I1(q_int_reg__0[0]),
        .I2(I8[6]),
        .I3(q_int_reg__0[1]),
        .I4(\n_0_FSM_sequential_scl_state[0]_i_7 ),
        .I5(\n_0_FSM_sequential_scl_state[0]_i_8 ),
        .O(next_scl_state13_out));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     \FSM_sequential_scl_state[0]_i_5 
       (.I0(I9[7]),
        .I1(q_int_reg__0[0]),
        .I2(I9[6]),
        .I3(q_int_reg__0[1]),
        .I4(\n_0_FSM_sequential_scl_state[0]_i_9 ),
        .I5(\n_0_FSM_sequential_scl_state[0]_i_10 ),
        .O(next_scl_state10_out));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[0]_i_7 
       (.I0(q_int_reg__0[4]),
        .I1(I8[3]),
        .I2(I8[5]),
        .I3(q_int_reg__0[2]),
        .I4(I8[4]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_FSM_sequential_scl_state[0]_i_7 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[0]_i_8 
       (.I0(q_int_reg__0[7]),
        .I1(I8[0]),
        .I2(I8[2]),
        .I3(q_int_reg__0[5]),
        .I4(I8[1]),
        .I5(q_int_reg__0[6]),
        .O(\n_0_FSM_sequential_scl_state[0]_i_8 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[0]_i_9 
       (.I0(q_int_reg__0[4]),
        .I1(I9[3]),
        .I2(I9[5]),
        .I3(q_int_reg__0[2]),
        .I4(I9[4]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_FSM_sequential_scl_state[0]_i_9 ));
LUT4 #(
    .INIT(16'h0151)) 
     \FSM_sequential_scl_state[1]_i_1 
       (.I0(out[3]),
        .I1(I2),
        .I2(out[1]),
        .I3(\n_0_FSM_sequential_scl_state[1]_i_3 ),
        .O(D[1]));
LUT6 #(
    .INIT(64'hFFA8AAA855A800A8)) 
     \FSM_sequential_scl_state[1]_i_3 
       (.I0(out[2]),
        .I1(Q),
        .I2(arb_lost),
        .I3(out[0]),
        .I4(\n_0_FSM_sequential_scl_state[2]_i_2 ),
        .I5(sda_clean),
        .O(\n_0_FSM_sequential_scl_state[1]_i_3 ));
LUT6 #(
    .INIT(64'h0000400055554000)) 
     \FSM_sequential_scl_state[2]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(\n_0_FSM_sequential_scl_state[2]_i_2 ),
        .I3(out[0]),
        .I4(out[2]),
        .I5(I3),
        .O(D[2]));
LUT3 #(
    .INIT(8'h80)) 
     \FSM_sequential_scl_state[2]_i_2 
       (.I0(\n_0_FSM_sequential_scl_state[2]_i_4 ),
        .I1(\n_0_FSM_sequential_scl_state[2]_i_5 ),
        .I2(\n_0_FSM_sequential_scl_state[2]_i_6 ),
        .O(\n_0_FSM_sequential_scl_state[2]_i_2 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[2]_i_4 
       (.I0(q_int_reg__0[4]),
        .I1(I7[3]),
        .I2(I7[6]),
        .I3(q_int_reg__0[1]),
        .I4(I7[0]),
        .I5(q_int_reg__0[7]),
        .O(\n_0_FSM_sequential_scl_state[2]_i_4 ));
LUT5 #(
    .INIT(32'h09000009)) 
     \FSM_sequential_scl_state[2]_i_5 
       (.I0(q_int_reg__0[6]),
        .I1(I7[1]),
        .I2(scl_clean),
        .I3(I7[2]),
        .I4(q_int_reg__0[5]),
        .O(\n_0_FSM_sequential_scl_state[2]_i_5 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[2]_i_6 
       (.I0(q_int_reg__0[0]),
        .I1(I7[7]),
        .I2(I7[5]),
        .I3(q_int_reg__0[2]),
        .I4(I7[4]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_FSM_sequential_scl_state[2]_i_6 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_10 
       (.I0(q_int_reg__0[2]),
        .I1(I6[5]),
        .I2(I6[2]),
        .I3(q_int_reg__0[5]),
        .I4(I6[1]),
        .I5(q_int_reg__0[6]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_10 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_11 
       (.I0(q_int_reg__0[1]),
        .I1(I6[6]),
        .I2(I6[4]),
        .I3(q_int_reg__0[3]),
        .I4(I6[7]),
        .I5(q_int_reg__0[0]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_11 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_12 
       (.I0(q_int_reg__0[2]),
        .I1(I5[5]),
        .I2(I5[2]),
        .I3(q_int_reg__0[5]),
        .I4(I5[1]),
        .I5(q_int_reg__0[6]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_12 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_13 
       (.I0(q_int_reg__0[1]),
        .I1(I5[6]),
        .I2(I5[4]),
        .I3(q_int_reg__0[3]),
        .I4(I5[7]),
        .I5(q_int_reg__0[0]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_13 ));
LUT6 #(
    .INIT(64'h01010101FFFFFFF7)) 
     \FSM_sequential_scl_state[3]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(arb_lost),
        .I4(\n_0_FSM_sequential_scl_state[3]_i_4 ),
        .I5(out[3]),
        .O(E));
LUT6 #(
    .INIT(64'h0000C00000110000)) 
     \FSM_sequential_scl_state[3]_i_3 
       (.I0(next_scl_state1),
        .I1(out[0]),
        .I2(sda_clean),
        .I3(out[2]),
        .I4(out[3]),
        .I5(out[1]),
        .O(D[3]));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \FSM_sequential_scl_state[3]_i_4 
       (.I0(clk_cnt_en12_out),
        .I1(Q),
        .I2(clk_cnt_en11_out),
        .I3(stop_scl_reg),
        .I4(clk_cnt_en1),
        .O(\n_0_FSM_sequential_scl_state[3]_i_4 ));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     \FSM_sequential_scl_state[3]_i_5 
       (.I0(I10[7]),
        .I1(q_int_reg__0[0]),
        .I2(I10[6]),
        .I3(q_int_reg__0[1]),
        .I4(\n_0_FSM_sequential_scl_state[3]_i_8 ),
        .I5(\n_0_FSM_sequential_scl_state[3]_i_9 ),
        .O(next_scl_state1));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     \FSM_sequential_scl_state[3]_i_6 
       (.I0(I6[0]),
        .I1(q_int_reg__0[7]),
        .I2(I6[3]),
        .I3(q_int_reg__0[4]),
        .I4(\n_0_FSM_sequential_scl_state[3]_i_10 ),
        .I5(\n_0_FSM_sequential_scl_state[3]_i_11 ),
        .O(clk_cnt_en12_out));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     \FSM_sequential_scl_state[3]_i_7 
       (.I0(I5[0]),
        .I1(q_int_reg__0[7]),
        .I2(I5[3]),
        .I3(q_int_reg__0[4]),
        .I4(\n_0_FSM_sequential_scl_state[3]_i_12 ),
        .I5(\n_0_FSM_sequential_scl_state[3]_i_13 ),
        .O(clk_cnt_en1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_8 
       (.I0(q_int_reg__0[4]),
        .I1(I10[3]),
        .I2(I10[5]),
        .I3(q_int_reg__0[2]),
        .I4(I10[4]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_8 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_sequential_scl_state[3]_i_9 
       (.I0(q_int_reg__0[7]),
        .I1(I10[0]),
        .I2(I10[2]),
        .I3(q_int_reg__0[5]),
        .I4(I10[1]),
        .I5(q_int_reg__0[6]),
        .O(\n_0_FSM_sequential_scl_state[3]_i_9 ));
LUT6 #(
    .INIT(64'hAEAEAEAEAEAEAEFE)) 
     \q_int[0]_i_1 
       (.I0(clk_cnt_rst),
        .I1(\n_0_q_int[0]_i_4 ),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\n_0_q_int[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[0]_i_2 
       (.I0(q_int_reg__0[0]),
        .I1(q_int_reg__0[1]),
        .I2(\n_0_q_int[0]_i_5 ),
        .I3(clk_cnt_rst),
        .O(\n_0_q_int[0]_i_2 ));
LUT6 #(
    .INIT(64'hAAAAAAAA080000AA)) 
     \q_int[0]_i_3 
       (.I0(\n_0_q_int[0]_i_6 ),
        .I1(\n_0_FSM_sequential_scl_state[3]_i_4 ),
        .I2(arb_lost),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(clk_cnt_rst));
LUT6 #(
    .INIT(64'h00AA0000F3FFFF00)) 
     \q_int[0]_i_4 
       (.I0(\n_0_q_int[0]_i_7 ),
        .I1(\n_0_FSM_sequential_scl_state[3]_i_4 ),
        .I2(arb_lost),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\n_0_q_int[0]_i_4 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \q_int[0]_i_5 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[4]),
        .I2(q_int_reg__0[6]),
        .I3(q_int_reg__0[7]),
        .I4(q_int_reg__0[5]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_q_int[0]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h55545555)) 
     \q_int[0]_i_6 
       (.I0(out[3]),
        .I1(scl_clean),
        .I2(\n_0_FSM_sequential_scl_state[2]_i_2 ),
        .I3(out[2]),
        .I4(out[1]),
        .O(\n_0_q_int[0]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \q_int[0]_i_7 
       (.I0(\n_0_FSM_sequential_scl_state[2]_i_2 ),
        .I1(scl_clean),
        .O(\n_0_q_int[0]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[1]_i_1 
       (.I0(q_int_reg__0[1]),
        .I1(\n_0_q_int[0]_i_5 ),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[1]_i_1 ));
LUT3 #(
    .INIT(8'h06)) 
     \q_int[2]_i_1 
       (.I0(q_int_reg__0[2]),
        .I1(\n_0_q_int[2]_i_2 ),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[2]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \q_int[2]_i_2 
       (.I0(q_int_reg__0[3]),
        .I1(q_int_reg__0[5]),
        .I2(q_int_reg__0[7]),
        .I3(q_int_reg__0[6]),
        .I4(q_int_reg__0[4]),
        .O(\n_0_q_int[2]_i_2 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[3]_i_1 
       (.I0(q_int_reg__0[3]),
        .I1(q_int_reg__0[4]),
        .I2(q_int_reg__0[6]),
        .I3(q_int_reg__0[7]),
        .I4(q_int_reg__0[5]),
        .I5(clk_cnt_rst),
        .O(\n_0_q_int[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[4]_i_1 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[5]),
        .I2(q_int_reg__0[7]),
        .I3(q_int_reg__0[6]),
        .I4(clk_cnt_rst),
        .O(\n_0_q_int[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[5]_i_1 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[7]),
        .I3(clk_cnt_rst),
        .O(\n_0_q_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[6]_i_1 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \q_int[7]_i_1 
       (.I0(q_int_reg__0[7]),
        .I1(clk_cnt_rst),
        .O(\n_0_q_int[7]_i_1 ));
FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[0]_i_2 ),
        .Q(q_int_reg__0[0]),
        .R(SR));
FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[1]_i_1 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[2]_i_1 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[3]_i_1 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[4]_i_1 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[5]_i_1 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[6]_i_1 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[7]_i_1 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
LUT6 #(
    .INIT(64'hFFF8FCFC00080C0C)) 
     sda_cout_reg_i_1
       (.I0(clk_cnt_en11_out),
        .I1(I1),
        .I2(out[3]),
        .I3(n_0_sda_cout_reg_i_4),
        .I4(out[1]),
        .I5(sda_cout_reg),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     sda_cout_reg_i_2
       (.I0(I4[0]),
        .I1(q_int_reg__0[7]),
        .I2(I4[3]),
        .I3(q_int_reg__0[4]),
        .I4(n_0_sda_cout_reg_i_5),
        .I5(n_0_sda_cout_reg_i_6),
        .O(clk_cnt_en11_out));
LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
     sda_cout_reg_i_4
       (.I0(out[0]),
        .I1(clk_cnt_en11_out),
        .I2(Q),
        .I3(stop_scl_reg),
        .I4(arb_lost),
        .I5(out[2]),
        .O(n_0_sda_cout_reg_i_4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_cout_reg_i_5
       (.I0(q_int_reg__0[2]),
        .I1(I4[5]),
        .I2(I4[2]),
        .I3(q_int_reg__0[5]),
        .I4(I4[1]),
        .I5(q_int_reg__0[6]),
        .O(n_0_sda_cout_reg_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_cout_reg_i_6
       (.I0(q_int_reg__0[1]),
        .I1(I4[6]),
        .I2(I4[4]),
        .I3(q_int_reg__0[3]),
        .I4(I4[7]),
        .I5(q_int_reg__0[0]),
        .O(n_0_sda_cout_reg_i_6));
LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
     stop_scl_reg_i_1
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(sda_cout1),
        .I4(stop_scl),
        .I5(stop_scl_reg),
        .O(O2));
LUT5 #(
    .INIT(32'h007711D5)) 
     stop_scl_reg_i_3
       (.I0(out[1]),
        .I1(out[2]),
        .I2(sda_cout18_out),
        .I3(out[3]),
        .I4(out[0]),
        .O(stop_scl));
LUT4 #(
    .INIT(16'h0020)) 
     stop_scl_reg_i_5
       (.I0(clk_cnt_en11_out),
        .I1(Q),
        .I2(stop_scl_reg),
        .I3(arb_lost),
        .O(sda_cout18_out));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n_2
   (O1,
    I11,
    I1,
    sda_clean,
    sda_rin_d1,
    I2,
    tx_under_prev_d1,
    gen_stop_d1,
    I3,
    rsta_d1,
    Q,
    scl_clean,
    SR,
    s_axi_aclk);
  output O1;
  input [7:0]I11;
  input I1;
  input sda_clean;
  input sda_rin_d1;
  input I2;
  input tx_under_prev_d1;
  input gen_stop_d1;
  input I3;
  input rsta_d1;
  input [1:0]Q;
  input scl_clean;
  input [0:0]SR;
  input s_axi_aclk;

  wire I1;
  wire [7:0]I11;
  wire I2;
  wire I3;
  wire O1;
  wire [1:0]Q;
  wire [0:0]SR;
  wire gen_stop_d1;
  wire \n_0_q_int[0]_i_1__0 ;
  wire \n_0_q_int[0]_i_2__1 ;
  wire \n_0_q_int[0]_i_4__0 ;
  wire \n_0_q_int[0]_i_5__0 ;
  wire \n_0_q_int[1]_i_1__1 ;
  wire \n_0_q_int[2]_i_1__1 ;
  wire \n_0_q_int[2]_i_2__0 ;
  wire \n_0_q_int[3]_i_1__0 ;
  wire \n_0_q_int[4]_i_1__0 ;
  wire \n_0_q_int[5]_i_1__0 ;
  wire \n_0_q_int[6]_i_1__0 ;
  wire \n_0_q_int[7]_i_1__0 ;
  wire n_0_sda_setup_i_2;
  wire n_0_sda_setup_i_3;
  wire n_0_sda_setup_i_4;
  wire p_12_in;
  wire [0:7]q_int_reg__0;
  wire rsta_d1;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_rin_d1;
  wire tx_under_prev_d1;

LUT2 #(
    .INIT(4'hE)) 
     \q_int[0]_i_1__0 
       (.I0(p_12_in),
        .I1(I1),
        .O(\n_0_q_int[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[0]_i_2__1 
       (.I0(q_int_reg__0[0]),
        .I1(q_int_reg__0[1]),
        .I2(\n_0_q_int[0]_i_4__0 ),
        .I3(p_12_in),
        .O(\n_0_q_int[0]_i_2__1 ));
LUT5 #(
    .INIT(32'hBEFFBEBE)) 
     \q_int[0]_i_3__0 
       (.I0(\n_0_q_int[0]_i_5__0 ),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(I2),
        .I4(tx_under_prev_d1),
        .O(p_12_in));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \q_int[0]_i_4__0 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[4]),
        .I2(q_int_reg__0[6]),
        .I3(q_int_reg__0[7]),
        .I4(q_int_reg__0[5]),
        .I5(q_int_reg__0[3]),
        .O(\n_0_q_int[0]_i_4__0 ));
LUT4 #(
    .INIT(16'h4F44)) 
     \q_int[0]_i_5__0 
       (.I0(gen_stop_d1),
        .I1(I3),
        .I2(rsta_d1),
        .I3(Q[1]),
        .O(\n_0_q_int[0]_i_5__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[1]_i_1__1 
       (.I0(q_int_reg__0[1]),
        .I1(\n_0_q_int[0]_i_4__0 ),
        .I2(p_12_in),
        .O(\n_0_q_int[1]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[2]_i_1__1 
       (.I0(q_int_reg__0[2]),
        .I1(\n_0_q_int[2]_i_2__0 ),
        .I2(p_12_in),
        .O(\n_0_q_int[2]_i_1__1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \q_int[2]_i_2__0 
       (.I0(q_int_reg__0[3]),
        .I1(q_int_reg__0[5]),
        .I2(q_int_reg__0[7]),
        .I3(q_int_reg__0[6]),
        .I4(q_int_reg__0[4]),
        .O(\n_0_q_int[2]_i_2__0 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[3]_i_1__0 
       (.I0(q_int_reg__0[3]),
        .I1(q_int_reg__0[4]),
        .I2(q_int_reg__0[6]),
        .I3(q_int_reg__0[7]),
        .I4(q_int_reg__0[5]),
        .I5(p_12_in),
        .O(\n_0_q_int[3]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[4]_i_1__0 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[5]),
        .I2(q_int_reg__0[7]),
        .I3(q_int_reg__0[6]),
        .I4(p_12_in),
        .O(\n_0_q_int[4]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[5]_i_1__0 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[7]),
        .I3(p_12_in),
        .O(\n_0_q_int[5]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[6]_i_1__0 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(p_12_in),
        .O(\n_0_q_int[6]_i_1__0 ));
LUT2 #(
    .INIT(4'h1)) 
     \q_int[7]_i_1__0 
       (.I0(q_int_reg__0[7]),
        .I1(p_12_in),
        .O(\n_0_q_int[7]_i_1__0 ));
FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[0]_i_2__1 ),
        .Q(q_int_reg__0[0]),
        .R(SR));
FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[1]_i_1__1 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[2]_i_1__1 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[3]_i_1__0 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[4]_i_1__0 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[5]_i_1__0 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[6]_i_1__0 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[7]_i_1__0 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
LUT6 #(
    .INIT(64'h2222AAA20000AAA0)) 
     sda_setup_i_1
       (.I0(Q[0]),
        .I1(n_0_sda_setup_i_2),
        .I2(I2),
        .I3(p_12_in),
        .I4(scl_clean),
        .I5(I1),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     sda_setup_i_2
       (.I0(I11[7]),
        .I1(q_int_reg__0[0]),
        .I2(I11[6]),
        .I3(q_int_reg__0[1]),
        .I4(n_0_sda_setup_i_3),
        .I5(n_0_sda_setup_i_4),
        .O(n_0_sda_setup_i_2));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_setup_i_3
       (.I0(q_int_reg__0[4]),
        .I1(I11[3]),
        .I2(I11[5]),
        .I3(q_int_reg__0[2]),
        .I4(I11[4]),
        .I5(q_int_reg__0[3]),
        .O(n_0_sda_setup_i_3));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_setup_i_4
       (.I0(q_int_reg__0[7]),
        .I1(I11[0]),
        .I2(I11[2]),
        .I3(q_int_reg__0[5]),
        .I4(I11[1]),
        .I5(q_int_reg__0[6]),
        .O(n_0_sda_setup_i_4));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n__parameterized0
   (E,
    EarlyAckDataState0,
    O1,
    out,
    detect_start,
    state1,
    bit_cnt_en,
    scl_falling_edge,
    Q,
    dtc_i,
    I1,
    SR,
    s_axi_aclk);
  output [0:0]E;
  output EarlyAckDataState0;
  output O1;
  input [5:0]out;
  input detect_start;
  input state1;
  input bit_cnt_en;
  input scl_falling_edge;
  input [0:0]Q;
  input dtc_i;
  input I1;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]E;
  wire EarlyAckDataState0;
  wire I1;
  wire O1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire bit_cnt_en;
  wire bit_cnt_ld;
  wire detect_start;
  wire dtc_i;
  wire \n_0_FSM_onehot_state[7]_i_5 ;
  wire \n_0_FSM_onehot_state[7]_i_7 ;
  wire n_0_dtc_i_i_2;
  wire \n_0_q_int[0]_i_1__1 ;
  wire \n_0_q_int[0]_i_2__0 ;
  wire \n_0_q_int[1]_i_1__0 ;
  wire \n_0_q_int[2]_i_1__0 ;
  wire \n_0_q_int[3]_i_1__1 ;
  wire \n_0_q_int_reg[0] ;
  wire \n_0_q_int_reg[1] ;
  wire \n_0_q_int_reg[2] ;
  wire \n_0_q_int_reg[3] ;
  wire [5:0]out;
  wire s_axi_aclk;
  wire scl_falling_edge;
  wire state1;

LUT6 #(
    .INIT(64'hAAABAAAAEAAAAAAA)) 
     EarlyAckDataState_i_1
       (.I0(out[4]),
        .I1(\n_0_q_int_reg[3] ),
        .I2(\n_0_q_int_reg[2] ),
        .I3(\n_0_q_int_reg[1] ),
        .I4(out[3]),
        .I5(\n_0_q_int_reg[0] ),
        .O(EarlyAckDataState0));
LUT5 #(
    .INIT(32'hAAA8A8A8)) 
     \FSM_onehot_state[7]_i_2 
       (.I0(state1),
        .I1(\n_0_FSM_onehot_state[7]_i_5 ),
        .I2(out[2]),
        .I3(detect_start),
        .I4(out[0]),
        .O(E));
LUT6 #(
    .INIT(64'hFFFEFFFEFFFCFCFC)) 
     \FSM_onehot_state[7]_i_5 
       (.I0(out[1]),
        .I1(out[5]),
        .I2(out[4]),
        .I3(I1),
        .I4(detect_start),
        .I5(\n_0_FSM_onehot_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_state[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \FSM_onehot_state[7]_i_7 
       (.I0(\n_0_q_int_reg[3] ),
        .I1(\n_0_q_int_reg[1] ),
        .I2(\n_0_q_int_reg[0] ),
        .I3(\n_0_q_int_reg[2] ),
        .O(\n_0_FSM_onehot_state[7]_i_7 ));
LUT6 #(
    .INIT(64'h40FF000040000000)) 
     dtc_i_i_1
       (.I0(\n_0_q_int_reg[0] ),
        .I1(\n_0_q_int_reg[1] ),
        .I2(n_0_dtc_i_i_2),
        .I3(scl_falling_edge),
        .I4(Q),
        .I5(dtc_i),
        .O(O1));
LUT2 #(
    .INIT(4'h8)) 
     dtc_i_i_2
       (.I0(\n_0_q_int_reg[2] ),
        .I1(\n_0_q_int_reg[3] ),
        .O(n_0_dtc_i_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \q_int[0]_i_1__1 
       (.I0(out[5]),
        .I1(out[2]),
        .I2(out[4]),
        .I3(detect_start),
        .I4(out[0]),
        .I5(bit_cnt_en),
        .O(\n_0_q_int[0]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[0]_i_2__0 
       (.I0(\n_0_q_int_reg[0] ),
        .I1(\n_0_q_int_reg[1] ),
        .I2(\n_0_q_int_reg[3] ),
        .I3(\n_0_q_int_reg[2] ),
        .I4(bit_cnt_ld),
        .O(\n_0_q_int[0]_i_2__0 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \q_int[0]_i_3__1 
       (.I0(out[0]),
        .I1(detect_start),
        .I2(out[4]),
        .I3(out[2]),
        .I4(out[5]),
        .O(bit_cnt_ld));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[1]_i_1__0 
       (.I0(\n_0_q_int_reg[1] ),
        .I1(\n_0_q_int_reg[2] ),
        .I2(\n_0_q_int_reg[3] ),
        .I3(bit_cnt_ld),
        .O(\n_0_q_int[1]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[2]_i_1__0 
       (.I0(\n_0_q_int_reg[2] ),
        .I1(\n_0_q_int_reg[3] ),
        .I2(bit_cnt_ld),
        .O(\n_0_q_int[2]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \q_int[3]_i_1__1 
       (.I0(\n_0_q_int_reg[3] ),
        .I1(out[5]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(detect_start),
        .I5(out[0]),
        .O(\n_0_q_int[3]_i_1__1 ));
FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[0]_i_2__0 ),
        .Q(\n_0_q_int_reg[0] ),
        .R(SR));
FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[1]_i_1__0 ),
        .Q(\n_0_q_int_reg[1] ),
        .R(SR));
FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[2]_i_1__0 ),
        .Q(\n_0_q_int_reg[2] ),
        .R(SR));
FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[3]_i_1__1 ),
        .Q(\n_0_q_int_reg[3] ),
        .R(SR));
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
