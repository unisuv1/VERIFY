`timescale 1 ps / 1 ps

module sck_Ctrl(
	input              rstn                ,
	input              clk                 ,
	input              SCK_req	        		,
	input [7:0]	  		 SCK_DivCnt     		,
	input [7:0]	  	 	 SCK_num     			,
	output 	 	 	 	 sck_end					,			
	output reg	 	 	 data_req				,			
	output reg			 sck_o						
	);
//------------
reg [1:0] status;
localparam idle           =2'd0 ;
localparam get_Start      =2'd1 ;
localparam get_end        =2'd2 ;

wire [7:0] SCK_DivCnt_r ;
wire [7:0] SCK_DivCnt4_0 ,SCK_DivCnt4_1 ,SCK_DivCnt4_2 ,SCK_DivCnt4_3 ;
wire data_reqEnA , data_reqEnB;
wire get_End_valid ;
wire data_reqA ,data_reqB ;
reg [7:0] sck_num_cnt ;
reg [7:0] sck_cnt ;
reg sck ;
reg sck_1 ;

//------------	
assign SCK_DivCnt_r= SCK_DivCnt+1'b1 ;
assign SCK_DivCnt4_0 = 8'd0 ;
assign SCK_DivCnt4_1 = {2'b00,SCK_DivCnt_r[7:2]};
assign SCK_DivCnt4_2 = {1'b0,SCK_DivCnt_r[7:1]} ;

assign SCK_DivCnt4_3 = SCK_DivCnt4_1+ SCK_DivCnt4_2 ;
assign data_reqEnA = ((status==get_Start) &&(sck_num_cnt<SCK_num));
assign data_reqEnB = ((status==get_Start) &&(sck_num_cnt<SCK_num));
assign data_reqA = (data_reqEnA && (sck_cnt == SCK_DivCnt4_0)) ;
assign data_reqB = (data_reqEnB && (sck_cnt == SCK_DivCnt4_2)) ;

assign get_End_valid = (sck_num_cnt == SCK_num);
assign sck_end  = (status==get_end);
//------------status----------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status <= idle;
end
else
begin
	if(status==idle			&& SCK_req			)status <= get_Start ;
	if(status==get_Start   	&& get_End_valid 	)status <= get_end  	; 
	if(status==get_end   							)status <= idle  		; 
end
//-------data_r-----
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	sck_cnt <=8'd0 ;
end
else
begin
	if (status==idle)						sck_cnt <= 8'd0 ;
	else if (sck_cnt < SCK_DivCnt)	sck_cnt <= sck_cnt + 1'b1 ;
	else										sck_cnt <= 8'd0 ;
end
//------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	sck_num_cnt	<=8'd0 ;
end
else
begin
	if (status==idle)							sck_num_cnt	<=8'd0 ;
	else if (sck_cnt	== SCK_DivCnt)  	sck_num_cnt	<=sck_num_cnt + 1'b1 ;	
end
//---------------------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	sck <=1'd0 ;
end
else
begin
	if (status==idle)							sck	<=1'd0 ;
	else if(sck_cnt < SCK_DivCnt4_1)		sck	<=1'd0 ;
	else if(sck_cnt < SCK_DivCnt4_3)		sck	<=1'd1 ;
	else											sck	<=1'd0 ;
end
//---------------------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	data_req <=1'd0 ;
end
else
begin
	data_req <= (data_reqA || data_reqB) ;
end
//------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	sck_1 <=1'd0 ;
	sck_o <=1'd0 ;
end
else
begin
	sck_1 <= sck 	;
	sck_o <= sck_1 ;
end

endmodule
