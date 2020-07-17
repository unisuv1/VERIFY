`timescale 1 ps / 1 ps

module waves_Ctrl(
	input              rstn                 	,
	input              clk                  	,

	input [7:0]	  		 DA_DivCnt     		   ,
	input              da_set_en         		,
	input              da_set_wren        		,
	input[15:0]  		 set_da_value       	 	,
	input [9:0] 	 	 VolMax	 	 				,
	input [13:0] 	 	 VolSlope_Max	 	 		,
	
	input[31:0]        Waves_req         		,
	input	[7:0]	 		 ch1_wave_start_addr 	,
	input	[7:0]	 		 ch2_wave_start_addr 	,
	input	[7:0]	 		 ch3_wave_start_addr		,
	input	[7:0]	 		 ch4_wave_start_addr 	,
	input	[7:0]	 		 ch5_wave_start_addr 	,
	input	[7:0]	 		 ch6_wave_start_addr 	,
	input	[7:0]	 		 ch7_wave_start_addr		, 
	input	[7:0]	 		 ch8_wave_start_addr		, 
	input	[7:0]	 		 ch9_wave_start_addr		, 
	input	[7:0]	 		 ch10_wave_start_addr	, 
	input	[7:0]	 		 ch11_wave_start_addr	, 
	input	[7:0]	 		 ch12_wave_start_addr	, 
	input	[7:0]	 		 ch13_wave_start_addr	, 
	input	[7:0]	 		 ch14_wave_start_addr	, 
	input	[7:0]	 		 ch15_wave_start_addr	, 
	input	[7:0]	 		 ch16_wave_start_addr	, 
	
	input[ 15:0]  		 Wave_Addr         	 	,
	input[ 7:0]  		 Wave_Data         	 	,
	input	  		 		 Wave_Wren         	 	,	
	
    input               RAM_sel             ,   
    input               RAM_init            , 
    
	output	 		 	 Waves_end					,
	
	output [ 31:0]  	 volMax_ERROR      	 	,
	output [ 31:0]  	 VolSlope_Max_ERROR	 	,
	
	output   			 DA1_clk				,	
	output   			 DA1_dclk			,	
	output   [9:0]	 	 DA1_data			,	
	output   			 DA2_clk				,	
	output   			 DA2_dclk			,	
	output   [9:0]	 	 DA2_data			,	
	output   			 DA3_clk				,	
	output   			 DA3_dclk			,	
	output   [9:0]	 	 DA3_data			,	
	output   			 DA4_clk				,	
	output   			 DA4_dclk			,	
	output   [9:0]	 	 DA4_data			,	
	output   			 DA5_clk				,	
	output   			 DA5_dclk			,	
	output   [9:0]	 	 DA5_data			,	
	output   			 DA6_clk				,	
	output   			 DA6_dclk			,	
	output   [9:0]	 	 DA6_data			,	
	output   			 DA7_clk				,	
	output   			 DA7_dclk			,	
	output   [9:0]	 	 DA7_data			,	
	output   			 DA8_clk				,
	output   			 DA8_dclk			,	
	output   [9:0]	 	 DA8_data			
//	output   			 DA9_clk				,	
//	output   			 DA9_dclk			,	
//	output   [9:0]	 	 DA9_data			,	

//	output   			 DA10_clk			,	
//	output   			 DA10_dclk			,	
//	output   [9:0]	 	 DA10_data			,	
//	output   			 DA11_clk			,	
//	output   			 DA11_dclk			,	
//	output   [9:0]	 	 DA11_data			,	
//	output   			 DA12_clk			,	
//	output   			 DA12_dclk			,	
//	output   [9:0]	 	 DA12_data			,	
//	output   			 DA13_clk			,	
//	output   			 DA13_dclk			,	
//	output   [9:0]	 	 DA13_data			,	
//	output   			 DA14_clk			,	
//	output   			 DA14_dclk			,	
//	output   [9:0]	 	 DA14_data			,	
//	output   			 DA15_clk			,	
//	output   			 DA15_dclk			,	
//	output   [9:0]	 	 DA15_data			,	
//	output   			 DA16_clk			,	
//	output   			 DA16_dclk			,	
//	output   [9:0]	 	 DA16_data				
	);
//---------------------------------------------------
wire  volMax1_ERR ,volMax2_ERR,volMax3_ERR,volMax4_ERR,volMax5_ERR,volMax6_ERR,volMax7_ERR,volMax8_ERR ,volMax9_ERR ,
		volMax10_ERR ,volMax11_ERR ,volMax12_ERR,volMax13_ERR,volMax14_ERR,volMax15_ERR,volMax16_ERR ;
wire Wave1_end ,Wave2_end,Wave3_end,Wave4_end,Wave5_end,Wave6_end,Wave7_end,Wave8_end,Wave9_end,
	  Wave10_end ,Wave11_end ,Wave12_end,Wave13_end,Wave14_end,Wave15_end,Wave16_end;
wire Wave1_req ,Wave2_req,Wave3_req,Wave4_req,Wave5_req,Wave6_req,Wave7_req,Wave8_req,Wave9_req,
	  Wave10_req ,Wave11_req ,Wave12_req,Wave13_req,Wave14_req,Wave15_req,Wave16_req ;
wire [5:0] WaveAddr_sel ;
wire   Wave1_Wren ,Wave2_Wren,Wave3_Wren,Wave4_Wren,Wave5_Wren,Wave6_Wren,Wave7_Wren,Wave8_Wren,Wave9_Wren ,
		 Wave10_Wren ,Wave11_Wren ,Wave12_Wren,Wave13_Wren,Wave14_Wren,Wave15_Wren,Wave16_Wren ;
reg [3:0] cnt ;
wire DA_Clk_Syn ;
wire[1:0] DA_Clk_PhaseA ,DA_Clk_PhaseB ,DA_Clk_PhaseC ,DA_Clk_PhaseD ;
//wire[1:0] DA_Clk_PhaseA ,DA_Clk_PhaseC ;
wire[1:0] DA1_Clk_Phase  ,DA2_Clk_Phase  ,DA3_Clk_Phase  ,DA4_Clk_Phase ,DA5_Clk_Phase,DA6_Clk_Phase,DA7_Clk_Phase,DA8_Clk_Phase,DA9_Clk_Phase ,
			 DA10_Clk_Phase ,DA11_Clk_Phase ,DA12_Clk_Phase ,DA13_Clk_Phase,DA14_Clk_Phase,DA15_Clk_Phase,DA16_Clk_Phase ;	
			 
wire  VolSlope1_Max_ERR ,VolSlope2_Max_ERR,VolSlope3_Max_ERR,VolSlope4_Max_ERR,VolSlope5_Max_ERR,VolSlope6_Max_ERR,VolSlope7_Max_ERR,VolSlope8_Max_ERR ,VolSlope9_Max_ERR ,
		VolSlope10_Max_ERR ,VolSlope11_Max_ERR ,VolSlope12_Max_ERR,VolSlope13_Max_ERR,VolSlope14_Max_ERR,VolSlope15_Max_ERR,VolSlope16_Max_ERR ;

reg [9:0] set_da1_value ,set_da2_value ,set_da3_value ,set_da4_value,set_da5_value,set_da6_value,set_da7_value,set_da8_value,set_da9_value ,
			 set_da10_value ,set_da11_value ,set_da12_value ,set_da13_value ,set_da14_value,set_da15_value,set_da16_value ;
			 
assign DA_Clk_PhaseA = 2'd0 ;
assign DA_Clk_PhaseB = 2'd1 ;
assign DA_Clk_PhaseC = 2'd2 ;
assign DA_Clk_PhaseD = 2'd3 ;
		 
assign Waves_end = Wave1_end ;
						  
assign Wave1_req = Waves_req[0] ;
assign Wave2_req = Waves_req[1] ;
assign Wave3_req = Waves_req[2] ;
assign Wave4_req = Waves_req[3] ;
assign Wave5_req = Waves_req[4] ;
assign Wave6_req = Waves_req[5] ;
assign Wave7_req = Waves_req[6] ;
assign Wave8_req = Waves_req[7] ;
assign Wave9_req = Waves_req[8] ;
assign Wave10_req = Waves_req[9] ;
assign Wave11_req = Waves_req[10] ;
assign Wave12_req = Waves_req[11] ;
assign Wave13_req = Waves_req[12] ;
assign Wave14_req = Waves_req[13] ;
assign Wave15_req = Waves_req[14] ;
assign Wave16_req = Waves_req[15] ;
	  
assign WaveAddr_sel = Wave_Addr[15:10] ;
assign DA_Clk_Syn = (cnt == 4'd14);

assign Wave1_Wren  = (WaveAddr_sel==6'd0)? Wave_Wren : 1'd0 ;
assign Wave2_Wren  = (WaveAddr_sel==6'd1)? Wave_Wren : 1'd0 ;
assign Wave3_Wren  = (WaveAddr_sel==6'd2)? Wave_Wren : 1'd0 ;
assign Wave4_Wren  = (WaveAddr_sel==6'd3)? Wave_Wren : 1'd0 ;
assign Wave5_Wren  = (WaveAddr_sel==6'd4)? Wave_Wren : 1'd0 ;
assign Wave6_Wren  = (WaveAddr_sel==6'd5)? Wave_Wren : 1'd0 ;
assign Wave7_Wren  = (WaveAddr_sel==6'd6)? Wave_Wren : 1'd0 ;
assign Wave8_Wren  = (WaveAddr_sel==6'd7)? Wave_Wren : 1'd0 ;
assign Wave9_Wren  = (WaveAddr_sel==6'd8)? Wave_Wren : 1'd0 ;
assign Wave10_Wren = (WaveAddr_sel==6'd9)? Wave_Wren : 1'd0 ;
assign Wave11_Wren = (WaveAddr_sel==6'd10)? Wave_Wren : 1'd0 ;
assign Wave12_Wren = (WaveAddr_sel==6'd11)? Wave_Wren : 1'd0 ;
assign Wave13_Wren = (WaveAddr_sel==6'd12)? Wave_Wren : 1'd0 ;
assign Wave14_Wren = (WaveAddr_sel==6'd13)? Wave_Wren : 1'd0 ;
assign Wave15_Wren = (WaveAddr_sel==6'd14)? Wave_Wren : 1'd0 ;
assign Wave16_Wren = (WaveAddr_sel==6'd15)? Wave_Wren : 1'd0 ;



assign DA1_Clk_Phase  = DA_Clk_PhaseA ;
assign DA2_Clk_Phase  = DA_Clk_PhaseB ;
assign DA3_Clk_Phase  = DA_Clk_PhaseC ;
assign DA4_Clk_Phase  = DA_Clk_PhaseD ;
assign DA5_Clk_Phase  = DA_Clk_PhaseA ;
assign DA6_Clk_Phase  = DA_Clk_PhaseB ;
assign DA7_Clk_Phase  = DA_Clk_PhaseC ;
assign DA8_Clk_Phase  = DA_Clk_PhaseD ;
assign DA9_Clk_Phase  = DA_Clk_PhaseA ;
assign DA10_Clk_Phase = DA_Clk_PhaseB ;
assign DA11_Clk_Phase = DA_Clk_PhaseC ;
assign DA12_Clk_Phase = DA_Clk_PhaseD ;
assign DA13_Clk_Phase = DA_Clk_PhaseA ;
assign DA14_Clk_Phase = DA_Clk_PhaseB ;
assign DA15_Clk_Phase = DA_Clk_PhaseC ;
assign DA16_Clk_Phase = DA_Clk_PhaseD ;

assign volMax_ERROR[0] = volMax1_ERR ;
assign volMax_ERROR[1] = volMax2_ERR ;
assign volMax_ERROR[2] = volMax3_ERR ;
assign volMax_ERROR[3] = volMax4_ERR ;
assign volMax_ERROR[4] = volMax5_ERR ;
assign volMax_ERROR[5] = volMax6_ERR ;
assign volMax_ERROR[6] = volMax7_ERR ;
assign volMax_ERROR[7] = volMax8_ERR ;
assign volMax_ERROR[8] = volMax9_ERR ;
assign volMax_ERROR[9] = volMax10_ERR ;
assign volMax_ERROR[10] = volMax11_ERR ;
assign volMax_ERROR[11] = volMax12_ERR ;
assign volMax_ERROR[12] = volMax13_ERR ;
assign volMax_ERROR[13] = volMax14_ERR ;
assign volMax_ERROR[14] = volMax15_ERR ;
assign volMax_ERROR[15] = volMax16_ERR ;
assign volMax_ERROR[31:16] = 16'd0 ;

assign VolSlope_Max_ERROR[0] = VolSlope1_Max_ERR ;
assign VolSlope_Max_ERROR[1] = VolSlope2_Max_ERR ;
assign VolSlope_Max_ERROR[2] = VolSlope3_Max_ERR ;
assign VolSlope_Max_ERROR[3] = VolSlope4_Max_ERR ;
assign VolSlope_Max_ERROR[4] = VolSlope5_Max_ERR ;
assign VolSlope_Max_ERROR[5] = VolSlope6_Max_ERR ;
assign VolSlope_Max_ERROR[6] = VolSlope7_Max_ERR ;
assign VolSlope_Max_ERROR[7] = VolSlope8_Max_ERR ;
assign VolSlope_Max_ERROR[8] = VolSlope9_Max_ERR ;
assign VolSlope_Max_ERROR[9] = VolSlope10_Max_ERR ;
assign VolSlope_Max_ERROR[10] = VolSlope11_Max_ERR ;
assign VolSlope_Max_ERROR[11] = VolSlope12_Max_ERR ;
assign VolSlope_Max_ERROR[12] = VolSlope13_Max_ERR ;
assign VolSlope_Max_ERROR[13] = VolSlope14_Max_ERR ;
assign VolSlope_Max_ERROR[14] = VolSlope15_Max_ERR ;
assign VolSlope_Max_ERROR[15] = VolSlope16_Max_ERR ;
assign VolSlope_Max_ERROR[31:16] = 16'd0 ;
//----------Power on syn--------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	cnt <= 4'd0 ;
end
else
begin
	if (cnt < 4'd15)	cnt <= cnt + 1'b1 ;
end
//------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	set_da1_value <= 10'd0;
	set_da2_value <= 10'd0;
	set_da3_value <= 10'd0;
	set_da4_value <= 10'd0;
	set_da5_value <= 10'd0;
	set_da6_value <= 10'd0;
	set_da7_value <= 10'd0;
	set_da8_value <= 10'd0;
	set_da9_value <= 10'd0;
	set_da10_value <= 10'd0;
	set_da11_value <= 10'd0;
	set_da12_value <= 10'd0;
	set_da13_value <= 10'd0;
	set_da14_value <= 10'd0;
	set_da15_value <= 10'd0;
	set_da16_value <= 10'd0;
end
else
begin
	if (da_set_wren && set_da_value[15:10]==6'h00)	set_da1_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h01)	set_da2_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h02)	set_da3_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h03)	set_da4_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h04)	set_da5_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h05)	set_da6_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h06)	set_da7_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h07)	set_da8_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h08)	set_da9_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h09)	set_da10_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0A)	set_da11_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0B)	set_da12_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0C)	set_da13_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0D)	set_da14_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0E)	set_da15_value <= set_da_value[9:0];
	if (da_set_wren && set_da_value[15:10]==6'h0F)	set_da16_value <= set_da_value[9:0];
end
//1
wave_Ctrl wave_Ctrl_inst1(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da1_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn	   	),
	.Clk_Phase		  	(DA1_Clk_Phase	   ),
	.wave_req  			(Wave1_req			),
	.wave_start_addr  (ch1_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave1_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax1_ERR		),
	.VolSlope_Max_ERR	(VolSlope1_Max_ERR),
	.Wave_end  	 	 	(Wave1_end			),
	.DA_clk  	 	 	(DA1_clk				),
	.DA_data_o 	 	 	(DA1_data			),
	.DA_dclk  	 	 	(DA1_dclk  			)
	);		
//2
wave_Ctrl wave_Ctrl_inst2(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da2_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA2_Clk_Phase	   ),
	.wave_req  			(Wave2_req			),
	.wave_start_addr  (ch2_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave2_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax2_ERR		),
	.VolSlope_Max_ERR	(VolSlope2_Max_ERR),
	.Wave_end  	 	 	(Wave2_end			),
	.DA_clk  	 	 	(DA2_clk				),
	.DA_data_o 	 	 	(DA2_data			),
	.DA_dclk  	 	 	(DA2_dclk  			)
	);		
//3	
wave_Ctrl wave_Ctrl_inst3(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da3_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA3_Clk_Phase	   ),
	.wave_req  			(Wave3_req			),
	.wave_start_addr  (ch3_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave3_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax3_ERR		),
	.VolSlope_Max_ERR	(VolSlope3_Max_ERR),
	.Wave_end  	 	 	(Wave3_end			),
	.DA_clk  	 	 	(DA3_clk				),
	.DA_data_o 	 	 	(DA3_data			),
	.DA_dclk  	 	 	(DA3_dclk  			)
	);		
//4
wave_Ctrl wave_Ctrl_inst4(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da4_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA4_Clk_Phase	   ),
	.wave_req  			(Wave4_req			),
	.wave_start_addr  (ch4_wave_start_addr ),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave4_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax4_ERR		),
	.VolSlope_Max_ERR	(VolSlope4_Max_ERR),
	.Wave_end  	 	 	(Wave4_end			),
	.DA_clk  	 	 	(DA4_clk				),
	.DA_data_o 	 	 	(DA4_data			),
	.DA_dclk  	 	 	(DA4_dclk  			)
	);	
//5	
wave_Ctrl wave_Ctrl_inst5(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da5_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA5_Clk_Phase	   ),
	.wave_req  			(Wave5_req			),
	.wave_start_addr  (ch5_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave5_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax5_ERR		),
	.VolSlope_Max_ERR	(VolSlope5_Max_ERR),
	.Wave_end  	 	 	(Wave5_end			),
	.DA_clk  	 	 	(DA5_clk				),
	.DA_data_o 	 	 	(DA5_data			),
	.DA_dclk  	 	 	(DA5_dclk  			)
	);	
//6
wave_Ctrl wave_Ctrl_inst6(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da6_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA6_Clk_Phase	   ),
	.wave_req  			(Wave6_req			),
	.wave_start_addr  (ch6_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave6_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax6_ERR		),
	.VolSlope_Max_ERR	(VolSlope6_Max_ERR),
	.Wave_end  	 	 	(Wave6_end			),
	.DA_clk  	 	 	(DA6_clk				),
	.DA_data_o 	 	 	(DA6_data			),
	.DA_dclk  	 	 	(DA6_dclk  			)
	);	
//7	
wave_Ctrl wave_Ctrl_inst7(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da7_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA7_Clk_Phase	   ),
	.wave_req  			(Wave7_req			),
	.wave_start_addr  (ch7_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave7_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax7_ERR		),
	.VolSlope_Max_ERR	(VolSlope7_Max_ERR),
	.Wave_end  	 	 	(Wave7_end			),
	.DA_clk  	 	 	(DA7_clk				),
	.DA_data_o 	 	 	(DA7_data			),
	.DA_dclk  	 	 	(DA7_dclk  			)
	);	
//8	
wave_Ctrl wave_Ctrl_inst8(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.DA_DivCnt   		(DA_DivCnt   		),
	.da_set_en			(da_set_en			),
	.set_da_value		(set_da8_value		),
	.VolMax		 		(VolMax				),
	.VolSlope_Max		(VolSlope_Max		),
	.Clk_Syn		  		(DA_Clk_Syn			),
	.Clk_Phase		  	(DA8_Clk_Phase	   ),
	.wave_req  			(Wave8_req			),
	.wave_start_addr  (ch8_wave_start_addr	),
	.Wave_Addr  	 	(Wave_Addr			),
	.Wave_Data  	 	(Wave_Data			),
	.Wave_Wren  	 	(Wave8_Wren			),
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
	.volMax_ERR			(volMax8_ERR		),
	.VolSlope_Max_ERR	(VolSlope8_Max_ERR),
	.Wave_end  	 	 	(Wave8_end			),
	.DA_clk  	 	 	(DA8_clk				),
	.DA_data_o 	 	 	(DA8_data			),
	.DA_dclk  	 	 	(DA8_dclk  			)
	);	
////9	
//wave_Ctrl wave_Ctrl_inst9(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da9_value		),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA9_Clk_Phase	   ),
//	.wave_req  			(Wave9_req			),
//	.wave_start_addr  (ch9_wave_start_addr	),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave9_Wren			),
//	.volMax_ERR			(volMax9_ERR		),
//	.VolSlope_Max_ERR	(VolSlope9_Max_ERR),
//	.Wave_end  	 	 	(Wave9_end			),
//	.DA_clk  	 	 	(DA9_clk				),
//	.DA_data_o 	 	 	(DA9_data			),
//	.DA_dclk  	 	 	(DA9_dclk  			)
//	);	
////10	
//wave_Ctrl wave_Ctrl_inst10(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da10_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA10_Clk_Phase	),
//	.wave_req  			(Wave10_req			),
//	.wave_start_addr  (ch10_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave10_Wren		),
//	.volMax_ERR			(volMax10_ERR		),
//	.VolSlope_Max_ERR	(VolSlope10_Max_ERR),
//	.Wave_end  	 	 	(Wave10_end			),
//	.DA_clk  	 	 	(DA10_clk			),
//	.DA_data_o 	 	 	(DA10_data			),
//	.DA_dclk  	 	 	(DA10_dclk  		)
//	);	
////11	
//wave_Ctrl wave_Ctrl_inst11(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da11_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA11_Clk_Phase	),
//	.wave_req  			(Wave11_req			),
//	.wave_start_addr  (ch11_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave11_Wren		),
//	.volMax_ERR			(volMax11_ERR		),
//	.VolSlope_Max_ERR	(VolSlope11_Max_ERR),
//	.Wave_end  	 	 	(Wave11_end			),
//	.DA_clk  	 	 	(DA11_clk			),
//	.DA_data_o 	 	 	(DA11_data			),
//	.DA_dclk  	 	 	(DA11_dclk  		)
//	);	
////12	
//wave_Ctrl wave_Ctrl_inst12(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da12_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA12_Clk_Phase	),
//	.wave_req  			(Wave12_req			),
//	.wave_start_addr  (ch12_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave12_Wren		),
//	.volMax_ERR			(volMax12_ERR		),
//	.VolSlope_Max_ERR	(VolSlope12_Max_ERR),
//	.Wave_end  	 	 	(Wave12_end			),
//	.DA_clk  	 	 	(DA12_clk			),
//	.DA_data_o 	 	 	(DA12_data			),
//	.DA_dclk  	 	 	(DA12_dclk  		)
//	);	
////13	
//wave_Ctrl wave_Ctrl_inst13(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da13_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA13_Clk_Phase	),
//	.wave_req  			(Wave13_req			),
//	.wave_start_addr  (ch13_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave13_Wren		),
//	.volMax_ERR			(volMax13_ERR		),
//	.VolSlope_Max_ERR	(VolSlope13_Max_ERR),
//	.Wave_end  	 	 	(Wave13_end			),
//	.DA_clk  	 	 	(DA13_clk			),
//	.DA_data_o 	 	 	(DA13_data			),
//	.DA_dclk  	 	 	(DA13_dclk  		)
//	);	
////14	
//wave_Ctrl wave_Ctrl_inst14(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da14_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA14_Clk_Phase	),
//	.wave_req  			(Wave14_req			),
//	.wave_start_addr  (ch14_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave14_Wren		),
//	.volMax_ERR			(volMax14_ERR		),
//	.VolSlope_Max_ERR	(VolSlope14_Max_ERR),
//	.Wave_end  	 	 	(Wave14_end			),
//	.DA_clk  	 	 	(DA14_clk			),
//	.DA_data_o 	 	 	(DA14_data			),
//	.DA_dclk  	 	 	(DA14_dclk  		)
//	);	
////15	
//wave_Ctrl wave_Ctrl_inst15(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da15_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA15_Clk_Phase	),
//	.wave_req  			(Wave15_req			),
//	.wave_start_addr  (ch15_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave15_Wren		),
//	.volMax_ERR			(volMax15_ERR		),
//	.VolSlope_Max_ERR	(VolSlope15_Max_ERR),
//	.Wave_end  	 	 	(Wave15_end			),
//	.DA_clk  	 	 	(DA15_clk			),
//	.DA_data_o 	 	 	(DA15_data			),
//	.DA_dclk  	 	 	(DA15_dclk  		)
//	);	
////16	
//wave_Ctrl wave_Ctrl_inst16(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.DA_DivCnt   		(DA_DivCnt   		),
//	.da_set_en			(da_set_en			),
//	.set_da_value		(set_da16_value	),
//	.VolMax		 		(VolMax				),
//	.VolSlope_Max		(VolSlope_Max		),
//	.Clk_Syn		  		(DA_Clk_Syn			),
//	.Clk_Phase		  	(DA16_Clk_Phase	),
//	.wave_req  			(Wave16_req			),
//	.wave_start_addr  (ch16_wave_start_addr ),
//	.Wave_Addr  	 	(Wave_Addr			),
//	.Wave_Data  	 	(Wave_Data			),
//	.Wave_Wren  	 	(Wave16_Wren		),
//	.volMax_ERR			(volMax16_ERR		),
//	.VolSlope_Max_ERR	(VolSlope16_Max_ERR),
//	.Wave_end  	 	 	(Wave16_end			),
//	.DA_clk  	 	 	(DA16_clk			),
//	.DA_data_o 	 	 	(DA16_data			),
//	.DA_dclk  	 	 	(DA16_dclk  		)
//	);	

endmodule
