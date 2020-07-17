`timescale 1 ps / 1 ps

module SPdata_Ctrl(
	input              rstn                ,
	input              clk                 ,
	input              SPdata_start        ,
	input              SPdata_req        	,
	input      [ 7:0]  PrintHead_Type      ,
	input      [ 7:0]  data_Type       		,
	
    input                 SpData_wren                       ,
    input [7:0]           SpData_addr                      ,
    input [15:0]          SpData_data                      ,
	
	output reg[15:0]	 SPdata				  
	
	);
//----------------------
reg[15:0]      chip1_PAa,chip1_PAb,chip1_PBa,chip1_PBb;
reg[15:0]      chip2_PAa,chip2_PAb,chip2_PBa,chip2_PBb;
reg[15:0]      chip3_PAa,chip3_PAb,chip3_PBa,chip3_PBb;
reg[15:0]      chip4_PAa,chip4_PAb,chip4_PBa,chip4_PBb;

always@(negedge rstn or posedge clk)
if(!rstn)
begin
	chip1_PAa 	 <=16'd0 ;
	chip1_PAb 	 <=16'd0 ;
	chip1_PBa 	 <=16'd0 ;
	chip1_PBb 	 <=16'd0 ;
    chip2_PAa      <=16'd0 ;
    chip2_PAb      <=16'd0 ;
    chip2_PBa      <=16'd0 ;
    chip2_PBb      <=16'd0 ;
    chip3_PAa      <=16'd0 ;
    chip3_PAb      <=16'd0 ;
    chip3_PBa      <=16'd0 ;
    chip3_PBb      <=16'd0 ;
    chip4_PAa      <=16'd0 ;
    chip4_PAb      <=16'd0 ;
    chip4_PBa      <=16'd0 ;
    chip4_PBb      <=16'd0 ;
end
else
begin
	if (SpData_wren)
	begin
		case (SpData_addr)
			8'h00	 :		   chip1_PAa <= SpData_data ;
            8'h01     :        chip1_PAb <= SpData_data ;
            8'h02     :        chip1_PBa <= SpData_data ;
            8'h03     :        chip1_PBb <= SpData_data ;
            
            8'h04     :        chip2_PAa <= SpData_data ;
            8'h05     :        chip2_PAb <= SpData_data ;
            8'h06     :        chip2_PBa <= SpData_data ;
            8'h07     :        chip2_PBb <= SpData_data ;
            
            8'h08     :        chip3_PAa <= SpData_data ;
            8'h09     :        chip3_PAb <= SpData_data ;
            8'h0a     :        chip3_PBa <= SpData_data ;
            8'h0b     :        chip3_PBb <= SpData_data ;
            
            8'h0c     :        chip4_PAa <= SpData_data ;
            8'h0d     :        chip4_PAb <= SpData_data ;
            8'h0e     :        chip4_PBa <= SpData_data ;
            8'h0f     :        chip4_PBb <= SpData_data ;
			default : 		;
		endcase
	end
end
//---------------------------------	
wire            SPdata_chip1_PAa,SPdata_chip1_PAb,SPdata_chip1_PBa,SPdata_chip1_PBb;
wire            SPdata_chip2_PAa,SPdata_chip2_PAb,SPdata_chip2_PBa,SPdata_chip2_PBb;
wire            SPdata_chip3_PAa,SPdata_chip3_PAb,SPdata_chip3_PBa,SPdata_chip3_PBb;
wire            SPdata_chip4_PAa,SPdata_chip4_PAb,SPdata_chip4_PBa,SPdata_chip4_PBb;
wire[15:0]      SPdata_r;
assign          SPdata_r    =   {SPdata_chip4_PBb,SPdata_chip4_PAb,SPdata_chip4_PBa,SPdata_chip4_PAa,
                                 SPdata_chip3_PBb,SPdata_chip3_PAb,SPdata_chip3_PBa,SPdata_chip3_PAa,
                                 SPdata_chip2_PBb,SPdata_chip2_PAb,SPdata_chip2_PBa,SPdata_chip2_PAa,
                                 SPdata_chip1_PBb,SPdata_chip1_PAb,SPdata_chip1_PBa,SPdata_chip1_PAa};
	
always@(*)
begin
	if (data_Type==8'h03) begin//Print Data
		SPdata <= SPdata_r ;
	end else if (data_Type==8'h02) begin//all 1
		SPdata <= 16'hFFFF ;
	end else begin	  //all 0
		SPdata <= 16'h0000 ;
	end
end
//--------------chip1------
SP_data SP_data_chip1_Aa(
	.rstn				(rstn),
	.clk				(clk),
	.SPdata_start	(SPdata_start),
	.SPdata_req		(SPdata_req),
	.H_command		(chip1_PAa),
	.SPdata			(SPdata_chip1_PAa)
	);
SP_data SP_data_chip1_Ba(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip1_PBa),
    .SPdata            (SPdata_chip1_PBa)
    );
SP_data SP_data_chip1_Ab(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip1_PAb),
    .SPdata            (SPdata_chip1_PAb)
    );
SP_data SP_data_chip1_Bb(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip1_PBb),
    .SPdata            (SPdata_chip1_PBb)
    );
//--------------chip2------
SP_data SP_data_chip2_Aa(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip2_PAa),
    .SPdata            (SPdata_chip2_PAa)
    );
SP_data SP_data_chip2_Ba(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip2_PBa),
    .SPdata            (SPdata_chip2_PBa)
    );
SP_data SP_data_chip2_Ab(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip2_PAb),
    .SPdata            (SPdata_chip2_PAb)
    );
SP_data SP_data_chip2_Bb(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip2_PBb),
    .SPdata            (SPdata_chip2_PBb)
    );
//--------------chip3------
SP_data SP_data_chip3_Aa(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip3_PAa),
    .SPdata            (SPdata_chip3_PAa)
    );
SP_data SP_data_chip3_Ba(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip3_PBa),
    .SPdata            (SPdata_chip3_PBa)
    );
SP_data SP_data_chip3_Ab(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip3_PAb),
    .SPdata            (SPdata_chip3_PAb)
    );
SP_data SP_data_chip3_Bb(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip3_PBb),
    .SPdata            (SPdata_chip3_PBb)
    );
//--------------chip4------
SP_data SP_data_chip4_Aa(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip4_PAa),
    .SPdata            (SPdata_chip4_PAa)
    );
SP_data SP_data_chip4_Ba(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip4_PBa),
    .SPdata            (SPdata_chip4_PBa)
    );
SP_data SP_data_chip4_Ab(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip4_PAb),
    .SPdata            (SPdata_chip4_PAb)
    );
SP_data SP_data_chip4_Bb(
    .rstn                (rstn),
    .clk                (clk),
    .SPdata_start    (SPdata_start),
    .SPdata_req        (SPdata_req),
    .H_command        (chip4_PBb),
    .SPdata            (SPdata_chip4_PBb)
    );

endmodule
