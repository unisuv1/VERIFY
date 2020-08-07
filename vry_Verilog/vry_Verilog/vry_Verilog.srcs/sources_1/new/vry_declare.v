`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/06 19:12:54
// Design Name: 
// Module Name: vry_declare
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vry_declare(
	input		rstn,
	input		sclk,
	(* mark_debug="true" *)output		c
);


reg		a = 1'b1;
reg		b;

assign c = b;

always @ (posedge sclk or negedge rstn) begin
	if(rstn == 1'b0) begin 
		b = 1'b0;
	end 
	else begin
		b = a;
	end 	
end 
    

endmodule
