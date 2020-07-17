`timescale 1 ps / 1 ps

module LVDS_Ctrl(

input              rstn                        ,
input              clk                         ,

input      [ 15:0] PrnData0               	  ,
input              D_SCK                       ,//mainboard_mask
input              FIRE_TO_FPGA                ,
input      [  3:0] F_CMD                   	  ,

output          	request_prefill              ,
output          	request_up                   ,
output          	request_shake_bf_pass    	  ,
output          	request_print                ,
output          	request_down                 ,
output          	request_shake_bt_pass   	  ,
output          	request_shake_bf_pass_up  	  ,
output          	request_shake_bf_pass_down	  ,

output       	 	 FPGA_INT1                   ,//updata wave
output         	 data_switch                 ,
output reg [ 15:0] FireCycle_min_o             ,
output reg         LVDS_data_valid             ,
output reg [ 15:0] LVDS_wr_dataA                       
);
//dff----------
reg  [ 15:0] FireCycle ,FireCycle_min  ;
reg  [ 15:0] PrnData0_1 , PrnData0_2, PrnData0_3;
reg 			 D_SCK_1 ,D_SCK_2 ,D_SCK_3,D_SCK_4;
reg 			 FIRE_1  ,FIRE_2  ,FIRE_3;
reg  [ 3:0]  F_CMD_1 ,F_CMD_2 ,LVDS_CMD ;
reg FIRE_4 , FIRE_5 ,FIRE_6 ,FIRE_7 , FIRE_8, FIRE_Trig ;
wire CMD_prefill ,CMD_shake_bf_pass , CMD_shake_bf_pass_up,CMD_shake_bf_pass_down;
wire CMD_up , CMD_down ,CMD_pass_End ,CMD_print ,CMD_shake_bt_pass ;
wire request_pass_End ,int_end;
reg [7:0] cnt ;
localparam int_time = 8'd99 ;

reg [1:0] status;
localparam s_idle   =2'd0 ;
localparam s_wait   =2'd1 ;
localparam s_end    =2'd2 ;
//------------------------
assign data_switch = FIRE_TO_FPGA ;
assign int_end = (cnt== int_time);
assign FPGA_INT1 = !(status==s_wait);

assign CMD_prefill 				     = (F_CMD==4'hA );
assign CMD_up 		 				= (F_CMD==4'h1 );
assign CMD_down 					= (F_CMD==4'h2 );
assign CMD_print 					= (F_CMD==4'h4 );
assign CMD_shake_bf_pass_up 	       = (F_CMD==4'h3 );
assign CMD_shake_bf_pass_down	      = (F_CMD==4'h5 );
assign CMD_shake_bf_pass 		     = (F_CMD==4'h6 );
assign CMD_shake_bt_pass   	        = (F_CMD==4'h9 );
assign CMD_pass_End  			    = (F_CMD==4'hE );

assign request_prefill	 				= (FIRE_TO_FPGA && CMD_prefill			);
assign request_up 						= (FIRE_TO_FPGA && CMD_up					);
assign request_shake_bf_pass 			= (FIRE_TO_FPGA && CMD_shake_bf_pass	);
assign request_print	 					= (FIRE_TO_FPGA && CMD_print				);
assign request_down 						= (FIRE_TO_FPGA && CMD_down				);
assign request_shake_bt_pass 			= (FIRE_TO_FPGA && CMD_shake_bt_pass	);
assign request_shake_bf_pass_up 		= (FIRE_TO_FPGA && CMD_shake_bf_pass_up	);
assign request_shake_bf_pass_down 	= (FIRE_TO_FPGA && CMD_shake_bf_pass_down	);
assign request_pass_End 				= (FIRE_TO_FPGA && CMD_pass_End			);
//------------------------
//always@(negedge rstn or posedge clk)
//if(!rstn)
//begin
//	PrnData0_1  <=0;
//	PrnData0_2  <=0;
//	PrnData0_3  <=0;
	
//	D_SCK_1  <=1'b0;
//	D_SCK_2  <=1'b0;
//	D_SCK_3  <=1'b0;
//    D_SCK_4  <=1'b0;
	
//	FIRE_1  <=1'b0;
//	FIRE_2  <=1'b0;
//	FIRE_3  <=1'b0;
	
//	F_CMD_1  <=0;
//	F_CMD_2  <=0;
//	LVDS_CMD  <=0;
//end
//else
//begin
//	PrnData0_1 <= PrnData0 ;
//	PrnData0_2 <= PrnData0_1 ;
//	PrnData0_3 <= PrnData0_2 ;
	
//	D_SCK_1 <= D_SCK ;
//	D_SCK_2 <= D_SCK_1 ;
//	D_SCK_3 <= D_SCK_2 ;
//    D_SCK_4 <= D_SCK_3 ;
	
//	FIRE_1 <= FIRE_TO_FPGA ;
//	FIRE_2 <= FIRE_1  ;
//	FIRE_3 <= FIRE_2  ;
	
//	F_CMD_1  <= F_CMD	 ;
//	F_CMD_2  <= F_CMD_1  ;
//	LVDS_CMD <= F_CMD_2  ;
//end
//---------------------------------
//always@(negedge rstn or posedge clk)
//if(!rstn)
//begin
//	FIRE_4  <=1'b0;
//	FIRE_5  <=1'b0;
//	FIRE_6  <=1'b0;
//	FIRE_7  <=1'b0;
//	FIRE_8  <=1'b0;
//	FIRE_Trig  <=1'b0;
//end
//else
//begin
//		FIRE_4 <= FIRE_3 ;
//		FIRE_5 <= FIRE_4 ;
//		FIRE_6 <= FIRE_5 ;
//		FIRE_7 <= (FIRE_3 && FIRE_4 && FIRE_5 && FIRE_6) ;
//	    FIRE_8 <= FIRE_7 ;
//	    FIRE_Trig <= (FIRE_7 && !FIRE_8) ;	
//end
//LVDS_data_valid, LVDS_wr_data--------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	LVDS_data_valid <=1'b0;
	LVDS_wr_dataA 	 <=16'd0;
end
else
begin
//	if (D_SCK_3 && !D_SCK_4) //falling_edge
//		begin
			LVDS_data_valid <=  D_SCK;
			LVDS_wr_dataA	 <= PrnData0;
//		end
//	else
//		LVDS_data_valid <=1'b0 ;
end
//-----------------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	FireCycle		<=16'hffff;
	FireCycle_min	<=16'hffff;
	FireCycle_min_o <=16'hffff;
end
else
begin
	if(FIRE_TO_FPGA)						FireCycle 		<= 16'd0;
	else if (FireCycle < 16'hffff)		FireCycle 		<= FireCycle + 1'b1 ;
	else                                FireCycle 		<= FireCycle;
			
	if (FIRE_TO_FPGA && (FireCycle<FireCycle_min))	FireCycle_min 	<= FireCycle;
	else                                        FireCycle_min 	<= FireCycle_min;
	
	FireCycle_min_o<= FireCycle_min;
end
//--------------------updata wave-------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status <= s_idle ;
end
else
begin
	if (status == s_idle && request_pass_End)		status <= s_wait ;
	else if (status == s_wait && int_end)			status <= s_end ;
	else if (status == s_end)							status <= s_idle ;	
end

always@(posedge clk)
begin
	if (status == s_wait) cnt <= cnt + 1'b1 ;
	else						 cnt <= 8'd0 ;
end
//-----------------------------------------------
endmodule
