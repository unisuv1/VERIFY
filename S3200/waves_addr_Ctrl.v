`timescale 1 ps / 1 ps

module waves_addr_Ctrl(
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
	
    input      [  7:0] w_addr_i              ,
    input              w_wren_i              ,
    input      [ 7:0]  w_data_i              ,
	
	output [7:0]   ch1_wave_start_addr ,
	output [7:0]   ch2_wave_start_addr ,
	output [7:0]   ch3_wave_start_addr ,
	output [7:0]   ch4_wave_start_addr ,
    output [7:0]   ch5_wave_start_addr ,
    output [7:0]   ch6_wave_start_addr ,
    output [7:0]   ch7_wave_start_addr ,
    output [7:0]   ch8_wave_start_addr ,
	
	output [ 7:0]   h1_logic_start_addr , 
    output [ 7:0]   h2_logic_start_addr , 
    output [ 7:0]   h3_logic_start_addr , 
    output [ 7:0]   h4_logic_start_addr , 	
     	
	output reg[ 7:0]   data_Type  	 	
	);
wire        w_wren_w1,w_wren_w2,w_wren_w3,w_wren_w4,w_wren_w5,w_wren_w6,w_wren_w7,w_wren_w8;
wire        l_wren_l1,l_wren_l2,l_wren_l3,l_wren_l4;

assign      w_wren_w1   =   w_wren_i && (w_addr_i[7:4]  ==  4'h0);
assign      w_wren_w2   =   w_wren_i && (w_addr_i[7:4]  ==  4'h1);
assign      w_wren_w3   =   w_wren_i && (w_addr_i[7:4]  ==  4'h2);
assign      w_wren_w4   =   w_wren_i && (w_addr_i[7:4]  ==  4'h3);
assign      w_wren_w5   =   w_wren_i && (w_addr_i[7:4]  ==  4'h4);
assign      w_wren_w6   =   w_wren_i && (w_addr_i[7:4]  ==  4'h5);
assign      w_wren_w7   =   w_wren_i && (w_addr_i[7:4]  ==  4'h6);
assign      w_wren_w8   =   w_wren_i && (w_addr_i[7:4]  ==  4'h7);
assign      l_wren_l1      =   w_wren_i && (w_addr_i[7:4]  ==  4'h8);
assign      l_wren_l2      =   w_wren_i && (w_addr_i[7:4]  ==  4'h9);
assign      l_wren_l3      =   w_wren_i && (w_addr_i[7:4]  ==  4'ha);
assign      l_wren_l4      =   w_wren_i && (w_addr_i[7:4]  ==  4'hb);

wire [3:0] w_addr;
wire [7:0] w_data;
assign w_addr = w_addr_i[3:0];


assign w_data = w_data_i;
	
	
//-----------wave1
wave_addr_Ctrl wave_addr_inst1(
	.rstn			(rstn)     		,
	.clk 			(clk			)	,
		
	.req_poweron		(req_poweron			),
	.req_poweroff		(req_poweroff			),
	.req_up				(req_up					),
	.req_shake_bf_pass(req_shake_bf_pass	),
	.req_print        (req_print				),
	.req_down         (req_down				),
	.req_shake_bt_pass(req_shake_bt_pass	),
	.req_fill_Zeros   (req_fill_Zeros		),
	.req_fill_Ones    (req_fill_Ones			),
	.req_shake_bf_pass_up(req_shake_bf_pass_up),
	.req_shake_bf_pass_down(req_shake_bf_pass_down),
	
	.w_wren 	  (w_wren_w1),
	.w_addr 	  (w_addr),
	.w_data       (w_data),
	
	.wave_start_addr		(ch1_wave_start_addr)
);
//-----------wave2
wave_addr_Ctrl wave_addr_inst2(
	.rstn			(rstn)     		,
	.clk 			(clk			)	,
		
	.req_poweron		(req_poweron			),
	.req_poweroff		(req_poweroff			),
	.req_up				(req_up					),
	.req_shake_bf_pass(req_shake_bf_pass	),
	.req_print        (req_print				),
	.req_down         (req_down				),
	.req_shake_bt_pass(req_shake_bt_pass	),
	.req_fill_Zeros   (req_fill_Zeros		),
	.req_fill_Ones    (req_fill_Ones			),
	.req_shake_bf_pass_up(req_shake_bf_pass_up),
	.req_shake_bf_pass_down(req_shake_bf_pass_down),
	
	.w_wren 	  (w_wren_w2),
	.w_addr 	  (w_addr),
	.w_data       (w_data),
	
	.wave_start_addr		(ch2_wave_start_addr)
);
//-----------wave3
wave_addr_Ctrl wave_addr_inst3(
	.rstn			(rstn)     		,
	.clk 			(clk			)	,
		
	.req_poweron		(req_poweron			),
	.req_poweroff		(req_poweroff			),
	.req_up				(req_up					),
	.req_shake_bf_pass(req_shake_bf_pass	),
	.req_print        (req_print				),
	.req_down         (req_down				),
	.req_shake_bt_pass(req_shake_bt_pass	),
	.req_fill_Zeros   (req_fill_Zeros		),
	.req_fill_Ones    (req_fill_Ones			),
	.req_shake_bf_pass_up(req_shake_bf_pass_up),
	.req_shake_bf_pass_down(req_shake_bf_pass_down),
	
	.w_wren 	  (w_wren_w3),
	.w_addr 	  (w_addr),
	.w_data       (w_data),
	
	.wave_start_addr		(ch3_wave_start_addr)
);
//-----------wave4
wave_addr_Ctrl wave_addr_inst4(
	.rstn			(rstn)     		,
	.clk 			(clk			)	,
		
	.req_poweron		(req_poweron			),
	.req_poweroff		(req_poweroff			),
	.req_up				(req_up					),
	.req_shake_bf_pass(req_shake_bf_pass	),
	.req_print        (req_print				),
	.req_down         (req_down				),
	.req_shake_bt_pass(req_shake_bt_pass	),
	.req_fill_Zeros   (req_fill_Zeros		),
	.req_fill_Ones    (req_fill_Ones			),
	.req_shake_bf_pass_up(req_shake_bf_pass_up),
	.req_shake_bf_pass_down(req_shake_bf_pass_down),
	
	.w_wren 	  (w_wren_w4),
	.w_addr 	  (w_addr),
	.w_data       (w_data),
	
	.wave_start_addr		(ch4_wave_start_addr)
);
//-----------wave5
wave_addr_Ctrl wave_addr_inst5(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .w_wren       (w_wren_w5),
    .w_addr       (w_addr),
    .w_data       (w_data),
    
    .wave_start_addr        (ch5_wave_start_addr)
);
//-----------wave6
wave_addr_Ctrl wave_addr_inst6(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .w_wren       (w_wren_w6),
    .w_addr       (w_addr),
    .w_data       (w_data),
    
    .wave_start_addr        (ch6_wave_start_addr)
);
//-----------wave7
wave_addr_Ctrl wave_addr_inst7(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .w_wren       (w_wren_w7),
    .w_addr       (w_addr),
    .w_data       (w_data),
    
    .wave_start_addr        (ch7_wave_start_addr)
);
//-----------wave8
wave_addr_Ctrl wave_addr_inst8(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .w_wren       (w_wren_w8),
    .w_addr       (w_addr),
    .w_data       (w_data),
    
    .wave_start_addr        (ch8_wave_start_addr)
);
//----logic-------1	
logic_addr_Ctrl logic_addr_inst1(
	.rstn			(rstn)     		,
	.clk 			(clk			)	,
		
	.req_poweron		(req_poweron			),
	.req_poweroff		(req_poweroff			),
	.req_up				(req_up					),
	.req_shake_bf_pass(req_shake_bf_pass	),
	.req_print        (req_print				),
	.req_down         (req_down				),
	.req_shake_bt_pass(req_shake_bt_pass	),
	.req_fill_Zeros   (req_fill_Zeros		),
	.req_fill_Ones    (req_fill_Ones			),
	.req_shake_bf_pass_up(req_shake_bf_pass_up),
	.req_shake_bf_pass_down(req_shake_bf_pass_down),
	
	.l_wren 	  (l_wren_l1),
	.l_addr 	  (w_addr),
	.l_data       (w_data),
	
	.logic_start_addr		(h1_logic_start_addr)
);
//----logic-------2    
logic_addr_Ctrl logic_addr_inst2(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .l_wren       (l_wren_l2),
    .l_addr       (w_addr),
    .l_data       (w_data),
    
    .logic_start_addr        (h2_logic_start_addr)
);
//----logic-------3    
logic_addr_Ctrl logic_addr_inst3(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .l_wren       (l_wren_l3),
    .l_addr       (w_addr),
    .l_data       (w_data),
    
    .logic_start_addr        (h3_logic_start_addr)
);
//----logic-------4   
logic_addr_Ctrl logic_addr_inst4(
    .rstn            (rstn)             ,
    .clk             (clk            )    ,
        
    .req_poweron        (req_poweron            ),
    .req_poweroff        (req_poweroff            ),
    .req_up                (req_up                    ),
    .req_shake_bf_pass(req_shake_bf_pass    ),
    .req_print        (req_print                ),
    .req_down         (req_down                ),
    .req_shake_bt_pass(req_shake_bt_pass    ),
    .req_fill_Zeros   (req_fill_Zeros        ),
    .req_fill_Ones    (req_fill_Ones            ),
    .req_shake_bf_pass_up(req_shake_bf_pass_up),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
    
    .l_wren       (l_wren_l4),
    .l_addr       (w_addr),
    .l_data       (w_data),
    
    .logic_start_addr        (h4_logic_start_addr)
);
//-----------data_type
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	data_Type <= 8'd0 ;
end
else
begin
	if (req_up								)	data_Type <= 8'h03 ;//from mainboard
	else if (req_down						)  data_Type <= 8'h03 ;//from mainboard
	else if (req_poweron					)  data_Type <= 8'h00 ;//no data
	else if (req_poweroff				)  data_Type <= 8'h00 ;//no data
	else if (req_shake_bf_pass			)  data_Type <= 8'h03 ;//from mainboard
	else if (req_shake_bt_pass			)  data_Type <= 8'h03 ;//from mainboard
	else if (req_print					)  data_Type <= 8'h03 ;//from mainboard
	else if (req_fill_Zeros				)  data_Type <= 8'h01 ;//all 0
	else if (req_fill_Ones				)  data_Type <= 8'h02 ;//all 1
	else if (req_shake_bf_pass_up		)  data_Type <= 8'h03 ;//from mainboard
	else if (req_shake_bf_pass_down	)  data_Type <= 8'h03 ;//from mainboard
	else											data_Type <= data_Type ;
end
endmodule
