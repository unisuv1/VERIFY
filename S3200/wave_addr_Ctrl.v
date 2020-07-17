`timescale 1 ps / 1 ps

module wave_addr_Ctrl(
	input  rstn                		,
	input  clk                 		,
		
	input  req_poweron         		,
	input  req_poweroff        		,
	input  req_up              		,
	input  req_shake_bf_pass  			,
	input  req_print           		,
	input  req_down            		,
	input  req_shake_bt_pass 			,
	input  req_fill_Zeros     			,
	input  req_fill_Ones     			,
	input  req_shake_bf_pass_up		,
	input  req_shake_bf_pass_down  	,
	
    input      [  3:0] w_addr              ,
    input              w_wren              ,
    input      [ 7:0]  w_data              ,
	
	output reg [7:0] wave_start_addr		
);

wire [3:0] addr;
assign addr = w_addr;

wire [7:0] data;
assign data = w_data;

reg [7:0] wave_1_start_addr;
reg [7:0] wave_2_start_addr;
reg [7:0] wave_3_start_addr;
reg [7:0] wave_4_start_addr;
reg [7:0] wave_5_start_addr;
reg [7:0] wave_6_start_addr;
reg [7:0] wave_7_start_addr;
reg [7:0] wave_8_start_addr;
reg [7:0] wave_9_start_addr;
reg [7:0] wave_A_start_addr;
reg [7:0] wave_B_start_addr;

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	wave_1_start_addr 	 <=8'h00 ;//up
	wave_2_start_addr 	 <=8'h03 ;//down
	wave_3_start_addr 	 <=8'h06 ;//power-on
	wave_4_start_addr 	 <=8'h09 ;//power-off
	wave_5_start_addr 	 <=8'h10 ;//pass_bf_shake
	wave_6_start_addr 	 <=8'h14 ;//pass_bt_shake
	wave_7_start_addr 	 <=8'h10 ;//print
	wave_8_start_addr 	 <=8'h10 ;//print
	wave_9_start_addr 	 <=8'h10 ;//print
	wave_A_start_addr 	 <=8'h10 ;//print
	wave_B_start_addr 	 <=8'h10 ;//print
end
else
begin
	if (w_wren)
	begin
		case (addr)
			4'h0	 :		wave_1_start_addr <= data ;
			4'h1   :		wave_2_start_addr <= data ;
			4'h2   :		wave_3_start_addr <= data ;
			4'h3   :		wave_4_start_addr <= data ;
			4'h4   :		wave_5_start_addr <= data ;
			4'h5   :		wave_6_start_addr <= data ;
			4'h6   :		wave_7_start_addr <= data ;
			4'h7   :		wave_8_start_addr <= data ;
			4'h8   :		wave_9_start_addr <= data ;
			4'h9   :		wave_A_start_addr <= data ;
			4'hA   :		wave_B_start_addr <= data ;
			default : 		;
		endcase
	end
end

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	wave_start_addr	<= 8'd0 ;
end
else
begin
	if (req_up								)	wave_start_addr <= wave_1_start_addr ;
	else if (req_down						)  wave_start_addr <= wave_2_start_addr ;
	else if (req_poweron					)  wave_start_addr <= wave_3_start_addr ;
	else if (req_poweroff				)  wave_start_addr <= wave_4_start_addr ;
	else if (req_shake_bf_pass			)  wave_start_addr <= wave_5_start_addr ;
	else if (req_shake_bt_pass			)  wave_start_addr <= wave_6_start_addr ;
	else if (req_print					)  wave_start_addr <= wave_7_start_addr ;
	else if (req_fill_Zeros				)  wave_start_addr <= wave_8_start_addr ;
	else if (req_fill_Ones				)  wave_start_addr <= wave_9_start_addr ;
	else if (req_shake_bf_pass_up		)  wave_start_addr <= wave_A_start_addr ;
	else if (req_shake_bf_pass_down	)  wave_start_addr <= wave_B_start_addr ;
	else											wave_start_addr <= wave_start_addr ;
end

endmodule