`timescale 1 ps / 1 ps

module Chip_data(
	input              rstn  	 	,
	input              clk   	 	,
	input      [  9:0] wraddress 	,
	input      [ 1:0]  data  		,
	input              wren    	,
	input              rden     	,
	input      [  8:0] rdaddress 	,
	output 	  [ 3:0]  rd_q    
);
//-------------------
reg [9:0] wraddress_1 ;
wire [8:0] wraddress_2 ;
reg wren1 ,wren2 ,wren3, wren4 ;
wire [9:0] RAM_rAddr ;
//-------------------
assign RAM_rAddr = {1'b0 ,rdaddress};
assign wraddress_2 = wraddress_1[8:0] ;
//-------------------
RAM_bit SI1_data(
	.clock  	 (clk	     		),
	.wraddress(wraddress_2	),
	.data     (data			),
	.wren     (wren1			),
	.rden     (rden			),
	.rdaddress(RAM_rAddr		),
	.q        (rd_q[0]		) 
);

RAM_bit SI2_data(
	.clock  	 (clk	     		),
	.wraddress(wraddress_2	),
	.data     (data			),
	.wren     (wren2			),
	.rden     (rden			),
	.rdaddress(RAM_rAddr		),
	.q        (rd_q[1]		) 
);

RAM_bit SI3_data(
	.clock  	 (clk	     		),
	.wraddress(wraddress_2	),
	.data     (data			),
	.wren     (wren3			),
	.rden     (rden			),
	.rdaddress(RAM_rAddr		),
	.q        (rd_q[2]		) 
);

RAM_bit SI4_data(
	.clock  	 (clk	     		),
	.wraddress(wraddress_2	),
	.data     (data			),
	.wren     (wren4			),
	.rden     (rden			),
	.rdaddress(RAM_rAddr		),
	.q        (rd_q[3]		) 
);
//-------------
always@(*)
begin
	if (wraddress < 10'd100)
		wraddress_1 <= wraddress ;
	else if (wraddress < 10'd200)
		wraddress_1 <= wraddress - 10'd100 ;
	else if (wraddress < 10'd300)
		wraddress_1 <= wraddress - 10'd200 ;
	else if (wraddress < 10'd400)
		wraddress_1 <= wraddress - 10'd300 ;
	else if (wraddress < 10'd500)
		wraddress_1 <= wraddress - 10'd300 ;
	else if (wraddress < 10'd600)
		wraddress_1 <= wraddress - 10'd400 ;
	else if (wraddress < 10'd700)
		wraddress_1 <= wraddress - 10'd500 ;
	else
		wraddress_1 <= wraddress - 10'd600 ;
end
//-------------
always@(*)
begin
	if (wraddress < 10'd100)
		wren1 <= wren ;
	else if (wraddress < 10'd400)
		wren1 <= 1'b0 ;
	else if (wraddress < 10'd500)
		wren1 <= wren ;
	else
		wren1 <= 1'b0 ;
end

//-------------
always@(*)
begin
	if (wraddress < 10'd100)
		wren2 <= 1'b0 ;
	else if (wraddress < 10'd200)
		wren2 <= wren ;
	else if (wraddress < 10'd500)
		wren2 <= 1'b0 ;
	else if (wraddress < 10'd600)
		wren2 <= wren ;
	else
		wren2 <= 1'b0 ;
end
//-------------
always@(*)
begin
	if (wraddress < 10'd200)
		wren3 <= 1'b0 ;
	else if (wraddress < 10'd300)
		wren3 <= wren ;
	else if (wraddress < 10'd600)
		wren3 <= 1'b0 ;
	else if (wraddress < 10'd700)
		wren3 <= wren ;
	else
		wren3 <= 1'b0 ;
end
//-------------
always@(*)
begin
	if (wraddress < 10'd300)
		wren4 <= 1'b0 ;
	else if (wraddress < 10'd400)
		wren4 <= wren ;
	else if (wraddress < 10'd700)
		wren4 <= 1'b0 ;
	else if (wraddress < 10'd800)
		wren4 <= wren ;
	else
		wren4 <= 1'b0 ;
end
//-------------------
endmodule
