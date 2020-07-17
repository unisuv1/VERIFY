`timescale 1 ps / 1 ps

module SP_data(
	input              rstn                ,
	input              clk                 ,
	input              SPdata_start        ,
	input              SPdata_req        	,
	input [15:0]	  	 H_command       		,
	output reg 		 	 SPdata
	);
//----------------------
reg SPdata_Ready ;
reg [15:0]	SPdata_temp ;
//----------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	SPdata_Ready <=1'b0 ;
end
else
begin
	if (SPdata_start)		SPdata_Ready <=1'b0 ;
	else if (SPdata_req)	SPdata_Ready <=1'b1 ;
end
//----------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	SPdata_temp <=16'd0 ;
end
else
begin
	if (SPdata_start)								SPdata_temp <= H_command ;
	else if (SPdata_req && !SPdata_Ready)	SPdata_temp <= H_command ;
	else if (SPdata_req && SPdata_Ready)	SPdata_temp <={SPdata_temp[14:0],1'b0} ;
end
//----------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	SPdata <=1'b0 ;
end
else
begin
	SPdata <= SPdata_temp[15];
end

endmodule
