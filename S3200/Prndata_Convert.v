`timescale 1 ps / 1 ps

module Prndata_Convert(
input              rstn             	 ,
input              clk               	 ,
input              data_switch        	 ,
input              wr_req               ,
input      [ 3:0] wr_data              ,
input      [ 7:0]  data_Type       		 ,
input      [ 7:0]  PrintHead_Type       ,
input              rd_req               ,
output reg [ 3:0] PrnData              ,
output reg         DATA_ERROR			    
);
//---------------------------
reg [9:0] Data_Deep ;
reg  WR_switch  ;
wire W_switch ,R_switch ;
wire   wr_en_A ,wr_en_B ;
reg [  9:0] wr_index ;
reg [  9:0] rd_index ;
wire[ 31:0] rd_q_A ,rd_q_B ;
wire rdenA ,rdenB ;
wire wr_index_is_max ;
//---------------------------
assign wr_index_is_max =(wr_index==Data_Deep || wr_index==10'd0) ;
assign W_switch = WR_switch ;
assign R_switch = !WR_switch ;
assign wr_en_A = (wr_req && !W_switch) ;
assign wr_en_B = (wr_req && W_switch) ;
assign rdenA = (!R_switch && rd_req);
assign rdenB = (R_switch && rd_req) ;
//---------------------------
always@(*)
begin
	if (data_Type==8'h02)//all 1
		PrnData <= 4'hF ;
	else if (data_Type==8'h03)//Print Data
		PrnData <= (!R_switch)?rd_q_A : rd_q_B  ;
	else//all 0
		PrnData <= 4'h0 ;
end
//---------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Data_Deep  <= 9'd360 ;
end
else
begin
	if ((PrintHead_Type == 8'h02 || PrintHead_Type == 8'h03 || 
		  PrintHead_Type == 8'h04 || PrintHead_Type == 8'h05) )		Data_Deep <= 10'd720 ;//Dx5/Dx7/xp600/L1440 :360
	else if (PrintHead_Type == 8'h01 || PrintHead_Type == 8'h06)	Data_Deep <= 10'd800 ;//Dx6/S4:400
end
//-----------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	WR_switch <= 1'b0;
end
else
begin
	if (data_switch)	WR_switch <= !WR_switch ;
	else					WR_switch <= WR_switch ;
end
//----------------
HnData_Ctrl HnData_Ctrl_inst0(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_index),
	.data			(wr_data),
	.wren			(wr_en_A),
	.rden			(rdenA),
	.rdaddress	(rd_index),
	.PrnData		(rd_q_A)
);

HnData_Ctrl HnData_Ctrl_inst1(
	.rstn			(rstn),
	.clk			(clk),
	.wraddress	(wr_index),
	.data			(wr_data),
	.wren			(wr_en_B),
	.rden			(rdenB),
	.rdaddress	(rd_index),
	.PrnData		(rd_q_B)
);

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	wr_index <= 10'd0 ;
end
else
begin
	if 	(data_switch)	wr_index <= 10'd0 ;
	else if(wr_req)		wr_index <= wr_index+ 1'b1 ;
end

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	rd_index <= 10'd0;
end
else
begin
	if 	(data_switch)	rd_index <= 10'd0 ;
	else	if(rd_req)		rd_index <= rd_index+ 1'b1 ;
end
//------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	DATA_ERROR  <= 1'b0 ;
end
else
begin
	DATA_ERROR  <=(data_switch && !wr_index_is_max);
end

endmodule