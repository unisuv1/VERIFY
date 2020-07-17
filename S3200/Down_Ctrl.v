`timescale 1 ps / 1 ps

module Down_Ctrl(
input              rstn               ,
input              clk                ,
input [7:0]  		 PrintHead_Type     ,
//input              st_req_up          ,
input              st_req_print       ,
input              st_req_down        ,
input              st_platform        ,
output reg         PtoDownEn              		 
);
//---------------down---------------
reg [8:0] downCnt ;
localparam platTimeA = 9'd300  ;
localparam platTimeB = 9'd100  ;
reg p_d;
reg [7:0] usCnt ;
wire clkus;
assign clkus = (st_platform && (usCnt==8'd95)) ;
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	usCnt <= 8'd0 ;
end
else
begin
	if (st_platform && $unsigned(usCnt)<8'd95 )	usCnt <= usCnt + 1'b1 ;//us cnt
	else														usCnt <= 8'd0 ;
end

//reg u_p ;
//always@(negedge rstn or posedge clk)
//if(!rstn)
//begin
//	u_p <= 1'b0 ;
//end
//else
//begin
//	if (st_req_up)				u_p <= 1'b1 ;//UP-to-PRINT
//	else if (st_req_print) 	u_p <= 1'b0 ;
//end


always@(negedge rstn or posedge clk)
if(!rstn)
begin
	p_d <= 1'b0 ;
end
else
begin
	if (st_req_print)			p_d <= 1'b1 ;//PRINT-to-DOWN
	else if (st_req_down)  	p_d <= 1'b0 ;
end

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	downCnt <= 9'd0 ;
end
else
begin
	if (st_platform && clkus)	downCnt <= downCnt +1'b1 ;//the time cnt of platform 
	else if(!st_platform) 		downCnt <= 9'd0 ;
end

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	PtoDownEn <= 1'b0 ;
end
else
begin
	if ((PrintHead_Type==8'h05 || PrintHead_Type==8'h06) && st_platform && p_d && !(downCnt < platTimeB))		PtoDownEn  <= 1'b1 ;//L1440/S4:PRINT-to-DOWN:<100us.
	else if (st_platform && !(downCnt < platTimeA))																				PtoDownEn  <= 1'b1 ;//:platform_time:<300us.
	else																																		PtoDownEn  <= 1'b0 ;
end

endmodule
