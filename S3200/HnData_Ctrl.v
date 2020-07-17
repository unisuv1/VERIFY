`timescale 1 ps / 1 ps

module HnData_Ctrl(
	input              rstn  	 	,
	input              clk   	 	,
	input      [  9:0] wraddress 	,
	input      [ 3:0] data  		,
	input              wren    	,
	input              rden     	,
	input      [  9:0] rdaddress 	,
	output 	  [ 3:0] PrnData     
);
//-------------------
(* mark_debug = "true" *)reg        wr_en1,wr_en2,wr_en3,wr_en4;
reg[9:0]   wr_addr;
wire    H1_data ,H2_data,H3_data,H4_data ;
always@(*)
begin
	if (wraddress < 10'd50)
		wr_en1 <= wren ;
	else if (wraddress >= 10'd200 && wraddress < 10'd250)
		wr_en1 <= wren ;
	else
	   wr_en1 <= 1'b0 ;
end
always@(*)
begin
	if (wraddress >= 10'd50 && wraddress < 10'd100)
		wr_en2 <= wren ;
	else if (wraddress >= 10'd250 && wraddress < 10'd300)
		wr_en2 <= wren ;
	else
	   wr_en2 <= 1'b0 ;
end
always@(*)
begin
	if (wraddress >= 10'd100 && wraddress < 10'd150)
		wr_en3 <= wren ;
	else if (wraddress >= 10'd300 && wraddress < 10'd350)
		wr_en3 <= wren ;
	else
	   wr_en3 <= 1'b0 ;
end
always@(*)
begin
   if (wraddress >= 10'd150 && wraddress < 10'd200)
       wr_en4 <= wren ;
   else if (wraddress >= 10'd350 && wraddress < 10'd400)
       wr_en4 <= wren ;
   else
      wr_en4 <= 1'b0 ;
end


always@(*)
begin
	if (wraddress < 10'd50)    //si1 h
		wr_addr <= wraddress ;
	else if (wraddress < 10'd100)    //si2 h
		wr_addr <= wraddress - 10'd50 ;
    else if (wraddress < 10'd150)    //si3 h
        wr_addr <= wraddress - 10'd100 ;
    else if (wraddress < 10'd200)    //si4 h
        wr_addr <= wraddress - 10'd150 ;
        
    else if (wraddress < 10'd250)    //si1 l
        wr_addr <= wraddress - 10'd150 ;
    else if (wraddress < 10'd300)    //si2 l
        wr_addr <= wraddress - 10'd200 ;
    else if (wraddress < 10'd350)    //si3 l
        wr_addr <= wraddress - 10'd250 ;
    else if (wraddress < 10'd400)    //si4 l
        wr_addr <= wraddress - 10'd300 ;
end


//-----------------------
assign PrnData = {H4_data ,H3_data,H2_data ,H1_data };
//-----------------------
Hn_data Hn1_data(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_addr),
	.data			(data),
	.wren			(wr_en1),
	.rden			(rden),
	.rdaddress	(rdaddress),
	.Hn_data		(H1_data)
);
//-----------------------
Hn_data Hn2_data(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_addr),
	.data			(data),
	.wren			(wr_en2),
	.rden			(rden),
	.rdaddress	(rdaddress),
	.Hn_data		(H2_data)
);
//-----------------------
Hn_data Hn3_data(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_addr),
	.data			(data),
	.wren			(wr_en3),
	.rden			(rden),
	.rdaddress	(rdaddress),
	.Hn_data		(H3_data)
);
//-----------------------
Hn_data Hn4_data(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_addr),
	.data			(data),
	.wren			(wr_en4),
	.rden			(rden),
	.rdaddress	(rdaddress),
	.Hn_data		(H4_data)
);
//-------------------
endmodule
