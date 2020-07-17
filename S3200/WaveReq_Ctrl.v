`timescale 1 ps / 1 ps

module WaveReq_Ctrl(  
	input              		rstn         ,
	input              		clk         ,
	
	input   	 	 	 wave_sel_wren 	 			 	,
	input [7:0] 	 	 wave_sel_addr	 	 			,
	input [7:0] 	 	 wave_sel_data	 	 			,
		
	input [7:0]  				Logics_req   ,
	output[31:0]				Waves_req	 
	);
//------------------------------------
reg[7:0]    wave0_sel,wave1_sel,wave2_sel,wave3_sel,wave4_sel,wave5_sel,wave6_sel,wave7_sel;
wire Wave15_req ,Wave14_req,Wave13_req ,Wave12_req,Wave11_req ,Wave10_req,
	  Wave9_req ,Wave8_req,Wave7_req ,Wave6_req,Wave5_req ,Wave4_req,Wave3_req ,Wave2_req,Wave1_req ,Wave0_req ;

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	wave0_sel 	   <=8'h00 ;
	wave1_sel 	   <=8'h00 ;
    wave2_sel      <=8'h01 ;
    wave3_sel      <=8'h01 ;
    wave4_sel      <=8'h02 ;
    wave5_sel      <=8'h02 ;
    wave6_sel      <=8'h03 ;
    wave7_sel      <=8'h03 ;
end
else
begin
	if (wave_sel_wren)
	begin
		case (wave_sel_addr[3:0])
			4'h0	 :		wave0_sel <= wave_sel_data ;
			4'h1   :		wave1_sel <= wave_sel_data ;
			4'h2   :		wave2_sel <= wave_sel_data ;
			4'h3   :		wave3_sel <= wave_sel_data ;
			4'h4   :		wave4_sel <= wave_sel_data ;
			4'h5   :		wave5_sel <= wave_sel_data ;
			4'h6   :		wave6_sel <= wave_sel_data ;
			4'h7   :		wave7_sel <= wave_sel_data ;
			default : 		;
		endcase
	end
end

//------------------------------------


assign Waves_req = {16'd0 , Wave15_req ,Wave14_req,Wave13_req ,Wave12_req,Wave11_req ,Wave10_req,
							Wave9_req ,Wave8_req,Wave7_req ,Wave6_req,Wave5_req ,Wave4_req,Wave3_req ,Wave2_req,Wave1_req ,Wave0_req};

							
WaveSel_Ctrl WaveSel_Ctrl_INST0(.clk(clk) , .wave_sel(wave0_sel),.Logics_req(Logics_req),.Wave_req(Wave0_req));                                            
WaveSel_Ctrl WaveSel_Ctrl_INST1(.clk(clk) , .wave_sel(wave1_sel),.Logics_req(Logics_req),.Wave_req(Wave1_req));                                                                                         
WaveSel_Ctrl WaveSel_Ctrl_INST2(.clk(clk) , .wave_sel(wave2_sel),.Logics_req(Logics_req),.Wave_req(Wave2_req));   
WaveSel_Ctrl WaveSel_Ctrl_INST3(.clk(clk) , .wave_sel(wave3_sel),.Logics_req(Logics_req),.Wave_req(Wave3_req));   
WaveSel_Ctrl WaveSel_Ctrl_INST4(.clk(clk) , .wave_sel(wave4_sel),.Logics_req(Logics_req),.Wave_req(Wave4_req));   
WaveSel_Ctrl WaveSel_Ctrl_INST5(.clk(clk) , .wave_sel(wave5_sel),.Logics_req(Logics_req),.Wave_req(Wave5_req));   
WaveSel_Ctrl WaveSel_Ctrl_INST6(.clk(clk) , .wave_sel(wave6_sel),.Logics_req(Logics_req),.Wave_req(Wave6_req));   
WaveSel_Ctrl WaveSel_Ctrl_INST7(.clk(clk) , .wave_sel(wave7_sel),.Logics_req(Logics_req),.Wave_req(Wave7_req));   
//WaveSel_Ctrl WaveSel_Ctrl_INST8(.clk(clk) , .wave_sel(wave8_sel),.Logics_req(Logics_req),.Wave_req(Wave8_req));   
//WaveSel_Ctrl WaveSel_Ctrl_INST9(.clk(clk) , .wave_sel(wave9_sel),.Logics_req(Logics_req),.Wave_req(Wave9_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST10(.clk(clk) , .wave_sel(wave10_sel),.Logics_req(Logics_req),.Wave_req(Wave10_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST11(.clk(clk) , .wave_sel(wave11_sel),.Logics_req(Logics_req),.Wave_req(Wave11_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST12(.clk(clk) , .wave_sel(wave12_sel),.Logics_req(Logics_req),.Wave_req(Wave12_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST13(.clk(clk) , .wave_sel(wave13_sel),.Logics_req(Logics_req),.Wave_req(Wave13_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST14(.clk(clk) , .wave_sel(wave14_sel),.Logics_req(Logics_req),.Wave_req(Wave14_req));
//WaveSel_Ctrl WaveSel_Ctrl_INST15(.clk(clk) , .wave_sel(wave15_sel),.Logics_req(Logics_req),.Wave_req(Wave15_req));

endmodule
