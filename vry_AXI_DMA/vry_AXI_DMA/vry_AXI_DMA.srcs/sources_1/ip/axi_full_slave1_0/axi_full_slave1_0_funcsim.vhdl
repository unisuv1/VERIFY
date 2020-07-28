-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Jul 28 15:17:53 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/UV/FPGA/VERIFY/vry_AXI_DMA/vry_AXI_DMA/vry_AXI_DMA.srcs/sources_1/ip/axi_full_slave1_0/axi_full_slave1_0_funcsim.vhdl
-- Design      : axi_full_slave1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_full_slave1_0_axi_full_slave1_v1_0_S00_AXI is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_full_slave1_0_axi_full_slave1_v1_0_S00_AXI : entity is "axi_full_slave1_v1_0_S00_AXI";
end axi_full_slave1_0_axi_full_slave1_v1_0_S00_AXI;

architecture STRUCTURE of axi_full_slave1_0_axi_full_slave1_v1_0_S00_AXI is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal ar_wrap_en : STD_LOGIC;
  signal aw_wrap_en : STD_LOGIC;
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr3 : STD_LOGIC;
  signal \axi_arlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_arv_arr_flag : STD_LOGIC;
  signal axi_awaddr1 : STD_LOGIC;
  signal axi_awaddr3 : STD_LOGIC;
  signal \axi_awlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_awv_awr_flag : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mem_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_data_out[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \n_0_axi_araddr[0]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[1]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[1]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[1]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[1]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[1]_i_6\ : STD_LOGIC;
  signal \n_0_axi_araddr[2]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[2]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_10\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_6\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_7\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_8\ : STD_LOGIC;
  signal \n_0_axi_araddr[3]_i_9\ : STD_LOGIC;
  signal \n_0_axi_araddr[4]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[4]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_10\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_6\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_7\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_8\ : STD_LOGIC;
  signal \n_0_axi_araddr[5]_i_9\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[0]\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[1]\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_0_axi_arlen_cntr[7]_i_1\ : STD_LOGIC;
  signal \n_0_axi_arlen_cntr[7]_i_4\ : STD_LOGIC;
  signal n_0_axi_arready_i_1 : STD_LOGIC;
  signal n_0_axi_arready_i_2 : STD_LOGIC;
  signal n_0_axi_arready_i_3 : STD_LOGIC;
  signal n_0_axi_arready_i_4 : STD_LOGIC;
  signal n_0_axi_arready_i_5 : STD_LOGIC;
  signal n_0_axi_arready_i_6 : STD_LOGIC;
  signal n_0_axi_arv_arr_flag_i_1 : STD_LOGIC;
  signal \n_0_axi_awaddr[0]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[1]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[1]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[1]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[1]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[1]_i_6\ : STD_LOGIC;
  signal \n_0_axi_awaddr[2]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[2]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_10\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_6\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_7\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_8\ : STD_LOGIC;
  signal \n_0_axi_awaddr[3]_i_9\ : STD_LOGIC;
  signal \n_0_axi_awaddr[4]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[4]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[4]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_10\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_11\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_12\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_13\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_14\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_15\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_16\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_17\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_18\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_19\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_6\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_7\ : STD_LOGIC;
  signal \n_0_axi_awaddr[5]_i_9\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[0]\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[1]\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[2]\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[3]\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[4]\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[5]\ : STD_LOGIC;
  signal \n_0_axi_awlen_cntr[0]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awlen_cntr[7]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awlen_cntr[7]_i_4\ : STD_LOGIC;
  signal n_0_axi_awready_i_1 : STD_LOGIC;
  signal n_0_axi_awready_i_2 : STD_LOGIC;
  signal n_0_axi_awv_awr_flag_i_1 : STD_LOGIC;
  signal n_0_axi_bvalid_i_1 : STD_LOGIC;
  signal n_0_axi_bvalid_i_2 : STD_LOGIC;
  signal n_0_axi_rlast_i_1 : STD_LOGIC;
  signal n_0_axi_rlast_i_10 : STD_LOGIC;
  signal n_0_axi_rlast_i_11 : STD_LOGIC;
  signal n_0_axi_rlast_i_3 : STD_LOGIC;
  signal n_0_axi_rlast_i_4 : STD_LOGIC;
  signal n_0_axi_rlast_i_5 : STD_LOGIC;
  signal n_0_axi_rlast_i_6 : STD_LOGIC;
  signal n_0_axi_rlast_i_7 : STD_LOGIC;
  signal n_0_axi_rlast_i_8 : STD_LOGIC;
  signal n_0_axi_rlast_i_9 : STD_LOGIC;
  signal n_0_axi_rvalid_i_1 : STD_LOGIC;
  signal n_0_axi_wready_i_1 : STD_LOGIC;
  signal \n_1_axi_araddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[5]_i_4\ : STD_LOGIC;
  signal n_1_axi_rlast_reg_i_2 : STD_LOGIC;
  signal \n_2_axi_araddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[5]_i_4\ : STD_LOGIC;
  signal n_2_axi_rlast_reg_i_2 : STD_LOGIC;
  signal \n_3_axi_araddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[5]_i_4\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[5]_i_4\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[5]_i_8\ : STD_LOGIC;
  signal n_3_axi_rlast_reg_i_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in10_out : STD_LOGIC;
  signal p_0_in13_out : STD_LOGIC;
  signal p_0_in16_out : STD_LOGIC;
  signal p_0_in18_out : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_3_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_7_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rlast\ : STD_LOGIC;
  signal \NLW_axi_araddr_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_araddr_reg[5]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_araddr_reg[5]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_awaddr_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_awaddr_reg[5]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_awaddr_reg[5]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_awaddr_reg[5]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_axi_rlast_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_1_1\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_2_2\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_3_3\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_4_4\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_5_5\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_6_6\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_7_7\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_0_0\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_1_1\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_2_2\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_3_3\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_4_4\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_5_5\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_6_6\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_7_7\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_0_0\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_1_1\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_2_2\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_3_3\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_4_4\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_5_5\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_6_6\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_7_7\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_0_0\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_1_1\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_2_2\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_3_3\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_4_4\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_5_5\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_6_6\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_7_7\ : label is "RAM16X1S";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_arready_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awaddr[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[7]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair22";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rlast <= \^s00_axi_rlast\;
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(0),
      O => data_out(0),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s00_axi_wstrb(0),
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      O => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
    port map (
      I0 => p_0_in_0(0),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \n_0_axi_awaddr_reg[2]\,
      O => mem_address(0)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
    port map (
      I0 => p_0_in_0(1),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \n_0_axi_awaddr_reg[3]\,
      O => mem_address(1)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
    port map (
      I0 => p_0_in_0(2),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \n_0_axi_awaddr_reg[4]\,
      O => mem_address(2)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_0_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
    port map (
      I0 => p_0_in_0(3),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \n_0_axi_awaddr_reg[5]\,
      O => mem_address(3)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_1_1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(1),
      O => data_out(1),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_2_2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(2),
      O => data_out(2),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_3_3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(3),
      O => data_out(3),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_4_4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(4),
      O => data_out(4),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_5_5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(5),
      O => data_out(5),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_6_6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(6),
      O => data_out(6),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].byte_ram_reg_0_15_7_7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(7),
      O => data_out(7),
      WCLK => s00_axi_aclk,
      WE => p_0_in18_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(0),
      Q => \mem_data_out[0]_0\(0),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(1),
      Q => \mem_data_out[0]_0\(1),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(2),
      Q => \mem_data_out[0]_0\(2),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(3),
      Q => \mem_data_out[0]_0\(3),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(4),
      Q => \mem_data_out[0]_0\(4),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(5),
      Q => \mem_data_out[0]_0\(5),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(6),
      Q => \mem_data_out[0]_0\(6),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => data_out(7),
      Q => \mem_data_out[0]_0\(7),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_0_0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(8),
      O => \data_out__0\(0),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s00_axi_wstrb(1),
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      O => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_1_1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(9),
      O => \data_out__0\(1),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_2_2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(10),
      O => \data_out__0\(2),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_3_3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(11),
      O => \data_out__0\(3),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_4_4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(12),
      O => \data_out__0\(4),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_5_5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(13),
      O => \data_out__0\(5),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_6_6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(14),
      O => \data_out__0\(6),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].byte_ram_reg_0_15_7_7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(15),
      O => \data_out__0\(7),
      WCLK => s00_axi_aclk,
      WE => p_0_in16_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(2),
      Q => \mem_data_out[0]_0\(10),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][11]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(3),
      Q => \mem_data_out[0]_0\(11),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][12]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(4),
      Q => \mem_data_out[0]_0\(12),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][13]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(5),
      Q => \mem_data_out[0]_0\(13),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][14]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(6),
      Q => \mem_data_out[0]_0\(14),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][15]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(7),
      Q => \mem_data_out[0]_0\(15),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(0),
      Q => \mem_data_out[0]_0\(8),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__0\(1),
      Q => \mem_data_out[0]_0\(9),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_0_0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(16),
      O => \data_out__1\(0),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s00_axi_wstrb(2),
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      O => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_1_1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(17),
      O => \data_out__1\(1),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_2_2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(18),
      O => \data_out__1\(2),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_3_3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(19),
      O => \data_out__1\(3),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_4_4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(20),
      O => \data_out__1\(4),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_5_5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(21),
      O => \data_out__1\(5),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_6_6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(22),
      O => \data_out__1\(6),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].byte_ram_reg_0_15_7_7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(23),
      O => \data_out__1\(7),
      WCLK => s00_axi_aclk,
      WE => p_0_in13_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][16]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(0),
      Q => \mem_data_out[0]_0\(16),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][17]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(1),
      Q => \mem_data_out[0]_0\(17),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][18]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(2),
      Q => \mem_data_out[0]_0\(18),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][19]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(3),
      Q => \mem_data_out[0]_0\(19),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][20]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(4),
      Q => \mem_data_out[0]_0\(20),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][21]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(5),
      Q => \mem_data_out[0]_0\(21),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][22]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(6),
      Q => \mem_data_out[0]_0\(22),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][23]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__1\(7),
      Q => \mem_data_out[0]_0\(23),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_0_0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(24),
      O => \data_out__2\(0),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s00_axi_wstrb(3),
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      O => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_1_1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(25),
      O => \data_out__2\(1),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_2_2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(26),
      O => \data_out__2\(2),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_3_3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(27),
      O => \data_out__2\(3),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_4_4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(28),
      O => \data_out__2\(4),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_5_5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(29),
      O => \data_out__2\(5),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_6_6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(30),
      O => \data_out__2\(6),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].byte_ram_reg_0_15_7_7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => mem_address(0),
      A1 => mem_address(1),
      A2 => mem_address(2),
      A3 => mem_address(3),
      A4 => '0',
      D => s00_axi_wdata(31),
      O => \data_out__2\(7),
      WCLK => s00_axi_aclk,
      WE => p_0_in10_out
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][24]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(0),
      Q => \mem_data_out[0]_0\(24),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][25]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(1),
      Q => \mem_data_out[0]_0\(25),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][26]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(2),
      Q => \mem_data_out[0]_0\(26),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][27]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(3),
      Q => \mem_data_out[0]_0\(27),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][28]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(4),
      Q => \mem_data_out[0]_0\(28),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][29]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(5),
      Q => \mem_data_out[0]_0\(29),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][30]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(6),
      Q => \mem_data_out[0]_0\(30),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][31]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_arv_arr_flag,
      D => \data_out__2\(7),
      Q => \mem_data_out[0]_0\(31),
      R => '0'
    );
\axi_araddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888888888888"
    )
    port map (
      I0 => s00_axi_araddr(0),
      I1 => \n_0_axi_araddr[5]_i_3\,
      I2 => s00_axi_arburst(0),
      I3 => ar_wrap_en,
      I4 => p_3_out(0),
      I5 => s00_axi_arburst(1),
      O => \n_0_axi_araddr[0]_i_1\
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888888888888"
    )
    port map (
      I0 => s00_axi_araddr(1),
      I1 => \n_0_axi_araddr[5]_i_3\,
      I2 => s00_axi_arburst(0),
      I3 => ar_wrap_en,
      I4 => p_3_out(1),
      I5 => s00_axi_arburst(1),
      O => \n_0_axi_araddr[1]_i_1\
    );
\axi_araddr[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arlen(7),
      O => \n_0_axi_araddr[1]_i_3\
    );
\axi_araddr[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s00_axi_arlen(6),
      I1 => s00_axi_arlen(4),
      I2 => s00_axi_arlen(5),
      O => \n_0_axi_araddr[1]_i_4\
    );
\axi_araddr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
    port map (
      I0 => s00_axi_arlen(1),
      I1 => p_0_in_0(1),
      I2 => s00_axi_arlen(2),
      I3 => p_0_in_0(2),
      I4 => s00_axi_arlen(3),
      I5 => p_0_in_0(3),
      O => \n_0_axi_araddr[1]_i_5\
    );
\axi_araddr[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => p_0_in_0(0),
      I1 => s00_axi_arlen(0),
      O => \n_0_axi_araddr[1]_i_6\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
    port map (
      I0 => s00_axi_araddr(2),
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_arvalid,
      I3 => \^o2\,
      I4 => \n_0_axi_araddr[2]_i_2\,
      O => \n_0_axi_araddr[2]_i_1\
    );
\axi_araddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B080F4F7"
    )
    port map (
      I0 => s00_axi_arburst(1),
      I1 => s00_axi_arburst(0),
      I2 => p_3_out(2),
      I3 => ar_wrap_en,
      I4 => p_0_in_0(0),
      O => \n_0_axi_araddr[2]_i_2\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
    port map (
      I0 => s00_axi_araddr(3),
      I1 => \n_0_axi_araddr[5]_i_3\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \n_0_axi_araddr[5]_i_6\,
      I5 => p_3_out(3),
      O => \n_0_axi_araddr[3]_i_1\
    );
\axi_araddr[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => \n_0_axi_araddr_reg[0]\,
      I1 => s00_axi_arburst(0),
      I2 => p_0_in_0(0),
      O => \n_0_axi_araddr[3]_i_10\
    );
\axi_araddr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arburst(0),
      I1 => s00_axi_arlen(1),
      O => \n_0_axi_araddr[3]_i_3\
    );
\axi_araddr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arburst(0),
      I1 => s00_axi_arlen(0),
      O => \n_0_axi_araddr[3]_i_4\
    );
\axi_araddr[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arburst(0),
      O => \n_0_axi_araddr[3]_i_5\
    );
\axi_araddr[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arburst(0),
      O => \n_0_axi_araddr[3]_i_6\
    );
\axi_araddr[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
    port map (
      I0 => s00_axi_arlen(1),
      I1 => p_0_in_0(1),
      I2 => s00_axi_arburst(0),
      I3 => p_0_in_0(3),
      O => \n_0_axi_araddr[3]_i_7\
    );
\axi_araddr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
    port map (
      I0 => s00_axi_arlen(0),
      I1 => p_0_in_0(0),
      I2 => s00_axi_arburst(0),
      I3 => p_0_in_0(2),
      O => \n_0_axi_araddr[3]_i_8\
    );
\axi_araddr[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => \n_0_axi_araddr_reg[1]\,
      I1 => s00_axi_arburst(0),
      I2 => p_0_in_0(1),
      O => \n_0_axi_araddr[3]_i_9\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
    port map (
      I0 => s00_axi_araddr(4),
      I1 => \n_0_axi_araddr[5]_i_3\,
      I2 => p_0_in_0(2),
      I3 => \n_0_axi_araddr[4]_i_2\,
      I4 => \n_0_axi_araddr[5]_i_6\,
      I5 => p_3_out(4),
      O => \n_0_axi_araddr[4]_i_1\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      O => \n_0_axi_araddr[4]_i_2\
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAAAAA"
    )
    port map (
      I0 => \n_0_axi_araddr[5]_i_3\,
      I1 => \^o4\,
      I2 => s00_axi_rready,
      I3 => s00_axi_arburst(0),
      I4 => s00_axi_arburst(1),
      I5 => axi_araddr3,
      O => \n_0_axi_araddr[5]_i_1\
    );
\axi_araddr[5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => s00_axi_arlen(2),
      I1 => s00_axi_arburst(0),
      I2 => p_0_in_0(2),
      O => \n_0_axi_araddr[5]_i_10\
    );
\axi_araddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBB88B8"
    )
    port map (
      I0 => s00_axi_araddr(5),
      I1 => \n_0_axi_araddr[5]_i_3\,
      I2 => p_3_out(5),
      I3 => \n_0_axi_araddr[5]_i_5\,
      I4 => \n_0_axi_araddr[5]_i_6\,
      I5 => \n_0_axi_araddr[5]_i_7\,
      O => \n_0_axi_araddr[5]_i_2\
    );
\axi_araddr[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_arvalid,
      I2 => \^o2\,
      O => \n_0_axi_araddr[5]_i_3\
    );
\axi_araddr[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s00_axi_arburst(1),
      I1 => s00_axi_arburst(0),
      O => \n_0_axi_araddr[5]_i_5\
    );
\axi_araddr[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
    port map (
      I0 => ar_wrap_en,
      I1 => s00_axi_arburst(0),
      I2 => s00_axi_arburst(1),
      O => \n_0_axi_araddr[5]_i_6\
    );
\axi_araddr[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D00000000DDDDDDD"
    )
    port map (
      I0 => ar_wrap_en,
      I1 => s00_axi_arburst(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(3),
      O => \n_0_axi_araddr[5]_i_7\
    );
\axi_araddr[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_arburst(0),
      I1 => s00_axi_arlen(2),
      O => \n_0_axi_araddr[5]_i_8\
    );
\axi_araddr[5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => s00_axi_arlen(3),
      I1 => s00_axi_arburst(0),
      I2 => p_0_in_0(3),
      O => \n_0_axi_araddr[5]_i_9\
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[0]_i_1\,
      Q => \n_0_axi_araddr_reg[0]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[1]_i_1\,
      Q => \n_0_axi_araddr_reg[1]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[1]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => ar_wrap_en,
      CO(2) => \n_1_axi_araddr_reg[1]_i_2\,
      CO(1) => \n_2_axi_araddr_reg[1]_i_2\,
      CO(0) => \n_3_axi_araddr_reg[1]_i_2\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_axi_araddr_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_axi_araddr[1]_i_3\,
      S(2) => \n_0_axi_araddr[1]_i_4\,
      S(1) => \n_0_axi_araddr[1]_i_5\,
      S(0) => \n_0_axi_araddr[1]_i_6\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[2]_i_1\,
      Q => p_0_in_0(0),
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[3]_i_1\,
      Q => p_0_in_0(1),
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[3]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_axi_araddr_reg[3]_i_2\,
      CO(2) => \n_1_axi_araddr_reg[3]_i_2\,
      CO(1) => \n_2_axi_araddr_reg[3]_i_2\,
      CO(0) => \n_3_axi_araddr_reg[3]_i_2\,
      CYINIT => '1',
      DI(3) => \n_0_axi_araddr[3]_i_3\,
      DI(2) => \n_0_axi_araddr[3]_i_4\,
      DI(1) => \n_0_axi_araddr[3]_i_5\,
      DI(0) => \n_0_axi_araddr[3]_i_6\,
      O(3 downto 0) => p_3_out(3 downto 0),
      S(3) => \n_0_axi_araddr[3]_i_7\,
      S(2) => \n_0_axi_araddr[3]_i_8\,
      S(1) => \n_0_axi_araddr[3]_i_9\,
      S(0) => \n_0_axi_araddr[3]_i_10\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[4]_i_1\,
      Q => p_0_in_0(2),
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_araddr[5]_i_1\,
      D => \n_0_axi_araddr[5]_i_2\,
      Q => p_0_in_0(3),
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_araddr_reg[5]_i_4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[3]_i_2\,
      CO(3 downto 1) => \NLW_axi_araddr_reg[5]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_axi_araddr_reg[5]_i_4\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_axi_araddr[5]_i_8\,
      O(3 downto 2) => \NLW_axi_araddr_reg[5]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_3_out(5 downto 4),
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_axi_araddr[5]_i_9\,
      S(0) => \n_0_axi_araddr[5]_i_10\
    );
\axi_arlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      O => p_0_in(0)
    );
\axi_arlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => \axi_arlen_cntr_reg__0\(0),
      O => p_0_in(1)
    );
\axi_arlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(2),
      O => p_0_in(2)
    );
\axi_arlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(3),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(2),
      O => p_0_in(3)
    );
\axi_arlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(4),
      I1 => \axi_arlen_cntr_reg__0\(2),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(1),
      I4 => \axi_arlen_cntr_reg__0\(3),
      O => p_0_in(4)
    );
\axi_arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(5),
      I1 => \axi_arlen_cntr_reg__0\(3),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => \axi_arlen_cntr_reg__0\(0),
      I4 => \axi_arlen_cntr_reg__0\(2),
      I5 => \axi_arlen_cntr_reg__0\(4),
      O => p_0_in(5)
    );
\axi_arlen_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(6),
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => \n_0_axi_arlen_cntr[7]_i_4\,
      I3 => \axi_arlen_cntr_reg__0\(3),
      I4 => \axi_arlen_cntr_reg__0\(5),
      O => p_0_in(6)
    );
\axi_arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
    port map (
      I0 => \^o2\,
      I1 => s00_axi_arvalid,
      I2 => axi_arv_arr_flag,
      I3 => s00_axi_aresetn,
      O => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => axi_araddr3,
      I1 => \^o4\,
      I2 => s00_axi_rready,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(7),
      I1 => \axi_arlen_cntr_reg__0\(5),
      I2 => \axi_arlen_cntr_reg__0\(3),
      I3 => \n_0_axi_arlen_cntr[7]_i_4\,
      I4 => \axi_arlen_cntr_reg__0\(4),
      I5 => \axi_arlen_cntr_reg__0\(6),
      O => p_0_in(7)
    );
\axi_arlen_cntr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(1),
      O => \n_0_axi_arlen_cntr[7]_i_4\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(0),
      Q => \axi_arlen_cntr_reg__0\(0),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(1),
      Q => \axi_arlen_cntr_reg__0\(1),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(2),
      Q => \axi_arlen_cntr_reg__0\(2),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(3),
      Q => \axi_arlen_cntr_reg__0\(3),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(4),
      Q => \axi_arlen_cntr_reg__0\(4),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(5),
      Q => \axi_arlen_cntr_reg__0\(5),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(6),
      Q => \axi_arlen_cntr_reg__0\(6),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => p_0_in(7),
      Q => \axi_arlen_cntr_reg__0\(7),
      R => \n_0_axi_arlen_cntr[7]_i_1\
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888A800000020"
    )
    port map (
      I0 => s00_axi_aresetn,
      I1 => \^o2\,
      I2 => s00_axi_arvalid,
      I3 => axi_arv_arr_flag,
      I4 => axi_awv_awr_flag,
      I5 => n_0_axi_arready_i_2,
      O => n_0_axi_arready_i_1
    );
axi_arready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => \^o4\,
      I1 => s00_axi_rready,
      I2 => n_0_axi_arready_i_3,
      I3 => n_0_axi_arready_i_4,
      I4 => n_0_axi_arready_i_5,
      I5 => n_0_axi_arready_i_6,
      O => n_0_axi_arready_i_2
    );
axi_arready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => s00_axi_arlen(5),
      I1 => \axi_arlen_cntr_reg__0\(5),
      I2 => s00_axi_arlen(4),
      I3 => \axi_arlen_cntr_reg__0\(4),
      O => n_0_axi_arready_i_3
    );
axi_arready_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => s00_axi_arlen(3),
      I1 => \axi_arlen_cntr_reg__0\(3),
      I2 => s00_axi_arlen(2),
      I3 => \axi_arlen_cntr_reg__0\(2),
      O => n_0_axi_arready_i_4
    );
axi_arready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => s00_axi_arlen(1),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => s00_axi_arlen(0),
      I3 => \axi_arlen_cntr_reg__0\(0),
      O => n_0_axi_arready_i_5
    );
axi_arready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_arlen(7),
      I1 => \axi_arlen_cntr_reg__0\(7),
      I2 => s00_axi_arlen(6),
      I3 => \axi_arlen_cntr_reg__0\(6),
      O => n_0_axi_arready_i_6
    );
axi_arready_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_arready_i_1,
      Q => \^o2\,
      R => '0'
    );
axi_arv_arr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444000044440C00"
    )
    port map (
      I0 => n_0_axi_arready_i_2,
      I1 => s00_axi_aresetn,
      I2 => \^o2\,
      I3 => s00_axi_arvalid,
      I4 => axi_arv_arr_flag,
      I5 => axi_awv_awr_flag,
      O => n_0_axi_arv_arr_flag_i_1
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_arv_arr_flag_i_1,
      Q => axi_arv_arr_flag,
      R => '0'
    );
\axi_awaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888888888888"
    )
    port map (
      I0 => s00_axi_awaddr(0),
      I1 => n_0_axi_awready_i_2,
      I2 => s00_axi_awburst(0),
      I3 => aw_wrap_en,
      I4 => p_7_out(0),
      I5 => s00_axi_awburst(1),
      O => \n_0_axi_awaddr[0]_i_1\
    );
\axi_awaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888888888888"
    )
    port map (
      I0 => s00_axi_awaddr(1),
      I1 => n_0_axi_awready_i_2,
      I2 => s00_axi_awburst(0),
      I3 => aw_wrap_en,
      I4 => p_7_out(1),
      I5 => s00_axi_awburst(1),
      O => \n_0_axi_awaddr[1]_i_1\
    );
\axi_awaddr[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awlen(7),
      O => \n_0_axi_awaddr[1]_i_3\
    );
\axi_awaddr[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s00_axi_awlen(6),
      I1 => s00_axi_awlen(4),
      I2 => s00_axi_awlen(5),
      O => \n_0_axi_awaddr[1]_i_4\
    );
\axi_awaddr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
    port map (
      I0 => s00_axi_awlen(1),
      I1 => \n_0_axi_awaddr_reg[3]\,
      I2 => s00_axi_awlen(2),
      I3 => \n_0_axi_awaddr_reg[4]\,
      I4 => s00_axi_awlen(3),
      I5 => \n_0_axi_awaddr_reg[5]\,
      O => \n_0_axi_awaddr[1]_i_5\
    );
\axi_awaddr[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_axi_awaddr_reg[2]\,
      I1 => s00_axi_awlen(0),
      O => \n_0_axi_awaddr[1]_i_6\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
    port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \^o1\,
      I3 => axi_awv_awr_flag,
      I4 => \n_0_axi_awaddr[2]_i_2\,
      O => \n_0_axi_awaddr[2]_i_1\
    );
\axi_awaddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B080F4F7"
    )
    port map (
      I0 => s00_axi_awburst(1),
      I1 => s00_axi_awburst(0),
      I2 => p_7_out(2),
      I3 => aw_wrap_en,
      I4 => \n_0_axi_awaddr_reg[2]\,
      O => \n_0_axi_awaddr[2]_i_2\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
    port map (
      I0 => s00_axi_awaddr(3),
      I1 => n_0_axi_awready_i_2,
      I2 => p_7_out(3),
      I3 => \n_0_axi_awaddr[4]_i_2\,
      I4 => \n_0_axi_awaddr_reg[2]\,
      I5 => \n_0_axi_awaddr_reg[3]\,
      O => \n_0_axi_awaddr[3]_i_1\
    );
\axi_awaddr[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => \n_0_axi_awaddr_reg[0]\,
      I1 => s00_axi_awburst(0),
      I2 => \n_0_axi_awaddr_reg[2]\,
      O => \n_0_axi_awaddr[3]_i_10\
    );
\axi_awaddr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awburst(0),
      I1 => s00_axi_awlen(1),
      O => \n_0_axi_awaddr[3]_i_3\
    );
\axi_awaddr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awburst(0),
      I1 => s00_axi_awlen(0),
      O => \n_0_axi_awaddr[3]_i_4\
    );
\axi_awaddr[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awburst(0),
      O => \n_0_axi_awaddr[3]_i_5\
    );
\axi_awaddr[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awburst(0),
      O => \n_0_axi_awaddr[3]_i_6\
    );
\axi_awaddr[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
    port map (
      I0 => s00_axi_awlen(1),
      I1 => \n_0_axi_awaddr_reg[3]\,
      I2 => s00_axi_awburst(0),
      I3 => \n_0_axi_awaddr_reg[5]\,
      O => \n_0_axi_awaddr[3]_i_7\
    );
\axi_awaddr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
    port map (
      I0 => s00_axi_awlen(0),
      I1 => \n_0_axi_awaddr_reg[2]\,
      I2 => s00_axi_awburst(0),
      I3 => \n_0_axi_awaddr_reg[4]\,
      O => \n_0_axi_awaddr[3]_i_8\
    );
\axi_awaddr[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
    port map (
      I0 => \n_0_axi_awaddr_reg[1]\,
      I1 => s00_axi_awburst(0),
      I2 => \n_0_axi_awaddr_reg[3]\,
      O => \n_0_axi_awaddr[3]_i_9\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
    port map (
      I0 => s00_axi_awaddr(4),
      I1 => n_0_axi_awready_i_2,
      I2 => p_7_out(4),
      I3 => \n_0_axi_awaddr[4]_i_2\,
      I4 => \n_0_axi_awaddr_reg[4]\,
      I5 => \n_0_axi_awaddr[4]_i_3\,
      O => \n_0_axi_awaddr[4]_i_1\
    );
\axi_awaddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => aw_wrap_en,
      I1 => s00_axi_awburst(0),
      I2 => s00_axi_awburst(1),
      O => \n_0_axi_awaddr[4]_i_2\
    );
\axi_awaddr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_axi_awaddr_reg[2]\,
      I1 => \n_0_axi_awaddr_reg[3]\,
      O => \n_0_axi_awaddr[4]_i_3\
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_aresetn,
      O => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(5),
      I1 => s00_axi_awlen(5),
      I2 => s00_axi_awlen(4),
      I3 => \axi_awlen_cntr_reg__0\(4),
      O => \n_0_axi_awaddr[5]_i_10\
    );
\axi_awaddr[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(3),
      I1 => s00_axi_awlen(3),
      I2 => s00_axi_awlen(2),
      I3 => \axi_awlen_cntr_reg__0\(2),
      O => \n_0_axi_awaddr[5]_i_11\
    );
\axi_awaddr[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => s00_axi_awlen(1),
      I2 => s00_axi_awlen(0),
      I3 => \axi_awlen_cntr_reg__0\(0),
      O => \n_0_axi_awaddr[5]_i_12\
    );
\axi_awaddr[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_awlen(7),
      I1 => \axi_awlen_cntr_reg__0\(7),
      I2 => s00_axi_awlen(6),
      I3 => \axi_awlen_cntr_reg__0\(6),
      O => \n_0_axi_awaddr[5]_i_13\
    );
\axi_awaddr[5]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_awlen(5),
      I1 => \axi_awlen_cntr_reg__0\(5),
      I2 => s00_axi_awlen(4),
      I3 => \axi_awlen_cntr_reg__0\(4),
      O => \n_0_axi_awaddr[5]_i_14\
    );
\axi_awaddr[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_awlen(3),
      I1 => \axi_awlen_cntr_reg__0\(3),
      I2 => s00_axi_awlen(2),
      I3 => \axi_awlen_cntr_reg__0\(2),
      O => \n_0_axi_awaddr[5]_i_15\
    );
\axi_awaddr[5]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_awlen(1),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => s00_axi_awlen(0),
      I3 => \axi_awlen_cntr_reg__0\(0),
      O => \n_0_axi_awaddr[5]_i_16\
    );
\axi_awaddr[5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s00_axi_awburst(0),
      I1 => s00_axi_awlen(2),
      O => \n_0_axi_awaddr[5]_i_17\
    );
\axi_awaddr[5]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => s00_axi_awlen(3),
      I1 => s00_axi_awburst(0),
      I2 => \n_0_axi_awaddr_reg[5]\,
      O => \n_0_axi_awaddr[5]_i_18\
    );
\axi_awaddr[5]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => s00_axi_awlen(2),
      I1 => s00_axi_awburst(0),
      I2 => \n_0_axi_awaddr_reg[4]\,
      O => \n_0_axi_awaddr[5]_i_19\
    );
\axi_awaddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAAAAAAAAA"
    )
    port map (
      I0 => n_0_axi_awready_i_2,
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awburst(0),
      I4 => s00_axi_awburst(1),
      I5 => axi_awaddr3,
      O => \n_0_axi_awaddr[5]_i_2\
    );
\axi_awaddr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B888B8888888B8"
    )
    port map (
      I0 => s00_axi_awaddr(5),
      I1 => n_0_axi_awready_i_2,
      I2 => \n_0_axi_awaddr[5]_i_5\,
      I3 => \n_0_axi_awaddr[5]_i_6\,
      I4 => \n_0_axi_awaddr[5]_i_7\,
      I5 => p_7_out(5),
      O => \n_0_axi_awaddr[5]_i_3\
    );
\axi_awaddr[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FFFF7F807F80"
    )
    port map (
      I0 => \n_0_axi_awaddr_reg[4]\,
      I1 => \n_0_axi_awaddr_reg[3]\,
      I2 => \n_0_axi_awaddr_reg[2]\,
      I3 => \n_0_axi_awaddr_reg[5]\,
      I4 => s00_axi_awburst(0),
      I5 => aw_wrap_en,
      O => \n_0_axi_awaddr[5]_i_5\
    );
\axi_awaddr[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s00_axi_awburst(1),
      I1 => s00_axi_awburst(0),
      O => \n_0_axi_awaddr[5]_i_6\
    );
\axi_awaddr[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aw_wrap_en,
      I1 => s00_axi_awburst(0),
      O => \n_0_axi_awaddr[5]_i_7\
    );
\axi_awaddr[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(7),
      I1 => s00_axi_awlen(7),
      I2 => s00_axi_awlen(6),
      I3 => \axi_awlen_cntr_reg__0\(6),
      O => \n_0_axi_awaddr[5]_i_9\
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[0]_i_1\,
      Q => \n_0_axi_awaddr_reg[0]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[1]_i_1\,
      Q => \n_0_axi_awaddr_reg[1]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[1]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => aw_wrap_en,
      CO(2) => \n_1_axi_awaddr_reg[1]_i_2\,
      CO(1) => \n_2_axi_awaddr_reg[1]_i_2\,
      CO(0) => \n_3_axi_awaddr_reg[1]_i_2\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_axi_awaddr_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_axi_awaddr[1]_i_3\,
      S(2) => \n_0_axi_awaddr[1]_i_4\,
      S(1) => \n_0_axi_awaddr[1]_i_5\,
      S(0) => \n_0_axi_awaddr[1]_i_6\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[2]_i_1\,
      Q => \n_0_axi_awaddr_reg[2]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[3]_i_1\,
      Q => \n_0_axi_awaddr_reg[3]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[3]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_axi_awaddr_reg[3]_i_2\,
      CO(2) => \n_1_axi_awaddr_reg[3]_i_2\,
      CO(1) => \n_2_axi_awaddr_reg[3]_i_2\,
      CO(0) => \n_3_axi_awaddr_reg[3]_i_2\,
      CYINIT => '1',
      DI(3) => \n_0_axi_awaddr[3]_i_3\,
      DI(2) => \n_0_axi_awaddr[3]_i_4\,
      DI(1) => \n_0_axi_awaddr[3]_i_5\,
      DI(0) => \n_0_axi_awaddr[3]_i_6\,
      O(3 downto 0) => p_7_out(3 downto 0),
      S(3) => \n_0_axi_awaddr[3]_i_7\,
      S(2) => \n_0_axi_awaddr[3]_i_8\,
      S(1) => \n_0_axi_awaddr[3]_i_9\,
      S(0) => \n_0_axi_awaddr[3]_i_10\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[4]_i_1\,
      Q => \n_0_axi_awaddr_reg[4]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => \n_0_axi_awaddr[5]_i_2\,
      D => \n_0_axi_awaddr[5]_i_3\,
      Q => \n_0_axi_awaddr_reg[5]\,
      R => \n_0_axi_awaddr[5]_i_1\
    );
\axi_awaddr_reg[5]_i_4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => axi_awaddr3,
      CO(2) => \n_1_axi_awaddr_reg[5]_i_4\,
      CO(1) => \n_2_axi_awaddr_reg[5]_i_4\,
      CO(0) => \n_3_axi_awaddr_reg[5]_i_4\,
      CYINIT => '1',
      DI(3) => \n_0_axi_awaddr[5]_i_9\,
      DI(2) => \n_0_axi_awaddr[5]_i_10\,
      DI(1) => \n_0_axi_awaddr[5]_i_11\,
      DI(0) => \n_0_axi_awaddr[5]_i_12\,
      O(3 downto 0) => \NLW_axi_awaddr_reg[5]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_axi_awaddr[5]_i_13\,
      S(2) => \n_0_axi_awaddr[5]_i_14\,
      S(1) => \n_0_axi_awaddr[5]_i_15\,
      S(0) => \n_0_axi_awaddr[5]_i_16\
    );
\axi_awaddr_reg[5]_i_8\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[3]_i_2\,
      CO(3 downto 1) => \NLW_axi_awaddr_reg[5]_i_8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_axi_awaddr_reg[5]_i_8\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_axi_awaddr[5]_i_17\,
      O(3 downto 2) => \NLW_axi_awaddr_reg[5]_i_8_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_7_out(5 downto 4),
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_axi_awaddr[5]_i_18\,
      S(0) => \n_0_axi_awaddr[5]_i_19\
    );
\axi_awlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      O => \n_0_axi_awlen_cntr[0]_i_1\
    );
\axi_awlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => \axi_awlen_cntr_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\axi_awlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\axi_awlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(3),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(0),
      I3 => \axi_awlen_cntr_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\axi_awlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(4),
      I1 => \axi_awlen_cntr_reg__0\(2),
      I2 => \axi_awlen_cntr_reg__0\(0),
      I3 => \axi_awlen_cntr_reg__0\(1),
      I4 => \axi_awlen_cntr_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\axi_awlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(5),
      I1 => \axi_awlen_cntr_reg__0\(3),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_cntr_reg__0\(0),
      I4 => \axi_awlen_cntr_reg__0\(2),
      I5 => \axi_awlen_cntr_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\axi_awlen_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(6),
      I1 => \axi_awlen_cntr_reg__0\(4),
      I2 => \n_0_axi_awlen_cntr[7]_i_4\,
      I3 => \axi_awlen_cntr_reg__0\(3),
      I4 => \axi_awlen_cntr_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\axi_awlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
    port map (
      I0 => axi_awv_awr_flag,
      I1 => \^o1\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_aresetn,
      O => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => axi_awaddr3,
      I1 => \^o3\,
      I2 => s00_axi_wvalid,
      O => axi_awaddr1
    );
\axi_awlen_cntr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(7),
      I1 => \axi_awlen_cntr_reg__0\(5),
      I2 => \axi_awlen_cntr_reg__0\(3),
      I3 => \n_0_axi_awlen_cntr[7]_i_4\,
      I4 => \axi_awlen_cntr_reg__0\(4),
      I5 => \axi_awlen_cntr_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\axi_awlen_cntr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \axi_awlen_cntr_reg__0\(2),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(1),
      O => \n_0_axi_awlen_cntr[7]_i_4\
    );
\axi_awlen_cntr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \n_0_axi_awlen_cntr[0]_i_1\,
      Q => \axi_awlen_cntr_reg__0\(0),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(1),
      Q => \axi_awlen_cntr_reg__0\(1),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(2),
      Q => \axi_awlen_cntr_reg__0\(2),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(3),
      Q => \axi_awlen_cntr_reg__0\(3),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(4),
      Q => \axi_awlen_cntr_reg__0\(4),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(5),
      Q => \axi_awlen_cntr_reg__0\(5),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(6),
      Q => \axi_awlen_cntr_reg__0\(6),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
\axi_awlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => axi_awaddr1,
      D => \p_0_in__0\(7),
      Q => \axi_awlen_cntr_reg__0\(7),
      R => \n_0_axi_awlen_cntr[7]_i_1\
    );
axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040404040404040"
    )
    port map (
      I0 => axi_arv_arr_flag,
      I1 => n_0_axi_awready_i_2,
      I2 => s00_axi_aresetn,
      I3 => s00_axi_wlast,
      I4 => \^o3\,
      I5 => \^o1\,
      O => n_0_axi_awready_i_1
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s00_axi_awvalid,
      I1 => \^o1\,
      I2 => axi_awv_awr_flag,
      O => n_0_axi_awready_i_2
    );
axi_awready_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_awready_i_1,
      Q => \^o1\,
      R => '0'
    );
axi_awv_awr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF000044440000"
    )
    port map (
      I0 => axi_arv_arr_flag,
      I1 => n_0_axi_awready_i_2,
      I2 => s00_axi_wlast,
      I3 => \^o3\,
      I4 => s00_axi_aresetn,
      I5 => axi_awv_awr_flag,
      O => n_0_axi_awv_awr_flag_i_1
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_awv_awr_flag_i_1,
      Q => axi_awv_awr_flag,
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004000FF004000"
    )
    port map (
      I0 => n_0_axi_bvalid_i_2,
      I1 => axi_awv_awr_flag,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_aresetn,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_bready,
      O => n_0_axi_bvalid_i_1
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => s00_axi_wlast,
      I1 => \^o3\,
      O => n_0_axi_bvalid_i_2
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_bvalid_i_1,
      Q => \^s00_axi_bvalid\,
      R => '0'
    );
axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007000FF007000F0"
    )
    port map (
      I0 => axi_araddr3,
      I1 => \^o4\,
      I2 => n_0_axi_rlast_i_3,
      I3 => \n_0_axi_arlen_cntr[7]_i_1\,
      I4 => s00_axi_rready,
      I5 => \^s00_axi_rlast\,
      O => n_0_axi_rlast_i_1
    );
axi_rlast_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => s00_axi_arlen(2),
      I2 => \axi_arlen_cntr_reg__0\(3),
      I3 => s00_axi_arlen(3),
      O => n_0_axi_rlast_i_10
    );
axi_rlast_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => s00_axi_arlen(0),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => s00_axi_arlen(1),
      O => n_0_axi_rlast_i_11
    );
axi_rlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => n_0_axi_arready_i_3,
      I1 => n_0_axi_arready_i_4,
      I2 => n_0_axi_arready_i_5,
      I3 => n_0_axi_arready_i_6,
      I4 => axi_arv_arr_flag,
      I5 => \^s00_axi_rlast\,
      O => n_0_axi_rlast_i_3
    );
axi_rlast_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(7),
      I1 => s00_axi_arlen(7),
      I2 => s00_axi_arlen(6),
      I3 => \axi_arlen_cntr_reg__0\(6),
      O => n_0_axi_rlast_i_4
    );
axi_rlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(5),
      I1 => s00_axi_arlen(5),
      I2 => s00_axi_arlen(4),
      I3 => \axi_arlen_cntr_reg__0\(4),
      O => n_0_axi_rlast_i_5
    );
axi_rlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(3),
      I1 => s00_axi_arlen(3),
      I2 => s00_axi_arlen(2),
      I3 => \axi_arlen_cntr_reg__0\(2),
      O => n_0_axi_rlast_i_6
    );
axi_rlast_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => s00_axi_arlen(1),
      I2 => s00_axi_arlen(0),
      I3 => \axi_arlen_cntr_reg__0\(0),
      O => n_0_axi_rlast_i_7
    );
axi_rlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => s00_axi_arlen(7),
      I1 => \axi_arlen_cntr_reg__0\(7),
      I2 => s00_axi_arlen(6),
      I3 => \axi_arlen_cntr_reg__0\(6),
      O => n_0_axi_rlast_i_8
    );
axi_rlast_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \axi_arlen_cntr_reg__0\(4),
      I1 => s00_axi_arlen(4),
      I2 => \axi_arlen_cntr_reg__0\(5),
      I3 => s00_axi_arlen(5),
      O => n_0_axi_rlast_i_9
    );
axi_rlast_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_rlast_i_1,
      Q => \^s00_axi_rlast\,
      R => '0'
    );
axi_rlast_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => axi_araddr3,
      CO(2) => n_1_axi_rlast_reg_i_2,
      CO(1) => n_2_axi_rlast_reg_i_2,
      CO(0) => n_3_axi_rlast_reg_i_2,
      CYINIT => '1',
      DI(3) => n_0_axi_rlast_i_4,
      DI(2) => n_0_axi_rlast_i_5,
      DI(1) => n_0_axi_rlast_i_6,
      DI(0) => n_0_axi_rlast_i_7,
      O(3 downto 0) => NLW_axi_rlast_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_axi_rlast_i_8,
      S(2) => n_0_axi_rlast_i_9,
      S(1) => n_0_axi_rlast_i_10,
      S(0) => n_0_axi_rlast_i_11
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7400"
    )
    port map (
      I0 => s00_axi_rready,
      I1 => \^o4\,
      I2 => axi_arv_arr_flag,
      I3 => s00_axi_aresetn,
      O => n_0_axi_rvalid_i_1
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_rvalid_i_1,
      Q => \^o4\,
      R => '0'
    );
axi_wready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F880000"
    )
    port map (
      I0 => s00_axi_wvalid,
      I1 => axi_awv_awr_flag,
      I2 => s00_axi_wlast,
      I3 => \^o3\,
      I4 => s00_axi_aresetn,
      O => n_0_axi_wready_i_1
    );
axi_wready_reg: unisim.vcomponents.FDRE
    port map (
      C => s00_axi_aclk,
      CE => '1',
      D => n_0_axi_wready_i_1,
      Q => \^o3\,
      R => '0'
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(27),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(28),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(31),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \mem_data_out[0]_0\(9),
      O => s00_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_full_slave1_0_axi_full_slave1_v1_0 is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_full_slave1_0_axi_full_slave1_v1_0 : entity is "axi_full_slave1_v1_0";
end axi_full_slave1_0_axi_full_slave1_v1_0;

architecture STRUCTURE of axi_full_slave1_0_axi_full_slave1_v1_0 is
begin
axi_full_slave1_v1_0_S00_AXI_inst: entity work.axi_full_slave1_0_axi_full_slave1_v1_0_S00_AXI
    port map (
      O1 => O1,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_full_slave1_0 is
  port (
    s00_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awlock : in STD_LOGIC;
    s00_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arlock : in STD_LOGIC;
    s00_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_full_slave1_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_full_slave1_0 : entity is "axi_full_slave1_v1_0,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_full_slave1_0 : entity is "axi_full_slave1_0,axi_full_slave1_v1_0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of axi_full_slave1_0 : entity is "axi_full_slave1_0,axi_full_slave1_v1_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_full_slave1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_ID_WIDTH=1,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=6,C_S00_AXI_AWUSER_WIDTH=1,C_S00_AXI_ARUSER_WIDTH=1,C_S00_AXI_WUSER_WIDTH=1,C_S00_AXI_RUSER_WIDTH=1,C_S00_AXI_BUSER_WIDTH=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_full_slave1_0 : entity is "yes";
end axi_full_slave1_0;

architecture STRUCTURE of axi_full_slave1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_arid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^s00_axi_arid\(0) <= s00_axi_arid(0);
  \^s00_axi_awid\(0) <= s00_axi_awid(0);
  s00_axi_bid(0) <= \^s00_axi_awid\(0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rid(0) <= \^s00_axi_arid\(0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.axi_full_slave1_0_axi_full_slave1_v1_0
    port map (
      O1 => s00_axi_awready,
      O2 => s00_axi_arready,
      O3 => s00_axi_wready,
      O4 => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
