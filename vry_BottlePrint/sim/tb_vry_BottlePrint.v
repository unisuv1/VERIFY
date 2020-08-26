module tb_vry_BottlePrint();

reg		sclk,rstn;

initial begin
	sclk = 0;
	rstn = 0;
	#200
	rstn = 1;
end 

always #5 sclk = !sclk;



vry_BottlePrint vry_BottlePrint_inst(
		.nRST(rstn)	,				//:in	std_logic;
		.clk_100(sclk)	,			//:in	std_logic;
		                    		//
		.dianyan_en()	,			//:in	std_logic;
		.b_p_clr()	,				//:in	std_logic;
		                    		//
		.valid_edge_f1() ,			//:in	std_logic;
		                    		//
		.b_p_road_num()	,			//:in		std_logic_vector(7 downto 0);
		.b_p_cycle_num()			//:in		std_logic_vector(7 downto 0)
			
	);





endmodule