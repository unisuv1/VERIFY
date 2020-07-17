`timescale 1 ps / 1 ps

module Data_Ctrl(
	input              rstn              ,
	input              clk               ,
	input [7:0]  		 PrintHead_Type    ,
	input              Prndata_en        ,
	input              CMD_en            ,
	
	input [3:0]	  	 SPdata   		    ,
	input[ 3:0]  		 Prn_Data          ,
	output reg [3:0]	 F_data				 
	);
//----------------------------------------
reg [3:0] H_DATA ;
////----------------------------------------
//always@(*)
//begin
////	if(PrintHead_Type == 8'h04) F_data <= {H_DATA[31:28] ,1'b0 ,H_DATA[27],1'b0 ,H_DATA[24],
////													   H_DATA[23:20] ,1'b0 ,H_DATA[19],1'b0 ,H_DATA[16],
////													   H_DATA[15:12] ,1'b0 ,H_DATA[11],1'b0 ,H_DATA[8],
////													   H_DATA[7:4]   ,1'b0 ,H_DATA[3] ,1'b0 ,H_DATA[0]} ;
////	else								 F_data <= H_DATA ;		
//	F_data <= H_DATA ;							
//end
//------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	F_data <=4'd0;
end
else
begin
	if(Prndata_en)		F_data <= Prn_Data ;
	else if(CMD_en )	F_data <= SPdata ;
	else 					F_data <= 4'd0 ;
end

endmodule
