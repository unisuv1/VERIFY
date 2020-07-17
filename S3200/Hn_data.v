`timescale 1 ps / 1 ps

module Hn_data(
	input              rstn  	 	,
	input              clk   	 	,
	input      [  9:0] wraddress 	,
	input      [ 3:0]  data  		,
	input              wren    	,
	input              rden     	,
	input      [  9:0] rdaddress 	,
	output 	           Hn_data    
);
//-------------------
data_ram data_ram_inst(
        .clka(clk),
        .ena(wren),
        .wea(1'b1),
        .addra(wraddress[7:0]),
        .dina(data),
        .clkb(clk),
        .enb(rden),
        .addrb(rdaddress),
        .doutb(Hn_data)
	);

//-------------------
//wire [9:0] wraddressA ,wraddressB ;
//wire [10:0] wraddress_1 ;
//reg [10:0] wraddress_2 ;
//wire [3:0] Chip1_data ,Chip2_data ,Chip3_data ,Chip4_data ;
////-----------------------
//assign wraddressA = wraddress ;
//assign wraddress_1 = {1'b0 ,wraddress};
//assign wraddressB = wraddress_2[9:0] ;
//assign Hn_data = {Chip4_data ,Chip3_data ,Chip2_data ,Chip1_data};
////-----------------------
//always@(*)
//begin
//	if (wraddress_1 < 11'd400)
//		wraddress_2 <= 11'd399 - wraddress_1 ;
//	else
//		wraddress_2 <= 11'd1199 - wraddress_1 ;
//end
////-------------
//Chip_data Chip_data1(
//	.rstn			(rstn),
//	.clk			(clk),
//	.wraddress	(wraddressA),
//	.data			(data[1:0]),
//	.wren			(wren),
//	.rden			(rden),
//	.rdaddress	(rdaddress),
//	.rd_q			(Chip1_data)
//);
////-----------------------
//Chip_data Chip_data2(
//	.rstn			(rstn),
//	.clk			(clk),
//	.wraddress	(wraddressB),
//	.data			(data[3:2]),
//	.wren			(wren),
//	.rden			(rden),
//	.rdaddress	(rdaddress),
//	.rd_q			(Chip2_data)
//);
////-----------------------
//Chip_data Chip_data3(
//	.rstn			(rstn),
//	.clk			(clk),
//	.wraddress	(wraddressA),
//	.data			(data[5:4]),
//	.wren			(wren),
//	.rden			(rden),
//	.rdaddress	(rdaddress),
//	.rd_q			(Chip3_data)
//);
////-----------------------
//Chip_data Chip_data4(
//	.rstn			(rstn),
//	.clk			(clk),
//	.wraddress	(wraddressB),
//	.data			(data[7:6]),
//	.wren			(wren),
//	.rden			(rden),
//	.rdaddress	(rdaddress),
//	.rd_q			(Chip4_data)
//);
//-------------------
endmodule
