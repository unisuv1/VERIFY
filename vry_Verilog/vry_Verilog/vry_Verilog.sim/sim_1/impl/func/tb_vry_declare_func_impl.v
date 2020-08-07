// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Aug 06 19:30:02 2020
// Host        : DESKTOP-HKSH0O8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/UV/FPGA/VERIFY/vry_Verilog/vry_Verilog/vry_Verilog.sim/sim_1/impl/func/tb_vry_declare_func_impl.v
// Design      : vry_declare
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "a91bf766" *) 
(* NotValidForBitStream *)
module vry_declare
   (rstn,
    sclk,
    c);
  input rstn;
  input sclk;
  output c;

  wire c;
  wire c_OBUF;
  wire n_0_b_i_1;
  wire rstn;
  wire rstn_IBUF;
  wire sclk;
  wire sclk_IBUF;
  wire sclk_IBUF_BUFG;

LUT1 #(
    .INIT(2'h1)) 
     b_i_1
       (.I0(rstn_IBUF),
        .O(n_0_b_i_1));
FDCE #(
    .INIT(1'b0)) 
     b_reg
       (.C(sclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_b_i_1),
        .D(1'b1),
        .Q(c_OBUF));
OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
IBUF rstn_IBUF_inst
       (.I(rstn),
        .O(rstn_IBUF));
BUFG sclk_IBUF_BUFG_inst
       (.I(sclk_IBUF),
        .O(sclk_IBUF_BUFG));
IBUF sclk_IBUF_inst
       (.I(sclk),
        .O(sclk_IBUF));
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
