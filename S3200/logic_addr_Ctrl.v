`timescale 1 ps / 1 ps

module logic_addr_Ctrl(
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
	
    input      [  3:0] l_addr              ,
    input              l_wren              ,
    input      [ 7:0]  l_data              ,
	
	output reg [7:0] logic_start_addr		
);

wire [3:0] addr;
assign addr = l_addr;

wire [7:0] data;
assign data = l_data;

reg [7:0] logic_1_start_addr;
reg [7:0] logic_2_start_addr;
reg [7:0] logic_3_start_addr;
reg [7:0] logic_4_start_addr;
reg [7:0] logic_5_start_addr;
reg [7:0] logic_6_start_addr;
reg [7:0] logic_7_start_addr;
reg [7:0] logic_8_start_addr;
reg [7:0] logic_9_start_addr;

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	logic_1_start_addr 	 <=8'h00 ;
	logic_2_start_addr 	 <=8'h03 ;
	logic_3_start_addr 	 <=8'h06 ;
	logic_4_start_addr 	 <=8'h08 ;
	logic_5_start_addr 	 <=8'h0A ;
	logic_6_start_addr 	 <=8'h0A ;
	logic_7_start_addr 	 <=8'h20 ;
	logic_8_start_addr 	 <=8'h0F ;
	logic_9_start_addr 	 <=8'h15 ;
end
else
begin
	if (l_wren)
	begin
		case (addr)
			8'h00		: logic_1_start_addr  <= data ;
			8'h01		: logic_2_start_addr  <= data ;
			8'h02		: logic_3_start_addr  <= data ;
			8'h03		: logic_4_start_addr  <= data ;
			8'h04		: logic_5_start_addr  <= data ;
			8'h05		: logic_6_start_addr  <= data ;
			8'h06		: logic_7_start_addr  <= data ;
			8'h07		: logic_8_start_addr  <= data ;
			8'h08		: logic_9_start_addr  <= data ;
			default	:												 ;
		endcase
	end
end

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	logic_start_addr	<= 8'd0 ;
end
else
begin
	if (req_up							)  logic_start_addr <= logic_1_start_addr ;
	else if (req_down					)  logic_start_addr <= logic_2_start_addr ;
	else if (req_poweron				)  logic_start_addr <= logic_3_start_addr ;
	else if (req_poweroff				)  logic_start_addr <= logic_4_start_addr ;
	else if (req_shake_bf_pass			)  logic_start_addr <= logic_5_start_addr ;
	else if (req_shake_bt_pass			)  logic_start_addr <= logic_6_start_addr ;
	else if (req_print					)  logic_start_addr <= logic_7_start_addr ;
	else if (req_fill_Zeros				)  logic_start_addr <= logic_8_start_addr ;
	else if (req_fill_Ones				)  logic_start_addr <= logic_9_start_addr ;
	else								   logic_start_addr <= logic_start_addr ;
end



endmodule