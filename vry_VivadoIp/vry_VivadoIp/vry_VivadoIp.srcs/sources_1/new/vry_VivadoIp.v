`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 09:48:33
// Design Name: 
// Module Name: vry_VivadoIp
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


module vry_VivadoIp(
	input			rst_n,
	input			sclk

    );
    
    
    
vry_FifoFirstRead_1 vry_FifoFirstRead_1_inst (
  .rst_n(rst_n),  // input wire rst_n
  .sclk(sclk)    // input wire sclk
);    
    
    
    
endmodule
