`timescale 1 ps / 1 ps

module WaveSel_Ctrl
(  input              		clk         ,
	input [7:0]  		 		wave_sel    ,
	input [7:0]  				Logics_req  ,
	output reg					Wave_req	
	);
//------------------------------------
always@(posedge clk)
begin
	case (wave_sel)
		8'h00	: Wave_req <= Logics_req[0];
		8'h01	: Wave_req <= Logics_req[1];
		8'h02	: Wave_req <= Logics_req[2];
		8'h03	: Wave_req <= Logics_req[3];
		8'h04	: Wave_req <= Logics_req[4];
		8'h05	: Wave_req <= Logics_req[5];
		8'h06	: Wave_req <= Logics_req[6];
		8'h07	: Wave_req <= Logics_req[7];
		default:									;
	endcase;	
end

endmodule
