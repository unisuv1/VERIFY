`timescale 1 ps / 1 ps

module DA_clk_Ctrl(
	input              rstn                ,
	input              clk                 ,
	input              Clk_Syn          	,
	input [1:0]        Clk_Phase           ,
	input [7:0]	  		 DA_DivCnt     		,
	output reg		 	 data_req				,	
	output reg	 	 	 da_dvalid_o			,	
	output reg	 		 da_clk_o						
	);
//---------------------------------------------------
wire [7:0] DA_DivCnt_D;


wire [7:0] DA_DivCnt_D8_1 ,DA_DivCnt_D8_2 ,DA_DivCnt_D8_4 ,DA_DivCnt_D8_3 ,DA_DivCnt_D8_5 ,DA_DivCnt_D8_6;
reg [7:0] da_clk_cnt ;
reg da_clk ,da_dvalid ;
//wire [7:0] DA_DivCnt_D8_2 ,DA_DivCnt_D8_4 ,DA_DivCnt_D8_6;
assign DA_DivCnt_D = DA_DivCnt + 1'b1 ;
assign DA_DivCnt_D8_1 = {3'd0 ,DA_DivCnt_D[7:3]};
assign DA_DivCnt_D8_2 = {2'd0 ,DA_DivCnt_D[7:2]};
assign DA_DivCnt_D8_4 = {1'b0 ,DA_DivCnt_D[7:1]};

assign DA_DivCnt_D8_3 = DA_DivCnt_D8_1 + DA_DivCnt_D8_2;
assign DA_DivCnt_D8_5 = DA_DivCnt_D8_1 + DA_DivCnt_D8_4;
assign DA_DivCnt_D8_6 = DA_DivCnt_D8_2 + DA_DivCnt_D8_4 ;


always@(negedge rstn or posedge clk)
if(!rstn)
begin
	da_clk_cnt <= 8'd0 ;
end
else
begin
	if (Clk_Syn && Clk_Phase== 2'b00) 		da_clk_cnt	<= 8'd0 ;
	else if (Clk_Syn && Clk_Phase== 2'b01) da_clk_cnt	<= DA_DivCnt_D8_2 ;
	else if (Clk_Syn && Clk_Phase== 2'b10) da_clk_cnt	<= DA_DivCnt_D8_4 ;
	else if (Clk_Syn && Clk_Phase== 2'b11) da_clk_cnt	<= DA_DivCnt_D8_6 ;
	else if (da_clk_cnt	< DA_DivCnt)  	 	da_clk_cnt	<= da_clk_cnt + 1'b1 ;	
	else											 	da_clk_cnt	<= 8'd0 ;
end
//-------------------------

always@(posedge clk)
begin
	da_clk 	 	<= (da_clk_cnt >= DA_DivCnt_D8_4) ;
	da_dvalid 	<= ((da_clk_cnt >= DA_DivCnt_D8_3) && (da_clk_cnt < DA_DivCnt_D8_5 )) ;
	data_req  	<= (da_clk_cnt == DA_DivCnt_D8_2) ;
	da_clk_o  	<= da_clk ;
	da_dvalid_o <= da_dvalid ;
end

endmodule
