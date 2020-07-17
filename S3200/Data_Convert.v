`timescale 1 ps / 1 ps

module Data_Convert(
	input              rstn             	 ,
	input              clk               	 ,
	input              data_switch        	 ,
	input              wr_req               ,
	input      [ 15:0] wr_data             ,
	input      [ 7:0]  data_Type       		 ,
	input      [ 7:0]  PrintHead_Type       ,
	(* mark_debug = "true" *)input              rd_req               ,
	(* mark_debug = "true" *)output [ 15:0] 	 Prn_Data            ,

    input                 SpData_wren                       ,
    input [7:0]           SpData_addr                      ,
    input [15:0]           SpData_data                      ,
    
	input              SPdata_start         ,
	input              SPdata_req           ,
	output [ 15:0] 	   SPdata              ,
	output  	          DATA_ERROR			    
);
//--------------------------------------------
wire DATA_ERRORA ,DATA_ERRORB, DATA_ERRORC ,DATA_ERRORD ;
assign DATA_ERROR = (DATA_ERRORA || DATA_ERRORB || DATA_ERRORC || DATA_ERRORD );

SPdata_Ctrl SPdata_Ctrl_inst(
	.rstn              	 (rstn	          ),
	.clk              	 (clk	             ),
	.SPdata_start         (SPdata_start     ),
	.SPdata_req         	 (SPdata_req     	 ),
	.PrintHead_Type		 (PrintHead_Type	 ),
	.data_Type		 		 (data_Type	 		 ),

	.SpData_wren			 (SpData_wren	 ),
	.SpData_addr			 (SpData_addr	 ),
    .SpData_data             (SpData_data     ),
	
	.SPdata					 (SPdata		 )
);
//-----------------
Prndata_Convert Prndata_Convert_inst1(
	.rstn              	 (rstn	          ),
	.clk              	 (clk	             ),
	.data_switch        	 (data_switch    	 ),
	.wr_req               (wr_req       	 ),
	.wr_data              ({wr_data[9:8],wr_data[1:0]}   ),
	.data_Type				 (data_Type			 ),
	.PrintHead_Type		 (PrintHead_Type	 ),
	.rd_req               (rd_req         	 ),
	.PrnData              (Prn_Data[3:0]   		 ),
	.DATA_ERROR    		 (DATA_ERRORA		 ) 
);

Prndata_Convert Prndata_Convert_inst2(
	.rstn              	 (rstn	          ),
	.clk              	 (clk	             ),
	.data_switch        	 (data_switch    	 ),
	.wr_req               (wr_req       	 ),
	.wr_data              ({wr_data[11:10],wr_data[3:2]}   ),
	.data_Type				 (data_Type			 ),
	.PrintHead_Type		 (PrintHead_Type	 ),
	.rd_req               (rd_req         	 ),
	.PrnData              (Prn_Data[7:4]			 ),
	.DATA_ERROR    		 (DATA_ERRORB		 ) 
);

Prndata_Convert Prndata_Convert_inst3(
	.rstn              	 (rstn	          ),
	.clk              	 (clk	             ),
	.data_switch        	 (data_switch    	 ),
	.wr_req               (wr_req       	 ),
	.wr_data              ({wr_data[13:12],wr_data[5:4]}   ),
	.data_Type				 (data_Type			 ),
	.PrintHead_Type		 (PrintHead_Type	 ),
	.rd_req               (rd_req         	 ),
	.PrnData              (Prn_Data[11:8]			 ),
	.DATA_ERROR    		 (DATA_ERRORC		 ) 
);

Prndata_Convert Prndata_Convert_inst4(
	.rstn              	 (rstn	          ),
	.clk              	 (clk	             ),
	.data_switch        	 (data_switch    	 ),
	.wr_req               (wr_req       	 ),
	.wr_data              ({wr_data[15:14],wr_data[7:6]}   ),
	.data_Type				 (data_Type			 ),
	.PrintHead_Type		 (PrintHead_Type	 ),
	.rd_req               (rd_req         	 ),
	.PrnData              (Prn_Data[15:12]			 ),
	.DATA_ERROR    		 (DATA_ERRORD		 ) 
);

endmodule