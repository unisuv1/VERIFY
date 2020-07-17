`timescale 1 ps / 1 ps

module Logics_Ctrl(
	input              rstn                 	,
	input              clk                  	,
	
	input              Logic_req             	,
	input [7:0] 	 	 Logic_Init_Ctrl	 	 	,
	input					 Logic_Init_wr				,
	
	input [7:0]	 		 h1_logic_start_addr 	,
	input	[7:0]	 		 h2_logic_start_addr 	,
	input	[7:0]	 		 h3_logic_start_addr 	,
	input	[7:0]	 		 h4_logic_start_addr 	,
	
	input[ 15:0]  		 Logic_Addr         	 	,
	input[ 7:0]  		 Logic_Data         	 	,
	input	  		 		 Logic_Wren         	 	,
	
    input               RAM_sel             ,   
    input               RAM_init            ,  
	
	output 		 		 Logics_end					,
	output[ 7:0] 		 logics_wave_req			,
	
	output[ 7:0] 		 F_SgnA						,
	output[ 7:0] 		 F_SgnB						,
	output[ 7:0] 		 F_SgnC						,
	output[ 7:0] 		 F_SgnD						,
	output[ 7:0] 		 F_SgnE						,
	output   			 req_Sck						
	);
//---------------------------------------------------
wire [5:0] Logic_sel ;
wire logic8_wave_req ,logic7_wave_req , logic6_wave_req , logic5_wave_req ,logic4_wave_req , logic3_wave_req , logic2_wave_req , logic1_wave_req ;
wire Logic8_end , Logic7_end , Logic6_end , Logic5_end , Logic4_end , Logic3_end , Logic2_end , Logic1_end ;
wire  Logic1_Wren, Logic2_Wren, Logic3_Wren, Logic4_Wren ,Logic5_Wren, Logic6_Wren, Logic7_Wren, Logic8_Wren ;

wire  Logic8_SgnA, Logic7_SgnA, Logic6_SgnA , Logic5_SgnA , Logic4_SgnA ,Logic3_SgnA , Logic2_SgnA , Logic1_SgnA ;
wire  Logic8_SgnB, Logic7_SgnB, Logic6_SgnB , Logic5_SgnB , Logic4_SgnB ,Logic3_SgnB , Logic2_SgnB , Logic1_SgnB ;
wire  Logic8_SgnC, Logic7_SgnC, Logic6_SgnC , Logic5_SgnC , Logic4_SgnC ,Logic3_SgnC , Logic2_SgnC , Logic1_SgnC ;
wire  Logic8_SgnD, Logic7_SgnD, Logic6_SgnD , Logic5_SgnD , Logic4_SgnD ,Logic3_SgnD , Logic2_SgnD , Logic1_SgnD ;
wire  Logic8_SgnE, Logic7_SgnE, Logic6_SgnE , Logic5_SgnE , Logic4_SgnE ,Logic3_SgnE , Logic2_SgnE , Logic1_SgnE ;
//---------------------------------------------------
assign Logic_sel = Logic_Addr[15:10] ;

assign Logic1_Wren = (Logic_sel==6'd0)? Logic_Wren: 1'b0 ;
assign Logic2_Wren = (Logic_sel==6'd1)? Logic_Wren: 1'b0 ;
assign Logic3_Wren = (Logic_sel==6'd2)? Logic_Wren: 1'b0 ;
assign Logic4_Wren = (Logic_sel==6'd3)? Logic_Wren: 1'b0 ;
assign Logic5_Wren = (Logic_sel==6'd4)? Logic_Wren: 1'b0 ;
assign Logic6_Wren = (Logic_sel==6'd5)? Logic_Wren: 1'b0 ;
assign Logic7_Wren = (Logic_sel==6'd6)? Logic_Wren: 1'b0 ;
assign Logic8_Wren = (Logic_sel==6'd7)? Logic_Wren: 1'b0 ;

assign F_SgnA = {Logic8_SgnA , Logic7_SgnA , Logic6_SgnA , Logic5_SgnA , Logic4_SgnA , Logic3_SgnA , Logic2_SgnA , Logic1_SgnA };
assign F_SgnB = {Logic8_SgnB , Logic7_SgnB , Logic6_SgnB , Logic5_SgnB , Logic4_SgnB , Logic3_SgnB , Logic2_SgnB , Logic1_SgnB };
assign F_SgnC = {Logic8_SgnC , Logic7_SgnC , Logic6_SgnC , Logic5_SgnC , Logic4_SgnC , Logic3_SgnC , Logic2_SgnC , Logic1_SgnC };
assign F_SgnD = {Logic8_SgnD , Logic7_SgnD , Logic6_SgnD , Logic5_SgnD , Logic4_SgnD , Logic3_SgnD , Logic2_SgnD , Logic1_SgnD };
assign F_SgnE = {Logic8_SgnE , Logic7_SgnE , Logic6_SgnE , Logic5_SgnE , Logic4_SgnE , Logic3_SgnE , Logic2_SgnE , Logic1_SgnE };

assign logics_wave_req = {logic8_wave_req ,logic7_wave_req , logic6_wave_req , logic5_wave_req , logic4_wave_req , logic3_wave_req , logic2_wave_req , logic1_wave_req} ;

assign Logics_end = Logic1_end ;

Logic_Ctrl Logic_Ctrl_inst1(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.Logic_req  		(Logic_req   		),
	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
	.Logic_Init_wr		(Logic_Init_wr		),
	.logic_start_addr (h1_logic_start_addr	),
	.Logic_Addr  	 	(Logic_Addr			),
	.Logic_Data  	 	(Logic_Data			),
	.Logic_Wren  	 	(Logic1_Wren		),
    .RAM_sel           (RAM_sel            ),
    .RAM_init           (RAM_init        ),
	.Logic_end  	 	(Logic1_end			),
	.Logic_SgnA  	 	(Logic1_SgnA		),
	.Logic_SgnB  	 	(Logic1_SgnB		),
	.Logic_SgnC  	 	(Logic1_SgnC		),
	.Logic_SgnD  	 	(Logic1_SgnD		),
	.Logic_SgnE  	 	(Logic1_SgnE		),
	.req_Wave  	 	 	(logic1_wave_req	),
	.req_Sck  	 	 	(req_Sck  			)
	);	

Logic_Ctrl Logic_Ctrl_inst2(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.Logic_req  		(Logic_req   		),
	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
	.Logic_Init_wr		(Logic_Init_wr		),
	.logic_start_addr (h2_logic_start_addr	),
	.Logic_Addr  	 	(Logic_Addr			),
	.Logic_Data  	 	(Logic_Data			),
	.Logic_Wren  	 	(Logic2_Wren		),
    .RAM_sel           (RAM_sel            ),
    .RAM_init           (RAM_init        ),
	.Logic_end  	 	(Logic2_end			),
	.Logic_SgnA  	 	(Logic2_SgnA		),
	.Logic_SgnB  	 	(Logic2_SgnB		),
	.Logic_SgnC  	 	(Logic2_SgnC		),
	.Logic_SgnD  	 	(Logic2_SgnD		),
	.Logic_SgnE  	 	(Logic2_SgnE		),
	.req_Wave  	 	 	(logic2_wave_req	),
	.req_Sck  	 	 	(   					)
	);

Logic_Ctrl Logic_Ctrl_inst3(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.Logic_req  		(Logic_req   		),
	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
	.Logic_Init_wr		(Logic_Init_wr		),
	.logic_start_addr (h3_logic_start_addr	),
	.Logic_Addr  	 	(Logic_Addr			),
	.Logic_Data  	 	(Logic_Data			),
	.Logic_Wren  	 	(Logic3_Wren		),
    .RAM_sel           (RAM_sel            ),
    .RAM_init           (RAM_init        ),
	.Logic_end  	 	(Logic3_end			),
	.Logic_SgnA  	 	(Logic3_SgnA		),
	.Logic_SgnB  	 	(Logic3_SgnB		),
	.Logic_SgnC  	 	(Logic3_SgnC		),
	.Logic_SgnD  	 	(Logic3_SgnD		),
	.Logic_SgnE  	 	(Logic3_SgnE		),
	.req_Wave  	 	 	(logic3_wave_req	),
	.req_Sck  	 	 	(   					)
	);
	
Logic_Ctrl Logic_Ctrl_inst4(
	.rstn        		(rstn   				),
	.clk         		(clk       			),
	.Logic_req  		(Logic_req   		),
	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
	.Logic_Init_wr		(Logic_Init_wr		),
	.logic_start_addr (h4_logic_start_addr	),
	.Logic_Addr  	 	(Logic_Addr			),
	.Logic_Data  	 	(Logic_Data			),
	.Logic_Wren  	 	(Logic4_Wren		),
    .RAM_sel           (RAM_sel            ),
    .RAM_init           (RAM_init        ),
	.Logic_end  	 	(Logic4_end			),
	.Logic_SgnA  	 	(Logic4_SgnA		),
	.Logic_SgnB  	 	(Logic4_SgnB		),
	.Logic_SgnC  	 	(Logic4_SgnC		),
	.Logic_SgnD  	 	(Logic4_SgnD		),
	.Logic_SgnE  	 	(Logic4_SgnE		),
	.req_Wave  	 	 	(logic4_wave_req	),
	.req_Sck  	 	 	(   					)
	);
////-------------------------
//Logic_Ctrl Logic_Ctrl_inst5(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.Logic_req  		(Logic_req   		),
//	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
//	.Logic_Init_wr		(Logic_Init_wr		),
//	.logic_start_addr (h3_logic_start_addr	),
//	.Logic_Addr  	 	(Logic_Addr			),
//	.Logic_Data  	 	(Logic_Data			),
//	.Logic_Wren  	 	(Logic5_Wren		),
//	.Logic_end  	 	(Logic5_end			),
//	.Logic_SgnA  	 	(Logic5_SgnA		),
//	.Logic_SgnB  	 	(Logic5_SgnB		),
//	.Logic_SgnC  	 	(Logic5_SgnC		),
//	.Logic_SgnD  	 	(Logic5_SgnD		),
//	.Logic_SgnE  	 	(Logic5_SgnE		),
//	.req_Wave  	 	 	(logic5_wave_req	),
//	.req_Sck  	 	 	(   					)
//	);
////-------------------------
//Logic_Ctrl Logic_Ctrl_inst6(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.Logic_req  		(Logic_req   		),
//	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
//	.Logic_Init_wr		(Logic_Init_wr		),
//	.logic_start_addr (h3_logic_start_addr	),
//	.Logic_Addr  	 	(Logic_Addr			),
//	.Logic_Data  	 	(Logic_Data			),
//	.Logic_Wren  	 	(Logic6_Wren		),
//	.Logic_end  	 	(Logic6_end			),
//	.Logic_SgnA  	 	(Logic6_SgnA		),
//	.Logic_SgnB  	 	(Logic6_SgnB		),
//	.Logic_SgnC  	 	(Logic6_SgnC		),
//	.Logic_SgnD  	 	(Logic6_SgnD		),
//	.Logic_SgnE  	 	(Logic6_SgnE		),
//	.req_Wave  	 	 	(logic6_wave_req	),
//	.req_Sck  	 	 	(   					)
//	);
////-------------------------
//Logic_Ctrl Logic_Ctrl_inst7(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.Logic_req  		(Logic_req   		),
//	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
//	.Logic_Init_wr		(Logic_Init_wr		),
//	.logic_start_addr (h4_logic_start_addr	),
//	.Logic_Addr  	 	(Logic_Addr			),
//	.Logic_Data  	 	(Logic_Data			),
//	.Logic_Wren  	 	(Logic7_Wren		),
//	.Logic_end  	 	(Logic7_end			),
//	.Logic_SgnA  	 	(Logic7_SgnA		),
//	.Logic_SgnB  	 	(Logic7_SgnB		),
//	.Logic_SgnC  	 	(Logic7_SgnC		),
//	.Logic_SgnD  	 	(Logic7_SgnD		),
//	.Logic_SgnE  	 	(Logic7_SgnE		),
//	.req_Wave  	 	 	(logic7_wave_req	),
//	.req_Sck  	 	 	(   					)
//	);
////-------------------------
//Logic_Ctrl Logic_Ctrl_inst8(
//	.rstn        		(rstn   				),
//	.clk         		(clk       			),
//	.Logic_req  		(Logic_req   		),
//	.Logic_Init_Ctrl  (Logic_Init_Ctrl	),
//	.Logic_Init_wr		(Logic_Init_wr		),
//	.logic_start_addr (h4_logic_start_addr	),
//	.Logic_Addr  	 	(Logic_Addr			),
//	.Logic_Data  	 	(Logic_Data			),
//	.Logic_Wren  	 	(Logic8_Wren		),
//	.Logic_end  	 	(Logic8_end			),
//	.Logic_SgnA  	 	(Logic8_SgnA		),
//	.Logic_SgnB  	 	(Logic8_SgnB		),
//	.Logic_SgnC  	 	(Logic8_SgnC		),
//	.Logic_SgnD  	 	(Logic8_SgnD		),
//	.Logic_SgnE  	 	(Logic8_SgnE		),
//	.req_Wave  	 	 	(logic8_wave_req	),
//	.req_Sck  	 	 	(   					)
//	);
	
endmodule
