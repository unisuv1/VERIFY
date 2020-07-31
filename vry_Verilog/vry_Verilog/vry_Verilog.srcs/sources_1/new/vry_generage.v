`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 14:06:16
// Design Name: 
// Module Name: vry_generage
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


module vry_generage(
	input			rstn,
	input			sclk
);


//wire	[7:0]	in;
//wire		[7:0]	out;


//    always@( * ) begin: bit_reverse
//        integer i;
//        for(i = 0;i <8; i = i + 1) begin
//            out[i] = in[7-i];
//        end
//    end


    genvar i;
    generate
        for(i = 0; i < 8; i = i + 1) begin : bit_reverse
        	wire	out;
        	wire	in;
            assign out = in;
        end
        
    endgenerate


endmodule
