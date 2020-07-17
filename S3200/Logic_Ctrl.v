`timescale 1 ps / 1 ps

module Logic_Ctrl(
	input              rstn                 	,
	input              clk                  	,

	input              Logic_req             	,
	input [7:0] 	 	 Logic_Init_Ctrl	 	 	,
	input					 Logic_Init_wr				,
	input [7:0] 	 	 logic_start_addr	 	 	,
	
	input[ 9:0]  		 Logic_Addr         	 	,
	input[ 7:0]  		 Logic_Data         	 	,
	input	  		 		 Logic_Wren         	 	,
	
    input               RAM_sel             ,   
    input               RAM_init            , 
    
	output				 Logic_end					,
	
	output reg			 Logic_SgnA					,
	output reg			 Logic_SgnB					,
	output reg			 Logic_SgnC					,
	output reg			 Logic_SgnD					,
	output reg			 Logic_SgnE					,
	output  			 	 req_Wave					,	
	output  			 	 req_Sck						
	);
//------------------------------------
reg [7:0] 	rdaddress 	;
wire [31:0] 	ram_q 		;
reg			rden			;	
wire get_items_valid	;
wire [15:0] logic_time ;
wire Sck_Sel ,Wave_Sel ,End_Sel ,Logic_SgnA_Sel ,Logic_SgnB_Sel ,Logic_SgnC_Sel ,Logic_SgnD_Sel ,Logic_SgnE_Sel;
(* mark_debug = "true" *)wire Logic_SgnA_Value ,Logic_SgnB_Value ,Logic_SgnC_Value ,Logic_SgnD_Value ,Logic_SgnE_Value ;
wire got_item ;
reg Dff_1 ,Dff_2 ;
wire Dff_3;
reg CntClr_1 ,CntClr_2 ,CntClr;
reg [15:0] 	time_cnt ;
reg get_End_valid ;
reg  Logic_WrenA;
reg  Logic_WrenB;
wire [31:0] 	ram_qA,ram_qB 		;

reg [1:0] status;
localparam idle           =2'd0 ;
localparam get_Start      =2'd1 ;
localparam get_ready      =2'd2 ;
localparam get_items      =2'd3 ;
//------------------------------------
assign Dff_3= (!Dff_2 && Dff_1) ;

assign  Logic_end = (status==idle) ;
assign req_Wave  = (got_item && Wave_Sel);
assign req_Sck   = (got_item && Sck_Sel);
assign get_items_valid = (status==get_items);
assign logic_time  = ram_q[15:0];

assign Sck_Sel	 =(ram_q[16] && get_items_valid);
assign Wave_Sel =(ram_q[17] && get_items_valid);
assign End_Sel	 =(ram_q[18] && get_items_valid);

assign Logic_SgnA_Sel	=(ram_q[19] && get_items_valid);
assign Logic_SgnB_Sel 	=(ram_q[21] && get_items_valid);
assign Logic_SgnC_Sel	=(ram_q[23] && get_items_valid);
assign Logic_SgnD_Sel	=(ram_q[25] && get_items_valid);
assign Logic_SgnE_Sel	=(ram_q[27] && get_items_valid);

assign Logic_SgnA_Value = (ram_q[20] && get_items_valid);
assign Logic_SgnB_Value = (ram_q[22] && get_items_valid);
assign Logic_SgnC_Value = (ram_q[24] && get_items_valid);
assign Logic_SgnD_Value = (ram_q[26] && get_items_valid);
assign Logic_SgnE_Value = (ram_q[28] && get_items_valid);

assign got_item = (time_cnt == logic_time);
//------------------------------------


always @ (*)
begin
	if(RAM_init)
	begin
		Logic_WrenA <= Logic_Wren;
		Logic_WrenB <= Logic_Wren;
	end
	else
	begin
		if(RAM_sel)
		begin
			Logic_WrenA <= Logic_Wren;
			Logic_WrenB <= 0;
		end
		else
		begin
			Logic_WrenA <= 0;
			Logic_WrenB <= Logic_Wren;
		end
	end
end 
logic_ram logic_ram_instA(
        .clka(clk),
        .ena(Logic_WrenA),
        .wea(1'b1),
        .addra(Logic_Addr),
        .dina(Logic_Data),
        .clkb(clk),
        .enb(rden),
        .addrb(rdaddress),
        .doutb(ram_qA)
	);
logic_ram logic_ram_instB(
        .clka(clk),
        .ena(Logic_WrenB),
        .wea(1'b1),
        .addra(Logic_Addr),
        .dina(Logic_Data),
        .clkb(clk),
        .enb(rden),
        .addrb(rdaddress),
        .doutb(ram_qB)
    );
assign      ram_q = RAM_sel? ram_qB: ram_qA;
//------------status----------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status<=idle;
end
else
begin
	if(status==idle			&& Logic_req				)status<=get_Start ;
	else if(status==get_Start   							)status<=get_ready ; 
	else if(status==get_ready   	&& Dff_3 			)status<=get_items ;
	else if(status==get_items   	&& got_item 		)status<=get_ready ; 
	else if(status==get_ready   	&& get_End_valid	)status<=idle 		 ;
end
//-------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Dff_1	<= 1'b0 ;
	Dff_2	<= 1'b0 ;
end
else
begin
	Dff_1	<= (status==get_ready);
	Dff_2	<= Dff_1 ;
end
//-------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	rdaddress <=8'd0 ;
end
else
begin
	if (status==get_Start)	rdaddress <= logic_start_addr  ;
	else if(rden 	)			rdaddress <= rdaddress + 1'b1 ;
end
//-------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	rden	<=1'b0 ;
end
else
begin
	rden <= ((status==get_Start) || ((status==get_items) && got_item)) ;
end
//------------time cnt----------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	CntClr_1	<=1'b0 ;
	CntClr_2	<=1'b0 ;
	CntClr	<=1'b0 ;
end
else
begin
	CntClr_1 <= (status==get_Start);
	CntClr_2 <= CntClr_1 ;
	CntClr 	<= CntClr_2 ;
end
//------------------------------------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	time_cnt	<=16'd0 ;
end
else
begin
	if(CntClr)							time_cnt	<=16'd0 ;
	else if(time_cnt < 16'hffff) 	time_cnt <= time_cnt + 1'b1 ;
end
//--------------------------logic-------------------------------
//------A
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Logic_SgnA	<=1'b0 ;
end
else
begin
	if ( Logic_Init_wr)				  			Logic_SgnA	<= Logic_Init_Ctrl[0] ;
	else if (got_item && Logic_SgnA_Sel)	Logic_SgnA	<= Logic_SgnA_Value ;	
end
//------B
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Logic_SgnB	<=1'b0 ;
end
else
begin
	if ( Logic_Init_wr)				  			Logic_SgnB	<= Logic_Init_Ctrl[1] ;
	else if (got_item && Logic_SgnB_Sel)	Logic_SgnB	<= Logic_SgnB_Value ;	
end
//------C
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Logic_SgnC	<=1'b0 ;
end
else
begin
	if ( Logic_Init_wr)				  			Logic_SgnC	<= Logic_Init_Ctrl[2] ;
	else if (got_item && Logic_SgnC_Sel)	Logic_SgnC	<= Logic_SgnC_Value ;	
end
//------D
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Logic_SgnD	<=1'b0 ;
end
else
begin
	if ( Logic_Init_wr)				  			Logic_SgnD	<= Logic_Init_Ctrl[3] ;
	else if (got_item && Logic_SgnD_Sel)	Logic_SgnD	<= Logic_SgnD_Value ;	
end
//------E
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	Logic_SgnE	<=1'b0 ;
end
else
begin
	if ( Logic_Init_wr)				  			Logic_SgnE	<= Logic_Init_Ctrl[4] ;
	else if (got_item && Logic_SgnE_Sel)	Logic_SgnE	<= Logic_SgnE_Value ;	
end
//------end
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	get_End_valid <=1'b0 ;
end
else
begin
	get_End_valid <= (got_item && End_Sel) ;
end

endmodule
