//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Wed Jul 29 18:16:33 2020
//Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire m00_axi_txn_done;

design_1 design_1_i
       (.m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_txn_done(m00_axi_txn_done));
endmodule
