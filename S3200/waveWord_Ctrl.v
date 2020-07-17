`timescale 1 ps / 1 ps

module waveWord_Ctrl(
	input              rstn             ,
	input              clk              ,
	input              data_req       	,
	input [31:0]       waveWord         ,
	input 		 	 	 req		 			,
	output  [9:0]	 	 da_data				,
	output 			 	 ww_done				,
	output 			 	 wave_done			,
	
	input [9:0] 	 	 VolMax	 	 		,
	input [13:0] 	 	 VolSlope_Max	 	,
	output 	 		 	 volMax_ERR			,
	output 	 		 	 VolSlope_Max_ERR 	
	);
//------------------------------
wire unsigned [9:0]  da_start_value ;
wire signed [13:0] da_step_value_r 	;
wire signed [13:0] da_step_value 	;
wire unsigned [7:0]  da_samples 		;

wire step_SignBit;
wire [13:0] da_step_value_abs ;

reg VolSlope_Err ;
wire [13:0] VolSlope_Max_n ;
reg [7:0] da_samples_cnt ;
wire done_Temp ;

reg Vol_Err ;
reg unsigned[15:0]  da_value_Temp ;
wire [9:0] da_data_r ;

reg [2:0] status;
localparam idle           =3'd0 ;
localparam get_Start      =3'd1 ;
localparam get_wait       =3'd2 ;
localparam get_end        =3'd3 ;

//------------------------------
assign  da_samples 			= waveWord[7:0];
assign  da_step_value_r		= waveWord[21:8];
assign  da_start_value  	= waveWord[31:22];

assign da_data_r = da_value_Temp[15:6] ;
assign step_SignBit = (da_step_value_r[13]);
assign da_step_value_abs = (step_SignBit)?(14'd0-da_step_value_r):da_step_value_r ;
assign VolSlope_Max_n = (step_SignBit)?(14'd0-VolSlope_Max):VolSlope_Max ;
assign da_step_value = (VolSlope_Err)?VolSlope_Max_n:da_step_value_r ;

assign VolSlope_Max_ERR = VolSlope_Err ;
assign da_data = (Vol_Err)?VolMax:da_data_r ;
assign volMax_ERR = Vol_Err ;

assign done_Temp = (da_samples_cnt == da_samples ) ;
assign ww_done = (status==get_end) ;
assign wave_done = (!(status==idle) && da_samples==8'd0);
//------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status <=idle;
end
else
begin
	if(status==idle					&& req			)status<= get_Start 	;
	else if(status==get_Start   	&&	wave_done	)status<= get_end 	; 
	else if(status==get_Start   	&&	data_req		)status<= get_wait 	; 
	else if(status==get_wait   	&& !done_Temp 	)status<= get_wait 	; 
	else if(status==get_wait   	&& done_Temp	)status<= get_end 	; 
	else if(status==get_end   							)status<= idle  		; 
end
//-------------------------------
always@(posedge clk)
begin
	Vol_Err <= (da_data_r > VolMax);
	VolSlope_Err <= ($unsigned(da_step_value_abs)>$unsigned(VolSlope_Max_n));
end
//---------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	da_samples_cnt	<= 8'd0 ;
end
else
begin
	if (status==idle )											da_samples_cnt	<= 8'd0 ;
	else if (data_req && da_samples_cnt < da_samples)  da_samples_cnt	<= da_samples_cnt + 1'b1 ;	
end
//------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	da_value_Temp	<= 16'd0 ;
end
else
begin
	if (status==get_Start	&& data_req	)		da_value_Temp	<= {da_start_value ,6'd0} ;
	else if (status==get_wait  && data_req	)	da_value_Temp	<= $unsigned(da_value_Temp) + $signed({da_step_value[13],da_step_value[13],da_step_value}) ;
end

endmodule
