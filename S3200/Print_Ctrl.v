`timescale 1 ps / 1 ps

module Print_Ctrl(

input              rstn                       ,
input              clk                        ,

input              request_job_start          ,
input              request_poweron            ,
input              request_poweroff           ,
input              request_prefill            ,
input              request_up                 ,
input              request_shake_bf_pass  	 ,//shake_bf_pass
input              request_print              ,
input              request_down               ,
input              request_shake_bt_pass 		 ,//shake_between_pass
input              request_fill_Zeros 		 	 ,//
input              request_fill_Ones 		 	 ,//
input              request_shake_bf_pass_up 	 ,//
input              request_shake_bf_pass_down ,//
input              Wave_Updated	 	 			 ,//

output reg         req_poweron                ,
output reg         req_poweroff               ,
output reg         req_prefill		          ,
output reg         req_up                     ,
output reg         req_print                  ,
output reg         req_down                   ,
output reg         req_shake_bf_pass      	 ,//shake_bf_pass
output reg         req_shake_bt_pass     		 ,//shake_between_pass
output reg         req_fill_Zeros     		 	 ,//
output reg         req_fill_Ones     		 	 ,//
output reg         req_shake_bf_pass_up     	 ,//
output reg         req_shake_bf_pass_down     ,//
output 	          st_ready                   ,
output              PtoDown_err, 

output reg [7:0]	 PRINT_ERROR_reg				 ,
output reg 	 		 PRINT_ERROR					 ,
output    [4:0]	 Print_Status					 ,
output reg         Wave_req              		 ,
input              Wave_end                                
);

//---------------------
reg poweroff_En ;
reg [7:0] PRINT_ERROR_reg_1;
wire DownEn ;
(* mark_debug = "true" *)reg [4:0] status;
wire st_req_print, st_req_down ,st_platform ;
wire PtoDownEn ;
//wire st_req_up , st_req_print, st_req_down ,st_platform ;
//assign st_req_up 	 = (status==send_req_up);

localparam idle                       =5'd0 ;
localparam send_req_power_on          =5'd1 ;
localparam wait_end_power_on          =5'd2 ;
localparam ready                      =5'd3 ;
localparam send_req_up             	  =5'd4 ;
localparam wait_end_up                =5'd5 ;
localparam platform		              =5'd6 ;
localparam send_req_print             =5'd7 ;
localparam wait_end_print             =5'd8 ;
localparam send_req_down              =5'd9 ;
localparam wait_end_down              =5'd10	;
localparam send_req_shake_bf_pass 	  =5'd11 ;
localparam wait_end_shake_bf_pass     =5'd12	;
localparam send_req_shake_bt_pass 	  =5'd13 ;
localparam wait_end_shake_bt_pass     =5'd14	;
localparam send_req_poweroff          =5'd15 ;
localparam wait_end_poweroff          =5'd16 ;
localparam send_req_fill_Zeros        =5'd17 ;
localparam wait_end_fill_Zeros        =5'd18 ;
localparam send_req_fill_Ones         =5'd19 ;
localparam wait_end_fill_Ones         =5'd20 ;
localparam send_req_shake_bf_pass_up  =5'd21 ;
localparam wait_end_shake_bf_pass_up  =5'd22 ;
localparam send_req_shake_bf_pass_down=5'd23 ;
localparam wait_end_shake_bf_pass_down=5'd24 ;
localparam wait_waveUpdataed			  =5'd25 ;

//------------------------
assign DownEn = (request_down || PtoDownEn || poweroff_En);
assign PtoDown_err = PtoDownEn;
assign Print_Status = status ;

assign st_req_print= (status==send_req_print);
assign st_req_down = (status==send_req_down);
assign st_platform = (status==platform);
assign st_ready = (status==ready);
//------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	poweroff_En <=1'b0;
end
else
begin
	if (request_poweroff) 		poweroff_En <= 1'b1 ;
	else if (request_poweron)	poweroff_En <= 1'b0 ;
end
//-----------status---------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status<=idle;
end
else
begin
	if (status==idle  		&& request_poweron) 					status <= send_req_power_on ;
	else if (status==send_req_power_on)								status <= wait_end_power_on ;
	else if (status==wait_end_power_on && Wave_end)					status <= ready ;
	
	else if (status==ready   && request_fill_Zeros)				status <= send_req_fill_Zeros ;
	else if (status==send_req_fill_Zeros )							status <= wait_end_fill_Zeros ;
	else if (status==wait_end_fill_Zeros && Wave_end)			status <= ready ;
	
	else if (status==ready   && request_fill_Ones)				status <= send_req_fill_Ones ;
	else if (status==send_req_fill_Ones )							status <= wait_end_fill_Ones ;
	else if (status==wait_end_fill_Ones && Wave_end)			status <= ready ;
	
	else if (status==ready   && request_up)						status <= send_req_up ;
	else if (status==send_req_up )									status <= wait_end_up ;
	else if (status==wait_end_up && Wave_end)						status <= platform ;
//----------	
	else if (status==ready   && request_shake_bf_pass_up)		status <= send_req_shake_bf_pass_up ;
	else if (status==send_req_shake_bf_pass_up )					status <= wait_end_shake_bf_pass_up ;
	else if (status==wait_end_shake_bf_pass_up && Wave_end)	status <= platform ;
	
	else if (status==platform && request_shake_bf_pass_down)	status <= send_req_shake_bf_pass_down ;
	else if (status==send_req_shake_bf_pass_down )				status <= wait_end_shake_bf_pass_down ;
	else if (status==wait_end_shake_bf_pass_down && Wave_end)status <= ready ;
//----------
	else if (status==ready  && request_shake_bt_pass)			status <= send_req_shake_bt_pass ;
	else if (status==send_req_shake_bt_pass )						status <= wait_end_shake_bt_pass ;
	else if (status==wait_end_shake_bt_pass && Wave_end)		status <= ready ;
	
	else if (status==ready  && poweroff_En)						status <= send_req_poweroff ;
	else if (status==send_req_poweroff )							status <= wait_end_poweroff ;
	else if (status==wait_end_poweroff && Wave_end)				status <= idle ;
	
	else if (status==platform  && request_print)					status <= send_req_print ;
	else if (status==send_req_print  )								status <= wait_end_print ;
	else if (status==wait_end_print  && Wave_end)				status <= platform ;
	
	else if (status==platform  && DownEn)							status <= send_req_down ;
	else if (status==send_req_down  )								status <= wait_end_down ;
	else if (status==wait_end_down  && Wave_end)					status <= ready ;
	
	else if (status==platform  && request_shake_bf_pass)		status <= send_req_shake_bf_pass ;
	else if (status==send_req_shake_bf_pass  )					status <= wait_end_shake_bf_pass ;
	else if (status==wait_end_shake_bf_pass  && Wave_end)		status <= ready ;
	else																		status <= status ;
end
//---------------force_down--------------- 
Down_Ctrl Down_Ctrl_inst(
	.rstn				(rstn				),
	.clk				(clk 				),
	.PrintHead_Type     (8'h00              ),//300us
//	.st_req_up		(st_req_up 		),
	.st_req_print	(st_req_print	),
	.st_req_down	(st_req_down	),
	.st_platform	(st_platform	),
	.PtoDownEn		(PtoDownEn 		)
);
//output
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	req_poweron           <=1'b0;
	req_poweroff          <=1'b0;
	req_prefill           <=1'b0;
	req_up                <=1'b0;
	req_print				 <=1'b0;
	req_down		          <=1'b0;
	req_shake_bf_pass	    <=1'b0;
	req_shake_bt_pass		 <=1'b0;
	req_fill_Zeros		 	 <=1'b0;
	req_fill_Ones		 	 <=1'b0;
	Wave_req		 			 <=1'b0;
end
else
begin
	req_poweron           <=(status==send_req_power_on       );
	req_poweroff          <=(status==send_req_poweroff       );
	req_prefill           <=(request_prefill			         );
	req_up             	 <=(status==send_req_up             );
	req_print             <=(status==send_req_print          );
	req_down					 <=(status==send_req_down				);
	req_shake_bf_pass     <=(status==send_req_shake_bf_pass  );
	req_shake_bt_pass     <=(status==send_req_shake_bt_pass  );
	req_fill_Zeros      	 <=(status==send_req_fill_Zeros  	);
	req_fill_Ones      	 <=(status==send_req_fill_Ones  	 	);
	req_shake_bf_pass_up	 <=(status==send_req_shake_bf_pass_up   );
	req_shake_bf_pass_down<=(status==send_req_shake_bf_pass_down );

	Wave_req					 <=(status==send_req_power_on		 		||
									 status==send_req_poweroff		 		||
									 status==send_req_fill_Zeros	 		||
									 status==send_req_fill_Ones	 		||
									 status==send_req_up				 		||
									 status==send_req_print			 		||
									 status==send_req_down			 		||
									 status==send_req_shake_bf_pass_up	||
									 status==send_req_shake_bf_pass_down||
									 status==send_req_shake_bf_pass		||
									 status==send_req_shake_bt_pass);
end
//---------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	PRINT_ERROR_reg  <=8'd0;
end
else
begin
	if (request_poweron 			 				&& !(status==idle))		PRINT_ERROR_reg <= 8'h01 ;
	else if (request_prefill 					&& !(status==ready))		PRINT_ERROR_reg <= 8'h02 ;
	else if (request_up 							&& !(status==ready))		PRINT_ERROR_reg <= 8'h03 ;
	else if (request_print 						&& !(status==platform))	PRINT_ERROR_reg <= 8'h04 ;
	else if (request_down 						&& !(status==platform))	PRINT_ERROR_reg <= 8'h05 ;
	else if (request_shake_bf_pass 			&& !(status==platform))	PRINT_ERROR_reg <= 8'h06 ;
	else if (request_shake_bt_pass 			&& !(status==ready))		PRINT_ERROR_reg <= 8'h07 ;
	else if (request_poweroff					&& !(status==ready))		PRINT_ERROR_reg <= 8'h08 ;
	else if (request_fill_Zeros				&& !(status==ready))		PRINT_ERROR_reg <= 8'h09 ;
	else if (request_fill_Ones					&& !(status==ready))		PRINT_ERROR_reg <= 8'h0A ;
	else if (request_shake_bf_pass_up		&& !(status==ready))		PRINT_ERROR_reg <= 8'h0B ;
	else if (request_shake_bf_pass_down		&& !(status==platform))	PRINT_ERROR_reg <= 8'h0C ;
end
//---------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	PRINT_ERROR_reg_1  <= 8'd0;
	PRINT_ERROR			 <= 1'b0;
end
else
begin
	PRINT_ERROR_reg_1 <= PRINT_ERROR_reg ;
	PRINT_ERROR 		<= !(PRINT_ERROR_reg==PRINT_ERROR_reg_1);
end

endmodule
