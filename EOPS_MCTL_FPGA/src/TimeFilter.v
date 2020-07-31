module TimeFilter
(
	input Clk,
	input [31:0] Filter_Timer,
	input code_in,
	output reg ready = 1'b0,
	output reg code_out = 1'b0
);
	reg [31:0] Filter_Timer_cnt;
	
	always @ (posedge Clk)
	begin
		if(code_out == code_in) 
		begin 
			ready <= 1'b0;
			code_out <= code_out;
			Filter_Timer_cnt <= 16'd0;
		end 
		else
		begin
			if(Filter_Timer_cnt >= Filter_Timer)
			begin
				Filter_Timer_cnt <= Filter_Timer_cnt;		
				code_out <= code_in;
				ready <= 1'b1;
			end
			else
			begin
				Filter_Timer_cnt <= Filter_Timer_cnt + 16'd1;
				code_out <= code_out;
				ready <= ready;
			end
		end 
	end 

endmodule 