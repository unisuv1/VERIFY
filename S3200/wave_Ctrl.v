`timescale 1 ps / 1 ps

module wave_Ctrl(
	input              rstn                 	,
	input              clk                  	,

	input [7:0]	  		 DA_DivCnt     		   ,
	input              da_set_en         		,
	input[ 9:0]  		 set_da_value       	 	,
	input [9:0] 	 	 VolMax	 	 				,
	input [13:0] 	 	 VolSlope_Max	 	 		,
	
	input 				 Clk_Syn						,
	input [1:0]        Clk_Phase           	,
	
	input              wave_req             	,
	input [7:0] 	 	 wave_start_addr	 	 	,
	
	input[ 9:0]  		 Wave_Addr         	 	,
	input[ 7:0]  		 Wave_Data         	 	,
	input	  		 		 Wave_Wren         	 	,
	
    input               RAM_sel             ,   
    input               RAM_init            , 
    
	output 	 		 	 volMax_ERR					,
	output 	 		 	 VolSlope_Max_ERR 		,	
	output  		 		 Wave_end					,
	
	output reg			 DA_clk						,
	output reg[9:0]	 DA_data_o					,
	output reg		 	 DA_dclk						
	);
//---------------------------------------------------
reg [7:0] 	rdaddress 	;
wire [31:0] 	ram_q 		;
wire 			rden			;
wire 	wave_done 	 ;
wire 	ww_done 		 ;
wire [9:0] DA_data ;
wire 	data_req 	 ;
wire 	DA_clk_temp ;
wire 	da_dvalid ;
wire 	DA_Clk_En ;
wire  ww_req ;
reg  Wave_WrenA, Wave_WrenB;
wire [31:0] 	ram_qA,ram_qB 		;

reg [2:0] status;
localparam idle           =3'd0 ;
localparam get_Start      =3'd1 ;
localparam get_step1      =3'd2 ;
localparam get_step2      =3'd3 ;
localparam get_step3      =3'd4 ;
localparam get_done       =3'd5 ;


//---------------------------------------------------
assign ww_req = (status==get_step2) ;
assign Wave_end  = (status == idle);
assign DA_Clk_En = (!(status==idle) || da_set_en);
assign rden = (status==get_step1) ;
//---------------------------------------------------


always @ (*)
begin
	if(RAM_init)
	begin
		Wave_WrenA <= Wave_Wren;
		Wave_WrenB <= Wave_Wren;
	end
	else
	begin
		if(RAM_sel)
		begin
			Wave_WrenA <= Wave_Wren;
			Wave_WrenB <= 0;
		end
		else
		begin
			Wave_WrenA <= 0;
			Wave_WrenB <= Wave_Wren;
		end
	end
end 
wave_ram wave_ram_instA(
        .clka(clk),
        .ena(Wave_WrenA),
        .wea(1'b1),
        .addra(Wave_Addr),
        .dina(Wave_Data),
        .clkb(clk),
        .enb(rden),
        .addrb(rdaddress),
        .doutb(ram_qA)
	);
wave_ram wave_ram_instB(
        .clka(clk),
        .ena(Wave_WrenB),
        .wea(1'b1),
        .addra(Wave_Addr),
        .dina(Wave_Data),
        .clkb(clk),
        .enb(rden),
        .addrb(rdaddress),
        .doutb(ram_qB)
    );
assign      ram_q = RAM_sel? ram_qB: ram_qA;
//--------------
waveWord_Ctrl waveWord_Ctrl_inst(
	.rstn        				(rstn   					),
	.clk         				(clk       				),
	.data_req  					(data_req   			),
	.waveWord  	 				(ram_q   				),
	.req  	 	 				(ww_req					),
	.da_data		 				(DA_data					),
	.ww_done  	 	 			(ww_done					),
	.wave_done  	 	 		(wave_done				),
	
	.VolMax		 				(VolMax					),
	.VolSlope_Max				(VolSlope_Max			),
	.volMax_ERR					(volMax_ERR				),
	.VolSlope_Max_ERR			(VolSlope_Max_ERR		)
	);		
//--------------
DA_clk_Ctrl DA_clk_Ctrl_inst(
	.rstn        (rstn   		),
	.clk         (clk       	),
	.Clk_Syn	 	 (Clk_Syn		),
	.Clk_Phase	 (Clk_Phase		),
	.DA_DivCnt   (DA_DivCnt    ),
	.data_req	 (data_req		),
	.da_dvalid_o (da_dvalid		),
	.da_clk_o  	 (DA_clk_temp	)
	);		
//--------------status------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status<=idle;
end
else
begin
	if(status==idle			&& wave_req		)status <= get_Start ;
	if(status==get_Start   			 			)status <= get_step1 ; 
	if(status==get_step1							)status <= get_step2 ; 
	if(status==get_step2							)status <= get_step3 ; 
	if(status==get_step3		&& wave_done	)status <= get_done  ; 
	if(status==get_step3		&& ww_done		)status <= get_step1	; 
	if(status==get_done   						)status <= idle 		; 
end
//---------------------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	rdaddress <=8'd0 ;
end
else
begin
	if (status==get_Start	 )	rdaddress <= wave_start_addr  ;
	else if(status==get_step1)	rdaddress <= rdaddress + 1'b1 ;
end
//--------------------------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	DA_dclk <=1'b0 ;
	DA_clk  <=1'b0 ;
end
else
begin
	DA_dclk  <= (da_dvalid && DA_Clk_En) ;
	DA_clk 	<= (DA_clk_temp && DA_Clk_En) ;
end
//-----------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	DA_data_o <=10'd0 ;
end
else
begin
	if (!da_set_en) DA_data_o <= DA_data ;
	else				 DA_data_o <= set_da_value ;
end

endmodule
