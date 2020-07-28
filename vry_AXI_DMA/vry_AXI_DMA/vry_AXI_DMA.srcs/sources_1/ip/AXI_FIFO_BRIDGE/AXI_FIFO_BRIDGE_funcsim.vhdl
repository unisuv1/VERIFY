-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Tue Jul 28 16:08:04 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/UV/FPGA/VERIFY/vry_AXI_DMA/vry_AXI_DMA/vry_AXI_DMA.srcs/sources_1/ip/AXI_FIFO_BRIDGE/AXI_FIFO_BRIDGE_funcsim.vhdl
-- Design      : AXI_FIFO_BRIDGE
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI is
  port (
    M_AXI_BREADY : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI : entity is "axi_full_master_v1_0_M00_AXI";
end AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI;

architecture STRUCTURE of AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI is
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal axi_araddr_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal axi_awvalid0 : STD_LOGIC;
  signal axi_awvalid1 : STD_LOGIC;
  signal \^error_reg\ : STD_LOGIC;
  signal expected_rdata_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2 : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^m00_axi_error\ : STD_LOGIC;
  signal \^m00_axi_txn_done\ : STD_LOGIC;
  signal \^m00_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_wlast\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal n_0_ERROR_i_1 : STD_LOGIC;
  signal \n_0_axi_araddr[13]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[13]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[13]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[13]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[17]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[17]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[17]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[17]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[21]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[21]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[21]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[21]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[25]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[25]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[25]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[25]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[28]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[28]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[28]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr[28]_i_6\ : STD_LOGIC;
  signal \n_0_axi_araddr[30]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[30]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[9]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr[9]_i_3\ : STD_LOGIC;
  signal \n_0_axi_araddr[9]_i_4\ : STD_LOGIC;
  signal \n_0_axi_araddr[9]_i_5\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal n_0_axi_arvalid_i_1 : STD_LOGIC;
  signal \n_0_axi_awaddr[13]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[13]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[13]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[13]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[17]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[17]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[17]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[17]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[21]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[21]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[21]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[21]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[25]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[25]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[25]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[25]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[28]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[28]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr[28]_i_6\ : STD_LOGIC;
  signal \n_0_axi_awaddr[28]_i_7\ : STD_LOGIC;
  signal \n_0_axi_awaddr[30]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[30]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[9]_i_2\ : STD_LOGIC;
  signal \n_0_axi_awaddr[9]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr[9]_i_4\ : STD_LOGIC;
  signal \n_0_axi_awaddr[9]_i_5\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_0_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal n_0_axi_awvalid_i_1 : STD_LOGIC;
  signal n_0_axi_bready_i_1 : STD_LOGIC;
  signal n_0_axi_rready_i_1 : STD_LOGIC;
  signal \n_0_axi_wdata[11]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[11]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[11]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[11]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[15]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[15]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[15]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[15]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[19]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[19]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[19]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[19]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[23]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[23]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[23]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[23]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[27]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[27]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[27]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[27]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[31]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[31]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[31]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[31]_i_6\ : STD_LOGIC;
  signal \n_0_axi_wdata[3]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[3]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[3]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[3]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata[7]_i_2\ : STD_LOGIC;
  signal \n_0_axi_wdata[7]_i_3\ : STD_LOGIC;
  signal \n_0_axi_wdata[7]_i_4\ : STD_LOGIC;
  signal \n_0_axi_wdata[7]_i_5\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal n_0_axi_wlast_i_1 : STD_LOGIC;
  signal n_0_axi_wlast_i_2 : STD_LOGIC;
  signal n_0_axi_wvalid_i_1 : STD_LOGIC;
  signal n_0_burst_read_active_i_1 : STD_LOGIC;
  signal n_0_burst_read_active_reg : STD_LOGIC;
  signal n_0_burst_write_active_i_1 : STD_LOGIC;
  signal n_0_burst_write_active_reg : STD_LOGIC;
  signal n_0_compare_done_i_1 : STD_LOGIC;
  signal n_0_compare_done_i_2 : STD_LOGIC;
  signal n_0_error_reg_i_1 : STD_LOGIC;
  signal n_0_error_reg_i_2 : STD_LOGIC;
  signal \n_0_expected_rdata[0]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[0]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[0]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[0]_i_6\ : STD_LOGIC;
  signal \n_0_expected_rdata[12]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[12]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[12]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[12]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[16]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[16]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[16]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[16]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[20]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[20]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[20]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[20]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[24]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[24]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[24]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[24]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[28]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[28]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[28]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[28]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[4]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[4]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[4]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[4]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata[8]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata[8]_i_3\ : STD_LOGIC;
  signal \n_0_expected_rdata[8]_i_4\ : STD_LOGIC;
  signal \n_0_expected_rdata[8]_i_5\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_m00_axi_araddr[29]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_m00_axi_araddr[29]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_m00_axi_araddr[29]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_m00_axi_awaddr[29]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_m00_axi_awaddr[29]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_m00_axi_awaddr[29]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_mst_exec_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_mst_exec_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_read_burst_counter[4]_i_1\ : STD_LOGIC;
  signal \n_0_read_burst_counter_reg[0]\ : STD_LOGIC;
  signal \n_0_read_burst_counter_reg[1]\ : STD_LOGIC;
  signal \n_0_read_burst_counter_reg[2]\ : STD_LOGIC;
  signal \n_0_read_burst_counter_reg[3]\ : STD_LOGIC;
  signal \n_0_read_index[4]_i_1\ : STD_LOGIC;
  signal n_0_read_mismatch_i_10 : STD_LOGIC;
  signal n_0_read_mismatch_i_11 : STD_LOGIC;
  signal n_0_read_mismatch_i_12 : STD_LOGIC;
  signal n_0_read_mismatch_i_13 : STD_LOGIC;
  signal n_0_read_mismatch_i_14 : STD_LOGIC;
  signal n_0_read_mismatch_i_15 : STD_LOGIC;
  signal n_0_read_mismatch_i_4 : STD_LOGIC;
  signal n_0_read_mismatch_i_5 : STD_LOGIC;
  signal n_0_read_mismatch_i_6 : STD_LOGIC;
  signal n_0_read_mismatch_i_8 : STD_LOGIC;
  signal n_0_read_mismatch_i_9 : STD_LOGIC;
  signal n_0_read_mismatch_reg_i_3 : STD_LOGIC;
  signal n_0_read_mismatch_reg_i_7 : STD_LOGIC;
  signal n_0_reads_done_i_1 : STD_LOGIC;
  signal n_0_reads_done_i_2 : STD_LOGIC;
  signal n_0_start_single_burst_read_i_1 : STD_LOGIC;
  signal n_0_start_single_burst_write_i_1 : STD_LOGIC;
  signal \n_0_write_burst_counter[4]_i_1\ : STD_LOGIC;
  signal \n_0_write_burst_counter_reg[0]\ : STD_LOGIC;
  signal \n_0_write_burst_counter_reg[1]\ : STD_LOGIC;
  signal \n_0_write_burst_counter_reg[2]\ : STD_LOGIC;
  signal \n_0_write_burst_counter_reg[3]\ : STD_LOGIC;
  signal \n_0_write_index[0]_i_1\ : STD_LOGIC;
  signal \n_0_write_index[4]_i_1\ : STD_LOGIC;
  signal n_0_writes_done_i_1 : STD_LOGIC;
  signal \n_1_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_1_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_1_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal n_1_read_mismatch_reg_i_3 : STD_LOGIC;
  signal n_1_read_mismatch_reg_i_7 : STD_LOGIC;
  signal \n_2_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_2_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_2_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_m00_axi_araddr[29]_INST_0\ : STD_LOGIC;
  signal \n_2_m00_axi_awaddr[29]_INST_0\ : STD_LOGIC;
  signal n_2_read_mismatch_reg_i_2 : STD_LOGIC;
  signal n_2_read_mismatch_reg_i_3 : STD_LOGIC;
  signal n_2_read_mismatch_reg_i_7 : STD_LOGIC;
  signal \n_3_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_3_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_3_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_3_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_m00_axi_araddr[29]_INST_0\ : STD_LOGIC;
  signal \n_3_m00_axi_awaddr[29]_INST_0\ : STD_LOGIC;
  signal n_3_read_mismatch_reg_i_2 : STD_LOGIC;
  signal n_3_read_mismatch_reg_i_3 : STD_LOGIC;
  signal n_3_read_mismatch_reg_i_7 : STD_LOGIC;
  signal \n_4_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_4_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_4_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_4_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_4_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_4_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_4_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_4_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_5_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_5_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_5_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_6_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_6_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_6_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[28]_i_2\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_7_axi_araddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[13]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[17]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[21]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[25]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[28]_i_3\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[30]_i_1\ : STD_LOGIC;
  signal \n_7_axi_awaddr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[11]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[15]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[19]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[23]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[27]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[31]_i_2\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[3]_i_1\ : STD_LOGIC;
  signal \n_7_axi_wdata_reg[7]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[28]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_expected_rdata_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_15_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal read_index0 : STD_LOGIC;
  signal \read_index_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_mismatch : STD_LOGIC;
  signal read_mismatch0 : STD_LOGIC;
  signal read_mismatch1 : STD_LOGIC;
  signal reads_done : STD_LOGIC;
  signal start_single_burst_read : STD_LOGIC;
  signal start_single_burst_write : STD_LOGIC;
  signal write_index0 : STD_LOGIC;
  signal \write_index_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal writes_done : STD_LOGIC;
  signal \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m00_axi_araddr[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_m00_axi_araddr[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m00_axi_awaddr[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_m00_axi_awaddr[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_read_mismatch_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_read_mismatch_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_read_mismatch_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_read_mismatch_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wlast_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of burst_write_active_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of error_reg_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_burst_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_burst_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_burst_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_burst_counter[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_index[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of reads_done_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_burst_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_burst_counter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_burst_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_burst_counter[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_index[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_index[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair6";
begin
  M_AXI_BREADY <= \^m_axi_bready\;
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  m00_axi_araddr(25 downto 0) <= \^m00_axi_araddr\(25 downto 0);
  m00_axi_awaddr(25 downto 0) <= \^m00_axi_awaddr\(25 downto 0);
  m00_axi_error <= \^m00_axi_error\;
  m00_axi_txn_done <= \^m00_axi_txn_done\;
  m00_axi_wdata(31 downto 0) <= \^m00_axi_wdata\(31 downto 0);
  m00_axi_wlast <= \^m00_axi_wlast\;
ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFFCFAA000000"
    )
    port map (
      I0 => \^error_reg\,
      I1 => init_txn_ff2,
      I2 => init_txn_ff,
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      I5 => \^m00_axi_error\,
      O => n_0_ERROR_i_1
    );
ERROR_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_ERROR_i_1,
      Q => \^m00_axi_error\,
      R => n_0_compare_done_i_1
    );
\axi_araddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(7),
      O => \n_0_axi_araddr[13]_i_2\
    );
\axi_araddr[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(6),
      O => \n_0_axi_araddr[13]_i_3\
    );
\axi_araddr[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(5),
      O => \n_0_axi_araddr[13]_i_4\
    );
\axi_araddr[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(4),
      O => \n_0_axi_araddr[13]_i_5\
    );
\axi_araddr[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(11),
      O => \n_0_axi_araddr[17]_i_2\
    );
\axi_araddr[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(10),
      O => \n_0_axi_araddr[17]_i_3\
    );
\axi_araddr[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(9),
      O => \n_0_axi_araddr[17]_i_4\
    );
\axi_araddr[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(8),
      O => \n_0_axi_araddr[17]_i_5\
    );
\axi_araddr[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(15),
      O => \n_0_axi_araddr[21]_i_2\
    );
\axi_araddr[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(14),
      O => \n_0_axi_araddr[21]_i_3\
    );
\axi_araddr[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(13),
      O => \n_0_axi_araddr[21]_i_4\
    );
\axi_araddr[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(12),
      O => \n_0_axi_araddr[21]_i_5\
    );
\axi_araddr[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(19),
      O => \n_0_axi_araddr[25]_i_2\
    );
\axi_araddr[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(18),
      O => \n_0_axi_araddr[25]_i_3\
    );
\axi_araddr[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(17),
      O => \n_0_axi_araddr[25]_i_4\
    );
\axi_araddr[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(16),
      O => \n_0_axi_araddr[25]_i_5\
    );
\axi_araddr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o2\,
      I1 => m00_axi_arready,
      O => axi_arvalid0
    );
\axi_araddr[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_araddr_reg(29),
      O => \n_0_axi_araddr[28]_i_3\
    );
\axi_araddr[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(22),
      O => \n_0_axi_araddr[28]_i_4\
    );
\axi_araddr[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(21),
      O => \n_0_axi_araddr[28]_i_5\
    );
\axi_araddr[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(20),
      O => \n_0_axi_araddr[28]_i_6\
    );
\axi_araddr[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_araddr_reg(31),
      O => \n_0_axi_araddr[30]_i_2\
    );
\axi_araddr[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_araddr_reg(30),
      O => \n_0_axi_araddr[30]_i_3\
    );
\axi_araddr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(3),
      O => \n_0_axi_araddr[9]_i_2\
    );
\axi_araddr[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(2),
      O => \n_0_axi_araddr[9]_i_3\
    );
\axi_araddr[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_araddr\(1),
      O => \n_0_axi_araddr[9]_i_4\
    );
\axi_araddr[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^m00_axi_araddr\(0),
      O => \n_0_axi_araddr[9]_i_5\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[13]_i_1\,
      Q => \^m00_axi_araddr\(4),
      R => axi_awvalid1
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[13]_i_1\,
      Q => \^m00_axi_araddr\(5),
      R => axi_awvalid1
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[13]_i_1\,
      Q => \^m00_axi_araddr\(6),
      R => axi_awvalid1
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[13]_i_1\,
      Q => \^m00_axi_araddr\(7),
      R => axi_awvalid1
    );
\axi_araddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[9]_i_1\,
      CO(3) => \n_0_axi_araddr_reg[13]_i_1\,
      CO(2) => \n_1_axi_araddr_reg[13]_i_1\,
      CO(1) => \n_2_axi_araddr_reg[13]_i_1\,
      CO(0) => \n_3_axi_araddr_reg[13]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_araddr_reg[13]_i_1\,
      O(2) => \n_5_axi_araddr_reg[13]_i_1\,
      O(1) => \n_6_axi_araddr_reg[13]_i_1\,
      O(0) => \n_7_axi_araddr_reg[13]_i_1\,
      S(3) => \n_0_axi_araddr[13]_i_2\,
      S(2) => \n_0_axi_araddr[13]_i_3\,
      S(1) => \n_0_axi_araddr[13]_i_4\,
      S(0) => \n_0_axi_araddr[13]_i_5\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[17]_i_1\,
      Q => \^m00_axi_araddr\(8),
      R => axi_awvalid1
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[17]_i_1\,
      Q => \^m00_axi_araddr\(9),
      R => axi_awvalid1
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[17]_i_1\,
      Q => \^m00_axi_araddr\(10),
      R => axi_awvalid1
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[17]_i_1\,
      Q => \^m00_axi_araddr\(11),
      R => axi_awvalid1
    );
\axi_araddr_reg[17]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[13]_i_1\,
      CO(3) => \n_0_axi_araddr_reg[17]_i_1\,
      CO(2) => \n_1_axi_araddr_reg[17]_i_1\,
      CO(1) => \n_2_axi_araddr_reg[17]_i_1\,
      CO(0) => \n_3_axi_araddr_reg[17]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_araddr_reg[17]_i_1\,
      O(2) => \n_5_axi_araddr_reg[17]_i_1\,
      O(1) => \n_6_axi_araddr_reg[17]_i_1\,
      O(0) => \n_7_axi_araddr_reg[17]_i_1\,
      S(3) => \n_0_axi_araddr[17]_i_2\,
      S(2) => \n_0_axi_araddr[17]_i_3\,
      S(1) => \n_0_axi_araddr[17]_i_4\,
      S(0) => \n_0_axi_araddr[17]_i_5\
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[21]_i_1\,
      Q => \^m00_axi_araddr\(12),
      R => axi_awvalid1
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[21]_i_1\,
      Q => \^m00_axi_araddr\(13),
      R => axi_awvalid1
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[21]_i_1\,
      Q => \^m00_axi_araddr\(14),
      R => axi_awvalid1
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[21]_i_1\,
      Q => \^m00_axi_araddr\(15),
      R => axi_awvalid1
    );
\axi_araddr_reg[21]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[17]_i_1\,
      CO(3) => \n_0_axi_araddr_reg[21]_i_1\,
      CO(2) => \n_1_axi_araddr_reg[21]_i_1\,
      CO(1) => \n_2_axi_araddr_reg[21]_i_1\,
      CO(0) => \n_3_axi_araddr_reg[21]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_araddr_reg[21]_i_1\,
      O(2) => \n_5_axi_araddr_reg[21]_i_1\,
      O(1) => \n_6_axi_araddr_reg[21]_i_1\,
      O(0) => \n_7_axi_araddr_reg[21]_i_1\,
      S(3) => \n_0_axi_araddr[21]_i_2\,
      S(2) => \n_0_axi_araddr[21]_i_3\,
      S(1) => \n_0_axi_araddr[21]_i_4\,
      S(0) => \n_0_axi_araddr[21]_i_5\
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[25]_i_1\,
      Q => \^m00_axi_araddr\(16),
      R => axi_awvalid1
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[25]_i_1\,
      Q => \^m00_axi_araddr\(17),
      R => axi_awvalid1
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[25]_i_1\,
      Q => \^m00_axi_araddr\(18),
      R => axi_awvalid1
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[25]_i_1\,
      Q => \^m00_axi_araddr\(19),
      R => axi_awvalid1
    );
\axi_araddr_reg[25]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[21]_i_1\,
      CO(3) => \n_0_axi_araddr_reg[25]_i_1\,
      CO(2) => \n_1_axi_araddr_reg[25]_i_1\,
      CO(1) => \n_2_axi_araddr_reg[25]_i_1\,
      CO(0) => \n_3_axi_araddr_reg[25]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_araddr_reg[25]_i_1\,
      O(2) => \n_5_axi_araddr_reg[25]_i_1\,
      O(1) => \n_6_axi_araddr_reg[25]_i_1\,
      O(0) => \n_7_axi_araddr_reg[25]_i_1\,
      S(3) => \n_0_axi_araddr[25]_i_2\,
      S(2) => \n_0_axi_araddr[25]_i_3\,
      S(1) => \n_0_axi_araddr[25]_i_4\,
      S(0) => \n_0_axi_araddr[25]_i_5\
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[28]_i_2\,
      Q => \^m00_axi_araddr\(20),
      R => axi_awvalid1
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[28]_i_2\,
      Q => \^m00_axi_araddr\(21),
      R => axi_awvalid1
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[28]_i_2\,
      Q => \^m00_axi_araddr\(22),
      R => axi_awvalid1
    );
\axi_araddr_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[25]_i_1\,
      CO(3) => \n_0_axi_araddr_reg[28]_i_2\,
      CO(2) => \n_1_axi_araddr_reg[28]_i_2\,
      CO(1) => \n_2_axi_araddr_reg[28]_i_2\,
      CO(0) => \n_3_axi_araddr_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_araddr_reg[28]_i_2\,
      O(2) => \n_5_axi_araddr_reg[28]_i_2\,
      O(1) => \n_6_axi_araddr_reg[28]_i_2\,
      O(0) => \n_7_axi_araddr_reg[28]_i_2\,
      S(3) => \n_0_axi_araddr[28]_i_3\,
      S(2) => \n_0_axi_araddr[28]_i_4\,
      S(1) => \n_0_axi_araddr[28]_i_5\,
      S(0) => \n_0_axi_araddr[28]_i_6\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[28]_i_2\,
      Q => axi_araddr_reg(29),
      R => axi_awvalid1
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[30]_i_1\,
      Q => axi_araddr_reg(30),
      R => axi_awvalid1
    );
\axi_araddr_reg[30]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_araddr_reg[28]_i_2\,
      CO(3 downto 1) => \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_axi_araddr_reg[30]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_axi_araddr_reg[30]_i_1\,
      O(0) => \n_7_axi_araddr_reg[30]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_axi_araddr[30]_i_2\,
      S(0) => \n_0_axi_araddr[30]_i_3\
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[30]_i_1\,
      Q => axi_araddr_reg(31),
      R => axi_awvalid1
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_7_axi_araddr_reg[9]_i_1\,
      Q => \^m00_axi_araddr\(0),
      R => axi_awvalid1
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_6_axi_araddr_reg[9]_i_1\,
      Q => \^m00_axi_araddr\(1),
      R => axi_awvalid1
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_5_axi_araddr_reg[9]_i_1\,
      Q => \^m00_axi_araddr\(2),
      R => axi_awvalid1
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_arvalid0,
      D => \n_4_axi_araddr_reg[9]_i_1\,
      Q => \^m00_axi_araddr\(3),
      R => axi_awvalid1
    );
\axi_araddr_reg[9]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_axi_araddr_reg[9]_i_1\,
      CO(2) => \n_1_axi_araddr_reg[9]_i_1\,
      CO(1) => \n_2_axi_araddr_reg[9]_i_1\,
      CO(0) => \n_3_axi_araddr_reg[9]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_axi_araddr_reg[9]_i_1\,
      O(2) => \n_5_axi_araddr_reg[9]_i_1\,
      O(1) => \n_6_axi_araddr_reg[9]_i_1\,
      O(0) => \n_7_axi_araddr_reg[9]_i_1\,
      S(3) => \n_0_axi_araddr[9]_i_2\,
      S(2) => \n_0_axi_araddr[9]_i_3\,
      S(1) => \n_0_axi_araddr[9]_i_4\,
      S(0) => \n_0_axi_araddr[9]_i_5\
    );
axi_arvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0544"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_read,
      I2 => m00_axi_arready,
      I3 => \^o2\,
      O => n_0_axi_arvalid_i_1
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_arvalid_i_1,
      Q => \^o2\,
      R => '0'
    );
\axi_awaddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(7),
      O => \n_0_axi_awaddr[13]_i_2\
    );
\axi_awaddr[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(6),
      O => \n_0_axi_awaddr[13]_i_3\
    );
\axi_awaddr[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(5),
      O => \n_0_axi_awaddr[13]_i_4\
    );
\axi_awaddr[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(4),
      O => \n_0_axi_awaddr[13]_i_5\
    );
\axi_awaddr[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(11),
      O => \n_0_axi_awaddr[17]_i_2\
    );
\axi_awaddr[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(10),
      O => \n_0_axi_awaddr[17]_i_3\
    );
\axi_awaddr[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(9),
      O => \n_0_axi_awaddr[17]_i_4\
    );
\axi_awaddr[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(8),
      O => \n_0_axi_awaddr[17]_i_5\
    );
\axi_awaddr[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(15),
      O => \n_0_axi_awaddr[21]_i_2\
    );
\axi_awaddr[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(14),
      O => \n_0_axi_awaddr[21]_i_3\
    );
\axi_awaddr[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(13),
      O => \n_0_axi_awaddr[21]_i_4\
    );
\axi_awaddr[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(12),
      O => \n_0_axi_awaddr[21]_i_5\
    );
\axi_awaddr[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(19),
      O => \n_0_axi_awaddr[25]_i_2\
    );
\axi_awaddr[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(18),
      O => \n_0_axi_awaddr[25]_i_3\
    );
\axi_awaddr[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(17),
      O => \n_0_axi_awaddr[25]_i_4\
    );
\axi_awaddr[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(16),
      O => \n_0_axi_awaddr[25]_i_5\
    );
\axi_awaddr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
    port map (
      I0 => init_txn_ff,
      I1 => init_txn_ff2,
      I2 => m00_axi_aresetn,
      O => axi_awvalid1
    );
\axi_awaddr[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o3\,
      I1 => m00_axi_awready,
      O => axi_awvalid0
    );
\axi_awaddr[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_awaddr_reg(29),
      O => \n_0_axi_awaddr[28]_i_4\
    );
\axi_awaddr[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(22),
      O => \n_0_axi_awaddr[28]_i_5\
    );
\axi_awaddr[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(21),
      O => \n_0_axi_awaddr[28]_i_6\
    );
\axi_awaddr[28]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(20),
      O => \n_0_axi_awaddr[28]_i_7\
    );
\axi_awaddr[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_awaddr_reg(31),
      O => \n_0_axi_awaddr[30]_i_2\
    );
\axi_awaddr[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_awaddr_reg(30),
      O => \n_0_axi_awaddr[30]_i_3\
    );
\axi_awaddr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(3),
      O => \n_0_axi_awaddr[9]_i_2\
    );
\axi_awaddr[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(2),
      O => \n_0_axi_awaddr[9]_i_3\
    );
\axi_awaddr[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_awaddr\(1),
      O => \n_0_axi_awaddr[9]_i_4\
    );
\axi_awaddr[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^m00_axi_awaddr\(0),
      O => \n_0_axi_awaddr[9]_i_5\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[13]_i_1\,
      Q => \^m00_axi_awaddr\(4),
      R => axi_awvalid1
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[13]_i_1\,
      Q => \^m00_axi_awaddr\(5),
      R => axi_awvalid1
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[13]_i_1\,
      Q => \^m00_axi_awaddr\(6),
      R => axi_awvalid1
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[13]_i_1\,
      Q => \^m00_axi_awaddr\(7),
      R => axi_awvalid1
    );
\axi_awaddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[9]_i_1\,
      CO(3) => \n_0_axi_awaddr_reg[13]_i_1\,
      CO(2) => \n_1_axi_awaddr_reg[13]_i_1\,
      CO(1) => \n_2_axi_awaddr_reg[13]_i_1\,
      CO(0) => \n_3_axi_awaddr_reg[13]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_awaddr_reg[13]_i_1\,
      O(2) => \n_5_axi_awaddr_reg[13]_i_1\,
      O(1) => \n_6_axi_awaddr_reg[13]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[13]_i_1\,
      S(3) => \n_0_axi_awaddr[13]_i_2\,
      S(2) => \n_0_axi_awaddr[13]_i_3\,
      S(1) => \n_0_axi_awaddr[13]_i_4\,
      S(0) => \n_0_axi_awaddr[13]_i_5\
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[17]_i_1\,
      Q => \^m00_axi_awaddr\(8),
      R => axi_awvalid1
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[17]_i_1\,
      Q => \^m00_axi_awaddr\(9),
      R => axi_awvalid1
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[17]_i_1\,
      Q => \^m00_axi_awaddr\(10),
      R => axi_awvalid1
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[17]_i_1\,
      Q => \^m00_axi_awaddr\(11),
      R => axi_awvalid1
    );
\axi_awaddr_reg[17]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[13]_i_1\,
      CO(3) => \n_0_axi_awaddr_reg[17]_i_1\,
      CO(2) => \n_1_axi_awaddr_reg[17]_i_1\,
      CO(1) => \n_2_axi_awaddr_reg[17]_i_1\,
      CO(0) => \n_3_axi_awaddr_reg[17]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_awaddr_reg[17]_i_1\,
      O(2) => \n_5_axi_awaddr_reg[17]_i_1\,
      O(1) => \n_6_axi_awaddr_reg[17]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[17]_i_1\,
      S(3) => \n_0_axi_awaddr[17]_i_2\,
      S(2) => \n_0_axi_awaddr[17]_i_3\,
      S(1) => \n_0_axi_awaddr[17]_i_4\,
      S(0) => \n_0_axi_awaddr[17]_i_5\
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[21]_i_1\,
      Q => \^m00_axi_awaddr\(12),
      R => axi_awvalid1
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[21]_i_1\,
      Q => \^m00_axi_awaddr\(13),
      R => axi_awvalid1
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[21]_i_1\,
      Q => \^m00_axi_awaddr\(14),
      R => axi_awvalid1
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[21]_i_1\,
      Q => \^m00_axi_awaddr\(15),
      R => axi_awvalid1
    );
\axi_awaddr_reg[21]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[17]_i_1\,
      CO(3) => \n_0_axi_awaddr_reg[21]_i_1\,
      CO(2) => \n_1_axi_awaddr_reg[21]_i_1\,
      CO(1) => \n_2_axi_awaddr_reg[21]_i_1\,
      CO(0) => \n_3_axi_awaddr_reg[21]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_awaddr_reg[21]_i_1\,
      O(2) => \n_5_axi_awaddr_reg[21]_i_1\,
      O(1) => \n_6_axi_awaddr_reg[21]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[21]_i_1\,
      S(3) => \n_0_axi_awaddr[21]_i_2\,
      S(2) => \n_0_axi_awaddr[21]_i_3\,
      S(1) => \n_0_axi_awaddr[21]_i_4\,
      S(0) => \n_0_axi_awaddr[21]_i_5\
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[25]_i_1\,
      Q => \^m00_axi_awaddr\(16),
      R => axi_awvalid1
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[25]_i_1\,
      Q => \^m00_axi_awaddr\(17),
      R => axi_awvalid1
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[25]_i_1\,
      Q => \^m00_axi_awaddr\(18),
      R => axi_awvalid1
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[25]_i_1\,
      Q => \^m00_axi_awaddr\(19),
      R => axi_awvalid1
    );
\axi_awaddr_reg[25]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[21]_i_1\,
      CO(3) => \n_0_axi_awaddr_reg[25]_i_1\,
      CO(2) => \n_1_axi_awaddr_reg[25]_i_1\,
      CO(1) => \n_2_axi_awaddr_reg[25]_i_1\,
      CO(0) => \n_3_axi_awaddr_reg[25]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_awaddr_reg[25]_i_1\,
      O(2) => \n_5_axi_awaddr_reg[25]_i_1\,
      O(1) => \n_6_axi_awaddr_reg[25]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[25]_i_1\,
      S(3) => \n_0_axi_awaddr[25]_i_2\,
      S(2) => \n_0_axi_awaddr[25]_i_3\,
      S(1) => \n_0_axi_awaddr[25]_i_4\,
      S(0) => \n_0_axi_awaddr[25]_i_5\
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[28]_i_3\,
      Q => \^m00_axi_awaddr\(20),
      R => axi_awvalid1
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[28]_i_3\,
      Q => \^m00_axi_awaddr\(21),
      R => axi_awvalid1
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[28]_i_3\,
      Q => \^m00_axi_awaddr\(22),
      R => axi_awvalid1
    );
\axi_awaddr_reg[28]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[25]_i_1\,
      CO(3) => \n_0_axi_awaddr_reg[28]_i_3\,
      CO(2) => \n_1_axi_awaddr_reg[28]_i_3\,
      CO(1) => \n_2_axi_awaddr_reg[28]_i_3\,
      CO(0) => \n_3_axi_awaddr_reg[28]_i_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_awaddr_reg[28]_i_3\,
      O(2) => \n_5_axi_awaddr_reg[28]_i_3\,
      O(1) => \n_6_axi_awaddr_reg[28]_i_3\,
      O(0) => \n_7_axi_awaddr_reg[28]_i_3\,
      S(3) => \n_0_axi_awaddr[28]_i_4\,
      S(2) => \n_0_axi_awaddr[28]_i_5\,
      S(1) => \n_0_axi_awaddr[28]_i_6\,
      S(0) => \n_0_axi_awaddr[28]_i_7\
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[28]_i_3\,
      Q => axi_awaddr_reg(29),
      R => axi_awvalid1
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[30]_i_1\,
      Q => axi_awaddr_reg(30),
      R => axi_awvalid1
    );
\axi_awaddr_reg[30]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_awaddr_reg[28]_i_3\,
      CO(3 downto 1) => \NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_axi_awaddr_reg[30]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_axi_awaddr_reg[30]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[30]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_axi_awaddr[30]_i_2\,
      S(0) => \n_0_axi_awaddr[30]_i_3\
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[30]_i_1\,
      Q => axi_awaddr_reg(31),
      R => axi_awvalid1
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_7_axi_awaddr_reg[9]_i_1\,
      Q => \^m00_axi_awaddr\(0),
      R => axi_awvalid1
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_6_axi_awaddr_reg[9]_i_1\,
      Q => \^m00_axi_awaddr\(1),
      R => axi_awvalid1
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_5_axi_awaddr_reg[9]_i_1\,
      Q => \^m00_axi_awaddr\(2),
      R => axi_awvalid1
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => axi_awvalid0,
      D => \n_4_axi_awaddr_reg[9]_i_1\,
      Q => \^m00_axi_awaddr\(3),
      R => axi_awvalid1
    );
\axi_awaddr_reg[9]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_axi_awaddr_reg[9]_i_1\,
      CO(2) => \n_1_axi_awaddr_reg[9]_i_1\,
      CO(1) => \n_2_axi_awaddr_reg[9]_i_1\,
      CO(0) => \n_3_axi_awaddr_reg[9]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_axi_awaddr_reg[9]_i_1\,
      O(2) => \n_5_axi_awaddr_reg[9]_i_1\,
      O(1) => \n_6_axi_awaddr_reg[9]_i_1\,
      O(0) => \n_7_axi_awaddr_reg[9]_i_1\,
      S(3) => \n_0_axi_awaddr[9]_i_2\,
      S(2) => \n_0_axi_awaddr[9]_i_3\,
      S(1) => \n_0_axi_awaddr[9]_i_4\,
      S(0) => \n_0_axi_awaddr[9]_i_5\
    );
axi_awvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0544"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_write,
      I2 => m00_axi_awready,
      I3 => \^o3\,
      O => n_0_axi_awvalid_i_1
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_awvalid_i_1,
      Q => \^o3\,
      R => '0'
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => m00_axi_bvalid,
      I1 => \^m_axi_bready\,
      O => n_0_axi_bready_i_1
    );
axi_bready_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_bready_i_1,
      Q => \^m_axi_bready\,
      R => axi_awvalid1
    );
axi_rready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1454"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => \^o1\,
      I2 => m00_axi_rvalid,
      I3 => m00_axi_rlast,
      O => n_0_axi_rready_i_1
    );
axi_rready_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_rready_i_1,
      Q => \^o1\,
      R => '0'
    );
\axi_wdata[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(11),
      O => \n_0_axi_wdata[11]_i_2\
    );
\axi_wdata[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(10),
      O => \n_0_axi_wdata[11]_i_3\
    );
\axi_wdata[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(9),
      O => \n_0_axi_wdata[11]_i_4\
    );
\axi_wdata[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(8),
      O => \n_0_axi_wdata[11]_i_5\
    );
\axi_wdata[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(15),
      O => \n_0_axi_wdata[15]_i_2\
    );
\axi_wdata[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(14),
      O => \n_0_axi_wdata[15]_i_3\
    );
\axi_wdata[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(13),
      O => \n_0_axi_wdata[15]_i_4\
    );
\axi_wdata[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(12),
      O => \n_0_axi_wdata[15]_i_5\
    );
\axi_wdata[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(19),
      O => \n_0_axi_wdata[19]_i_2\
    );
\axi_wdata[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(18),
      O => \n_0_axi_wdata[19]_i_3\
    );
\axi_wdata[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(17),
      O => \n_0_axi_wdata[19]_i_4\
    );
\axi_wdata[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(16),
      O => \n_0_axi_wdata[19]_i_5\
    );
\axi_wdata[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(23),
      O => \n_0_axi_wdata[23]_i_2\
    );
\axi_wdata[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(22),
      O => \n_0_axi_wdata[23]_i_3\
    );
\axi_wdata[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(21),
      O => \n_0_axi_wdata[23]_i_4\
    );
\axi_wdata[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(20),
      O => \n_0_axi_wdata[23]_i_5\
    );
\axi_wdata[27]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(27),
      O => \n_0_axi_wdata[27]_i_2\
    );
\axi_wdata[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(26),
      O => \n_0_axi_wdata[27]_i_3\
    );
\axi_wdata[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(25),
      O => \n_0_axi_wdata[27]_i_4\
    );
\axi_wdata[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(24),
      O => \n_0_axi_wdata[27]_i_5\
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => m00_axi_wready,
      O => p_22_in
    );
\axi_wdata[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(31),
      O => \n_0_axi_wdata[31]_i_3\
    );
\axi_wdata[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(30),
      O => \n_0_axi_wdata[31]_i_4\
    );
\axi_wdata[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(29),
      O => \n_0_axi_wdata[31]_i_5\
    );
\axi_wdata[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(28),
      O => \n_0_axi_wdata[31]_i_6\
    );
\axi_wdata[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(3),
      O => \n_0_axi_wdata[3]_i_2\
    );
\axi_wdata[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(2),
      O => \n_0_axi_wdata[3]_i_3\
    );
\axi_wdata[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(1),
      O => \n_0_axi_wdata[3]_i_4\
    );
\axi_wdata[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^m00_axi_wdata\(0),
      O => \n_0_axi_wdata[3]_i_5\
    );
\axi_wdata[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(7),
      O => \n_0_axi_wdata[7]_i_2\
    );
\axi_wdata[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(6),
      O => \n_0_axi_wdata[7]_i_3\
    );
\axi_wdata[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(5),
      O => \n_0_axi_wdata[7]_i_4\
    );
\axi_wdata[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^m00_axi_wdata\(4),
      O => \n_0_axi_wdata[7]_i_5\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[3]_i_1\,
      Q => \^m00_axi_wdata\(0),
      S => axi_awvalid1
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[11]_i_1\,
      Q => \^m00_axi_wdata\(10),
      R => axi_awvalid1
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[11]_i_1\,
      Q => \^m00_axi_wdata\(11),
      R => axi_awvalid1
    );
\axi_wdata_reg[11]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[7]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[11]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[11]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[11]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[11]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[11]_i_1\,
      O(2) => \n_5_axi_wdata_reg[11]_i_1\,
      O(1) => \n_6_axi_wdata_reg[11]_i_1\,
      O(0) => \n_7_axi_wdata_reg[11]_i_1\,
      S(3) => \n_0_axi_wdata[11]_i_2\,
      S(2) => \n_0_axi_wdata[11]_i_3\,
      S(1) => \n_0_axi_wdata[11]_i_4\,
      S(0) => \n_0_axi_wdata[11]_i_5\
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[15]_i_1\,
      Q => \^m00_axi_wdata\(12),
      R => axi_awvalid1
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[15]_i_1\,
      Q => \^m00_axi_wdata\(13),
      R => axi_awvalid1
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[15]_i_1\,
      Q => \^m00_axi_wdata\(14),
      R => axi_awvalid1
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[15]_i_1\,
      Q => \^m00_axi_wdata\(15),
      R => axi_awvalid1
    );
\axi_wdata_reg[15]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[11]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[15]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[15]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[15]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[15]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[15]_i_1\,
      O(2) => \n_5_axi_wdata_reg[15]_i_1\,
      O(1) => \n_6_axi_wdata_reg[15]_i_1\,
      O(0) => \n_7_axi_wdata_reg[15]_i_1\,
      S(3) => \n_0_axi_wdata[15]_i_2\,
      S(2) => \n_0_axi_wdata[15]_i_3\,
      S(1) => \n_0_axi_wdata[15]_i_4\,
      S(0) => \n_0_axi_wdata[15]_i_5\
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[19]_i_1\,
      Q => \^m00_axi_wdata\(16),
      R => axi_awvalid1
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[19]_i_1\,
      Q => \^m00_axi_wdata\(17),
      R => axi_awvalid1
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[19]_i_1\,
      Q => \^m00_axi_wdata\(18),
      R => axi_awvalid1
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[19]_i_1\,
      Q => \^m00_axi_wdata\(19),
      R => axi_awvalid1
    );
\axi_wdata_reg[19]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[15]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[19]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[19]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[19]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[19]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[19]_i_1\,
      O(2) => \n_5_axi_wdata_reg[19]_i_1\,
      O(1) => \n_6_axi_wdata_reg[19]_i_1\,
      O(0) => \n_7_axi_wdata_reg[19]_i_1\,
      S(3) => \n_0_axi_wdata[19]_i_2\,
      S(2) => \n_0_axi_wdata[19]_i_3\,
      S(1) => \n_0_axi_wdata[19]_i_4\,
      S(0) => \n_0_axi_wdata[19]_i_5\
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[3]_i_1\,
      Q => \^m00_axi_wdata\(1),
      R => axi_awvalid1
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[23]_i_1\,
      Q => \^m00_axi_wdata\(20),
      R => axi_awvalid1
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[23]_i_1\,
      Q => \^m00_axi_wdata\(21),
      R => axi_awvalid1
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[23]_i_1\,
      Q => \^m00_axi_wdata\(22),
      R => axi_awvalid1
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[23]_i_1\,
      Q => \^m00_axi_wdata\(23),
      R => axi_awvalid1
    );
\axi_wdata_reg[23]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[19]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[23]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[23]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[23]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[23]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[23]_i_1\,
      O(2) => \n_5_axi_wdata_reg[23]_i_1\,
      O(1) => \n_6_axi_wdata_reg[23]_i_1\,
      O(0) => \n_7_axi_wdata_reg[23]_i_1\,
      S(3) => \n_0_axi_wdata[23]_i_2\,
      S(2) => \n_0_axi_wdata[23]_i_3\,
      S(1) => \n_0_axi_wdata[23]_i_4\,
      S(0) => \n_0_axi_wdata[23]_i_5\
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[27]_i_1\,
      Q => \^m00_axi_wdata\(24),
      R => axi_awvalid1
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[27]_i_1\,
      Q => \^m00_axi_wdata\(25),
      R => axi_awvalid1
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[27]_i_1\,
      Q => \^m00_axi_wdata\(26),
      R => axi_awvalid1
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[27]_i_1\,
      Q => \^m00_axi_wdata\(27),
      R => axi_awvalid1
    );
\axi_wdata_reg[27]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[23]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[27]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[27]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[27]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[27]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[27]_i_1\,
      O(2) => \n_5_axi_wdata_reg[27]_i_1\,
      O(1) => \n_6_axi_wdata_reg[27]_i_1\,
      O(0) => \n_7_axi_wdata_reg[27]_i_1\,
      S(3) => \n_0_axi_wdata[27]_i_2\,
      S(2) => \n_0_axi_wdata[27]_i_3\,
      S(1) => \n_0_axi_wdata[27]_i_4\,
      S(0) => \n_0_axi_wdata[27]_i_5\
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[31]_i_2\,
      Q => \^m00_axi_wdata\(28),
      R => axi_awvalid1
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[31]_i_2\,
      Q => \^m00_axi_wdata\(29),
      R => axi_awvalid1
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[3]_i_1\,
      Q => \^m00_axi_wdata\(2),
      R => axi_awvalid1
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[31]_i_2\,
      Q => \^m00_axi_wdata\(30),
      R => axi_awvalid1
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[31]_i_2\,
      Q => \^m00_axi_wdata\(31),
      R => axi_awvalid1
    );
\axi_wdata_reg[31]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[27]_i_1\,
      CO(3) => \NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \n_1_axi_wdata_reg[31]_i_2\,
      CO(1) => \n_2_axi_wdata_reg[31]_i_2\,
      CO(0) => \n_3_axi_wdata_reg[31]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[31]_i_2\,
      O(2) => \n_5_axi_wdata_reg[31]_i_2\,
      O(1) => \n_6_axi_wdata_reg[31]_i_2\,
      O(0) => \n_7_axi_wdata_reg[31]_i_2\,
      S(3) => \n_0_axi_wdata[31]_i_3\,
      S(2) => \n_0_axi_wdata[31]_i_4\,
      S(1) => \n_0_axi_wdata[31]_i_5\,
      S(0) => \n_0_axi_wdata[31]_i_6\
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[3]_i_1\,
      Q => \^m00_axi_wdata\(3),
      R => axi_awvalid1
    );
\axi_wdata_reg[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_axi_wdata_reg[3]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[3]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[3]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[3]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_axi_wdata_reg[3]_i_1\,
      O(2) => \n_5_axi_wdata_reg[3]_i_1\,
      O(1) => \n_6_axi_wdata_reg[3]_i_1\,
      O(0) => \n_7_axi_wdata_reg[3]_i_1\,
      S(3) => \n_0_axi_wdata[3]_i_2\,
      S(2) => \n_0_axi_wdata[3]_i_3\,
      S(1) => \n_0_axi_wdata[3]_i_4\,
      S(0) => \n_0_axi_wdata[3]_i_5\
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[7]_i_1\,
      Q => \^m00_axi_wdata\(4),
      R => axi_awvalid1
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[7]_i_1\,
      Q => \^m00_axi_wdata\(5),
      R => axi_awvalid1
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_5_axi_wdata_reg[7]_i_1\,
      Q => \^m00_axi_wdata\(6),
      R => axi_awvalid1
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_4_axi_wdata_reg[7]_i_1\,
      Q => \^m00_axi_wdata\(7),
      R => axi_awvalid1
    );
\axi_wdata_reg[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_axi_wdata_reg[3]_i_1\,
      CO(3) => \n_0_axi_wdata_reg[7]_i_1\,
      CO(2) => \n_1_axi_wdata_reg[7]_i_1\,
      CO(1) => \n_2_axi_wdata_reg[7]_i_1\,
      CO(0) => \n_3_axi_wdata_reg[7]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_axi_wdata_reg[7]_i_1\,
      O(2) => \n_5_axi_wdata_reg[7]_i_1\,
      O(1) => \n_6_axi_wdata_reg[7]_i_1\,
      O(0) => \n_7_axi_wdata_reg[7]_i_1\,
      S(3) => \n_0_axi_wdata[7]_i_2\,
      S(2) => \n_0_axi_wdata[7]_i_3\,
      S(1) => \n_0_axi_wdata[7]_i_4\,
      S(0) => \n_0_axi_wdata[7]_i_5\
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_7_axi_wdata_reg[11]_i_1\,
      Q => \^m00_axi_wdata\(8),
      R => axi_awvalid1
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_22_in,
      D => \n_6_axi_wdata_reg[11]_i_1\,
      Q => \^m00_axi_wdata\(9),
      R => axi_awvalid1
    );
axi_wlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => n_0_axi_wlast_i_2,
      I1 => m00_axi_wready,
      I2 => \^o4\,
      I3 => axi_awvalid1,
      I4 => \^m00_axi_wlast\,
      O => n_0_axi_wlast_i_1
    );
axi_wlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => \write_index_reg__0\(0),
      I1 => \write_index_reg__0\(1),
      I2 => \write_index_reg__0\(2),
      I3 => \write_index_reg__0\(4),
      I4 => \write_index_reg__0\(3),
      O => n_0_axi_wlast_i_2
    );
axi_wlast_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_wlast_i_1,
      Q => \^m00_axi_wlast\,
      R => '0'
    );
axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05445544"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_write,
      I2 => \^m00_axi_wlast\,
      I3 => \^o4\,
      I4 => m00_axi_wready,
      O => n_0_axi_wvalid_i_1
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_axi_wvalid_i_1,
      Q => \^o4\,
      R => '0'
    );
burst_read_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555155555550000"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => \^o1\,
      I2 => m00_axi_rvalid,
      I3 => m00_axi_rlast,
      I4 => start_single_burst_read,
      I5 => n_0_burst_read_active_reg,
      O => n_0_burst_read_active_i_1
    );
burst_read_active_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_burst_read_active_i_1,
      Q => n_0_burst_read_active_reg,
      R => '0'
    );
burst_write_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45554444"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_write,
      I2 => m00_axi_bvalid,
      I3 => \^m_axi_bready\,
      I4 => n_0_burst_write_active_reg,
      O => n_0_burst_write_active_i_1
    );
burst_write_active_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_burst_write_active_i_1,
      Q => n_0_burst_write_active_reg,
      R => '0'
    );
compare_done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => m00_axi_aresetn,
      O => n_0_compare_done_i_1
    );
compare_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBF000"
    )
    port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      I4 => \^m00_axi_txn_done\,
      O => n_0_compare_done_i_2
    );
compare_done_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_compare_done_i_2,
      Q => \^m00_axi_txn_done\,
      R => n_0_compare_done_i_1
    );
error_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
    port map (
      I0 => n_0_error_reg_i_2,
      I1 => m00_axi_bresp(0),
      I2 => m00_axi_rresp(0),
      I3 => p_15_in,
      I4 => read_mismatch,
      I5 => \^error_reg\,
      O => n_0_error_reg_i_1
    );
error_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^m_axi_bready\,
      I1 => m00_axi_bvalid,
      O => n_0_error_reg_i_2
    );
error_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_error_reg_i_1,
      Q => \^error_reg\,
      R => axi_awvalid1
    );
\expected_rdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m00_axi_rvalid,
      I1 => \^o1\,
      O => p_15_in
    );
\expected_rdata[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(3),
      O => \n_0_expected_rdata[0]_i_3\
    );
\expected_rdata[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(2),
      O => \n_0_expected_rdata[0]_i_4\
    );
\expected_rdata[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(1),
      O => \n_0_expected_rdata[0]_i_5\
    );
\expected_rdata[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => expected_rdata_reg(0),
      O => \n_0_expected_rdata[0]_i_6\
    );
\expected_rdata[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(15),
      O => \n_0_expected_rdata[12]_i_2\
    );
\expected_rdata[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(14),
      O => \n_0_expected_rdata[12]_i_3\
    );
\expected_rdata[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(13),
      O => \n_0_expected_rdata[12]_i_4\
    );
\expected_rdata[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(12),
      O => \n_0_expected_rdata[12]_i_5\
    );
\expected_rdata[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(19),
      O => \n_0_expected_rdata[16]_i_2\
    );
\expected_rdata[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(18),
      O => \n_0_expected_rdata[16]_i_3\
    );
\expected_rdata[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(17),
      O => \n_0_expected_rdata[16]_i_4\
    );
\expected_rdata[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(16),
      O => \n_0_expected_rdata[16]_i_5\
    );
\expected_rdata[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(23),
      O => \n_0_expected_rdata[20]_i_2\
    );
\expected_rdata[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(22),
      O => \n_0_expected_rdata[20]_i_3\
    );
\expected_rdata[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(21),
      O => \n_0_expected_rdata[20]_i_4\
    );
\expected_rdata[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(20),
      O => \n_0_expected_rdata[20]_i_5\
    );
\expected_rdata[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(27),
      O => \n_0_expected_rdata[24]_i_2\
    );
\expected_rdata[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(26),
      O => \n_0_expected_rdata[24]_i_3\
    );
\expected_rdata[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(25),
      O => \n_0_expected_rdata[24]_i_4\
    );
\expected_rdata[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(24),
      O => \n_0_expected_rdata[24]_i_5\
    );
\expected_rdata[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(31),
      O => \n_0_expected_rdata[28]_i_2\
    );
\expected_rdata[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(30),
      O => \n_0_expected_rdata[28]_i_3\
    );
\expected_rdata[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(29),
      O => \n_0_expected_rdata[28]_i_4\
    );
\expected_rdata[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(28),
      O => \n_0_expected_rdata[28]_i_5\
    );
\expected_rdata[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(7),
      O => \n_0_expected_rdata[4]_i_2\
    );
\expected_rdata[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(6),
      O => \n_0_expected_rdata[4]_i_3\
    );
\expected_rdata[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(5),
      O => \n_0_expected_rdata[4]_i_4\
    );
\expected_rdata[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(4),
      O => \n_0_expected_rdata[4]_i_5\
    );
\expected_rdata[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(11),
      O => \n_0_expected_rdata[8]_i_2\
    );
\expected_rdata[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(10),
      O => \n_0_expected_rdata[8]_i_3\
    );
\expected_rdata[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(9),
      O => \n_0_expected_rdata[8]_i_4\
    );
\expected_rdata[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => expected_rdata_reg(8),
      O => \n_0_expected_rdata[8]_i_5\
    );
\expected_rdata_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[0]_i_2\,
      Q => expected_rdata_reg(0),
      S => axi_awvalid1
    );
\expected_rdata_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_expected_rdata_reg[0]_i_2\,
      CO(2) => \n_1_expected_rdata_reg[0]_i_2\,
      CO(1) => \n_2_expected_rdata_reg[0]_i_2\,
      CO(0) => \n_3_expected_rdata_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_expected_rdata_reg[0]_i_2\,
      O(2) => \n_5_expected_rdata_reg[0]_i_2\,
      O(1) => \n_6_expected_rdata_reg[0]_i_2\,
      O(0) => \n_7_expected_rdata_reg[0]_i_2\,
      S(3) => \n_0_expected_rdata[0]_i_3\,
      S(2) => \n_0_expected_rdata[0]_i_4\,
      S(1) => \n_0_expected_rdata[0]_i_5\,
      S(0) => \n_0_expected_rdata[0]_i_6\
    );
\expected_rdata_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[8]_i_1\,
      Q => expected_rdata_reg(10),
      R => axi_awvalid1
    );
\expected_rdata_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[8]_i_1\,
      Q => expected_rdata_reg(11),
      R => axi_awvalid1
    );
\expected_rdata_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[12]_i_1\,
      Q => expected_rdata_reg(12),
      R => axi_awvalid1
    );
\expected_rdata_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[8]_i_1\,
      CO(3) => \n_0_expected_rdata_reg[12]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[12]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[12]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[12]_i_1\,
      O(2) => \n_5_expected_rdata_reg[12]_i_1\,
      O(1) => \n_6_expected_rdata_reg[12]_i_1\,
      O(0) => \n_7_expected_rdata_reg[12]_i_1\,
      S(3) => \n_0_expected_rdata[12]_i_2\,
      S(2) => \n_0_expected_rdata[12]_i_3\,
      S(1) => \n_0_expected_rdata[12]_i_4\,
      S(0) => \n_0_expected_rdata[12]_i_5\
    );
\expected_rdata_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[12]_i_1\,
      Q => expected_rdata_reg(13),
      R => axi_awvalid1
    );
\expected_rdata_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[12]_i_1\,
      Q => expected_rdata_reg(14),
      R => axi_awvalid1
    );
\expected_rdata_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[12]_i_1\,
      Q => expected_rdata_reg(15),
      R => axi_awvalid1
    );
\expected_rdata_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[16]_i_1\,
      Q => expected_rdata_reg(16),
      R => axi_awvalid1
    );
\expected_rdata_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[12]_i_1\,
      CO(3) => \n_0_expected_rdata_reg[16]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[16]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[16]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[16]_i_1\,
      O(2) => \n_5_expected_rdata_reg[16]_i_1\,
      O(1) => \n_6_expected_rdata_reg[16]_i_1\,
      O(0) => \n_7_expected_rdata_reg[16]_i_1\,
      S(3) => \n_0_expected_rdata[16]_i_2\,
      S(2) => \n_0_expected_rdata[16]_i_3\,
      S(1) => \n_0_expected_rdata[16]_i_4\,
      S(0) => \n_0_expected_rdata[16]_i_5\
    );
\expected_rdata_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[16]_i_1\,
      Q => expected_rdata_reg(17),
      R => axi_awvalid1
    );
\expected_rdata_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[16]_i_1\,
      Q => expected_rdata_reg(18),
      R => axi_awvalid1
    );
\expected_rdata_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[16]_i_1\,
      Q => expected_rdata_reg(19),
      R => axi_awvalid1
    );
\expected_rdata_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[0]_i_2\,
      Q => expected_rdata_reg(1),
      R => axi_awvalid1
    );
\expected_rdata_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[20]_i_1\,
      Q => expected_rdata_reg(20),
      R => axi_awvalid1
    );
\expected_rdata_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[16]_i_1\,
      CO(3) => \n_0_expected_rdata_reg[20]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[20]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[20]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[20]_i_1\,
      O(2) => \n_5_expected_rdata_reg[20]_i_1\,
      O(1) => \n_6_expected_rdata_reg[20]_i_1\,
      O(0) => \n_7_expected_rdata_reg[20]_i_1\,
      S(3) => \n_0_expected_rdata[20]_i_2\,
      S(2) => \n_0_expected_rdata[20]_i_3\,
      S(1) => \n_0_expected_rdata[20]_i_4\,
      S(0) => \n_0_expected_rdata[20]_i_5\
    );
\expected_rdata_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[20]_i_1\,
      Q => expected_rdata_reg(21),
      R => axi_awvalid1
    );
\expected_rdata_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[20]_i_1\,
      Q => expected_rdata_reg(22),
      R => axi_awvalid1
    );
\expected_rdata_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[20]_i_1\,
      Q => expected_rdata_reg(23),
      R => axi_awvalid1
    );
\expected_rdata_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[24]_i_1\,
      Q => expected_rdata_reg(24),
      R => axi_awvalid1
    );
\expected_rdata_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[20]_i_1\,
      CO(3) => \n_0_expected_rdata_reg[24]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[24]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[24]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[24]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[24]_i_1\,
      O(2) => \n_5_expected_rdata_reg[24]_i_1\,
      O(1) => \n_6_expected_rdata_reg[24]_i_1\,
      O(0) => \n_7_expected_rdata_reg[24]_i_1\,
      S(3) => \n_0_expected_rdata[24]_i_2\,
      S(2) => \n_0_expected_rdata[24]_i_3\,
      S(1) => \n_0_expected_rdata[24]_i_4\,
      S(0) => \n_0_expected_rdata[24]_i_5\
    );
\expected_rdata_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[24]_i_1\,
      Q => expected_rdata_reg(25),
      R => axi_awvalid1
    );
\expected_rdata_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[24]_i_1\,
      Q => expected_rdata_reg(26),
      R => axi_awvalid1
    );
\expected_rdata_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[24]_i_1\,
      Q => expected_rdata_reg(27),
      R => axi_awvalid1
    );
\expected_rdata_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[28]_i_1\,
      Q => expected_rdata_reg(28),
      R => axi_awvalid1
    );
\expected_rdata_reg[28]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[24]_i_1\,
      CO(3) => \NLW_expected_rdata_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_expected_rdata_reg[28]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[28]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[28]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[28]_i_1\,
      O(2) => \n_5_expected_rdata_reg[28]_i_1\,
      O(1) => \n_6_expected_rdata_reg[28]_i_1\,
      O(0) => \n_7_expected_rdata_reg[28]_i_1\,
      S(3) => \n_0_expected_rdata[28]_i_2\,
      S(2) => \n_0_expected_rdata[28]_i_3\,
      S(1) => \n_0_expected_rdata[28]_i_4\,
      S(0) => \n_0_expected_rdata[28]_i_5\
    );
\expected_rdata_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[28]_i_1\,
      Q => expected_rdata_reg(29),
      R => axi_awvalid1
    );
\expected_rdata_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[0]_i_2\,
      Q => expected_rdata_reg(2),
      R => axi_awvalid1
    );
\expected_rdata_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[28]_i_1\,
      Q => expected_rdata_reg(30),
      R => axi_awvalid1
    );
\expected_rdata_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[28]_i_1\,
      Q => expected_rdata_reg(31),
      R => axi_awvalid1
    );
\expected_rdata_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[0]_i_2\,
      Q => expected_rdata_reg(3),
      R => axi_awvalid1
    );
\expected_rdata_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[4]_i_1\,
      Q => expected_rdata_reg(4),
      R => axi_awvalid1
    );
\expected_rdata_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[0]_i_2\,
      CO(3) => \n_0_expected_rdata_reg[4]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[4]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[4]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[4]_i_1\,
      O(2) => \n_5_expected_rdata_reg[4]_i_1\,
      O(1) => \n_6_expected_rdata_reg[4]_i_1\,
      O(0) => \n_7_expected_rdata_reg[4]_i_1\,
      S(3) => \n_0_expected_rdata[4]_i_2\,
      S(2) => \n_0_expected_rdata[4]_i_3\,
      S(1) => \n_0_expected_rdata[4]_i_4\,
      S(0) => \n_0_expected_rdata[4]_i_5\
    );
\expected_rdata_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[4]_i_1\,
      Q => expected_rdata_reg(5),
      R => axi_awvalid1
    );
\expected_rdata_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_5_expected_rdata_reg[4]_i_1\,
      Q => expected_rdata_reg(6),
      R => axi_awvalid1
    );
\expected_rdata_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_4_expected_rdata_reg[4]_i_1\,
      Q => expected_rdata_reg(7),
      R => axi_awvalid1
    );
\expected_rdata_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_7_expected_rdata_reg[8]_i_1\,
      Q => expected_rdata_reg(8),
      R => axi_awvalid1
    );
\expected_rdata_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_expected_rdata_reg[4]_i_1\,
      CO(3) => \n_0_expected_rdata_reg[8]_i_1\,
      CO(2) => \n_1_expected_rdata_reg[8]_i_1\,
      CO(1) => \n_2_expected_rdata_reg[8]_i_1\,
      CO(0) => \n_3_expected_rdata_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_expected_rdata_reg[8]_i_1\,
      O(2) => \n_5_expected_rdata_reg[8]_i_1\,
      O(1) => \n_6_expected_rdata_reg[8]_i_1\,
      O(0) => \n_7_expected_rdata_reg[8]_i_1\,
      S(3) => \n_0_expected_rdata[8]_i_2\,
      S(2) => \n_0_expected_rdata[8]_i_3\,
      S(1) => \n_0_expected_rdata[8]_i_4\,
      S(0) => \n_0_expected_rdata[8]_i_5\
    );
\expected_rdata_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => p_15_in,
      D => \n_6_expected_rdata_reg[8]_i_1\,
      Q => expected_rdata_reg(9),
      R => axi_awvalid1
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2,
      R => n_0_compare_done_i_1
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => m00_axi_init_axi_txn,
      Q => init_txn_ff,
      R => n_0_compare_done_i_1
    );
\m00_axi_araddr[29]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_m00_axi_araddr[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_m00_axi_araddr[29]_INST_0\,
      CO(0) => \n_3_m00_axi_araddr[29]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => axi_araddr_reg(30),
      DI(0) => '0',
      O(3) => \NLW_m00_axi_araddr[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => \^m00_axi_araddr\(25 downto 23),
      S(3) => '0',
      S(2) => \n_0_m00_axi_araddr[29]_INST_0_i_1\,
      S(1) => \n_0_m00_axi_araddr[29]_INST_0_i_2\,
      S(0) => \n_0_m00_axi_araddr[29]_INST_0_i_3\
    );
\m00_axi_araddr[29]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_araddr_reg(31),
      O => \n_0_m00_axi_araddr[29]_INST_0_i_1\
    );
\m00_axi_araddr[29]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => axi_araddr_reg(30),
      O => \n_0_m00_axi_araddr[29]_INST_0_i_2\
    );
\m00_axi_araddr[29]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_araddr_reg(29),
      O => \n_0_m00_axi_araddr[29]_INST_0_i_3\
    );
\m00_axi_awaddr[29]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_m00_axi_awaddr[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_m00_axi_awaddr[29]_INST_0\,
      CO(0) => \n_3_m00_axi_awaddr[29]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => axi_awaddr_reg(30),
      DI(0) => '0',
      O(3) => \NLW_m00_axi_awaddr[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => \^m00_axi_awaddr\(25 downto 23),
      S(3) => '0',
      S(2) => \n_0_m00_axi_awaddr[29]_INST_0_i_1\,
      S(1) => \n_0_m00_axi_awaddr[29]_INST_0_i_2\,
      S(0) => \n_0_m00_axi_awaddr[29]_INST_0_i_3\
    );
\m00_axi_awaddr[29]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_awaddr_reg(31),
      O => \n_0_m00_axi_awaddr[29]_INST_0_i_1\
    );
\m00_axi_awaddr[29]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => axi_awaddr_reg(30),
      O => \n_0_m00_axi_awaddr[29]_INST_0_i_2\
    );
\m00_axi_awaddr[29]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => axi_awaddr_reg(29),
      O => \n_0_m00_axi_awaddr[29]_INST_0_i_3\
    );
\mst_exec_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0F2200000F22"
    )
    port map (
      I0 => init_txn_ff,
      I1 => init_txn_ff2,
      I2 => writes_done,
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      I5 => reads_done,
      O => \n_0_mst_exec_state[0]_i_1\
    );
\mst_exec_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
    port map (
      I0 => writes_done,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => \n_0_mst_exec_state[1]_i_1\
    );
\mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \n_0_mst_exec_state[0]_i_1\,
      Q => mst_exec_state(0),
      R => n_0_compare_done_i_1
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \n_0_mst_exec_state[1]_i_1\,
      Q => mst_exec_state(1),
      R => n_0_compare_done_i_1
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_read_burst_counter_reg[0]\,
      O => \p_0_in__0\(0)
    );
\read_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_read_burst_counter_reg[0]\,
      I1 => \n_0_read_burst_counter_reg[1]\,
      O => \p_0_in__0\(1)
    );
\read_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_read_burst_counter_reg[1]\,
      I1 => \n_0_read_burst_counter_reg[0]\,
      I2 => \n_0_read_burst_counter_reg[2]\,
      O => \p_0_in__0\(2)
    );
\read_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_read_burst_counter_reg[2]\,
      I1 => \n_0_read_burst_counter_reg[0]\,
      I2 => \n_0_read_burst_counter_reg[1]\,
      I3 => \n_0_read_burst_counter_reg[3]\,
      O => \p_0_in__0\(3)
    );
\read_burst_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => m00_axi_arready,
      I1 => \^o2\,
      I2 => p_0_in6_in,
      O => \n_0_read_burst_counter[4]_i_1\
    );
\read_burst_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_read_burst_counter_reg[3]\,
      I1 => \n_0_read_burst_counter_reg[1]\,
      I2 => \n_0_read_burst_counter_reg[0]\,
      I3 => \n_0_read_burst_counter_reg[2]\,
      I4 => p_0_in6_in,
      O => \p_0_in__0\(4)
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_read_burst_counter[4]_i_1\,
      D => \p_0_in__0\(0),
      Q => \n_0_read_burst_counter_reg[0]\,
      R => axi_awvalid1
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_read_burst_counter[4]_i_1\,
      D => \p_0_in__0\(1),
      Q => \n_0_read_burst_counter_reg[1]\,
      R => axi_awvalid1
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_read_burst_counter[4]_i_1\,
      D => \p_0_in__0\(2),
      Q => \n_0_read_burst_counter_reg[2]\,
      R => axi_awvalid1
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_read_burst_counter[4]_i_1\,
      D => \p_0_in__0\(3),
      Q => \n_0_read_burst_counter_reg[3]\,
      R => axi_awvalid1
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_read_burst_counter[4]_i_1\,
      D => \p_0_in__0\(4),
      Q => p_0_in6_in,
      R => axi_awvalid1
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \read_index_reg__0\(0),
      O => p_0_in(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \read_index_reg__0\(0),
      I1 => \read_index_reg__0\(1),
      O => p_0_in(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \read_index_reg__0\(1),
      I1 => \read_index_reg__0\(0),
      I2 => \read_index_reg__0\(2),
      O => p_0_in(2)
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \read_index_reg__0\(2),
      I1 => \read_index_reg__0\(0),
      I2 => \read_index_reg__0\(1),
      I3 => \read_index_reg__0\(3),
      O => p_0_in(3)
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_read,
      O => \n_0_read_index[4]_i_1\
    );
\read_index[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
    port map (
      I0 => \read_index_reg__0\(4),
      I1 => \read_index_reg__0\(2),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(1),
      I4 => \read_index_reg__0\(3),
      I5 => p_15_in,
      O => read_index0
    );
\read_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \read_index_reg__0\(4),
      I1 => \read_index_reg__0\(2),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(1),
      I4 => \read_index_reg__0\(3),
      O => p_0_in(4)
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => read_index0,
      D => p_0_in(0),
      Q => \read_index_reg__0\(0),
      R => \n_0_read_index[4]_i_1\
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => read_index0,
      D => p_0_in(1),
      Q => \read_index_reg__0\(1),
      R => \n_0_read_index[4]_i_1\
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => read_index0,
      D => p_0_in(2),
      Q => \read_index_reg__0\(2),
      R => \n_0_read_index[4]_i_1\
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => read_index0,
      D => p_0_in(3),
      Q => \read_index_reg__0\(3),
      R => \n_0_read_index[4]_i_1\
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => read_index0,
      D => p_0_in(4),
      Q => \read_index_reg__0\(4),
      R => \n_0_read_index[4]_i_1\
    );
read_mismatch_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^o1\,
      I1 => m00_axi_rvalid,
      I2 => read_mismatch1,
      O => read_mismatch0
    );
read_mismatch_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(17),
      I1 => m00_axi_rdata(17),
      I2 => expected_rdata_reg(16),
      I3 => m00_axi_rdata(16),
      I4 => m00_axi_rdata(15),
      I5 => expected_rdata_reg(15),
      O => n_0_read_mismatch_i_10
    );
read_mismatch_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(14),
      I1 => m00_axi_rdata(14),
      I2 => expected_rdata_reg(13),
      I3 => m00_axi_rdata(13),
      I4 => m00_axi_rdata(12),
      I5 => expected_rdata_reg(12),
      O => n_0_read_mismatch_i_11
    );
read_mismatch_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(11),
      I1 => m00_axi_rdata(11),
      I2 => expected_rdata_reg(10),
      I3 => m00_axi_rdata(10),
      I4 => m00_axi_rdata(9),
      I5 => expected_rdata_reg(9),
      O => n_0_read_mismatch_i_12
    );
read_mismatch_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(8),
      I1 => m00_axi_rdata(8),
      I2 => expected_rdata_reg(7),
      I3 => m00_axi_rdata(7),
      I4 => m00_axi_rdata(6),
      I5 => expected_rdata_reg(6),
      O => n_0_read_mismatch_i_13
    );
read_mismatch_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(5),
      I1 => m00_axi_rdata(5),
      I2 => expected_rdata_reg(4),
      I3 => m00_axi_rdata(4),
      I4 => m00_axi_rdata(3),
      I5 => expected_rdata_reg(3),
      O => n_0_read_mismatch_i_14
    );
read_mismatch_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(2),
      I1 => m00_axi_rdata(2),
      I2 => expected_rdata_reg(1),
      I3 => m00_axi_rdata(1),
      I4 => m00_axi_rdata(0),
      I5 => expected_rdata_reg(0),
      O => n_0_read_mismatch_i_15
    );
read_mismatch_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => expected_rdata_reg(31),
      I1 => m00_axi_rdata(31),
      I2 => expected_rdata_reg(30),
      I3 => m00_axi_rdata(30),
      O => n_0_read_mismatch_i_4
    );
read_mismatch_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(29),
      I1 => m00_axi_rdata(29),
      I2 => expected_rdata_reg(28),
      I3 => m00_axi_rdata(28),
      I4 => m00_axi_rdata(27),
      I5 => expected_rdata_reg(27),
      O => n_0_read_mismatch_i_5
    );
read_mismatch_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(26),
      I1 => m00_axi_rdata(26),
      I2 => expected_rdata_reg(25),
      I3 => m00_axi_rdata(25),
      I4 => m00_axi_rdata(24),
      I5 => expected_rdata_reg(24),
      O => n_0_read_mismatch_i_6
    );
read_mismatch_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(23),
      I1 => m00_axi_rdata(23),
      I2 => expected_rdata_reg(22),
      I3 => m00_axi_rdata(22),
      I4 => m00_axi_rdata(21),
      I5 => expected_rdata_reg(21),
      O => n_0_read_mismatch_i_8
    );
read_mismatch_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => expected_rdata_reg(20),
      I1 => m00_axi_rdata(20),
      I2 => expected_rdata_reg(19),
      I3 => m00_axi_rdata(19),
      I4 => m00_axi_rdata(18),
      I5 => expected_rdata_reg(18),
      O => n_0_read_mismatch_i_9
    );
read_mismatch_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => read_mismatch0,
      Q => read_mismatch,
      R => axi_awvalid1
    );
read_mismatch_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_read_mismatch_reg_i_3,
      CO(3) => NLW_read_mismatch_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => read_mismatch1,
      CO(1) => n_2_read_mismatch_reg_i_2,
      CO(0) => n_3_read_mismatch_reg_i_2,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_read_mismatch_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => n_0_read_mismatch_i_4,
      S(1) => n_0_read_mismatch_i_5,
      S(0) => n_0_read_mismatch_i_6
    );
read_mismatch_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_read_mismatch_reg_i_7,
      CO(3) => n_0_read_mismatch_reg_i_3,
      CO(2) => n_1_read_mismatch_reg_i_3,
      CO(1) => n_2_read_mismatch_reg_i_3,
      CO(0) => n_3_read_mismatch_reg_i_3,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_read_mismatch_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_read_mismatch_i_8,
      S(2) => n_0_read_mismatch_i_9,
      S(1) => n_0_read_mismatch_i_10,
      S(0) => n_0_read_mismatch_i_11
    );
read_mismatch_reg_i_7: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_read_mismatch_reg_i_7,
      CO(2) => n_1_read_mismatch_reg_i_7,
      CO(1) => n_2_read_mismatch_reg_i_7,
      CO(0) => n_3_read_mismatch_reg_i_7,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_read_mismatch_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_read_mismatch_i_12,
      S(2) => n_0_read_mismatch_i_13,
      S(1) => n_0_read_mismatch_i_14,
      S(0) => n_0_read_mismatch_i_15
    );
reads_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      I0 => n_0_reads_done_i_2,
      I1 => \^o1\,
      I2 => m00_axi_rvalid,
      I3 => p_0_in6_in,
      I4 => reads_done,
      O => n_0_reads_done_i_1
    );
reads_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => \read_index_reg__0\(3),
      I1 => \read_index_reg__0\(1),
      I2 => \read_index_reg__0\(0),
      I3 => \read_index_reg__0\(2),
      I4 => \read_index_reg__0\(4),
      O => n_0_reads_done_i_2
    );
reads_done_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_reads_done_i_1,
      Q => reads_done,
      R => axi_awvalid1
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FF00000100"
    )
    port map (
      I0 => \^o2\,
      I1 => n_0_burst_read_active_reg,
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      I4 => reads_done,
      I5 => start_single_burst_read,
      O => n_0_start_single_burst_read_i_1
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_start_single_burst_read_i_1,
      Q => start_single_burst_read,
      R => n_0_compare_done_i_1
    );
start_single_burst_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FF00000100"
    )
    port map (
      I0 => \^o3\,
      I1 => n_0_burst_write_active_reg,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      I4 => writes_done,
      I5 => start_single_burst_write,
      O => n_0_start_single_burst_write_i_1
    );
start_single_burst_write_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_start_single_burst_write_i_1,
      Q => start_single_burst_write,
      R => n_0_compare_done_i_1
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_write_burst_counter_reg[0]\,
      O => \p_0_in__1\(0)
    );
\write_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_write_burst_counter_reg[0]\,
      I1 => \n_0_write_burst_counter_reg[1]\,
      O => \p_0_in__1\(1)
    );
\write_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_write_burst_counter_reg[1]\,
      I1 => \n_0_write_burst_counter_reg[0]\,
      I2 => \n_0_write_burst_counter_reg[2]\,
      O => \p_0_in__1\(2)
    );
\write_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_write_burst_counter_reg[2]\,
      I1 => \n_0_write_burst_counter_reg[0]\,
      I2 => \n_0_write_burst_counter_reg[1]\,
      I3 => \n_0_write_burst_counter_reg[3]\,
      O => \p_0_in__1\(3)
    );
\write_burst_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => m00_axi_awready,
      I1 => \^o3\,
      I2 => p_0_in9_in,
      O => \n_0_write_burst_counter[4]_i_1\
    );
\write_burst_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_write_burst_counter_reg[3]\,
      I1 => \n_0_write_burst_counter_reg[1]\,
      I2 => \n_0_write_burst_counter_reg[0]\,
      I3 => \n_0_write_burst_counter_reg[2]\,
      I4 => p_0_in9_in,
      O => \p_0_in__1\(4)
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_write_burst_counter[4]_i_1\,
      D => \p_0_in__1\(0),
      Q => \n_0_write_burst_counter_reg[0]\,
      R => axi_awvalid1
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_write_burst_counter[4]_i_1\,
      D => \p_0_in__1\(1),
      Q => \n_0_write_burst_counter_reg[1]\,
      R => axi_awvalid1
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_write_burst_counter[4]_i_1\,
      D => \p_0_in__1\(2),
      Q => \n_0_write_burst_counter_reg[2]\,
      R => axi_awvalid1
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_write_burst_counter[4]_i_1\,
      D => \p_0_in__1\(3),
      Q => \n_0_write_burst_counter_reg[3]\,
      R => axi_awvalid1
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => \n_0_write_burst_counter[4]_i_1\,
      D => \p_0_in__1\(4),
      Q => p_0_in9_in,
      R => axi_awvalid1
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \write_index_reg__0\(0),
      O => \n_0_write_index[0]_i_1\
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \write_index_reg__0\(0),
      I1 => \write_index_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \write_index_reg__0\(1),
      I1 => \write_index_reg__0\(0),
      I2 => \write_index_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \write_index_reg__0\(2),
      I1 => \write_index_reg__0\(0),
      I2 => \write_index_reg__0\(1),
      I3 => \write_index_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => axi_awvalid1,
      I1 => start_single_burst_write,
      O => \n_0_write_index[4]_i_1\
    );
\write_index[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
    port map (
      I0 => \write_index_reg__0\(4),
      I1 => \write_index_reg__0\(2),
      I2 => \write_index_reg__0\(0),
      I3 => \write_index_reg__0\(1),
      I4 => \write_index_reg__0\(3),
      I5 => p_22_in,
      O => write_index0
    );
\write_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \write_index_reg__0\(4),
      I1 => \write_index_reg__0\(2),
      I2 => \write_index_reg__0\(0),
      I3 => \write_index_reg__0\(1),
      I4 => \write_index_reg__0\(3),
      O => \p_0_in__2\(4)
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => write_index0,
      D => \n_0_write_index[0]_i_1\,
      Q => \write_index_reg__0\(0),
      R => \n_0_write_index[4]_i_1\
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => write_index0,
      D => \p_0_in__2\(1),
      Q => \write_index_reg__0\(1),
      R => \n_0_write_index[4]_i_1\
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => write_index0,
      D => \p_0_in__2\(2),
      Q => \write_index_reg__0\(2),
      R => \n_0_write_index[4]_i_1\
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => write_index0,
      D => \p_0_in__2\(3),
      Q => \write_index_reg__0\(3),
      R => \n_0_write_index[4]_i_1\
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => write_index0,
      D => \p_0_in__2\(4),
      Q => \write_index_reg__0\(4),
      R => \n_0_write_index[4]_i_1\
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => p_0_in9_in,
      I1 => \^m_axi_bready\,
      I2 => m00_axi_bvalid,
      I3 => writes_done,
      O => n_0_writes_done_i_1
    );
writes_done_reg: unisim.vcomponents.FDRE
    port map (
      C => m00_axi_aclk,
      CE => '1',
      D => n_0_writes_done_i_1,
      Q => writes_done,
      R => axi_awvalid1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_FIFO_BRIDGE_axi_full_master_v1_0 is
  port (
    M_AXI_BREADY : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_FIFO_BRIDGE_axi_full_master_v1_0 : entity is "axi_full_master_v1_0";
end AXI_FIFO_BRIDGE_axi_full_master_v1_0;

architecture STRUCTURE of AXI_FIFO_BRIDGE_axi_full_master_v1_0 is
begin
axi_full_master_v1_0_M00_AXI_inst: entity work.AXI_FIFO_BRIDGE_axi_full_master_v1_0_M00_AXI
    port map (
      M_AXI_BREADY => M_AXI_BREADY,
      O1 => O1,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(25 downto 0) => m00_axi_araddr(25 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(25 downto 0) => m00_axi_awaddr(25 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_bresp(0) => m00_axi_bresp(0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rresp(0) => m00_axi_rresp(0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_FIFO_BRIDGE is
  port (
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_FIFO_BRIDGE : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AXI_FIFO_BRIDGE : entity is "axi_full_master_v1_0,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_FIFO_BRIDGE : entity is "AXI_FIFO_BRIDGE,axi_full_master_v1_0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of AXI_FIFO_BRIDGE : entity is "AXI_FIFO_BRIDGE,axi_full_master_v1_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_full_master,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M00_AXI_TARGET_SLAVE_BASE_ADDR=0x40000000,C_M00_AXI_BURST_LEN=16,C_M00_AXI_ID_WIDTH=1,C_M00_AXI_ADDR_WIDTH=32,C_M00_AXI_DATA_WIDTH=32,C_M00_AXI_AWUSER_WIDTH=1,C_M00_AXI_ARUSER_WIDTH=1,C_M00_AXI_WUSER_WIDTH=1,C_M00_AXI_RUSER_WIDTH=1,C_M00_AXI_BUSER_WIDTH=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AXI_FIFO_BRIDGE : entity is "yes";
end AXI_FIFO_BRIDGE;

architecture STRUCTURE of AXI_FIFO_BRIDGE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 6 );
begin
  m00_axi_araddr(31 downto 6) <= \^m00_axi_araddr\(31 downto 6);
  m00_axi_araddr(5) <= \<const0>\;
  m00_axi_araddr(4) <= \<const0>\;
  m00_axi_araddr(3) <= \<const0>\;
  m00_axi_araddr(2) <= \<const0>\;
  m00_axi_araddr(1) <= \<const0>\;
  m00_axi_araddr(0) <= \<const0>\;
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \<const1>\;
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const0>\;
  m00_axi_arid(0) <= \<const0>\;
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3) <= \<const1>\;
  m00_axi_arlen(2) <= \<const1>\;
  m00_axi_arlen(1) <= \<const1>\;
  m00_axi_arlen(0) <= \<const1>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const1>\;
  m00_axi_arsize(0) <= \<const0>\;
  m00_axi_awaddr(31 downto 6) <= \^m00_axi_awaddr\(31 downto 6);
  m00_axi_awaddr(5) <= \<const0>\;
  m00_axi_awaddr(4) <= \<const0>\;
  m00_axi_awaddr(3) <= \<const0>\;
  m00_axi_awaddr(2) <= \<const0>\;
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const0>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3) <= \<const1>\;
  m00_axi_awlen(2) <= \<const1>\;
  m00_axi_awlen(1) <= \<const1>\;
  m00_axi_awlen(0) <= \<const1>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \<const1>\;
  m00_axi_awsize(0) <= \<const0>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
inst: entity work.AXI_FIFO_BRIDGE_axi_full_master_v1_0
    port map (
      M_AXI_BREADY => m00_axi_bready,
      O1 => m00_axi_rready,
      O2 => m00_axi_arvalid,
      O3 => m00_axi_awvalid,
      O4 => m00_axi_wvalid,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(25 downto 0) => \^m00_axi_araddr\(31 downto 6),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(25 downto 0) => \^m00_axi_awaddr\(31 downto 6),
      m00_axi_awready => m00_axi_awready,
      m00_axi_bresp(0) => m00_axi_bresp(1),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rresp(0) => m00_axi_rresp(1),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready
    );
end STRUCTURE;
