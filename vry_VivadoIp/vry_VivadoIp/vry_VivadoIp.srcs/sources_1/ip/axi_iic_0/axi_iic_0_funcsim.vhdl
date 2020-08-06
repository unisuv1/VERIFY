-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Thu Aug 06 17:22:25 2020
-- Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/UV/FPGA/VERIFY/vry_VivadoIp/vry_VivadoIp/vry_VivadoIp.srcs/sources_1/ip/axi_iic_0/axi_iic_0_funcsim.vhdl
-- Design      : axi_iic_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_SRL_FIFO is
  port (
    Rc_Data_Exists : out STD_LOGIC;
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_Empty : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    O6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_SRL_FIFO : entity is "SRL_FIFO";
end axi_iic_0_SRL_FIFO;

architecture STRUCTURE of axi_iic_0_SRL_FIFO is
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \^rc_data_exists\ : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair21";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair21";
begin
  Rc_Data_Exists <= \^rc_data_exists\;
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => D_0,
      Q => \^rc_addr\(0),
      R => I1
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D_0,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(0),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => I3,
      I1 => \^rc_addr\(0),
      I2 => \^rc_addr\(1),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(2),
      I5 => I4,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => Rc_fifo_wr_d,
      I1 => Rc_fifo_wr,
      I2 => \^rc_addr\(2),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(1),
      I5 => \^rc_addr\(0),
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \^rc_addr\(1),
      R => I1
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(1),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \^rc_addr\(2),
      R => I1
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(2),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \^rc_addr\(3),
      R => I1
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(3),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^rc_data_exists\,
      R => I1
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O6(0),
      Q => Rc_fifo_data(7)
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^rc_data_exists\,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_SRL_FIFO_0 is
  port (
    Tx_data_exists : out STD_LOGIC;
    Tx_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Tx_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    I9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_Empty : out STD_LOGIC;
    I13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_wr_d : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    I2 : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_SRL_FIFO_0 : entity is "SRL_FIFO";
end axi_iic_0_SRL_FIFO_0;

architecture STRUCTURE of axi_iic_0_SRL_FIFO_0 is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^tx_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^tx_data_exists\ : STD_LOGIC;
  signal \^tx_fifo_data\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair26";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair26";
begin
  Tx_addr(0 to 3) <= \^tx_addr\(0 to 3);
  Tx_data_exists <= \^tx_data_exists\;
  Tx_fifo_data(0 to 7) <= \^tx_fifo_data\(0 to 7);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => D,
      Q => \^tx_addr\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^tx_addr\(2),
      DI(1) => \^tx_addr\(1),
      DI(0) => \^tx_addr\(0),
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => I2,
      I1 => \^tx_addr\(0),
      I2 => \^tx_addr\(1),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(2),
      I5 => txFifoRd,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => Tx_fifo_wr_d,
      I1 => Tx_fifo_wr,
      I2 => \^tx_addr\(2),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(1),
      I5 => \^tx_addr\(0),
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \^tx_addr\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(1),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \^tx_addr\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(2),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \^tx_addr\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(3),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^tx_data_exists\,
      R => Tx_fifo_rst
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => buffer_Empty
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^tx_addr\(3),
      O => O2
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data\(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data\(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data\(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data\(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data\(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data\(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data\(7)
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \^tx_fifo_data\(7),
      I1 => sda_clean,
      I2 => shift_reg_ld,
      O => I13(0)
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^tx_data_exists\,
      O => O1
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => I9(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_SRL_FIFO__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_in : out STD_LOGIC;
    O3 : out STD_LOGIC;
    buffer_Empty : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    ctrl_fifo_wr_i : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I9 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \axi_iic_0_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \axi_iic_0_SRL_FIFO__parameterized0\ is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \n_0_Addr_Counters[0].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3__1\ : label is "soft_lutpair25";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_3__0\ : label is "soft_lutpair25";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  O1 <= \^o1\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => D,
      Q => \n_0_Addr_Counters[0].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \n_0_Addr_Counters[2].FDRE_I\,
      DI(1) => \n_0_Addr_Counters[1].FDRE_I\,
      DI(0) => \n_0_Addr_Counters[0].FDRE_I\,
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[0].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \n_0_Addr_Counters[0].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => \n_0_Addr_Counters[3].FDRE_I\,
      I4 => \n_0_Addr_Counters[2].FDRE_I\,
      I5 => txFifoRd,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \n_0_Addr_Counters[2].FDRE_I\,
      I2 => \n_0_Addr_Counters[3].FDRE_I\,
      I3 => \n_0_Addr_Counters[1].FDRE_I\,
      I4 => \n_0_Addr_Counters[0].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \n_0_Addr_Counters[1].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \n_0_Addr_Counters[2].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[2].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \n_0_Addr_Counters[3].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^o1\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[3].FDRE_I\,
      I3 => \n_0_Addr_Counters[2].FDRE_I\,
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => I2,
      Q => O2(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => I3,
      Q => dynamic_MSMS(1)
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => dynamic_MSMS(1),
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_data_exists,
      O => p_3_in
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => dynamic_MSMS(1),
      I1 => Q(0),
      I2 => Tx_data_exists,
      I3 => I9(0),
      O => O3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_address_decoder is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset2Bus_Error : out STD_LOGIC;
    O9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    I2 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I3 : in STD_LOGIC;
    I22 : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I26 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    I27 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_address_decoder : entity is "address_decoder";
end axi_iic_0_address_decoder;

architecture STRUCTURE of axi_iic_0_address_decoder is
  signal AXI_Bus2IP_CS : STD_LOGIC_VECTOR ( 0 to 2 );
  signal IIC2Bus_Data1 : STD_LOGIC;
  signal \Intr2Bus_DBus__0\ : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal n_0_Bus_RNW_reg_i_1 : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : STD_LOGIC;
  signal \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\ : STD_LOGIC;
  signal \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_8\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^reset2bus_error\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck2_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck2_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.Rc_fifo_rd_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \timing_param_thddat_i[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[7]_i_1\ : label is "soft_lutpair38";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O5 <= \^o5\;
  reset2Bus_Error <= \^reset2bus_error\;
AXI_IP2Bus_RdAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => I3,
      O => AXI_IP2Bus_RdAck20
    );
AXI_IP2Bus_WrAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => I3,
      O => O6
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I3,
      I1 => Q,
      I2 => \^o3\,
      O => n_0_Bus_RNW_reg_i_1
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Bus_RNW_reg_i_1,
      Q => \^o3\,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_16_in,
      I1 => \^o3\,
      O => O7
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => I2(4),
      I1 => I2(3),
      I2 => p_1_in,
      I3 => I2(2),
      I4 => I2(5),
      O => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\,
      Q => p_25_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => I2(2),
      I1 => I2(6),
      I2 => I2(3),
      I3 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I4 => I2(5),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\,
      Q => \^o1\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => I2(2),
      I4 => I2(5),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\,
      Q => p_17_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => I2(2),
      I1 => I2(6),
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => I2(3),
      I4 => I2(5),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\,
      Q => p_16_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(4),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(2),
      I4 => I2(5),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\,
      Q => p_15_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => I2(4),
      I4 => I2(5),
      I5 => I2(2),
      O => \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\,
      Q => p_14_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => I2(4),
      I3 => I2(2),
      I4 => I2(5),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\,
      Q => p_13_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(2),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(4),
      I4 => I2(5),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\,
      Q => p_12_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => I2(5),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(2),
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\,
      Q => p_11_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => I2(5),
      I4 => I2(2),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\,
      Q => p_10_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(4),
      I1 => I2(6),
      I2 => I2(5),
      I3 => I2(2),
      I4 => I2(3),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\,
      Q => p_9_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(4),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(5),
      I4 => I2(2),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\,
      Q => p_8_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => I2(4),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(2),
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => I2(5),
      O => \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\,
      Q => p_7_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => I2(4),
      I3 => I2(5),
      I4 => I2(2),
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\,
      Q => p_6_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(6),
      I2 => I2(5),
      I3 => I2(2),
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\,
      Q => p_5_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => I2(2),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(5),
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\,
      Q => p_4_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(2),
      I4 => I2(5),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\,
      Q => p_3_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => I2(2),
      I1 => I2(3),
      I2 => I2(6),
      I3 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I4 => I2(5),
      I5 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\,
      Q => p_2_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
    port map (
      I0 => AXI_IP2Bus_WrAck1,
      I1 => AXI_IP2Bus_WrAck2,
      I2 => I1(0),
      I3 => AXI_IP2Bus_RdAck1,
      I4 => AXI_IP2Bus_RdAck2,
      I5 => s_axi_aresetn,
      O => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(4),
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => I2(2),
      I4 => I2(5),
      I5 => I2(6),
      O => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\,
      Q => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => I2(5),
      I1 => I2(3),
      I2 => I2(2),
      I3 => p_1_in,
      I4 => I2(4),
      O => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\,
      Q => p_28_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => p_1_in,
      I1 => I2(4),
      I2 => I2(5),
      I3 => I2(3),
      I4 => I2(2),
      O => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\,
      Q => \^o2\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => p_9_in,
      I2 => \^o3\,
      I3 => gpo(0),
      O => O11
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => I2(6),
      I1 => I2(8),
      I2 => Q,
      I3 => I2(7),
      O => p_1_in
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_in,
      Q => AXI_Bus2IP_CS(0),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\,
      I1 => I2(4),
      I2 => I2(5),
      O => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => I2(3),
      I1 => I2(7),
      I2 => Q,
      I3 => I2(2),
      I4 => I2(6),
      I5 => I2(8),
      O => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\
    );
\MEM_DECODE_GEN[1].cs_out_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\,
      Q => AXI_Bus2IP_CS(1),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\MEM_DECODE_GEN[2].cs_out_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I2(8),
      I1 => Q,
      O => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => Q,
      D => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      Q => AXI_Bus2IP_CS(2),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_15_in,
      I1 => \^o3\,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_10_in,
      I1 => \^o3\,
      O => I13(0)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_14_in,
      I1 => \^o3\,
      O => I12(0)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o1\,
      I1 => \^o3\,
      O => E(0)
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030003AAAA0003"
    )
    port map (
      I0 => s_axi_wdata(2),
      I1 => I22,
      I2 => rxCntDone,
      I3 => I23,
      I4 => \^o1\,
      I5 => \^o3\,
      O => O9(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_25_in,
      I1 => \^o3\,
      O => O8(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_wdata(4),
      I1 => p_28_in,
      I2 => \^o3\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => O10
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
    port map (
      I0 => p_25_in,
      I1 => p_28_in,
      I2 => \^o3\,
      I3 => \^o2\,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o5\,
      I1 => sw_rst_cond_d1,
      O => O4
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => \^reset2bus_error\,
      I1 => I27(1),
      I2 => I27(0),
      I3 => s_axi_bresp(0),
      O => O12
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(31),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I4,
      I4 => I2(1),
      I5 => I2(0),
      O => D(0)
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => I26,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(0),
      O => \Intr2Bus_DBus__0\(31)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(30),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I5,
      I4 => I2(1),
      I5 => I2(0),
      O => D(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in17_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(1),
      O => \Intr2Bus_DBus__0\(30)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(29),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I6,
      I4 => I2(1),
      I5 => I2(0),
      O => D(2)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in14_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(2),
      O => \Intr2Bus_DBus__0\(29)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => p_25_in,
      I1 => \^o2\,
      I2 => p_28_in,
      I3 => \^o3\,
      I4 => ipif_glbl_irpt_enable_reg,
      O => D(8)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(28),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I7,
      I4 => I2(1),
      I5 => I2(0),
      O => D(3)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in11_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(3),
      O => \Intr2Bus_DBus__0\(28)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(27),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I8,
      I4 => I2(1),
      I5 => I2(0),
      O => D(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in8_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(4),
      O => \Intr2Bus_DBus__0\(27)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(26),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I9,
      I4 => I2(1),
      I5 => I2(0),
      O => D(5)
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in5_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(5),
      O => \Intr2Bus_DBus__0\(26)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(25),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I10,
      I4 => I2(1),
      I5 => I2(0),
      O => D(6)
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in2_in,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(6),
      O => \Intr2Bus_DBus__0\(25)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(24),
      I1 => I2(7),
      I2 => IIC2Bus_Data1,
      I3 => I11,
      I4 => I2(1),
      I5 => I2(0),
      O => D(7)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => I24,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => p_25_in,
      I4 => I25(7),
      O => \Intr2Bus_DBus__0\(24)
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_5\,
      I1 => \n_0_s_axi_rdata_i[7]_i_6\,
      I2 => \n_0_s_axi_rdata_i[7]_i_7\,
      I3 => \n_0_s_axi_rdata_i[7]_i_8\,
      O => IIC2Bus_Data1
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_7_in,
      I1 => p_3_in,
      I2 => \^o3\,
      I3 => p_4_in,
      I4 => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      I5 => p_2_in,
      O => \n_0_s_axi_rdata_i[7]_i_5\
    );
\s_axi_rdata_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
    port map (
      I0 => p_8_in,
      I1 => p_6_in,
      I2 => \^o3\,
      I3 => p_9_in,
      O => \n_0_s_axi_rdata_i[7]_i_6\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_10_in,
      I1 => p_13_in,
      I2 => \^o3\,
      I3 => p_14_in,
      I4 => p_11_in,
      I5 => p_12_in,
      O => \n_0_s_axi_rdata_i[7]_i_7\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_5_in,
      I1 => p_15_in,
      I2 => \^o3\,
      I3 => p_16_in,
      I4 => \^o1\,
      I5 => p_17_in,
      O => \n_0_s_axi_rdata_i[7]_i_8\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFDF00000000"
    )
    port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(3),
      I3 => s_axi_wdata(0),
      I4 => \^o3\,
      I5 => AXI_Bus2IP_CS(1),
      O => \^reset2bus_error\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
    port map (
      I0 => \^o3\,
      I1 => AXI_Bus2IP_CS(1),
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(0),
      O => \^o5\
    );
\timing_param_tbuf_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_4_in,
      I1 => \^o3\,
      O => I18(0)
    );
\timing_param_thddat_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      I1 => \^o3\,
      O => I21(0)
    );
\timing_param_thdsta_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_6_in,
      I1 => \^o3\,
      O => I16(0)
    );
\timing_param_thigh_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_3_in,
      I1 => \^o3\,
      O => I19(0)
    );
\timing_param_tlow_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_2_in,
      I1 => \^o3\,
      O => I20(0)
    );
\timing_param_tsudat_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_5_in,
      I1 => \^o3\,
      O => I17(0)
    );
\timing_param_tsusta_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_8_in,
      I1 => \^o3\,
      O => I14(0)
    );
\timing_param_tsusto_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_7_in,
      I1 => \^o3\,
      O => I15(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_cdc_sync is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_cdc_sync : entity is "cdc_sync";
end axi_iic_0_cdc_sync;

architecture STRUCTURE of axi_iic_0_cdc_sync is
  signal D : STD_LOGIC;
  signal \^sda_clean\ : STD_LOGIC;
  signal \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : STD_LOGIC;
  signal \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  Sda_clean <= \^sda_clean\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      Q => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      Q => \^sda_clean\,
      R => '0'
    );
detect_stop_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^sda_clean\,
      I1 => sda_rin_d1,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_cdc_sync_4 is
  port (
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_cdc_sync_4 : entity is "cdc_sync";
end axi_iic_0_cdc_sync_4;

architecture STRUCTURE of axi_iic_0_cdc_sync_4 is
  signal D : STD_LOGIC;
  signal \^scl_clean\ : STD_LOGIC;
  signal \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : STD_LOGIC;
  signal \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  Scl_clean <= \^scl_clean\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      Q => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\,
      Q => \^scl_clean\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^scl_clean\,
      I1 => scl_rin_d1,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_dynamic_master is
  port (
    callingReadAccess : out STD_LOGIC;
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    txak : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    rdCntrFrmTxFifo0 : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_18_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_dynamic_master : entity is "dynamic_master";
end axi_iic_0_dynamic_master;

architecture STRUCTURE of axi_iic_0_dynamic_master is
  signal ackDataState_d1 : STD_LOGIC;
  signal \^callingreadaccess\ : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal \^firstdynstartseen\ : STD_LOGIC;
  signal n_0_Cr_txModeSelect_clr_i_1 : STD_LOGIC;
  signal n_0_Cr_txModeSelect_set_i_1 : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_1\ : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_3\ : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_4\ : STD_LOGIC;
  signal \n_0_rdByteCntr[2]_i_2\ : STD_LOGIC;
  signal \n_0_rdByteCntr[3]_i_2\ : STD_LOGIC;
  signal n_0_rxCntDone_i_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cr_txModeSelect_clr_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdByteCntr[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair1";
begin
  callingReadAccess <= \^callingreadaccess\;
  firstDynStartSeen <= \^firstdynstartseen\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
Cr_txModeSelect_clr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => n_0_Cr_txModeSelect_clr_i_1
    );
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Cr_txModeSelect_clr_i_1,
      Q => cr_txModeSelect_clr,
      R => '0'
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => n_0_Cr_txModeSelect_set_i_1
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Cr_txModeSelect_set_i_1,
      Q => cr_txModeSelect_set,
      R => '0'
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
    port map (
      I0 => Q(1),
      I1 => earlyAckDataState,
      I2 => \rdByteCntr_reg__0\(0),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \^callingreadaccess\,
      I5 => n_0_rxCntDone_i_2,
      O => txak
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data(7),
      Q => \^callingreadaccess\,
      R => Tx_fifo_rst
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33303330AAAA3330"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => cr_txModeSelect_clr,
      I2 => cr_txModeSelect_set,
      I3 => Q(0),
      I4 => p_18_in,
      I5 => Bus_RNW_reg,
      O => D(0)
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^firstdynstartseen\,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFEAAAA"
    )
    port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \n_0_rdByteCntr[0]_i_3\,
      I4 => earlyAckDataState,
      I5 => earlyAckDataState_d1,
      O => \n_0_rdByteCntr[0]_i_1\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
    port map (
      I0 => Tx_fifo_data(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(1),
      I3 => \n_0_rdByteCntr[0]_i_4\,
      I4 => \rdByteCntr_reg__0\(0),
      O => p_0_in(7)
    );
\rdByteCntr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(1),
      I1 => \rdByteCntr_reg__0\(2),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(3),
      O => \n_0_rdByteCntr[0]_i_3\
    );
\rdByteCntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(3),
      I1 => \rdByteCntr_reg__0\(5),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(2),
      O => \n_0_rdByteCntr[0]_i_4\
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(1),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[0]_i_4\,
      I3 => \rdByteCntr_reg__0\(1),
      O => p_0_in(6)
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(2),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[2]_i_2\,
      I3 => \rdByteCntr_reg__0\(2),
      O => p_0_in(5)
    );
\rdByteCntr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(4),
      I1 => \rdByteCntr_reg__0\(6),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(3),
      O => \n_0_rdByteCntr[2]_i_2\
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(3),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[3]_i_2\,
      I3 => \rdByteCntr_reg__0\(3),
      O => p_0_in(4)
    );
\rdByteCntr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(5),
      I1 => \rdByteCntr_reg__0\(7),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(4),
      O => \n_0_rdByteCntr[3]_i_2\
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
    port map (
      I0 => Tx_fifo_data(4),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(6),
      I5 => \rdByteCntr_reg__0\(4),
      O => p_0_in(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
    port map (
      I0 => Tx_fifo_data(5),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(5),
      O => p_0_in(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(6),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      O => p_0_in(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
    port map (
      I0 => Tx_fifo_data(7),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      O => p_0_in(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(7),
      Q => \rdByteCntr_reg__0\(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(6),
      Q => \rdByteCntr_reg__0\(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(5),
      Q => \rdByteCntr_reg__0\(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(4),
      Q => \rdByteCntr_reg__0\(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(3),
      Q => \rdByteCntr_reg__0\(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(2),
      Q => \rdByteCntr_reg__0\(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(1),
      Q => \rdByteCntr_reg__0\(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(0),
      Q => \rdByteCntr_reg__0\(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
    port map (
      I0 => ackDataState_d1,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \^callingreadaccess\,
      I4 => n_0_rxCntDone_i_2,
      I5 => ackDataState,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(2),
      I1 => \rdByteCntr_reg__0\(1),
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(3),
      I5 => \rdByteCntr_reg__0\(4),
      O => n_0_rxCntDone_i_2
    );
rxCntDone_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_interrupt_control is
  port (
    O1 : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    p_1_in11_in : out STD_LOGIC;
    p_1_in8_in : out STD_LOGIC;
    p_1_in5_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    O2 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic2intc_irpt : out STD_LOGIC;
    I1 : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    p_27_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_interrupt_control : entity is "interrupt_control";
end axi_iic_0_interrupt_control;

architecture STRUCTURE of axi_iic_0_interrupt_control is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\ : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_1 : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_2 : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_3 : STD_LOGIC;
  signal \^p_1_in11_in\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in2_in\ : STD_LOGIC;
  signal \^p_1_in5_in\ : STD_LOGIC;
  signal \^p_1_in8_in\ : STD_LOGIC;
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in11_in <= \^p_1_in11_in\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in2_in <= \^p_1_in2_in\;
  p_1_in5_in <= \^p_1_in5_in\;
  p_1_in8_in <= \^p_1_in8_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(0),
      I4 => \^o1\,
      I5 => IIC2Bus_IntrEvent(0),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\,
      Q => \^o1\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(1),
      I4 => \^p_1_in17_in\,
      I5 => IIC2Bus_IntrEvent(1),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\,
      Q => \^p_1_in17_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(2),
      I4 => \^p_1_in14_in\,
      I5 => IIC2Bus_IntrEvent(2),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\,
      Q => \^p_1_in14_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(3),
      I4 => \^p_1_in11_in\,
      I5 => IIC2Bus_IntrEvent(3),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\,
      Q => \^p_1_in11_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(4),
      I4 => \^p_1_in8_in\,
      I5 => IIC2Bus_IntrEvent(4),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\,
      Q => \^p_1_in8_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(5),
      I4 => \^p_1_in5_in\,
      I5 => IIC2Bus_IntrEvent(5),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\,
      Q => \^p_1_in5_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(6),
      I4 => \^p_1_in2_in\,
      I5 => IIC2Bus_IntrEvent(6),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\,
      Q => \^p_1_in2_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(7),
      I4 => \^o2\,
      I5 => IIC2Bus_IntrEvent(7),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\,
      Q => \^o2\,
      R => I1
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => n_0_iic2intc_irpt_INST_0_i_1,
      I2 => n_0_iic2intc_irpt_INST_0_i_2,
      I3 => n_0_iic2intc_irpt_INST_0_i_3,
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => \^q\(3),
      I1 => \^p_1_in11_in\,
      I2 => \^p_1_in5_in\,
      I3 => \^q\(5),
      I4 => \^p_1_in8_in\,
      I5 => \^q\(4),
      O => n_0_iic2intc_irpt_INST_0_i_1
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => \^q\(6),
      I1 => \^p_1_in2_in\,
      I2 => \^o1\,
      I3 => \^q\(0),
      I4 => \^o2\,
      I5 => \^q\(7),
      O => n_0_iic2intc_irpt_INST_0_i_2
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^p_1_in14_in\,
      I2 => \^q\(1),
      I3 => \^p_1_in17_in\,
      O => n_0_iic2intc_irpt_INST_0_i_3
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => I1
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => I1
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => I1
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => I1
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => I1
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => I1
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => I1
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => I1
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => I1
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    ctrl_fifo_wr_i : out STD_LOGIC;
    O13 : out STD_LOGIC;
    txFifoRd : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    O27 : out STD_LOGIC;
    O28 : out STD_LOGIC;
    O29 : out STD_LOGIC;
    O30 : out STD_LOGIC;
    O31 : out STD_LOGIC;
    O32 : out STD_LOGIC;
    O33 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O36 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC;
    Aas : in STD_LOGIC;
    I6 : in STD_LOGIC;
    Rc_Data_Exists : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    buffer_Empty : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    I8 : in STD_LOGIC;
    buffer_Empty_0 : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    buffer_Empty_1 : in STD_LOGIC;
    I9 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dtre_d1 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    I11 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_reg_interface : entity is "reg_interface";
end axi_iic_0_reg_interface;

architecture STRUCTURE of axi_iic_0_reg_interface is
  signal Cr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^iic2bus_intrevent\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^msms_set\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o18\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^o19\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o24\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o8\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal \^ctrl_fifo_wr_i\ : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msms_d1 : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\ : STD_LOGIC;
  signal n_0_msms_set_i_i_1 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_17\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 7 );
  signal \^txfiford\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_12\ : label is "soft_lutpair23";
begin
  D(0) <= \^d\(0);
  IIC2Bus_IntrEvent(0 to 7) <= \^iic2bus_intrevent\(0 to 7);
  Msms_set <= \^msms_set\;
  O1(0) <= \^o1\(0);
  O18(6 downto 0) <= \^o18\(6 downto 0);
  O19(7 downto 0) <= \^o19\(7 downto 0);
  O24(7 downto 0) <= \^o24\(7 downto 0);
  O5(7 downto 0) <= \^o5\(7 downto 0);
  O8(7 downto 0) <= \^o8\(7 downto 0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  ctrl_fifo_wr_i <= \^ctrl_fifo_wr_i\;
  gpo(0) <= \^gpo\(0);
  txFifoRd <= \^txfiford\;
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => O9
    );
\Addr_Counters[0].MUXCY_L_I_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      O => O10
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      O => O11
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBBBF88888888"
    )
    port map (
      I0 => \^ctrl_fifo_wr_i\,
      I1 => buffer_Empty,
      I2 => rdCntrFrmTxFifo,
      I3 => \^tx_fifo_rd\,
      I4 => Tx_fifo_rd_d,
      I5 => I8,
      O => O12
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2020"
    )
    port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      I2 => buffer_Empty_0,
      I3 => \^txfiford\,
      I4 => Tx_data_exists,
      O => O13
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF20202020"
    )
    port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      I2 => buffer_Empty_1,
      I3 => Rc_fifo_rd_d,
      I4 => \^rc_fifo_rd\,
      I5 => Rc_Data_Exists,
      O => O14
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => Tx_fifo_wr_d,
      I1 => \^tx_fifo_wr\,
      I2 => \^tx_fifo_rst\,
      I3 => I1,
      O => \^ctrl_fifo_wr_i\
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Tx_fifo_rd_d,
      I1 => \^tx_fifo_rd\,
      I2 => rdCntrFrmTxFifo,
      O => \^txfiford\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^iic2bus_intrevent\(7),
      R => I1
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => I1
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr(6),
      Q => \^tx_fifo_rst\,
      S => I1
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I3,
      Q => \^tx_fifo_wr\,
      R => I1
    );
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_wdata(9),
      I1 => \^tx_fifo_rst\,
      I2 => I1,
      O => O3
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_wdata(8),
      I1 => \^tx_fifo_rst\,
      I2 => I1,
      O => O2
    );
\FSM_sequential_scl_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^q\(0),
      O => SR(0)
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I6,
      Q => \^gpo\(0),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22(4),
      Q => \^iic2bus_intrevent\(0),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22(3),
      Q => \^iic2bus_intrevent\(1),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22(2),
      Q => \^iic2bus_intrevent\(2),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \^iic2bus_intrevent\(3),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22(1),
      Q => \^iic2bus_intrevent\(4),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => \^iic2bus_intrevent\(5),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I22(0),
      Q => \^iic2bus_intrevent\(6),
      R => I1
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => I1
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I4,
      Q => \^rc_fifo_wr\,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I13(0),
      D => s_axi_wdata(3),
      Q => p_1_in6_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I13(0),
      D => s_axi_wdata(2),
      Q => p_1_in4_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I13(0),
      D => s_axi_wdata(1),
      Q => p_1_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I13(0),
      D => s_axi_wdata(0),
      Q => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      R => I1
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
    port map (
      I0 => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\,
      I1 => \^msms_set\,
      I2 => Rc_Data_Exists,
      I3 => I1,
      I4 => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\,
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p_1_in4_in,
      I1 => Rc_addr(2),
      I2 => p_1_in,
      I3 => Rc_addr(1),
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      I1 => Rc_addr(0),
      I2 => p_1_in6_in,
      I3 => Rc_addr(3),
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(7),
      Q => \^o18\(6),
      R => I1
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(6),
      Q => \^o18\(5),
      R => I1
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(5),
      Q => \^o18\(4),
      R => I1
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(4),
      Q => \^o18\(3),
      R => I1
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(3),
      Q => \^o18\(2),
      R => I1
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(2),
      Q => \^o18\(1),
      R => I1
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I12(0),
      D => s_axi_wdata(1),
      Q => \^o18\(0),
      R => I1
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => Cr(0),
      R => I1
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(5),
      R => I1
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I11(2),
      Q => \^q\(4),
      R => I1
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(3),
      R => I1
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I11(1),
      Q => \^q\(2),
      R => I1
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I11(0),
      Q => \^q\(1),
      R => I1
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => Cr(6),
      R => I1
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => I1
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => firstDynStartSeen,
      I1 => p_3_in,
      I2 => \^q\(1),
      I3 => \^tx_fifo_rst\,
      O => O32
    );
msms_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => msms_d1,
      R => I1
    );
msms_set_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3032003000220000"
    )
    port map (
      I0 => \^d\(0),
      I1 => I1,
      I2 => I9(1),
      I3 => \^q\(1),
      I4 => msms_d1,
      I5 => \^msms_set\,
      O => n_0_msms_set_i_i_1
    );
msms_set_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_set_i_i_1,
      Q => \^msms_set\,
      R => '0'
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => I1
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A200A00000"
    )
    port map (
      I0 => \^q\(0),
      I1 => dtre_d1,
      I2 => \^o1\(0),
      I3 => rsta_d1,
      I4 => \^q\(4),
      I5 => I10,
      O => O31
    );
\s_axi_rdata_i[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      I1 => I7(1),
      I2 => \^o8\(0),
      I3 => I7(2),
      I4 => \^q\(0),
      O => O15
    );
\s_axi_rdata_i[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => \^gpo\(0),
      I1 => I7(1),
      I2 => \^o5\(0),
      I3 => I7(2),
      I4 => sr_i(7),
      O => O16
    );
\s_axi_rdata_i[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => p_1_in,
      I1 => I7(1),
      I2 => \^o8\(1),
      I3 => I7(2),
      I4 => Cr(6),
      O => \n_0_s_axi_rdata_i[1]_i_12\
    );
\s_axi_rdata_i[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \^iic2bus_intrevent\(5),
      I1 => I7(2),
      I2 => \^o5\(1),
      I3 => I7(1),
      O => O4
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(0),
      I1 => I7(1),
      I2 => \^o19\(1),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[1]_i_12\,
      O => O17
    );
\s_axi_rdata_i[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => p_1_in4_in,
      I1 => I7(1),
      I2 => \^o8\(2),
      I3 => I7(2),
      I4 => \^q\(1),
      O => \n_0_s_axi_rdata_i[2]_i_12\
    );
\s_axi_rdata_i[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => sr_i(5),
      I1 => I7(2),
      I2 => \^o5\(2),
      I3 => I7(1),
      O => O6
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(1),
      I1 => I7(1),
      I2 => \^o19\(2),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[2]_i_12\,
      O => O20
    );
\s_axi_rdata_i[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => p_1_in6_in,
      I1 => I7(1),
      I2 => \^o8\(3),
      I3 => I7(2),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[3]_i_12\
    );
\s_axi_rdata_i[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => sr_i(4),
      I1 => I7(2),
      I2 => \^o5\(3),
      I3 => I7(1),
      O => O7
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(2),
      I1 => I7(1),
      I2 => \^o19\(3),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[3]_i_12\,
      O => O21
    );
\s_axi_rdata_i[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
    port map (
      I0 => \^o24\(4),
      I1 => I7(0),
      I2 => sr_i(3),
      I3 => I7(2),
      I4 => \^o5\(4),
      I5 => I7(1),
      O => O23
    );
\s_axi_rdata_i[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \^q\(3),
      I1 => I7(2),
      I2 => \^o8\(4),
      I3 => I7(1),
      O => \n_0_s_axi_rdata_i[4]_i_12\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(3),
      I1 => I7(1),
      I2 => \^o19\(4),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[4]_i_12\,
      O => O22
    );
\s_axi_rdata_i[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
    port map (
      I0 => \^o24\(5),
      I1 => I7(0),
      I2 => sr_i(2),
      I3 => I7(2),
      I4 => \^o5\(5),
      I5 => I7(1),
      O => O26
    );
\s_axi_rdata_i[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \^q\(4),
      I1 => I7(2),
      I2 => \^o8\(5),
      I3 => I7(1),
      O => \n_0_s_axi_rdata_i[5]_i_12\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(4),
      I1 => I7(1),
      I2 => \^o19\(5),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[5]_i_12\,
      O => O25
    );
\s_axi_rdata_i[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
    port map (
      I0 => \^o24\(6),
      I1 => I7(0),
      I2 => sr_i(1),
      I3 => I7(2),
      I4 => \^o5\(6),
      I5 => I7(1),
      O => O28
    );
\s_axi_rdata_i[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \^q\(5),
      I1 => I7(2),
      I2 => \^o8\(6),
      I3 => I7(1),
      O => \n_0_s_axi_rdata_i[6]_i_12\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(5),
      I1 => I7(1),
      I2 => \^o19\(6),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[6]_i_12\,
      O => O27
    );
\s_axi_rdata_i[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => \^o18\(6),
      I1 => I7(1),
      I2 => \^o19\(7),
      I3 => I7(2),
      I4 => I7(0),
      I5 => \n_0_s_axi_rdata_i[7]_i_17\,
      O => O29
    );
\s_axi_rdata_i[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
    port map (
      I0 => \^o24\(7),
      I1 => I7(0),
      I2 => \^o1\(0),
      I3 => I7(2),
      I4 => \^o5\(7),
      I5 => I7(1),
      O => O30
    );
\s_axi_rdata_i[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => Cr(0),
      I1 => I7(2),
      I2 => \^o8\(7),
      I3 => I7(1),
      O => \n_0_s_axi_rdata_i[7]_i_17\
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I5,
      Q => \^o1\(0),
      R => I1
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(5),
      Q => sr_i(1),
      R => I1
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(4),
      Q => sr_i(2),
      R => I1
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(3),
      Q => sr_i(3),
      R => I1
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(2),
      Q => sr_i(4),
      R => I1
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(1),
      Q => sr_i(5),
      R => I1
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I9(0),
      Q => sr_i(7),
      R => I1
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(0),
      Q => O35(0),
      S => I1
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(1),
      Q => O35(1),
      R => I1
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(2),
      Q => O35(2),
      S => I1
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(3),
      Q => O35(3),
      S => I1
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(4),
      Q => O35(4),
      S => I1
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(5),
      Q => O35(5),
      S => I1
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(6),
      Q => O35(6),
      S => I1
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(7),
      Q => O35(7),
      R => I1
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(0),
      Q => \^o5\(0),
      S => I1
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(1),
      Q => \^o5\(1),
      R => I1
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(2),
      Q => \^o5\(2),
      R => I1
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(3),
      Q => \^o5\(3),
      R => I1
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(4),
      Q => \^o5\(4),
      R => I1
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(5),
      Q => \^o5\(5),
      R => I1
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(6),
      Q => \^o5\(6),
      R => I1
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(7),
      Q => \^o5\(7),
      R => I1
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(0),
      Q => \^o19\(0),
      S => I1
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(1),
      Q => \^o19\(1),
      S => I1
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(2),
      Q => \^o19\(2),
      R => I1
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(3),
      Q => \^o19\(3),
      S => I1
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(4),
      Q => \^o19\(4),
      R => I1
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(5),
      Q => \^o19\(5),
      S => I1
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(6),
      Q => \^o19\(6),
      S => I1
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I16(0),
      D => s_axi_wdata(7),
      Q => \^o19\(7),
      R => I1
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(0),
      Q => O36(0),
      R => I1
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(1),
      Q => O36(1),
      S => I1
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(2),
      Q => O36(2),
      S => I1
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(3),
      Q => O36(3),
      R => I1
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(4),
      Q => O36(4),
      S => I1
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(5),
      Q => O36(5),
      S => I1
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(6),
      Q => O36(6),
      S => I1
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(7),
      Q => O36(7),
      R => I1
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(0),
      Q => \^o8\(0),
      R => I1
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(1),
      Q => \^o8\(1),
      S => I1
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(2),
      Q => \^o8\(2),
      S => I1
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(3),
      Q => \^o8\(3),
      R => I1
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(4),
      Q => \^o8\(4),
      S => I1
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(5),
      Q => \^o8\(5),
      S => I1
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(6),
      Q => \^o8\(6),
      S => I1
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(7),
      Q => \^o8\(7),
      R => I1
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(0),
      Q => \^o24\(0),
      S => I1
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(1),
      Q => \^o24\(1),
      R => I1
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(2),
      Q => \^o24\(2),
      S => I1
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(3),
      Q => \^o24\(3),
      S => I1
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(4),
      Q => \^o24\(4),
      R => I1
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(5),
      Q => \^o24\(5),
      R => I1
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(6),
      Q => \^o24\(6),
      R => I1
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(7),
      Q => \^o24\(7),
      R => I1
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(0),
      Q => O33(0),
      R => I1
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(1),
      Q => O33(1),
      S => I1
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(2),
      Q => O33(2),
      S => I1
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(3),
      Q => O33(3),
      S => I1
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(4),
      Q => O33(4),
      R => I1
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(5),
      Q => O33(5),
      R => I1
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(6),
      Q => O33(6),
      R => I1
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I14(0),
      D => s_axi_wdata(7),
      Q => O33(7),
      S => I1
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(0),
      Q => O34(0),
      S => I1
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(1),
      Q => O34(1),
      R => I1
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(2),
      Q => O34(2),
      S => I1
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(3),
      Q => O34(3),
      S => I1
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(4),
      Q => O34(4),
      S => I1
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(5),
      Q => O34(5),
      S => I1
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(6),
      Q => O34(6),
      S => I1
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I15(0),
      D => s_axi_wdata(7),
      Q => O34(7),
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_shift8 is
  port (
    O1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I2 : in STD_LOGIC;
    txak : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    I13 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_shift8 : entity is "shift8";
end axi_iic_0_shift8;

architecture STRUCTURE of axi_iic_0_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \n_0_data_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[7]_i_2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair11";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBA88BABB"
    )
    port map (
      I0 => \^q\(7),
      I1 => \out\(0),
      I2 => I2,
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => txak,
      O => O1
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(0),
      I1 => \^q\(0),
      I2 => I1,
      O => \n_0_data_int[1]_i_1\
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(1),
      I1 => \^q\(1),
      I2 => I1,
      O => \n_0_data_int[2]_i_1\
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(2),
      I1 => \^q\(2),
      I2 => I1,
      O => \n_0_data_int[3]_i_1\
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(3),
      I1 => \^q\(3),
      I2 => I1,
      O => \n_0_data_int[4]_i_1\
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(4),
      I1 => \^q\(4),
      I2 => I1,
      O => \n_0_data_int[5]_i_1\
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(5),
      I1 => \^q\(5),
      I2 => I1,
      O => \n_0_data_int[6]_i_1\
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I1,
      I1 => shift_reg_en,
      O => \n_0_data_int[7]_i_1\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(6),
      I1 => \^q\(6),
      I2 => I1,
      O => \n_0_data_int[7]_i_2\
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => I13(0),
      Q => \^q\(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[1]_i_1\,
      Q => \^q\(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[2]_i_1\,
      Q => \^q\(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[3]_i_1\,
      Q => \^q\(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[4]_i_1\,
      Q => \^q\(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[5]_i_1\,
      Q => \^q\(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[6]_i_1\,
      Q => \^q\(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[7]_i_2\,
      Q => \^q\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_shift8_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC;
    shift_reg_ld0 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I1 : in STD_LOGIC;
    master_slave : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txak : in STD_LOGIC;
    I2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    detect_start : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    sda_sample : in STD_LOGIC;
    I10 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    sda_clean : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_shift8_1 : entity is "shift8";
end axi_iic_0_shift8_1;

architecture STRUCTURE of axi_iic_0_shift8_1 is
  signal addr_match : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[4]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[5]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[5]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[6]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[6]_i_3\ : STD_LOGIC;
  signal n_0_abgc_i_i_2 : STD_LOGIC;
  signal n_0_abgc_i_i_3 : STD_LOGIC;
  signal \n_0_data_int_reg[0]\ : STD_LOGIC;
  signal n_0_shift_reg_ld_i_2 : STD_LOGIC;
  signal n_0_slave_sda_i_3 : STD_LOGIC;
  signal n_0_slave_sda_i_4 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_3\ : label is "soft_lutpair13";
begin
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[1]_i_2\,
      I1 => \out\(1),
      I2 => \out\(0),
      O => D(0)
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7430FF007400"
    )
    port map (
      I0 => detect_start,
      I1 => \out\(3),
      I2 => I8,
      I3 => \n_0_FSM_onehot_state[6]_i_3\,
      I4 => \out\(2),
      I5 => I9,
      O => \n_0_FSM_onehot_state[1]_i_2\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
    port map (
      I0 => I1,
      I1 => \out\(2),
      I2 => \n_0_FSM_onehot_state[4]_i_3\,
      I3 => \out\(1),
      I4 => \out\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001011110010"
    )
    port map (
      I0 => arb_lost,
      I1 => sda_sample,
      I2 => addr_match,
      I3 => \n_0_data_int_reg[0]\,
      I4 => master_slave,
      I5 => Q(1),
      O => \n_0_FSM_onehot_state[4]_i_3\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
    port map (
      I0 => arb_lost,
      I1 => sda_sample,
      I2 => I10,
      I3 => \n_0_FSM_onehot_state[5]_i_3\,
      I4 => \out\(2),
      I5 => \n_0_FSM_onehot_state[5]_i_4\,
      O => D(2)
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => \out\(6),
      I1 => \out\(4),
      I2 => \out\(3),
      I3 => \out\(5),
      I4 => \n_0_FSM_onehot_state[6]_i_3\,
      O => \n_0_FSM_onehot_state[5]_i_3\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
    port map (
      I0 => Q(1),
      I1 => master_slave,
      I2 => \n_0_data_int_reg[0]\,
      I3 => addr_match,
      O => \n_0_FSM_onehot_state[5]_i_4\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \n_0_FSM_onehot_state[6]_i_2\,
      O => D(3)
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F101010101010"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[6]_i_3\,
      I1 => detect_start,
      I2 => \out\(3),
      I3 => \out\(4),
      I4 => Ro_prev,
      I5 => \out\(5),
      O => \n_0_FSM_onehot_state[6]_i_2\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => addr_match,
      I1 => master_slave,
      O => \n_0_FSM_onehot_state[6]_i_3\
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
    port map (
      I0 => I7,
      I1 => \out\(2),
      I2 => Q(0),
      I3 => I6,
      I4 => addr_match,
      O => O3
    );
abgc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EA00"
    )
    port map (
      I0 => I4(0),
      I1 => n_0_abgc_i_i_2,
      I2 => n_0_abgc_i_i_3,
      I3 => Q(0),
      I4 => I6,
      I5 => detect_start,
      O => O2
    );
abgc_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \n_0_data_int_reg[0]\,
      I1 => Q(2),
      I2 => p_1_in(0),
      I3 => p_1_in(6),
      O => n_0_abgc_i_i_2
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => p_1_in(2),
      I1 => p_1_in(1),
      I2 => \out\(2),
      I3 => p_1_in(5),
      I4 => p_1_in(3),
      I5 => p_1_in(4),
      O => n_0_abgc_i_i_3
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => sda_clean,
      Q => \n_0_data_int_reg[0]\,
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \n_0_data_int_reg[0]\,
      Q => p_1_in(0),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(0),
      Q => p_1_in(1),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(1),
      Q => p_1_in(2),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(2),
      Q => p_1_in(3),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(3),
      Q => p_1_in(4),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(4),
      Q => p_1_in(5),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(5),
      Q => p_1_in(6),
      R => SR(0)
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
    port map (
      I0 => \out\(6),
      I1 => \out\(3),
      I2 => detect_start,
      I3 => I5,
      I4 => n_0_shift_reg_ld_i_2,
      O => shift_reg_ld0
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8A808"
    )
    port map (
      I0 => \out\(2),
      I1 => \n_0_data_int_reg[0]\,
      I2 => master_slave,
      I3 => Q(1),
      I4 => \out\(0),
      O => n_0_shift_reg_ld_i_2
    );
slave_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBA888ABBBABBB"
    )
    port map (
      I0 => txak,
      I1 => \out\(5),
      I2 => \out\(2),
      I3 => addr_match,
      I4 => I2(0),
      I5 => \out\(4),
      O => O1
    );
slave_sda_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAEA"
    )
    port map (
      I0 => I4(0),
      I1 => n_0_slave_sda_i_3,
      I2 => n_0_slave_sda_i_4,
      I3 => I3(6),
      I4 => p_1_in(6),
      O => addr_match
    );
slave_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => p_1_in(0),
      I1 => I3(0),
      I2 => I3(2),
      I3 => p_1_in(2),
      I4 => I3(1),
      I5 => p_1_in(1),
      O => n_0_slave_sda_i_3
    );
slave_sda_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => p_1_in(3),
      I1 => I3(3),
      I2 => I3(5),
      I3 => p_1_in(5),
      I4 => I3(4),
      I5 => p_1_in(4),
      O => n_0_slave_sda_i_4
    );
srw_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
    port map (
      I0 => I4(1),
      I1 => \out\(2),
      I2 => \n_0_data_int_reg[0]\,
      I3 => Q(0),
      O => O4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_soft_reset : entity is "soft_reset";
end axi_iic_0_soft_reset;

architecture STRUCTURE of axi_iic_0_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal D : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \n_0_RESET_FLOPS[1].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[3].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\ : STD_LOGIC;
  signal reset_trig : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair56";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair56";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_RESET_FLOPS[3].RST_FLOPS\,
      I1 => s_axi_aresetn,
      O => SR(0)
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig,
      Q => Q,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\,
      Q => \n_0_RESET_FLOPS[1].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => Q,
      O => \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\,
      Q => D,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => \n_0_RESET_FLOPS[1].RST_FLOPS\,
      O => \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\,
      Q => \n_0_RESET_FLOPS[3].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => D,
      O => \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\
    );
reset_trig_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => reset_trig,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_upcnt_n is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scl_clean : in STD_LOGIC;
    I8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stop_scl_reg : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    I1 : in STD_LOGIC;
    sda_cout_reg : in STD_LOGIC;
    sda_cout1 : in STD_LOGIC;
    next_scl_state0 : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_upcnt_n : entity is "upcnt_n";
end axi_iic_0_upcnt_n;

architecture STRUCTURE of axi_iic_0_upcnt_n is
  signal clk_cnt_en1 : STD_LOGIC;
  signal clk_cnt_en11_out : STD_LOGIC;
  signal clk_cnt_en12_out : STD_LOGIC;
  signal clk_cnt_rst : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[0]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[2]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[2]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[2]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[3]_i_9\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_4\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_5\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_6\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_7\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_2\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[7]_i_1\ : STD_LOGIC;
  signal n_0_sda_cout_reg_i_4 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_5 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_6 : STD_LOGIC;
  signal next_scl_state1 : STD_LOGIC;
  signal next_scl_state10_out : STD_LOGIC;
  signal next_scl_state13_out : STD_LOGIC;
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal sda_cout18_out : STD_LOGIC;
  signal stop_scl : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[0]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[0]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_int[7]_i_1\ : label is "soft_lutpair8";
begin
\FSM_sequential_scl_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \n_0_FSM_sequential_scl_state[0]_i_2\,
      I1 => \out\(0),
      I2 => \n_0_FSM_sequential_scl_state[0]_i_3\,
      I3 => \out\(3),
      O => D(0)
    );
\FSM_sequential_scl_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => I9(0),
      I2 => I9(2),
      I3 => \q_int_reg__0\(5),
      I4 => I9(1),
      I5 => \q_int_reg__0\(6),
      O => \n_0_FSM_sequential_scl_state[0]_i_10\
    );
\FSM_sequential_scl_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
    port map (
      I0 => arb_lost,
      I1 => next_scl_state13_out,
      I2 => \out\(1),
      I3 => next_scl_state10_out,
      I4 => \out\(2),
      I5 => next_scl_state0,
      O => \n_0_FSM_sequential_scl_state[0]_i_2\
    );
\FSM_sequential_scl_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"035FF350"
    )
    port map (
      I0 => scl_clean,
      I1 => \n_0_FSM_sequential_scl_state[2]_i_2\,
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => sda_clean,
      O => \n_0_FSM_sequential_scl_state[0]_i_3\
    );
\FSM_sequential_scl_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I8(7),
      I1 => \q_int_reg__0\(0),
      I2 => I8(6),
      I3 => \q_int_reg__0\(1),
      I4 => \n_0_FSM_sequential_scl_state[0]_i_7\,
      I5 => \n_0_FSM_sequential_scl_state[0]_i_8\,
      O => next_scl_state13_out
    );
\FSM_sequential_scl_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I9(7),
      I1 => \q_int_reg__0\(0),
      I2 => I9(6),
      I3 => \q_int_reg__0\(1),
      I4 => \n_0_FSM_sequential_scl_state[0]_i_9\,
      I5 => \n_0_FSM_sequential_scl_state[0]_i_10\,
      O => next_scl_state10_out
    );
\FSM_sequential_scl_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => I8(3),
      I2 => I8(5),
      I3 => \q_int_reg__0\(2),
      I4 => I8(4),
      I5 => \q_int_reg__0\(3),
      O => \n_0_FSM_sequential_scl_state[0]_i_7\
    );
\FSM_sequential_scl_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => I8(0),
      I2 => I8(2),
      I3 => \q_int_reg__0\(5),
      I4 => I8(1),
      I5 => \q_int_reg__0\(6),
      O => \n_0_FSM_sequential_scl_state[0]_i_8\
    );
\FSM_sequential_scl_state[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => I9(3),
      I2 => I9(5),
      I3 => \q_int_reg__0\(2),
      I4 => I9(4),
      I5 => \q_int_reg__0\(3),
      O => \n_0_FSM_sequential_scl_state[0]_i_9\
    );
\FSM_sequential_scl_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
    port map (
      I0 => \out\(3),
      I1 => I2,
      I2 => \out\(1),
      I3 => \n_0_FSM_sequential_scl_state[1]_i_3\,
      O => D(1)
    );
\FSM_sequential_scl_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8AAA855A800A8"
    )
    port map (
      I0 => \out\(2),
      I1 => Q(0),
      I2 => arb_lost,
      I3 => \out\(0),
      I4 => \n_0_FSM_sequential_scl_state[2]_i_2\,
      I5 => sda_clean,
      O => \n_0_FSM_sequential_scl_state[1]_i_3\
    );
\FSM_sequential_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400055554000"
    )
    port map (
      I0 => \out\(3),
      I1 => \out\(1),
      I2 => \n_0_FSM_sequential_scl_state[2]_i_2\,
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => I3,
      O => D(2)
    );
\FSM_sequential_scl_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \n_0_FSM_sequential_scl_state[2]_i_4\,
      I1 => \n_0_FSM_sequential_scl_state[2]_i_5\,
      I2 => \n_0_FSM_sequential_scl_state[2]_i_6\,
      O => \n_0_FSM_sequential_scl_state[2]_i_2\
    );
\FSM_sequential_scl_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => I7(3),
      I2 => I7(6),
      I3 => \q_int_reg__0\(1),
      I4 => I7(0),
      I5 => \q_int_reg__0\(7),
      O => \n_0_FSM_sequential_scl_state[2]_i_4\
    );
\FSM_sequential_scl_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I7(1),
      I2 => scl_clean,
      I3 => I7(2),
      I4 => \q_int_reg__0\(5),
      O => \n_0_FSM_sequential_scl_state[2]_i_5\
    );
\FSM_sequential_scl_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(0),
      I1 => I7(7),
      I2 => I7(5),
      I3 => \q_int_reg__0\(2),
      I4 => I7(4),
      I5 => \q_int_reg__0\(3),
      O => \n_0_FSM_sequential_scl_state[2]_i_6\
    );
\FSM_sequential_scl_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => I6(5),
      I2 => I6(2),
      I3 => \q_int_reg__0\(5),
      I4 => I6(1),
      I5 => \q_int_reg__0\(6),
      O => \n_0_FSM_sequential_scl_state[3]_i_10\
    );
\FSM_sequential_scl_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => I6(6),
      I2 => I6(4),
      I3 => \q_int_reg__0\(3),
      I4 => I6(7),
      I5 => \q_int_reg__0\(0),
      O => \n_0_FSM_sequential_scl_state[3]_i_11\
    );
\FSM_sequential_scl_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => I5(5),
      I2 => I5(2),
      I3 => \q_int_reg__0\(5),
      I4 => I5(1),
      I5 => \q_int_reg__0\(6),
      O => \n_0_FSM_sequential_scl_state[3]_i_12\
    );
\FSM_sequential_scl_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => I5(6),
      I2 => I5(4),
      I3 => \q_int_reg__0\(3),
      I4 => I5(7),
      I5 => \q_int_reg__0\(0),
      O => \n_0_FSM_sequential_scl_state[3]_i_13\
    );
\FSM_sequential_scl_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101FFFFFFF7"
    )
    port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => arb_lost,
      I4 => \n_0_FSM_sequential_scl_state[3]_i_4\,
      I5 => \out\(3),
      O => E(0)
    );
\FSM_sequential_scl_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00000110000"
    )
    port map (
      I0 => next_scl_state1,
      I1 => \out\(0),
      I2 => sda_clean,
      I3 => \out\(2),
      I4 => \out\(3),
      I5 => \out\(1),
      O => D(3)
    );
\FSM_sequential_scl_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => clk_cnt_en12_out,
      I1 => Q(0),
      I2 => clk_cnt_en11_out,
      I3 => stop_scl_reg,
      I4 => clk_cnt_en1,
      O => \n_0_FSM_sequential_scl_state[3]_i_4\
    );
\FSM_sequential_scl_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I10(7),
      I1 => \q_int_reg__0\(0),
      I2 => I10(6),
      I3 => \q_int_reg__0\(1),
      I4 => \n_0_FSM_sequential_scl_state[3]_i_8\,
      I5 => \n_0_FSM_sequential_scl_state[3]_i_9\,
      O => next_scl_state1
    );
\FSM_sequential_scl_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I6(0),
      I1 => \q_int_reg__0\(7),
      I2 => I6(3),
      I3 => \q_int_reg__0\(4),
      I4 => \n_0_FSM_sequential_scl_state[3]_i_10\,
      I5 => \n_0_FSM_sequential_scl_state[3]_i_11\,
      O => clk_cnt_en12_out
    );
\FSM_sequential_scl_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I5(0),
      I1 => \q_int_reg__0\(7),
      I2 => I5(3),
      I3 => \q_int_reg__0\(4),
      I4 => \n_0_FSM_sequential_scl_state[3]_i_12\,
      I5 => \n_0_FSM_sequential_scl_state[3]_i_13\,
      O => clk_cnt_en1
    );
\FSM_sequential_scl_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => I10(3),
      I2 => I10(5),
      I3 => \q_int_reg__0\(2),
      I4 => I10(4),
      I5 => \q_int_reg__0\(3),
      O => \n_0_FSM_sequential_scl_state[3]_i_8\
    );
\FSM_sequential_scl_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => I10(0),
      I2 => I10(2),
      I3 => \q_int_reg__0\(5),
      I4 => I10(1),
      I5 => \q_int_reg__0\(6),
      O => \n_0_FSM_sequential_scl_state[3]_i_9\
    );
\q_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEAEAEFE"
    )
    port map (
      I0 => clk_cnt_rst,
      I1 => \n_0_q_int[0]_i_4\,
      I2 => \out\(3),
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \out\(1),
      O => \n_0_q_int[0]_i_1\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \n_0_q_int[0]_i_5\,
      I3 => clk_cnt_rst,
      O => \n_0_q_int[0]_i_2\
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA080000AA"
    )
    port map (
      I0 => \n_0_q_int[0]_i_6\,
      I1 => \n_0_FSM_sequential_scl_state[3]_i_4\,
      I2 => arb_lost,
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => \out\(0),
      O => clk_cnt_rst
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000F3FFFF00"
    )
    port map (
      I0 => \n_0_q_int[0]_i_7\,
      I1 => \n_0_FSM_sequential_scl_state[3]_i_4\,
      I2 => arb_lost,
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => \out\(0),
      O => \n_0_q_int[0]_i_4\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(4),
      I2 => \q_int_reg__0\(6),
      I3 => \q_int_reg__0\(7),
      I4 => \q_int_reg__0\(5),
      I5 => \q_int_reg__0\(3),
      O => \n_0_q_int[0]_i_5\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
    port map (
      I0 => \out\(3),
      I1 => scl_clean,
      I2 => \n_0_FSM_sequential_scl_state[2]_i_2\,
      I3 => \out\(2),
      I4 => \out\(1),
      O => \n_0_q_int[0]_i_6\
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_sequential_scl_state[2]_i_2\,
      I1 => scl_clean,
      O => \n_0_q_int[0]_i_7\
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => \n_0_q_int[0]_i_5\,
      I2 => clk_cnt_rst,
      O => \n_0_q_int[1]_i_1\
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \n_0_q_int[2]_i_2\,
      I2 => clk_cnt_rst,
      O => \n_0_q_int[2]_i_1\
    );
\q_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int_reg__0\(5),
      I2 => \q_int_reg__0\(7),
      I3 => \q_int_reg__0\(6),
      I4 => \q_int_reg__0\(4),
      O => \n_0_q_int[2]_i_2\
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int_reg__0\(4),
      I2 => \q_int_reg__0\(6),
      I3 => \q_int_reg__0\(7),
      I4 => \q_int_reg__0\(5),
      I5 => clk_cnt_rst,
      O => \n_0_q_int[3]_i_1\
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(5),
      I2 => \q_int_reg__0\(7),
      I3 => \q_int_reg__0\(6),
      I4 => clk_cnt_rst,
      O => \n_0_q_int[4]_i_1\
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(7),
      I3 => clk_cnt_rst,
      O => \n_0_q_int[5]_i_1\
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => clk_cnt_rst,
      O => \n_0_q_int[6]_i_1\
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => clk_cnt_rst,
      O => \n_0_q_int[7]_i_1\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[0]_i_2\,
      Q => \q_int_reg__0\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[1]_i_1\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[2]_i_1\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[3]_i_1\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[4]_i_1\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[5]_i_1\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[6]_i_1\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[7]_i_1\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FCFC00080C0C"
    )
    port map (
      I0 => clk_cnt_en11_out,
      I1 => I1,
      I2 => \out\(3),
      I3 => n_0_sda_cout_reg_i_4,
      I4 => \out\(1),
      I5 => sda_cout_reg,
      O => O1
    );
sda_cout_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I4(0),
      I1 => \q_int_reg__0\(7),
      I2 => I4(3),
      I3 => \q_int_reg__0\(4),
      I4 => n_0_sda_cout_reg_i_5,
      I5 => n_0_sda_cout_reg_i_6,
      O => clk_cnt_en11_out
    );
sda_cout_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
    port map (
      I0 => \out\(0),
      I1 => clk_cnt_en11_out,
      I2 => Q(0),
      I3 => stop_scl_reg,
      I4 => arb_lost,
      I5 => \out\(2),
      O => n_0_sda_cout_reg_i_4
    );
sda_cout_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => I4(5),
      I2 => I4(2),
      I3 => \q_int_reg__0\(5),
      I4 => I4(1),
      I5 => \q_int_reg__0\(6),
      O => n_0_sda_cout_reg_i_5
    );
sda_cout_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => I4(6),
      I2 => I4(4),
      I3 => \q_int_reg__0\(3),
      I4 => I4(7),
      I5 => \q_int_reg__0\(0),
      O => n_0_sda_cout_reg_i_6
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
    port map (
      I0 => \out\(1),
      I1 => \out\(3),
      I2 => \out\(2),
      I3 => sda_cout1,
      I4 => stop_scl,
      I5 => stop_scl_reg,
      O => O2
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007711D5"
    )
    port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => sda_cout18_out,
      I3 => \out\(3),
      I4 => \out\(0),
      O => stop_scl
    );
stop_scl_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => clk_cnt_en11_out,
      I1 => Q(0),
      I2 => stop_scl_reg,
      I3 => arb_lost,
      O => sda_cout18_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_upcnt_n_2 is
  port (
    O1 : out STD_LOGIC;
    I11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    tx_under_prev_d1 : in STD_LOGIC;
    gen_stop_d1 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scl_clean : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_upcnt_n_2 : entity is "upcnt_n";
end axi_iic_0_upcnt_n_2;

architecture STRUCTURE of axi_iic_0_upcnt_n_2 is
  signal \n_0_q_int[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2__1\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_2__0\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[5]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[7]_i_1__0\ : STD_LOGIC;
  signal n_0_sda_setup_i_2 : STD_LOGIC;
  signal n_0_sda_setup_i_3 : STD_LOGIC;
  signal n_0_sda_setup_i_4 : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_int[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[5]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[6]_i_1__0\ : label is "soft_lutpair16";
begin
\q_int[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_12_in,
      I1 => I1,
      O => \n_0_q_int[0]_i_1__0\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \n_0_q_int[0]_i_4__0\,
      I3 => p_12_in,
      O => \n_0_q_int[0]_i_2__1\
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFBEBE"
    )
    port map (
      I0 => \n_0_q_int[0]_i_5__0\,
      I1 => sda_clean,
      I2 => sda_rin_d1,
      I3 => I2,
      I4 => tx_under_prev_d1,
      O => p_12_in
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(4),
      I2 => \q_int_reg__0\(6),
      I3 => \q_int_reg__0\(7),
      I4 => \q_int_reg__0\(5),
      I5 => \q_int_reg__0\(3),
      O => \n_0_q_int[0]_i_4__0\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
    port map (
      I0 => gen_stop_d1,
      I1 => I3,
      I2 => rsta_d1,
      I3 => Q(1),
      O => \n_0_q_int[0]_i_5__0\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => \n_0_q_int[0]_i_4__0\,
      I2 => p_12_in,
      O => \n_0_q_int[1]_i_1__1\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \n_0_q_int[2]_i_2__0\,
      I2 => p_12_in,
      O => \n_0_q_int[2]_i_1__1\
    );
\q_int[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int_reg__0\(5),
      I2 => \q_int_reg__0\(7),
      I3 => \q_int_reg__0\(6),
      I4 => \q_int_reg__0\(4),
      O => \n_0_q_int[2]_i_2__0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int_reg__0\(4),
      I2 => \q_int_reg__0\(6),
      I3 => \q_int_reg__0\(7),
      I4 => \q_int_reg__0\(5),
      I5 => p_12_in,
      O => \n_0_q_int[3]_i_1__0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(5),
      I2 => \q_int_reg__0\(7),
      I3 => \q_int_reg__0\(6),
      I4 => p_12_in,
      O => \n_0_q_int[4]_i_1__0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(7),
      I3 => p_12_in,
      O => \n_0_q_int[5]_i_1__0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => p_12_in,
      O => \n_0_q_int[6]_i_1__0\
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => p_12_in,
      O => \n_0_q_int[7]_i_1__0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[0]_i_2__1\,
      Q => \q_int_reg__0\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[1]_i_1__1\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[2]_i_1__1\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[3]_i_1__0\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[4]_i_1__0\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[5]_i_1__0\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[6]_i_1__0\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[7]_i_1__0\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
sda_setup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAA20000AAA0"
    )
    port map (
      I0 => Q(0),
      I1 => n_0_sda_setup_i_2,
      I2 => I2,
      I3 => p_12_in,
      I4 => scl_clean,
      I5 => I1,
      O => O1
    );
sda_setup_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => I11(7),
      I1 => \q_int_reg__0\(0),
      I2 => I11(6),
      I3 => \q_int_reg__0\(1),
      I4 => n_0_sda_setup_i_3,
      I5 => n_0_sda_setup_i_4,
      O => n_0_sda_setup_i_2
    );
sda_setup_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => I11(3),
      I2 => I11(5),
      I3 => \q_int_reg__0\(2),
      I4 => I11(4),
      I5 => \q_int_reg__0\(3),
      O => n_0_sda_setup_i_3
    );
sda_setup_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => I11(0),
      I2 => I11(2),
      I3 => \q_int_reg__0\(5),
      I4 => I11(1),
      I5 => \q_int_reg__0\(6),
      O => n_0_sda_setup_i_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_upcnt_n__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EarlyAckDataState0 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    detect_start : in STD_LOGIC;
    state1 : in STD_LOGIC;
    bit_cnt_en : in STD_LOGIC;
    scl_falling_edge : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dtc_i : in STD_LOGIC;
    I1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \axi_iic_0_upcnt_n__parameterized0\;

architecture STRUCTURE of \axi_iic_0_upcnt_n__parameterized0\ is
  signal bit_cnt_ld : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_7\ : STD_LOGIC;
  signal n_0_dtc_i_i_2 : STD_LOGIC;
  signal \n_0_q_int[0]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int_reg[0]\ : STD_LOGIC;
  signal \n_0_q_int_reg[1]\ : STD_LOGIC;
  signal \n_0_q_int_reg[2]\ : STD_LOGIC;
  signal \n_0_q_int_reg[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[0]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__0\ : label is "soft_lutpair4";
begin
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAEAAAAAAA"
    )
    port map (
      I0 => \out\(4),
      I1 => \n_0_q_int_reg[3]\,
      I2 => \n_0_q_int_reg[2]\,
      I3 => \n_0_q_int_reg[1]\,
      I4 => \out\(3),
      I5 => \n_0_q_int_reg[0]\,
      O => EarlyAckDataState0
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
    port map (
      I0 => state1,
      I1 => \n_0_FSM_onehot_state[7]_i_5\,
      I2 => \out\(2),
      I3 => detect_start,
      I4 => \out\(0),
      O => E(0)
    );
\FSM_onehot_state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFCFCFC"
    )
    port map (
      I0 => \out\(1),
      I1 => \out\(5),
      I2 => \out\(4),
      I3 => I1,
      I4 => detect_start,
      I5 => \n_0_FSM_onehot_state[7]_i_7\,
      O => \n_0_FSM_onehot_state[7]_i_5\
    );
\FSM_onehot_state[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_q_int_reg[3]\,
      I1 => \n_0_q_int_reg[1]\,
      I2 => \n_0_q_int_reg[0]\,
      I3 => \n_0_q_int_reg[2]\,
      O => \n_0_FSM_onehot_state[7]_i_7\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
    port map (
      I0 => \n_0_q_int_reg[0]\,
      I1 => \n_0_q_int_reg[1]\,
      I2 => n_0_dtc_i_i_2,
      I3 => scl_falling_edge,
      I4 => Q(0),
      I5 => dtc_i,
      O => O1
    );
dtc_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_q_int_reg[2]\,
      I1 => \n_0_q_int_reg[3]\,
      O => n_0_dtc_i_i_2
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \out\(5),
      I1 => \out\(2),
      I2 => \out\(4),
      I3 => detect_start,
      I4 => \out\(0),
      I5 => bit_cnt_en,
      O => \n_0_q_int[0]_i_1__1\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \n_0_q_int_reg[0]\,
      I1 => \n_0_q_int_reg[1]\,
      I2 => \n_0_q_int_reg[3]\,
      I3 => \n_0_q_int_reg[2]\,
      I4 => bit_cnt_ld,
      O => \n_0_q_int[0]_i_2__0\
    );
\q_int[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \out\(0),
      I1 => detect_start,
      I2 => \out\(4),
      I3 => \out\(2),
      I4 => \out\(5),
      O => bit_cnt_ld
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \n_0_q_int_reg[1]\,
      I1 => \n_0_q_int_reg[2]\,
      I2 => \n_0_q_int_reg[3]\,
      I3 => bit_cnt_ld,
      O => \n_0_q_int[1]_i_1__0\
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \n_0_q_int_reg[2]\,
      I1 => \n_0_q_int_reg[3]\,
      I2 => bit_cnt_ld,
      O => \n_0_q_int[2]_i_1__0\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_q_int_reg[3]\,
      I1 => \out\(5),
      I2 => \out\(2),
      I3 => \out\(4),
      I4 => detect_start,
      I5 => \out\(0),
      O => \n_0_q_int[3]_i_1__1\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[0]_i_2__0\,
      Q => \n_0_q_int_reg[0]\,
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[1]_i_1__0\,
      Q => \n_0_q_int_reg[1]\,
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[2]_i_1__0\,
      Q => \n_0_q_int_reg[2]\,
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[3]_i_1__1\,
      Q => \n_0_q_int_reg[3]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_debounce is
  port (
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_debounce : entity is "debounce";
end axi_iic_0_debounce;

architecture STRUCTURE of axi_iic_0_debounce is
begin
INPUT_DOUBLE_REGS: entity work.axi_iic_0_cdc_sync_4
    port map (
      O2 => O2,
      Scl_clean => Scl_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_debounce_3 is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_debounce_3 : entity is "debounce";
end axi_iic_0_debounce_3;

architecture STRUCTURE of axi_iic_0_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.axi_iic_0_cdc_sync
    port map (
      O1 => O1,
      Sda_clean => Sda_clean,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_iic_control is
  port (
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    sda_rin_d1 : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    rsta_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    dtre_d1 : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Aas : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O5 : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    rdCntrFrmTxFifo0 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    scl_clean : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    new_rcv_dta_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_in : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    txak : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : in STD_LOGIC;
    callingReadAccess : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_iic_control : entity is "iic_control";
end axi_iic_0_iic_control;

architecture STRUCTURE of axi_iic_0_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal AckDataState0_out : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal Rsta_rst : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal al_i0 : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal arb_lost0 : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal \^earlyackhdr\ : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal master_slave : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal n_0_BITCNT : STD_LOGIC;
  signal n_0_CLKCNT : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[4]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[5]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[0]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[1]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[2]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[3]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[4]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[5]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[6]\ : signal is "yes";
  signal \n_0_FSM_onehot_state_reg[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \n_0_FSM_onehot_state_reg[7]\ : signal is "yes";
  signal \n_0_FSM_sequential_scl_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_scl_state[2]_i_3\ : STD_LOGIC;
  signal n_0_I2CDATA_REG : STD_LOGIC;
  signal n_0_I2CHEADER_REG : STD_LOGIC;
  signal \n_0_LEVEL_1_GEN.master_sda_reg\ : STD_LOGIC;
  signal n_0_SETUP_CNT : STD_LOGIC;
  signal n_0_al_i_i_1 : STD_LOGIC;
  signal n_0_al_prevent_i_1 : STD_LOGIC;
  signal n_0_al_prevent_reg : STD_LOGIC;
  signal n_0_arb_lost_i_1 : STD_LOGIC;
  signal n_0_arb_lost_i_2 : STD_LOGIC;
  signal n_0_bus_busy_i_1 : STD_LOGIC;
  signal n_0_detect_start_i_1 : STD_LOGIC;
  signal n_0_detect_stop_i_1 : STD_LOGIC;
  signal n_0_detect_stop_i_2 : STD_LOGIC;
  signal n_0_detect_stop_reg : STD_LOGIC;
  signal n_0_gen_start_i_1 : STD_LOGIC;
  signal n_0_gen_start_reg : STD_LOGIC;
  signal n_0_gen_stop_i_1 : STD_LOGIC;
  signal n_0_gen_stop_reg : STD_LOGIC;
  signal n_0_master_slave_i_1 : STD_LOGIC;
  signal n_0_msms_d1_i_1 : STD_LOGIC;
  signal n_0_msms_d1_i_2 : STD_LOGIC;
  signal n_0_msms_rst_i_i_1 : STD_LOGIC;
  signal n_0_msms_rst_i_i_2 : STD_LOGIC;
  signal n_0_msms_rst_i_i_3 : STD_LOGIC;
  signal n_0_new_rcv_dta_i_i_1 : STD_LOGIC;
  signal n_0_rdy_new_xmt_i_i_1 : STD_LOGIC;
  signal n_0_scl_cout_reg_i_1 : STD_LOGIC;
  signal n_0_scl_falling_edge_i_1 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_3 : STD_LOGIC;
  signal n_0_sda_sample_i_1 : STD_LOGIC;
  signal n_0_sda_setup_reg : STD_LOGIC;
  signal n_0_shift_reg_en_i_2 : STD_LOGIC;
  signal n_0_slave_sda_reg : STD_LOGIC;
  signal n_0_sm_stop_i_1 : STD_LOGIC;
  signal n_0_sm_stop_reg : STD_LOGIC;
  signal n_0_stop_scl_reg_i_4 : STD_LOGIC;
  signal n_0_tx_under_prev_i_i_1 : STD_LOGIC;
  signal n_0_tx_under_prev_i_i_3 : STD_LOGIC;
  signal n_0_txer_edge_i_1 : STD_LOGIC;
  signal n_0_txer_i_i_1 : STD_LOGIC;
  signal n_0_txer_i_reg : STD_LOGIC;
  signal n_1_CLKCNT : STD_LOGIC;
  signal n_1_I2CHEADER_REG : STD_LOGIC;
  signal n_2_BITCNT : STD_LOGIC;
  signal n_2_CLKCNT : STD_LOGIC;
  signal n_2_I2CDATA_REG : STD_LOGIC;
  signal n_2_I2CHEADER_REG : STD_LOGIC;
  signal n_3_CLKCNT : STD_LOGIC;
  signal n_3_I2CDATA_REG : STD_LOGIC;
  signal n_3_I2CHEADER_REG : STD_LOGIC;
  signal n_4_CLKCNT : STD_LOGIC;
  signal n_4_I2CDATA_REG : STD_LOGIC;
  signal n_4_I2CHEADER_REG : STD_LOGIC;
  signal n_5_CLKCNT : STD_LOGIC;
  signal n_5_I2CDATA_REG : STD_LOGIC;
  signal n_6_CLKCNT : STD_LOGIC;
  signal n_6_I2CDATA_REG : STD_LOGIC;
  signal n_6_I2CHEADER_REG : STD_LOGIC;
  signal n_7_I2CDATA_REG : STD_LOGIC;
  signal n_7_I2CHEADER_REG : STD_LOGIC;
  signal n_8_I2CDATA_REG : STD_LOGIC;
  signal n_8_I2CHEADER_REG : STD_LOGIC;
  signal next_scl_state0 : STD_LOGIC;
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal \^rsta_d1\ : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal scl_falling_edge : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal scl_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sda_cout1 : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal \^sda_rin_d1\ : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal sm_stop : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal stop_scl_reg : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal txer_i : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[0]_i_6\ : label is "soft_lutpair19";
  attribute KEEP of \FSM_sequential_scl_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of al_i_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of detect_stop_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of gen_start_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of msms_rst_i_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sda_sample_i_1 : label is "soft_lutpair20";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  New_rcv_dta <= \^new_rcv_dta\;
  O1(1 downto 0) <= \^o1\(1 downto 0);
  O2 <= \^o2\;
  Tx_under_prev <= \^tx_under_prev\;
  earlyAckHdr <= \^earlyackhdr\;
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  rsta_d1 <= \^rsta_d1\;
  scl_rin_d1 <= \^scl_rin_d1\;
  sda_rin_d1 <= \^sda_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
AckDataState_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => Q(0),
      O => AckDataState0_out
    );
AckDataState_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AckDataState0_out,
      Q => ackDataState,
      R => '0'
    );
BITCNT: entity work.\axi_iic_0_upcnt_n__parameterized0\
    port map (
      E(0) => n_0_BITCNT,
      EarlyAckDataState0 => EarlyAckDataState0,
      I1 => \n_0_FSM_onehot_state[7]_i_6\,
      O1 => n_2_BITCNT,
      Q(0) => Q(0),
      SR(0) => SR(0),
      bit_cnt_en => bit_cnt_en,
      detect_start => detect_start,
      dtc_i => dtc_i,
      \out\(5) => \n_0_FSM_onehot_state_reg[7]\,
      \out\(4) => \n_0_FSM_onehot_state_reg[6]\,
      \out\(3) => \n_0_FSM_onehot_state_reg[4]\,
      \out\(2) => \n_0_FSM_onehot_state_reg[3]\,
      \out\(1) => \n_0_FSM_onehot_state_reg[2]\,
      \out\(0) => \n_0_FSM_onehot_state_reg[1]\,
      s_axi_aclk => s_axi_aclk,
      scl_falling_edge => scl_falling_edge,
      state1 => state1
    );
CLKCNT: entity work.axi_iic_0_upcnt_n
    port map (
      D(3) => n_0_CLKCNT,
      D(2) => n_1_CLKCNT,
      D(1) => n_2_CLKCNT,
      D(0) => n_3_CLKCNT,
      E(0) => n_6_CLKCNT,
      I1 => n_0_sda_cout_reg_i_3,
      I10(7 downto 0) => I10(7 downto 0),
      I2 => \n_0_FSM_sequential_scl_state[1]_i_2\,
      I3 => \n_0_FSM_sequential_scl_state[2]_i_3\,
      I4(7 downto 0) => I4(7 downto 0),
      I5(7 downto 0) => I5(7 downto 0),
      I6(7 downto 0) => I6(7 downto 0),
      I7(7 downto 0) => I7(7 downto 0),
      I8(7 downto 0) => I8(7 downto 0),
      I9(7 downto 0) => I9(7 downto 0),
      O1 => n_4_CLKCNT,
      O2 => n_5_CLKCNT,
      Q(0) => Q(3),
      SR(0) => SR(0),
      arb_lost => arb_lost,
      next_scl_state0 => next_scl_state0,
      \out\(3 downto 0) => scl_state(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_cout1 => sda_cout1,
      sda_cout_reg => sda_cout_reg,
      stop_scl_reg => stop_scl_reg
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => SR(0)
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => scl_f_edg_d3,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => \^earlyackhdr\,
      R => SR(0)
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[7]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[6]\,
      O => \n_0_FSM_onehot_state[1]_i_3\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sda_sample,
      I1 => arb_lost,
      O => \n_0_FSM_onehot_state[1]_i_4\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBAAAAAAAAA"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => \n_0_FSM_onehot_state_reg[4]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => detect_start,
      O => \n_0_FSM_onehot_state[2]_i_1\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[1]\,
      O => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => Ro_prev,
      I3 => \n_0_FSM_onehot_state_reg[4]\,
      O => \n_0_FSM_onehot_state[4]_i_2\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      O => \n_0_FSM_onehot_state[5]_i_2\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => n_0_detect_stop_reg,
      I1 => Q(0),
      O => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[5]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => detect_start,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[2]\,
      O => \n_0_FSM_onehot_state[7]_i_3\
    );
\FSM_onehot_state[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => scl_f_edg_d2,
      I1 => Ro_prev,
      I2 => ro_prev_d1,
      O => state1
    );
\FSM_onehot_state[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[5]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      O => \n_0_FSM_onehot_state[7]_i_6\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => '0',
      Q => \n_0_FSM_onehot_state_reg[0]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => n_3_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[1]\,
      S => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => \n_0_FSM_onehot_state[2]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[2]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => \n_0_FSM_onehot_state[3]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[3]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => n_2_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[4]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => n_1_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[5]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => n_0_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[6]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_0_BITCNT,
      D => \n_0_FSM_onehot_state[7]_i_3\,
      Q => \n_0_FSM_onehot_state_reg[7]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_sequential_scl_state[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => \^bb\,
      I1 => master_slave,
      I2 => n_0_gen_start_reg,
      O => next_scl_state0
    );
\FSM_sequential_scl_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DFD"
    )
    port map (
      I0 => scl_state(0),
      I1 => sda_clean,
      I2 => scl_state(2),
      I3 => scl_clean,
      O => \n_0_FSM_sequential_scl_state[1]_i_2\
    );
\FSM_sequential_scl_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AA0000A8AA"
    )
    port map (
      I0 => scl_state(1),
      I1 => Q(3),
      I2 => arb_lost,
      I3 => stop_scl_reg,
      I4 => scl_state(0),
      I5 => sda_clean,
      O => \n_0_FSM_sequential_scl_state[2]_i_3\
    );
\FSM_sequential_scl_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_6_CLKCNT,
      D => n_3_CLKCNT,
      Q => scl_state(0),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_6_CLKCNT,
      D => n_2_CLKCNT,
      Q => scl_state(1),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_6_CLKCNT,
      D => n_1_CLKCNT,
      Q => scl_state(2),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_6_CLKCNT,
      D => n_0_CLKCNT,
      Q => scl_state(3),
      R => SR(0)
    );
I2CDATA_REG: entity work.axi_iic_0_shift8
    port map (
      I1 => \^shift_reg_ld\,
      I13(0) => I13(0),
      I2 => \^tx_under_prev\,
      O1 => n_0_I2CDATA_REG,
      Q(7) => shift_reg(7),
      Q(6) => n_2_I2CDATA_REG,
      Q(5) => n_3_I2CDATA_REG,
      Q(4) => n_4_I2CDATA_REG,
      Q(3) => n_5_I2CDATA_REG,
      Q(2) => n_6_I2CDATA_REG,
      Q(1) => n_7_I2CDATA_REG,
      Q(0) => n_8_I2CDATA_REG,
      SR(0) => SR(0),
      Tx_fifo_data(6 downto 0) => Tx_fifo_data(6 downto 0),
      \out\(2) => \n_0_FSM_onehot_state_reg[6]\,
      \out\(1) => \n_0_FSM_onehot_state_reg[5]\,
      \out\(0) => \n_0_FSM_onehot_state_reg[2]\,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      txak => txak
    );
I2CHEADER_REG: entity work.axi_iic_0_shift8_1
    port map (
      D(3) => n_0_I2CHEADER_REG,
      D(2) => n_1_I2CHEADER_REG,
      D(1) => n_2_I2CHEADER_REG,
      D(0) => n_3_I2CHEADER_REG,
      E(0) => i2c_header_en,
      I1 => \n_0_FSM_onehot_state[4]_i_2\,
      I10 => \n_0_FSM_onehot_state[5]_i_2\,
      I2(0) => shift_reg(7),
      I3(6 downto 0) => I3(6 downto 0),
      I4(1 downto 0) => \^o1\(1 downto 0),
      I5 => \^tx_under_prev\,
      I6 => n_0_detect_stop_reg,
      I7 => \^aas\,
      I8 => \n_0_FSM_onehot_state[1]_i_3\,
      I9 => \n_0_FSM_onehot_state[1]_i_4\,
      O1 => n_4_I2CHEADER_REG,
      O2 => n_6_I2CHEADER_REG,
      O3 => n_7_I2CHEADER_REG,
      O4 => n_8_I2CHEADER_REG,
      Q(2) => Q(4),
      Q(1) => Q(2),
      Q(0) => Q(0),
      Ro_prev => Ro_prev,
      SR(0) => SR(0),
      arb_lost => arb_lost,
      detect_start => detect_start,
      master_slave => master_slave,
      \out\(6) => \n_0_FSM_onehot_state_reg[7]\,
      \out\(5) => \n_0_FSM_onehot_state_reg[6]\,
      \out\(4) => \n_0_FSM_onehot_state_reg[5]\,
      \out\(3) => \n_0_FSM_onehot_state_reg[4]\,
      \out\(2) => \n_0_FSM_onehot_state_reg[3]\,
      \out\(1) => \n_0_FSM_onehot_state_reg[2]\,
      \out\(0) => \n_0_FSM_onehot_state_reg[1]\,
      s_axi_aclk => s_axi_aclk,
      sda_clean => sda_clean,
      sda_sample => sda_sample,
      shift_reg_ld0 => shift_reg_ld0,
      txak => txak
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_I2CDATA_REG,
      Q => \n_0_LEVEL_1_GEN.master_sda_reg\,
      S => SR(0)
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => O3
    );
SETUP_CNT: entity work.axi_iic_0_upcnt_n_2
    port map (
      I1 => n_0_sda_setup_reg,
      I11(7 downto 0) => I11(7 downto 0),
      I2 => \^tx_under_prev\,
      I3 => n_0_gen_stop_reg,
      O1 => n_0_SETUP_CNT,
      Q(1) => Q(3),
      Q(0) => Q(0),
      SR(0) => SR(0),
      gen_stop_d1 => gen_stop_d1,
      rsta_d1 => \^rsta_d1\,
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_rin_d1 => \^sda_rin_d1\,
      tx_under_prev_d1 => tx_under_prev_d1
    );
aas_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_7_I2CHEADER_REG,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_6_I2CHEADER_REG,
      Q => \^o1\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => al_i0,
      I1 => master_slave,
      I2 => Q(3),
      O => n_0_al_i_i_1
    );
al_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAEAAAEAAAE"
    )
    port map (
      I0 => arb_lost,
      I1 => n_0_detect_stop_reg,
      I2 => n_0_al_prevent_reg,
      I3 => n_0_sm_stop_reg,
      I4 => bus_busy_d1,
      I5 => n_0_gen_start_reg,
      O => al_i0
    );
al_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_al_i_i_1,
      Q => \^d\(3),
      R => SR(0)
    );
al_prevent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222220"
    )
    port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => n_0_gen_stop_reg,
      I3 => n_0_sm_stop_reg,
      I4 => n_0_al_prevent_reg,
      O => n_0_al_prevent_i_1
    );
al_prevent_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_al_prevent_i_1,
      Q => n_0_al_prevent_reg,
      R => '0'
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEA2A2A"
    )
    port map (
      I0 => arb_lost,
      I1 => arb_lost0,
      I2 => master_slave,
      I3 => sda_clean,
      I4 => sda_cout_reg,
      I5 => n_0_arb_lost_i_2,
      O => n_0_arb_lost_i_1
    );
arb_lost_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDFFFF"
    )
    port map (
      I0 => scl_state(1),
      I1 => scl_state(3),
      I2 => scl_state(0),
      I3 => scl_state(2),
      I4 => Q(0),
      O => n_0_arb_lost_i_2
    );
arb_lost_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_arb_lost_i_1,
      Q => arb_lost,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => scl_falling_edge,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[4]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => SR(0)
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => SR(0)
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => n_0_detect_stop_reg,
      O => n_0_bus_busy_i_1
    );
bus_busy_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bus_busy_i_1,
      Q => \^bb\,
      R => '0'
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA33333000"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => Rsta_rst,
      I2 => p_3_in,
      I3 => firstDynStartSeen,
      I4 => Q(3),
      I5 => E(0),
      O => O4(0)
    );
\cr_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => scl_state(1),
      I1 => scl_state(2),
      I2 => Q(3),
      I3 => scl_state(3),
      I4 => scl_state(0),
      O => Rsta_rst
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEEEEEEEEEEE"
    )
    port map (
      I0 => n_0_sm_stop_reg,
      I1 => msms_rst_i,
      I2 => Tx_fifo_rd,
      I3 => Tx_fifo_rd_d,
      I4 => Tx_data_exists,
      I5 => dynamic_MSMS(0),
      O => O5
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_8_I2CDATA_REG,
      Q => O6(0),
      R => SR(0)
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_7_I2CDATA_REG,
      Q => O6(1),
      R => SR(0)
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_6_I2CDATA_REG,
      Q => O6(2),
      R => SR(0)
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_5_I2CDATA_REG,
      Q => O6(3),
      R => SR(0)
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_4_I2CDATA_REG,
      Q => O6(4),
      R => SR(0)
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_3_I2CDATA_REG,
      Q => O6(5),
      R => SR(0)
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => n_2_I2CDATA_REG,
      Q => O6(6),
      R => SR(0)
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => n_0_new_rcv_dta_i_i_1,
      D => shift_reg(7),
      Q => O6(7),
      R => SR(0)
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
    port map (
      I0 => detect_start,
      I1 => sda_clean,
      I2 => \^sda_rin_d1\,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => \n_0_FSM_onehot_state_reg[2]\,
      O => n_0_detect_start_i_1
    );
detect_start_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_detect_start_i_1,
      Q => detect_start,
      R => '0'
    );
detect_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2020000"
    )
    port map (
      I0 => n_0_detect_stop_reg,
      I1 => n_0_detect_stop_i_2,
      I2 => I12,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => detect_start,
      O => n_0_detect_stop_i_1
    );
detect_stop_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => msms_d1,
      I1 => msms_d2,
      O => n_0_detect_stop_i_2
    );
detect_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_detect_stop_i_1,
      Q => n_0_detect_stop_reg,
      R => '0'
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => SR(0)
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => SR(0)
    );
dtc_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_2_BITCNT,
      Q => dtc_i,
      R => '0'
    );
dtre_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => SR(0)
    );
gen_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22A200A0"
    )
    port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => n_0_gen_start_reg,
      O => n_0_gen_start_i_1
    );
gen_start_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_start_i_1,
      Q => n_0_gen_start_reg,
      R => '0'
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_stop_reg,
      Q => gen_stop_d1,
      R => SR(0)
    );
gen_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222A2200000A00"
    )
    port map (
      I0 => Q(0),
      I1 => n_0_detect_stop_reg,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => arb_lost,
      I5 => n_0_gen_stop_reg,
      O => n_0_gen_stop_i_1
    );
gen_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_stop_i_1,
      Q => n_0_gen_stop_reg,
      R => '0'
    );
i2c_header_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => scl_rising_edge,
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => SR(0)
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
    port map (
      I0 => msms_d1,
      I1 => master_slave,
      I2 => Q(0),
      I3 => arb_lost,
      I4 => \^bb\,
      O => n_0_master_slave_i_1
    );
master_slave_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_master_slave_i_1,
      Q => master_slave,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_msms_d1_i_2,
      I1 => msms_rst_i,
      O => n_0_msms_d1_i_1
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFAA"
    )
    port map (
      I0 => Q(1),
      I1 => dtc_i_d2,
      I2 => dtc_i_d1,
      I3 => msms_d1,
      I4 => Msms_set,
      I5 => n_0_txer_i_reg,
      O => n_0_msms_d1_i_2
    );
msms_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_d1_i_1,
      Q => msms_d1,
      R => SR(0)
    );
msms_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => SR(0)
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A00000000"
    )
    port map (
      I0 => msms_rst_i,
      I1 => n_0_msms_rst_i_i_2,
      I2 => n_0_msms_rst_i_i_3,
      I3 => arb_lost0,
      I4 => master_slave,
      I5 => Q(0),
      O => n_0_msms_rst_i_i_1
    );
msms_rst_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sda_cout_reg,
      I1 => sda_clean,
      O => n_0_msms_rst_i_i_2
    );
msms_rst_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F1"
    )
    port map (
      I0 => scl_state(2),
      I1 => scl_state(0),
      I2 => scl_state(3),
      I3 => scl_state(1),
      O => n_0_msms_rst_i_i_3
    );
msms_rst_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => scl_rising_edge,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      O => arb_lost0
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_rst_i_i_1,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => scl_falling_edge,
      I2 => Ro_prev,
      O => n_0_new_rcv_dta_i_i_1
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_new_rcv_dta_i_i_1,
      Q => \^new_rcv_dta\,
      R => SR(0)
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^earlyackhdr\,
      I1 => Tx_data_exists,
      I2 => callingReadAccess,
      O => rdCntrFrmTxFifo0
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F2F2F22202020"
    )
    port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => \n_0_FSM_onehot_state_reg[5]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => Q(1),
      I5 => \^rdy_new_xmt_i\,
      O => n_0_rdy_new_xmt_i_i_1
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_rdy_new_xmt_i_i_1,
      Q => \^rdy_new_xmt_i\,
      R => SR(0)
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => SR(0)
    );
rsta_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => \^rsta_d1\,
      R => SR(0)
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^o2\,
      R => '0'
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005417"
    )
    port map (
      I0 => scl_state(3),
      I1 => scl_state(0),
      I2 => scl_state(1),
      I3 => scl_state(2),
      I4 => Ro_prev,
      O => n_0_scl_cout_reg_i_1
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_scl_cout_reg_i_1,
      Q => scl_cout_reg,
      S => SR(0)
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge,
      Q => scl_f_edg_d1,
      R => SR(0)
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => SR(0)
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => SR(0)
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^scl_rin_d1\,
      I1 => scl_clean,
      O => n_0_scl_falling_edge_i_1
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_scl_falling_edge_i_1,
      Q => scl_falling_edge,
      R => SR(0)
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_clean,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => scl_rising_edge,
      R => SR(0)
    );
scl_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => Ro_prev,
      I1 => n_0_sda_setup_reg,
      I2 => scl_cout_reg,
      I3 => \^o2\,
      O => scl_t
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBABFBABFBABAB"
    )
    port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => scl_state(2),
      I3 => sda_cout1,
      I4 => Q(3),
      I5 => \n_0_LEVEL_1_GEN.master_sda_reg\,
      O => n_0_sda_cout_reg_i_3
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_4_CLKCNT,
      Q => sda_cout_reg,
      S => SR(0)
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_clean,
      Q => \^sda_rin_d1\,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sda_clean,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => n_0_sda_sample_i_1
    );
sda_sample_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_sda_sample_i_1,
      Q => sda_sample,
      R => SR(0)
    );
sda_setup_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_SETUP_CNT,
      Q => n_0_sda_setup_reg,
      R => '0'
    );
sda_t_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455040"
    )
    port map (
      I0 => stop_scl_reg,
      I1 => sda_cout_reg,
      I2 => master_slave,
      I3 => arb_lost,
      I4 => n_0_slave_sda_reg,
      O => sda_t
    );
shift_reg_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => master_slave,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => scl_rising_edge,
      I3 => n_0_shift_reg_en_i_2,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[4]\,
      I1 => scl_rising_edge,
      I2 => \n_0_FSM_onehot_state_reg[5]\,
      I3 => scl_f_edg_d2,
      I4 => detect_start,
      O => n_0_shift_reg_en_i_2
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => SR(0)
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => SR(0)
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => SR(0)
    );
slave_sda_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_4_I2CHEADER_REG,
      Q => n_0_slave_sda_reg,
      S => SR(0)
    );
sm_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA2A0000"
    )
    port map (
      I0 => n_0_sm_stop_reg,
      I1 => state1,
      I2 => sm_stop,
      I3 => master_slave,
      I4 => Q(0),
      I5 => n_0_detect_stop_reg,
      O => n_0_sm_stop_i_1
    );
sm_stop_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => arb_lost,
      I1 => master_slave,
      I2 => sda_sample,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      O => sm_stop
    );
sm_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_sm_stop_i_1,
      Q => n_0_sm_stop_reg,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_8_I2CHEADER_REG,
      Q => \^o1\(1),
      R => '0'
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => n_0_sm_stop_reg,
      I1 => n_0_gen_stop_reg,
      I2 => n_0_stop_scl_reg_i_4,
      O => sda_cout1
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFAFFFFFAFB"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[5]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      I5 => \n_0_FSM_onehot_state_reg[3]\,
      O => n_0_stop_scl_reg_i_4
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_5_CLKCNT,
      Q => stop_scl_reg,
      R => SR(0)
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => SR(0)
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0020AAAA0000"
    )
    port map (
      I0 => Q(0),
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      I2 => sr_i(0),
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => tx_under_prev_i0,
      I5 => \^tx_under_prev\,
      O => n_0_tx_under_prev_i_i_1
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000000000000"
    )
    port map (
      I0 => n_0_gen_stop_reg,
      I1 => \^aas\,
      I2 => \^o1\(1),
      I3 => n_0_tx_under_prev_i_i_3,
      I4 => scl_falling_edge,
      I5 => sr_i(0),
      O => tx_under_prev_i0
    );
tx_under_prev_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      O => n_0_tx_under_prev_i_i_3
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_tx_under_prev_i_i_1,
      Q => \^tx_under_prev\,
      R => '0'
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2000000E200"
    )
    port map (
      I0 => \^d\(2),
      I1 => txer_i,
      I2 => sda_sample,
      I3 => Q(0),
      I4 => scl_f_edg_d2,
      I5 => scl_falling_edge,
      O => n_0_txer_edge_i_1
    );
txer_edge_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => scl_falling_edge,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[6]\,
      O => txer_i
    );
txer_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_txer_edge_i_1,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
    port map (
      I0 => sda_sample,
      I1 => scl_falling_edge,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[6]\,
      I5 => n_0_txer_i_reg,
      O => n_0_txer_i_i_1
    );
txer_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_txer_i_i_1,
      Q => n_0_txer_i_reg,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_slave_attachment is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    O9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O36 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I22 : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I26 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    O19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I27 : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O24 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I28 : in STD_LOGIC;
    I29 : in STD_LOGIC;
    I30 : in STD_LOGIC;
    I31 : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_slave_attachment : entity is "slave_attachment";
end axi_iic_0_slave_attachment;

architecture STRUCTURE of axi_iic_0_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal bus2ip_rnw_i0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[0]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[1]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[2]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[3]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[4]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[5]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[6]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[7]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[8]_i_1\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i[8]_i_2\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i_reg[0]\ : STD_LOGIC;
  signal \n_0_bus2ip_addr_i_reg[1]\ : STD_LOGIC;
  signal n_0_bus2ip_rnw_i_i_1 : STD_LOGIC;
  signal n_0_bus2ip_rnw_i_reg : STD_LOGIC;
  signal n_0_s_axi_bvalid_i_i_1 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_1\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_4\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_14\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_15\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[1]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[2]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[3]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[4]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[5]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[6]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i_reg[7]_i_4\ : STD_LOGIC;
  signal n_0_s_axi_rvalid_i_i_1 : STD_LOGIC;
  signal n_0_start2_i_1 : STD_LOGIC;
  signal \n_0_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_1\ : STD_LOGIC;
  signal n_35_I_DECODER : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset2Bus_Error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1 : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_2 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_10\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_9\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_10\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_9\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_10\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_9\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_10\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_9\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_10\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_9\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_10\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_6\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_10\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_7\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_9\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_11\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_12\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_14\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_15\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair52";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      I3 => timeout,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => timeout,
      R => clear
    );
I_DECODER: entity work.axi_iic_0_address_decoder
    port map (
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      D(8) => Intr2Bus_DBus(0),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      I1(0) => timeout,
      I10 => \n_0_s_axi_rdata_i_reg[6]_i_3\,
      I11 => \n_0_s_axi_rdata_i_reg[7]_i_4\,
      I12(0) => I12(0),
      I13(0) => I13(0),
      I14(0) => I14(0),
      I15(0) => I15(0),
      I16(0) => I16(0),
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2(8) => Bus2IIC_Addr(0),
      I2(7) => Bus2IIC_Addr(1),
      I2(6 downto 4) => \^q\(2 downto 0),
      I2(3) => Bus2IIC_Addr(5),
      I2(2) => Bus2IIC_Addr(6),
      I2(1) => \n_0_bus2ip_addr_i_reg[1]\,
      I2(0) => \n_0_bus2ip_addr_i_reg[0]\,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22 => I22,
      I23 => I23,
      I24 => I24,
      I25(7 downto 0) => I25(7 downto 0),
      I26 => I26,
      I27(1 downto 0) => state(1 downto 0),
      I3 => n_0_bus2ip_rnw_i_reg,
      I4 => \n_0_s_axi_rdata_i_reg[0]_i_3\,
      I5 => \n_0_s_axi_rdata_i_reg[1]_i_3\,
      I6 => \n_0_s_axi_rdata_i_reg[2]_i_3\,
      I7 => \n_0_s_axi_rdata_i_reg[3]_i_3\,
      I8 => \n_0_s_axi_rdata_i_reg[4]_i_3\,
      I9 => \n_0_s_axi_rdata_i_reg[5]_i_3\,
      O1 => O1,
      O10 => O10,
      O11 => O11,
      O12 => n_35_I_DECODER,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      O8(0) => O8(0),
      O9(0) => O9(0),
      Q => start2,
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset2Bus_Error => reset2Bus_Error,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[0]_i_1\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[1]_i_1\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[2]_i_1\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[3]_i_1\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[4]_i_1\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[5]_i_1\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[6]_i_1\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_awaddr(7),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[7]_i_1\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \n_0_bus2ip_addr_i[8]_i_1\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
    port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_awaddr(8),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \n_0_bus2ip_addr_i[8]_i_2\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[0]_i_1\,
      Q => \n_0_bus2ip_addr_i_reg[0]\,
      R => rst
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[1]_i_1\,
      Q => \n_0_bus2ip_addr_i_reg[1]\,
      R => rst
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[2]_i_1\,
      Q => Bus2IIC_Addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[3]_i_1\,
      Q => Bus2IIC_Addr(5),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[4]_i_1\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[5]_i_1\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[6]_i_1\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[7]_i_1\,
      Q => Bus2IIC_Addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_bus2ip_addr_i[8]_i_1\,
      D => \n_0_bus2ip_addr_i[8]_i_2\,
      Q => Bus2IIC_Addr(0),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200FF00020002"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => state(0),
      I3 => rst,
      I4 => bus2ip_rnw_i0,
      I5 => n_0_bus2ip_rnw_i_reg,
      O => n_0_bus2ip_rnw_i_i_1
    );
bus2ip_rnw_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => bus2ip_rnw_i0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bus2ip_rnw_i_i_1,
      Q => n_0_bus2ip_rnw_i_reg,
      R => '0'
    );
rst_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => AXI_IP2Bus_RdAck1,
      I1 => AXI_IP2Bus_RdAck2,
      I2 => timeout,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_35_I_DECODER,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080008"
    )
    port map (
      I0 => \^s_axi_awready\,
      I1 => state(1),
      I2 => state(0),
      I3 => rst,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => n_0_s_axi_bvalid_i_i_1
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_bvalid_i_i_1,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata_i[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(0),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[0]_i_10\
    );
\s_axi_rdata_i[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => Tx_addr(0),
      I1 => \^q\(1),
      I2 => O24(0),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => I28,
      O => \n_0_s_axi_rdata_i[0]_i_11\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[0]_i_6\,
      I1 => Tx_fifo_data(7),
      I2 => \n_0_s_axi_rdata_i[0]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => \n_0_s_axi_rdata_i[0]_i_8\,
      O => \n_0_s_axi_rdata_i[0]_i_4\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[0]_i_9\,
      I1 => Rc_fifo_data(7),
      I2 => \n_0_s_axi_rdata_i[0]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => \n_0_s_axi_rdata_i[0]_i_11\,
      O => \n_0_s_axi_rdata_i[0]_i_5\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDAD5D0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(0),
      I2 => \^q\(0),
      I3 => Rc_addr(0),
      I4 => O35(0),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[0]_i_6\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
    port map (
      I0 => O33(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => Rc_addr(0),
      I4 => O35(0),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[0]_i_7\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => O19(0),
      I3 => \^q\(0),
      I4 => I27,
      O => \n_0_s_axi_rdata_i[0]_i_8\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(0),
      I2 => \^q\(0),
      I3 => O36(0),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[0]_i_9\
    );
\s_axi_rdata_i[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(1),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[1]_i_10\
    );
\s_axi_rdata_i[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => Tx_addr(1),
      I1 => \^q\(1),
      I2 => O24(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => I29,
      O => \n_0_s_axi_rdata_i[1]_i_11\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_6\,
      I1 => Tx_fifo_data(6),
      I2 => \n_0_s_axi_rdata_i[1]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I1,
      O => \n_0_s_axi_rdata_i[1]_i_4\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_9\,
      I1 => Rc_fifo_data(6),
      I2 => \n_0_s_axi_rdata_i[1]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => \n_0_s_axi_rdata_i[1]_i_11\,
      O => \n_0_s_axi_rdata_i[1]_i_5\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDAD5D0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(1),
      I2 => \^q\(0),
      I3 => Rc_addr(1),
      I4 => O35(1),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[1]_i_6\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
    port map (
      I0 => O33(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => Rc_addr(1),
      I4 => O35(1),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[1]_i_7\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(1),
      I2 => \^q\(0),
      I3 => O36(1),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[1]_i_9\
    );
\s_axi_rdata_i[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(2),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[2]_i_10\
    );
\s_axi_rdata_i[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => Tx_addr(2),
      I1 => \^q\(1),
      I2 => O24(2),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => I30,
      O => \n_0_s_axi_rdata_i[2]_i_11\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[2]_i_6\,
      I1 => Tx_fifo_data(5),
      I2 => \n_0_s_axi_rdata_i[2]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I2,
      O => \n_0_s_axi_rdata_i[2]_i_4\
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[2]_i_9\,
      I1 => Rc_fifo_data(5),
      I2 => \n_0_s_axi_rdata_i[2]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => \n_0_s_axi_rdata_i[2]_i_11\,
      O => \n_0_s_axi_rdata_i[2]_i_5\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDAD5D0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(2),
      I2 => \^q\(0),
      I3 => Rc_addr(2),
      I4 => O35(2),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[2]_i_6\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
    port map (
      I0 => O33(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => Rc_addr(2),
      I4 => O35(2),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[2]_i_7\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(2),
      I2 => \^q\(0),
      I3 => O36(2),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[2]_i_9\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      O => \n_0_s_axi_rdata_i[31]_i_1\
    );
\s_axi_rdata_i[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(3),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[3]_i_10\
    );
\s_axi_rdata_i[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
    port map (
      I0 => Tx_addr(3),
      I1 => \^q\(1),
      I2 => O24(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => I31,
      O => \n_0_s_axi_rdata_i[3]_i_11\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[3]_i_6\,
      I1 => Tx_fifo_data(4),
      I2 => \n_0_s_axi_rdata_i[3]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I3,
      O => \n_0_s_axi_rdata_i[3]_i_4\
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[3]_i_9\,
      I1 => Rc_fifo_data(4),
      I2 => \n_0_s_axi_rdata_i[3]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => \n_0_s_axi_rdata_i[3]_i_11\,
      O => \n_0_s_axi_rdata_i[3]_i_5\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDAD5D0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(3),
      I2 => \^q\(0),
      I3 => Rc_addr(3),
      I4 => O35(3),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[3]_i_6\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
    port map (
      I0 => O33(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => Rc_addr(3),
      I4 => O35(3),
      I5 => \^q\(2),
      O => \n_0_s_axi_rdata_i[3]_i_7\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(3),
      I2 => \^q\(0),
      I3 => O36(3),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[3]_i_9\
    );
\s_axi_rdata_i[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(4),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[4]_i_10\
    );
\s_axi_rdata_i[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[4]_i_6\,
      I1 => Tx_fifo_data(3),
      I2 => \n_0_s_axi_rdata_i[4]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I4,
      O => \n_0_s_axi_rdata_i[4]_i_4\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[4]_i_9\,
      I1 => Rc_fifo_data(3),
      I2 => \n_0_s_axi_rdata_i[4]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => I5,
      O => \n_0_s_axi_rdata_i[4]_i_5\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(4),
      I2 => \^q\(0),
      I3 => O35(4),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[4]_i_6\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O33(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O35(4),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[4]_i_7\
    );
\s_axi_rdata_i[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(4),
      I2 => \^q\(0),
      I3 => O36(4),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[4]_i_9\
    );
\s_axi_rdata_i[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(5),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[5]_i_10\
    );
\s_axi_rdata_i[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[5]_i_6\,
      I1 => Tx_fifo_data(2),
      I2 => \n_0_s_axi_rdata_i[5]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I6,
      O => \n_0_s_axi_rdata_i[5]_i_4\
    );
\s_axi_rdata_i[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[5]_i_9\,
      I1 => Rc_fifo_data(2),
      I2 => \n_0_s_axi_rdata_i[5]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => I7,
      O => \n_0_s_axi_rdata_i[5]_i_5\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(5),
      I2 => \^q\(0),
      I3 => O35(5),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[5]_i_6\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O33(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O35(5),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[5]_i_7\
    );
\s_axi_rdata_i[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(5),
      I2 => \^q\(0),
      I3 => O36(5),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[5]_i_9\
    );
\s_axi_rdata_i[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(6),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(6),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[6]_i_10\
    );
\s_axi_rdata_i[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[6]_i_6\,
      I1 => Tx_fifo_data(1),
      I2 => \n_0_s_axi_rdata_i[6]_i_7\,
      I3 => Bus2IIC_Addr(5),
      I4 => I8,
      O => \n_0_s_axi_rdata_i[6]_i_4\
    );
\s_axi_rdata_i[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[6]_i_9\,
      I1 => Rc_fifo_data(1),
      I2 => \n_0_s_axi_rdata_i[6]_i_10\,
      I3 => Bus2IIC_Addr(5),
      I4 => I9,
      O => \n_0_s_axi_rdata_i[6]_i_5\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(6),
      I2 => \^q\(0),
      I3 => O35(6),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[6]_i_6\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O33(6),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O35(6),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[6]_i_7\
    );
\s_axi_rdata_i[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(6),
      I2 => \^q\(0),
      I3 => O36(6),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[6]_i_9\
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_14\,
      I1 => Rc_fifo_data(0),
      I2 => \n_0_s_axi_rdata_i[7]_i_15\,
      I3 => Bus2IIC_Addr(5),
      I4 => I11,
      O => \n_0_s_axi_rdata_i[7]_i_10\
    );
\s_axi_rdata_i[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O33(7),
      I2 => \^q\(0),
      I3 => O35(7),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[7]_i_11\
    );
\s_axi_rdata_i[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O33(7),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O35(7),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[7]_i_12\
    );
\s_axi_rdata_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AD0D"
    )
    port map (
      I0 => \^q\(1),
      I1 => O34(7),
      I2 => \^q\(0),
      I3 => O36(7),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[7]_i_14\
    );
\s_axi_rdata_i[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
    port map (
      I0 => O34(7),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => O36(7),
      I4 => \^q\(2),
      O => \n_0_s_axi_rdata_i[7]_i_15\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_11\,
      I1 => Tx_fifo_data(0),
      I2 => \n_0_s_axi_rdata_i[7]_i_12\,
      I3 => Bus2IIC_Addr(5),
      I4 => I10,
      O => \n_0_s_axi_rdata_i[7]_i_9\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[0]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[0]_i_4\,
      I1 => \n_0_s_axi_rdata_i[0]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[0]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[1]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_4\,
      I1 => \n_0_s_axi_rdata_i[1]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[1]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[2]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[2]_i_4\,
      I1 => \n_0_s_axi_rdata_i[2]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[2]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[3]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[3]_i_4\,
      I1 => \n_0_s_axi_rdata_i[3]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[3]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[4]_i_4\,
      I1 => \n_0_s_axi_rdata_i[4]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[4]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[5]_i_4\,
      I1 => \n_0_s_axi_rdata_i[5]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[5]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[6]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[6]_i_4\,
      I1 => \n_0_s_axi_rdata_i[6]_i_5\,
      O => \n_0_s_axi_rdata_i_reg[6]_i_3\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[7]_i_4\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_9\,
      I1 => \n_0_s_axi_rdata_i[7]_i_10\,
      O => \n_0_s_axi_rdata_i_reg[7]_i_4\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => reset2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080008"
    )
    port map (
      I0 => \^s_axi_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => rst,
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => n_0_s_axi_rvalid_i_i_1
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_rvalid_i_i_1,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => AXI_IP2Bus_WrAck1,
      I1 => AXI_IP2Bus_WrAck2,
      I2 => timeout,
      O => \^s_axi_awready\
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => n_0_start2_i_1
    );
start2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_start2_i_1,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAFFCA"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_awready\,
      I2 => state(1),
      I3 => state(0),
      I4 => state1,
      O => \n_0_state[0]_i_1\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
    port map (
      I0 => state1,
      I1 => p_9_in,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => \^s_axi_arready\,
      O => \n_0_state[1]_i_1\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => state1
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_9_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[0]_i_1\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[1]_i_1\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_axi_lite_ipif is
  port (
    O1 : out STD_LOGIC;
    p_27_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O6 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    O8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O36 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I22 : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I26 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    O19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I27 : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O24 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I28 : in STD_LOGIC;
    I29 : in STD_LOGIC;
    I30 : in STD_LOGIC;
    I31 : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_axi_lite_ipif : entity is "axi_lite_ipif";
end axi_iic_0_axi_lite_ipif;

architecture STRUCTURE of axi_iic_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.axi_iic_0_slave_attachment
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      E(0) => E(0),
      I1 => I1,
      I10 => I10,
      I11 => I11,
      I12(0) => I12(0),
      I13(0) => I13(0),
      I14(0) => I14(0),
      I15(0) => I15(0),
      I16(0) => I16(0),
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2 => I2,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22 => I22,
      I23 => I23,
      I24 => I24,
      I25(7 downto 0) => I25(7 downto 0),
      I26 => I26,
      I27 => I27,
      I28 => I28,
      I29 => I29,
      I3 => I3,
      I30 => I30,
      I31 => I31,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      I8 => I8,
      I9 => I9,
      O1 => O1,
      O10 => O9,
      O11 => O10,
      O19(0) => O19(0),
      O2 => p_27_in,
      O24(3 downto 0) => O24(3 downto 0),
      O3 => O2,
      O33(7 downto 0) => O33(7 downto 0),
      O34(7 downto 0) => O34(7 downto 0),
      O35(7 downto 0) => O35(7 downto 0),
      O36(7 downto 0) => O36(7 downto 0),
      O4 => O3,
      O5 => O4,
      O6 => O5,
      O7 => O6,
      O8(0) => O7(0),
      O9(0) => O8(0),
      Q(2 downto 0) => Q(2 downto 0),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_filter is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_filter : entity is "filter";
end axi_iic_0_filter;

architecture STRUCTURE of axi_iic_0_filter is
begin
SCL_DEBOUNCE: entity work.axi_iic_0_debounce
    port map (
      O2 => O2,
      Scl_clean => Scl_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1
    );
SDA_DEBOUNCE: entity work.axi_iic_0_debounce_3
    port map (
      O1 => O1,
      Sda_clean => Sda_clean,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_axi_ipif_ssp1 is
  port (
    p_18_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I15 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    O34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O36 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I22 : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    I23 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    O19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    O24 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I25 : in STD_LOGIC;
    I26 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    I28 : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_axi_ipif_ssp1 : entity is "axi_ipif_ssp1";
end axi_iic_0_axi_ipif_ssp1;

architecture STRUCTURE of axi_iic_0_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_IP2Bus_RdAck1 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck2 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck20 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck1 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck2 : STD_LOGIC;
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal n_0_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_10_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_11_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_12_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_13_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_15_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_16_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_25_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_32_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_7_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in8_in : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  SR(0) <= \^sr\(0);
AXI_IP2Bus_RdAck1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck2,
      Q => AXI_IP2Bus_RdAck1,
      R => '0'
    );
AXI_IP2Bus_RdAck2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck20,
      Q => AXI_IP2Bus_RdAck2,
      R => '0'
    );
AXI_IP2Bus_WrAck1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck2,
      Q => AXI_IP2Bus_WrAck1,
      R => '0'
    );
AXI_IP2Bus_WrAck2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_12_AXI_LITE_IPIF_I,
      Q => AXI_IP2Bus_WrAck2,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.axi_iic_0_axi_lite_ipif
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      E(0) => E(0),
      I1 => I1,
      I10 => I10,
      I11 => I11,
      I12(0) => I12(0),
      I13(0) => I13(0),
      I14(0) => I14(0),
      I15(0) => I15(0),
      I16(0) => I16(0),
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2 => I2,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22 => I22,
      I23 => I23,
      I24 => n_7_X_INTERRUPT_CONTROL,
      I25(7) => p_0_in16_in,
      I25(6) => p_0_in13_in,
      I25(5) => p_0_in10_in,
      I25(4) => p_0_in7_in,
      I25(3) => n_13_X_INTERRUPT_CONTROL,
      I25(2) => p_0_in1_in,
      I25(1) => n_15_X_INTERRUPT_CONTROL,
      I25(0) => n_16_X_INTERRUPT_CONTROL,
      I26 => n_0_X_INTERRUPT_CONTROL,
      I27 => I24,
      I28 => I25,
      I29 => I26,
      I3 => I3,
      I30 => I27,
      I31 => I28,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      I8 => I8,
      I9 => I9,
      O1 => p_18_in,
      O10 => O3,
      O19(0) => O19(0),
      O2 => \^bus_rnw_reg\,
      O24(3 downto 0) => O24(3 downto 0),
      O3 => n_10_AXI_LITE_IPIF_I,
      O33(7 downto 0) => O33(7 downto 0),
      O34(7 downto 0) => O34(7 downto 0),
      O35(7 downto 0) => O35(7 downto 0),
      O36(7 downto 0) => O36(7 downto 0),
      O4 => n_11_AXI_LITE_IPIF_I,
      O5 => n_12_AXI_LITE_IPIF_I,
      O6 => O1,
      O7(0) => n_25_AXI_LITE_IPIF_I,
      O8(0) => O2(0),
      O9 => n_32_AXI_LITE_IPIF_I,
      Q(2 downto 0) => Q(2 downto 0),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4) => s_axi_wdata(8),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
X_INTERRUPT_CONTROL: entity work.axi_iic_0_interrupt_control
    port map (
      E(0) => n_25_AXI_LITE_IPIF_I,
      I1 => \^sr\(0),
      I2 => n_32_AXI_LITE_IPIF_I,
      I3 => \^bus_rnw_reg\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      O1 => n_0_X_INTERRUPT_CONTROL,
      O2 => n_7_X_INTERRUPT_CONTROL,
      Q(7) => p_0_in16_in,
      Q(6) => p_0_in13_in,
      Q(5) => p_0_in10_in,
      Q(4) => p_0_in7_in,
      Q(3) => n_13_X_INTERRUPT_CONTROL,
      Q(2) => p_0_in1_in,
      Q(1) => n_15_X_INTERRUPT_CONTROL,
      Q(0) => n_16_X_INTERRUPT_CONTROL,
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.axi_iic_0_soft_reset
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      I1 => n_11_AXI_LITE_IPIF_I,
      I2 => n_10_AXI_LITE_IPIF_I,
      SR(0) => \^sr\(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_iic is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_iic : entity is "iic";
end axi_iic_0_iic;

architecture STRUCTURE of axi_iic_0_iic is
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\ : STD_LOGIC;
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 2 to 4 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Cr : STD_LOGIC_VECTOR ( 1 to 7 );
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal Srw : STD_LOGIC;
  signal Tx_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Tx_data_exists : STD_LOGIC;
  signal Tx_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal buffer_Empty : STD_LOGIC;
  signal buffer_Empty_0 : STD_LOGIC;
  signal buffer_Empty_1 : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal ctrl_fifo_wr_i : STD_LOGIC;
  signal dtre_d1 : STD_LOGIC;
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 0 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_0_FILTER_I : STD_LOGIC;
  signal n_0_WRITE_FIFO_CTRL_I : STD_LOGIC;
  signal n_10_IIC_CONTROL_I : STD_LOGIC;
  signal n_10_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_11_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_12_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_13_WRITE_FIFO_I : STD_LOGIC;
  signal n_13_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_14_WRITE_FIFO_I : STD_LOGIC;
  signal n_14_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_15_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_16_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_17_WRITE_FIFO_I : STD_LOGIC;
  signal n_17_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_18_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_19_IIC_CONTROL_I : STD_LOGIC;
  signal n_19_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_20_IIC_CONTROL_I : STD_LOGIC;
  signal n_20_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_21_IIC_CONTROL_I : STD_LOGIC;
  signal n_21_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_22_IIC_CONTROL_I : STD_LOGIC;
  signal n_24_REG_INTERFACE_I : STD_LOGIC;
  signal n_25_REG_INTERFACE_I : STD_LOGIC;
  signal n_25_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_26_REG_INTERFACE_I : STD_LOGIC;
  signal n_27_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_2_FILTER_I : STD_LOGIC;
  signal n_2_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_35_REG_INTERFACE_I : STD_LOGIC;
  signal n_36_REG_INTERFACE_I : STD_LOGIC;
  signal n_3_WRITE_FIFO_CTRL_I : STD_LOGIC;
  signal n_45_REG_INTERFACE_I : STD_LOGIC;
  signal n_46_REG_INTERFACE_I : STD_LOGIC;
  signal n_47_REG_INTERFACE_I : STD_LOGIC;
  signal n_48_REG_INTERFACE_I : STD_LOGIC;
  signal n_4_DYN_MASTER_I : STD_LOGIC;
  signal n_50_REG_INTERFACE_I : STD_LOGIC;
  signal n_52_REG_INTERFACE_I : STD_LOGIC;
  signal n_53_REG_INTERFACE_I : STD_LOGIC;
  signal n_54_REG_INTERFACE_I : STD_LOGIC;
  signal n_55_REG_INTERFACE_I : STD_LOGIC;
  signal n_56_REG_INTERFACE_I : STD_LOGIC;
  signal n_57_REG_INTERFACE_I : STD_LOGIC;
  signal n_58_REG_INTERFACE_I : STD_LOGIC;
  signal n_59_REG_INTERFACE_I : STD_LOGIC;
  signal n_60_REG_INTERFACE_I : STD_LOGIC;
  signal n_61_REG_INTERFACE_I : STD_LOGIC;
  signal n_62_REG_INTERFACE_I : STD_LOGIC;
  signal n_63_REG_INTERFACE_I : STD_LOGIC;
  signal n_72_REG_INTERFACE_I : STD_LOGIC;
  signal n_73_REG_INTERFACE_I : STD_LOGIC;
  signal n_74_REG_INTERFACE_I : STD_LOGIC;
  signal n_75_REG_INTERFACE_I : STD_LOGIC;
  signal n_84_REG_INTERFACE_I : STD_LOGIC;
  signal n_85_REG_INTERFACE_I : STD_LOGIC;
  signal n_86_REG_INTERFACE_I : STD_LOGIC;
  signal n_87_REG_INTERFACE_I : STD_LOGIC;
  signal n_88_REG_INTERFACE_I : STD_LOGIC;
  signal n_89_REG_INTERFACE_I : STD_LOGIC;
  signal n_90_REG_INTERFACE_I : STD_LOGIC;
  signal n_91_REG_INTERFACE_I : STD_LOGIC;
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_3_in : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txFifoRd : STD_LOGIC;
  signal txak : STD_LOGIC;
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.axi_iic_0_dynamic_master
    port map (
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(0) => n_4_DYN_MASTER_I,
      I1 => n_91_REG_INTERFACE_I,
      Q(1) => Cr(3),
      Q(0) => Cr(4),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(3),
      txak => txak
    );
FILTER_I: entity work.axi_iic_0_filter
    port map (
      O1 => n_0_FILTER_I,
      O2 => n_2_FILTER_I,
      Scl_clean => scl_clean,
      Sda_clean => sda_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
IIC_CONTROL_I: entity work.axi_iic_0_iic_control
    port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => n_10_IIC_CONTROL_I,
      D(0) => p_0_out(0),
      E(0) => n_21_X_AXI_IPIF_SSP1,
      I1 => n_2_FILTER_I,
      I10(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      I11(7 downto 0) => timing_param_tsudat_i(7 downto 0),
      I12 => n_0_FILTER_I,
      I13(0) => n_17_WRITE_FIFO_I,
      I2 => n_90_REG_INTERFACE_I,
      I3(6) => n_57_REG_INTERFACE_I,
      I3(5) => n_58_REG_INTERFACE_I,
      I3(4) => n_59_REG_INTERFACE_I,
      I3(3) => n_60_REG_INTERFACE_I,
      I3(2) => n_61_REG_INTERFACE_I,
      I3(1) => n_62_REG_INTERFACE_I,
      I3(0) => n_63_REG_INTERFACE_I,
      I4(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      I5(7 downto 0) => timing_param_thigh_i(7 downto 0),
      I6(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      I7(7 downto 0) => timing_param_thddat_i(7 downto 0),
      I8(7 downto 0) => timing_param_thdsta_i(7 downto 0),
      I9(7 downto 0) => timing_param_tlow_i(7 downto 0),
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      O1(1) => Srw,
      O1(0) => Abgc,
      O2 => n_19_IIC_CONTROL_I,
      O3 => n_20_IIC_CONTROL_I,
      O4(0) => n_21_IIC_CONTROL_I,
      O5 => n_22_IIC_CONTROL_I,
      O6(7) => Data_i2c(0),
      O6(6) => Data_i2c(1),
      O6(5) => Data_i2c(2),
      O6(4) => Data_i2c(3),
      O6(3) => Data_i2c(4),
      O6(2) => Data_i2c(5),
      O6(1) => Data_i2c(6),
      O6(0) => Data_i2c(7),
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Ro_prev => Ro_prev,
      SR(0) => n_52_REG_INTERFACE_I,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(6) => Tx_fifo_data(0),
      Tx_fifo_data(5) => Tx_fifo_data(1),
      Tx_fifo_data(4) => Tx_fifo_data(2),
      Tx_fifo_data(3) => Tx_fifo_data(3),
      Tx_fifo_data(2) => Tx_fifo_data(4),
      Tx_fifo_data(1) => Tx_fifo_data(5),
      Tx_fifo_data(0) => Tx_fifo_data(6),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_under_prev => Tx_under_prev,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      dtre_d1 => dtre_d1,
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(5),
      scl_clean => scl_clean,
      scl_rin_d1 => scl_rin_d1,
      scl_t => scl_t,
      sda_clean => sda_clean,
      sda_rin_d1 => sda_rin_d1,
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      sr_i(0) => sr_i(0),
      txak => txak
    );
READ_FIFO_I: entity work.axi_iic_0_SRL_FIFO
    port map (
      D(1) => p_1_out(6),
      D(0) => Rc_fifo_full,
      I1 => n_2_X_AXI_IPIF_SSP1,
      I2 => n_53_REG_INTERFACE_I,
      I3 => n_46_REG_INTERFACE_I,
      I4 => n_47_REG_INTERFACE_I,
      O6(7) => Data_i2c(0),
      O6(6) => Data_i2c(1),
      O6(5) => Data_i2c(2),
      O6(4) => Data_i2c(3),
      O6(3) => Data_i2c(4),
      O6(2) => Data_i2c(5),
      O6(1) => Data_i2c(6),
      O6(0) => Data_i2c(7),
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      buffer_Empty => buffer_Empty,
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.axi_iic_0_reg_interface
    port map (
      Aas => Aas,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      D(0) => Ro_prev,
      E(0) => n_21_X_AXI_IPIF_SSP1,
      I1 => n_2_X_AXI_IPIF_SSP1,
      I10 => n_19_IIC_CONTROL_I,
      I11(2) => n_21_IIC_CONTROL_I,
      I11(1) => n_4_DYN_MASTER_I,
      I11(0) => n_25_X_AXI_IPIF_SSP1,
      I12(0) => n_19_X_AXI_IPIF_SSP1,
      I13(0) => n_18_X_AXI_IPIF_SSP1,
      I14(0) => n_17_X_AXI_IPIF_SSP1,
      I15(0) => n_16_X_AXI_IPIF_SSP1,
      I16(0) => n_15_X_AXI_IPIF_SSP1,
      I17(0) => n_14_X_AXI_IPIF_SSP1,
      I18(0) => n_13_X_AXI_IPIF_SSP1,
      I19(0) => n_12_X_AXI_IPIF_SSP1,
      I2 => n_14_WRITE_FIFO_I,
      I20(0) => n_11_X_AXI_IPIF_SSP1,
      I21(0) => n_10_X_AXI_IPIF_SSP1,
      I22(4) => Al,
      I22(3) => Txer,
      I22(2) => Tx_under_prev,
      I22(1) => n_10_IIC_CONTROL_I,
      I22(0) => p_0_out(0),
      I3 => n_20_X_AXI_IPIF_SSP1,
      I4 => n_20_IIC_CONTROL_I,
      I5 => n_13_WRITE_FIFO_I,
      I6 => n_27_X_AXI_IPIF_SSP1,
      I7(2) => Bus2IIC_Addr(2),
      I7(1) => Bus2IIC_Addr(3),
      I7(0) => Bus2IIC_Addr(4),
      I8 => n_0_WRITE_FIFO_CTRL_I,
      I9(5) => p_1_out(6),
      I9(4) => Rc_fifo_full,
      I9(3) => Tx_fifo_full,
      I9(2) => Srw,
      I9(1) => Bb,
      I9(0) => Abgc,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      O1(0) => sr_i(0),
      O10 => n_46_REG_INTERFACE_I,
      O11 => n_47_REG_INTERFACE_I,
      O12 => n_48_REG_INTERFACE_I,
      O13 => n_50_REG_INTERFACE_I,
      O14 => n_53_REG_INTERFACE_I,
      O15 => n_54_REG_INTERFACE_I,
      O16 => n_55_REG_INTERFACE_I,
      O17 => n_56_REG_INTERFACE_I,
      O18(6) => n_57_REG_INTERFACE_I,
      O18(5) => n_58_REG_INTERFACE_I,
      O18(4) => n_59_REG_INTERFACE_I,
      O18(3) => n_60_REG_INTERFACE_I,
      O18(2) => n_61_REG_INTERFACE_I,
      O18(1) => n_62_REG_INTERFACE_I,
      O18(0) => n_63_REG_INTERFACE_I,
      O19(7 downto 0) => timing_param_thdsta_i(7 downto 0),
      O2 => n_24_REG_INTERFACE_I,
      O20 => n_72_REG_INTERFACE_I,
      O21 => n_73_REG_INTERFACE_I,
      O22 => n_74_REG_INTERFACE_I,
      O23 => n_75_REG_INTERFACE_I,
      O24(7 downto 0) => timing_param_tsudat_i(7 downto 0),
      O25 => n_84_REG_INTERFACE_I,
      O26 => n_85_REG_INTERFACE_I,
      O27 => n_86_REG_INTERFACE_I,
      O28 => n_87_REG_INTERFACE_I,
      O29 => n_88_REG_INTERFACE_I,
      O3 => n_25_REG_INTERFACE_I,
      O30 => n_89_REG_INTERFACE_I,
      O31 => n_90_REG_INTERFACE_I,
      O32 => n_91_REG_INTERFACE_I,
      O33(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      O34(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      O35(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      O36(7 downto 0) => timing_param_thigh_i(7 downto 0),
      O4 => n_26_REG_INTERFACE_I,
      O5(7 downto 0) => timing_param_thddat_i(7 downto 0),
      O6 => n_35_REG_INTERFACE_I,
      O7 => n_36_REG_INTERFACE_I,
      O8(7 downto 0) => timing_param_tlow_i(7 downto 0),
      O9 => n_45_REG_INTERFACE_I,
      Q(5) => Cr(1),
      Q(4) => Cr(2),
      Q(3) => Cr(3),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      SR(0) => n_52_REG_INTERFACE_I,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      buffer_Empty => buffer_Empty_0,
      buffer_Empty_0 => buffer_Empty_1,
      buffer_Empty_1 => buffer_Empty,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      dtre_d1 => dtre_d1,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => \^gpo\(0),
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      txFifoRd => txFifoRd
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
WRITE_FIFO_CTRL_I: entity work.\axi_iic_0_SRL_FIFO__parameterized0\
    port map (
      I1 => n_48_REG_INTERFACE_I,
      I2 => n_25_REG_INTERFACE_I,
      I3 => n_24_REG_INTERFACE_I,
      I9(0) => Bb,
      O1 => n_0_WRITE_FIFO_CTRL_I,
      O2(0) => dynamic_MSMS(0),
      O3 => n_3_WRITE_FIFO_CTRL_I,
      Q(0) => Cr(5),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      buffer_Empty => buffer_Empty_0,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      txFifoRd => txFifoRd
    );
WRITE_FIFO_I: entity work.axi_iic_0_SRL_FIFO_0
    port map (
      I1 => n_50_REG_INTERFACE_I,
      I13(0) => n_17_WRITE_FIFO_I,
      I2 => n_45_REG_INTERFACE_I,
      I9(0) => Tx_fifo_full,
      O1 => n_13_WRITE_FIFO_I,
      O2 => n_14_WRITE_FIFO_I,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      buffer_Empty => buffer_Empty_1,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      sda_clean => sda_clean,
      shift_reg_ld => shift_reg_ld,
      txFifoRd => txFifoRd
    );
X_AXI_IPIF_SSP1: entity work.axi_iic_0_axi_ipif_ssp1
    port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      E(0) => n_21_X_AXI_IPIF_SSP1,
      I1 => n_56_REG_INTERFACE_I,
      I10 => n_88_REG_INTERFACE_I,
      I11 => n_89_REG_INTERFACE_I,
      I12(0) => n_19_X_AXI_IPIF_SSP1,
      I13(0) => n_18_X_AXI_IPIF_SSP1,
      I14(0) => n_17_X_AXI_IPIF_SSP1,
      I15(0) => n_16_X_AXI_IPIF_SSP1,
      I16(0) => n_15_X_AXI_IPIF_SSP1,
      I17(0) => n_14_X_AXI_IPIF_SSP1,
      I18(0) => n_13_X_AXI_IPIF_SSP1,
      I19(0) => n_12_X_AXI_IPIF_SSP1,
      I2 => n_72_REG_INTERFACE_I,
      I20(0) => n_11_X_AXI_IPIF_SSP1,
      I21(0) => n_10_X_AXI_IPIF_SSP1,
      I22 => n_22_IIC_CONTROL_I,
      I23 => n_3_WRITE_FIFO_CTRL_I,
      I24 => n_54_REG_INTERFACE_I,
      I25 => n_55_REG_INTERFACE_I,
      I26 => n_26_REG_INTERFACE_I,
      I27 => n_35_REG_INTERFACE_I,
      I28 => n_36_REG_INTERFACE_I,
      I3 => n_73_REG_INTERFACE_I,
      I4 => n_74_REG_INTERFACE_I,
      I5 => n_75_REG_INTERFACE_I,
      I6 => n_84_REG_INTERFACE_I,
      I7 => n_85_REG_INTERFACE_I,
      I8 => n_86_REG_INTERFACE_I,
      I9 => n_87_REG_INTERFACE_I,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      O1 => n_20_X_AXI_IPIF_SSP1,
      O19(0) => timing_param_thdsta_i(0),
      O2(0) => n_25_X_AXI_IPIF_SSP1,
      O24(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      O3 => n_27_X_AXI_IPIF_SSP1,
      O33(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      O34(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      O35(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      O36(7 downto 0) => timing_param_thigh_i(7 downto 0),
      Q(2) => Bus2IIC_Addr(2),
      Q(1) => Bus2IIC_Addr(3),
      Q(0) => Bus2IIC_Addr(4),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      SR(0) => n_2_X_AXI_IPIF_SSP1,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(8) => s_axi_wdata(10),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_axi_iic__parameterized0\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_axi_iic__parameterized0\ : entity is "axi_iic";
end \axi_iic_0_axi_iic__parameterized0\;

architecture STRUCTURE of \axi_iic_0_axi_iic__parameterized0\ is
begin
X_IIC: entity work.axi_iic_0_iic
    port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_iic_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_iic_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_iic_0 : entity is "axi_iic,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_iic_0 : entity is "axi_iic_0,axi_iic,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axi_iic_0 : entity is "axi_iic_0,axi_iic,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=25000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0,C_DEFAULT_VALUE=0x00}";
end axi_iic_0;

architecture STRUCTURE of axi_iic_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.\axi_iic_0_axi_iic__parameterized0\
    port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(8) => \^s_axi_rdata\(31),
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
