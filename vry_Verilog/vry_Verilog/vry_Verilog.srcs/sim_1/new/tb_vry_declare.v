`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/06 19:22:49
// Design Name: 
// Module Name: tb_vry_declare
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


module tb_vry_declare();
    
reg	rstn,sclk;
wire	c;

initial begin 
	rstn = 0;
	sclk = 0;
	#100;
	rstn = 1;
	
end     

always #5 sclk = !sclk;


vry_declare vry_declare_inst(
	.rstn(rstn),
	.sclk(sclk),
	.c(c)
);
    
    
endmodule
