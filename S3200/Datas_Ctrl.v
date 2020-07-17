`timescale 1 ps / 1 ps

module Datas_Ctrl(
	input              rstn              ,
	input              clk               ,
	input [7:0]  		 PrintHead_Type    ,
	input [7:0]	  		 SCK_DivCnt     	 ,
	input [1:0]  		 SCKedge_Ctrl      ,
	input              SCK_req           ,
	
    input [15:0]         SPdata               ,
//	input [31:0]	  	 SPdataA   		    ,
//	input [31:0]	  	 SPdataB   		    ,
	output 	 	 	 	 SPdata_start		 ,
	output   		 	 SPdata_req			 ,
	
    input[ 15:0]         Prn_Data         ,
//	input[ 31:0]  		 Prn_DataA         ,
//	input[ 31:0]  		 Prn_DataB         ,
//	input[ 31:0]  		 Prn_DataC         ,
//	input[ 31:0]  		 Prn_DataD         ,
	output data_req_o        ,
	output   		 	 data_end			 ,
	
    output  [3:0]          F_dataA                 ,
    output  [3:0]          F_dataB                 ,
    output  [3:0]          F_dataC                 ,
    output  [3:0]          F_dataD                 ,
//	output  [31:0]	 	 F_dataA				 ,
//	output  [31:0]	 	 F_dataB				 ,
//	output  [31:0]	 	 F_dataC				 ,
//	output  [31:0]	 	 F_dataD				 ,
	output reg		 	 sck_o						
	);
//----------------------------------------
reg [7:0] SCK_num ;
wire sck 			;	  
reg CMD_en ;

wire SCK_Start 		;	  
wire sck_end 			;	  
wire data_req		 	;
reg[7:0] LAG_cnt ;
reg [7:0] Data_Deep ;
reg [7:0] SP_num ;
reg Prndata_en_temp ,Prndata_en_1 ,Prndata_en;

localparam SP_num_32 = 8'd16 ;//x/2
localparam SP_num_16 = 8'd8 ;//x/2

reg [3:0] status;
localparam idle           =4'd0 ;
localparam dataH_Start    =4'd1 ;
localparam dataH_w     	  =4'd2 ;
localparam dataH_End   	  =4'd3 ;
localparam dataL_Start    =4'd4 ;
localparam dataL_w     	  =4'd5 ;
localparam dataL_End   	  =4'd6 ;
localparam CMD_Start      =4'd7 ;
localparam CMD_w     	  =4'd8 ;
localparam CMD_End   	  =4'd9 ;
localparam get_end   	  =4'd10 ;

wire LAG_end ;//interval time of group clk ;
localparam LAG_time = 8'd16 ;
//----------------------------------------
assign LAG_end = (LAG_cnt==LAG_time);


assign data_req_o = (data_req && (status==dataH_w || status==dataL_w));
assign data_end 	  = (status==idle );
assign SPdata_start = (status==CMD_Start );
assign SPdata_req   = (data_req && status==CMD_w );
assign SCK_Start = (status==dataH_Start || status==dataL_Start || status==CMD_Start );
//----------------------------------------
sck_Ctrl sck_Ctrl_inst(
	.rstn        (rstn   		),
	.clk         (clk       	),
	.SCK_req 	 (SCK_Start   	),
	.SCK_DivCnt  (SCK_DivCnt   ),
	.SCK_num  	 (SCK_num   	),
	.sck_end  	 (sck_end   	),
	.data_req	 (data_req		),
	.sck_o  	 	 (sck				)
	);	
//----------------------------------------
Data_Ctrl Data_Ctrl_inst1(
	.rstn        		(rstn   			),
	.clk         		(clk       		),
	.PrintHead_Type   (PrintHead_Type),
	.Prndata_en       (Prndata_en    ),
	.CMD_en         	(CMD_en       	),
	.SPdata         	(SPdata[3:0]       ),
	.Prn_Data         (Prn_Data[3:0]     ),
	.F_data         	(F_dataA       )
	);
//----------------------------------------	
Data_Ctrl Data_Ctrl_inst2(
	.rstn        		(rstn   			),
	.clk         		(clk       		),
	.PrintHead_Type   (PrintHead_Type),
	.Prndata_en       (Prndata_en    ),
	.CMD_en         	(CMD_en       	),
	.SPdata         	(SPdata[7:4]       ),
	.Prn_Data         (Prn_Data[7:4]     ),
	.F_data         	(F_dataB       )
	);	
//----------------------------------------	
Data_Ctrl Data_Ctrl_inst3(
	.rstn        		(rstn   			),
	.clk         		(clk       		),
	.PrintHead_Type   (PrintHead_Type),
	.Prndata_en       (Prndata_en    ),
	.CMD_en         	(CMD_en       	),
	.SPdata         	(SPdata[11:8]       ),
	.Prn_Data         (Prn_Data[11:8]     ),
	.F_data         	(F_dataC       )
	);	
//----------------------------------------	
Data_Ctrl Data_Ctrl_inst4(
	.rstn        		(rstn   			),
	.clk         		(clk       		),
	.PrintHead_Type   (PrintHead_Type),
	.Prndata_en       (Prndata_en    ),
	.CMD_en         	(CMD_en       	),
	.SPdata         	(SPdata[15:12]       ),
	.Prn_Data         (Prn_Data[15:12]     ),
	.F_data         	(F_dataD       )
	);	
//--------------status------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status <= idle ;
end
else
begin
	if(status==idle						&& SCK_req	)	status <= dataH_Start  	;
	else if(status==dataH_Start   					)	status <= dataH_w 	  	; 
	else if(status==dataH_w				&& sck_end	)	status <= dataH_End   	; 
	else if(status==dataH_End			&& LAG_end	)	status <= dataL_Start 	; 
	else if(status==dataL_Start			   		)	status <= dataL_w 	  	; 
	else if(status==dataL_w				&& sck_end	)	status <= dataL_End   	; 
	else if(status==dataL_End			&& LAG_end	)	status <= CMD_Start   	; 
	else if(status==CMD_Start   						)	status <= CMD_w		  	; 
	else if(status==CMD_w   			&& sck_end	)	status <= CMD_End	  		; 
	else if(status==CMD_End   			&& LAG_end	)	status <= idle	 	  		; 
	else status <= status;
end
//--------------
always@(posedge clk)
begin
	if (status==idle)																LAG_cnt <= 8'd0 ;
	else if (status==dataH_w || status==dataL_w || status==CMD_w)  LAG_cnt <= 8'd0 ;
	else if (LAG_cnt <LAG_time)				 								LAG_cnt <= LAG_cnt + 1'b1;
end
//---------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Data_Deep  <= 8'd90 ;
end
else
begin
	if ((PrintHead_Type == 8'h02 || PrintHead_Type == 8'h03 || 
		  PrintHead_Type == 8'h04 || PrintHead_Type == 8'h05) )		Data_Deep <= 8'd90 ;//Dx5/Dx7/xp600/L1440 :360/4
	else if (PrintHead_Type == 8'h01 || PrintHead_Type == 8'h06)	Data_Deep <= 8'd100 ;//Dx6/S4:400/4
end
//-------------sp data length--------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	SP_num  <= SP_num_16 ;
end
else
begin
	if ((PrintHead_Type == 8'h02 || PrintHead_Type == 8'h03 || 
		  PrintHead_Type == 8'h04 || PrintHead_Type == 8'h05) )		SP_num <= SP_num_32 ;//Dx5/Dx7/xp600/L1440 :32 sp data
	else if (PrintHead_Type == 8'h01 || PrintHead_Type == 8'h06)	SP_num <= SP_num_16 ;//Dx6:400/4:16 sp data
end
//--------------prn data bit-------------------
always@(posedge clk)
begin
	if(status==dataH_Start		)		SCK_num <= Data_Deep ; 
	else if(status==dataL_Start)		SCK_num <= Data_Deep ; 
	else if(status==CMD_Start	)		SCK_num <= SP_num ; 
end
//----------------------------------------
always@(posedge clk)
begin
    if(status==dataH_w) Prndata_en_temp <= 1'b1;
    else if(status==dataL_w) Prndata_en_temp <= 1'b1;
    else Prndata_en_temp <= 1'b0;
	Prndata_en_1 	 <= Prndata_en_temp ;
	Prndata_en 		 <= Prndata_en_1 ;
end
//----------------------------------------
always@(posedge clk)
begin
	if	(status==idle)	CMD_en <= 1'b0 ;
	else if(status==CMD_w)	CMD_en <= 1'b1 ;
end
//----------------------------------------
always@(posedge clk)
begin
	if(status==dataH_w		)		sck_o <= sck ;
	else if(status==dataL_w	)		sck_o <= sck ;
	else if(status==CMD_w	)		sck_o <= sck ;
	else 									sck_o <= 1'b0;
end

endmodule
