`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 14:51:20
// Design Name: 
// Module Name: tb_vry_FifoFirstRead
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_vry_FifoFirstRead();

reg							rst_n,sclk;

reg			[63 : 0] 		din    ; 
reg			 				wr_en  ; 
reg							rd_en  ; 
wire 		[63 : 0] 		dout   ; 
wire 						full   ; 
wire 						empty  ; 

wire 		[63 : 0] 		dout1   ; 
wire 						full1   ; 
wire 						empty1  ; 

initial begin 
	rst_n = 0;
	sclk = 0;	
	#100;	
	rst_n = 1;	
end 

always #5 sclk = ~sclk;

initial begin 
	din = 0;
	wr_en = 0;
	#200;
	forever begin		
		@(posedge sclk)
		wr_en = 1;
		din = din + 1;
	end 
end 

initial begin
	rd_en = 0;
	#300;
	
	forever begin
		@(posedge sclk)
		rd_en = 1;	
		@(posedge sclk)
		@(posedge sclk)
		rd_en = 0;
	end 
end 


assign	vry_FifoFirstRead_inst.din = din;
assign	vry_FifoFirstRead_inst.wr_en = wr_en;
assign	vry_FifoFirstRead_inst.rd_en = rd_en;

assign	dout = vry_FifoFirstRead_inst.dout;
assign	full = vry_FifoFirstRead_inst.full;
assign	empty = vry_FifoFirstRead_inst.empty;

assign	dout1 = vry_FifoFirstRead_inst.dout1;
assign	full1 = vry_FifoFirstRead_inst.full1;
assign	empty1 = vry_FifoFirstRead_inst.empty1;


vry_FifoFirstRead	vry_FifoFirstRead_inst(
	.rst_n(rst_n),
	.sclk(sclk)
);



endmodule
