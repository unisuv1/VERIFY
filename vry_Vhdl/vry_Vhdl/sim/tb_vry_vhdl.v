module tb_vry_vhdl();

reg		sclk,rstn;
wire	c;

initial begin 
	sclk = 0;
	rstn = 0;
	#100
	rstn = 1;
	
end 

always #5 sclk = !sclk;


vry_vhdl vry_vhdl_inst(
		.rstn(rstn),				//:in		std_logic;
		.sclk(sclk),				//:in		std_logic;
		            		//
		.c(c)					//:out	std_logic
);




endmodule