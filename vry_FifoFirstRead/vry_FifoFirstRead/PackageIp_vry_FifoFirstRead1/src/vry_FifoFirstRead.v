`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 13:48:46
// Design Name: 
// Module Name: vry_FifoFirstRead
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


module vry_FifoFirstRead(
	input			rst_n,
	input			sclk
);
    
wire [63 : 0] 		din    ;
wire 				wr_en  ;
wire				rd_en  ;
wire [63 : 0] 		dout   ;
wire 				full   ;
wire 				empty  ;

wire [63 : 0] 		dout1   ;
wire 				full1   ;
wire 				empty1  ;
   

fifo_FWFT fifo_FWFT_inst (
  .clk(sclk),      // input wire clk
  .rst(!rst_n),      // input wire rst
  .din(din),      // input wire [63 : 0] din
  .wr_en(wr_en),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(dout),    // output wire [63 : 0] dout
  .full(full),    // output wire full
  .empty(empty)  // output wire empty
);
    
fifo_standard fifo_standard_inst (
  .clk(sclk),      // input wire clk
  .rst(!rst_n),      // input wire rst
  .din(din),      // input wire [63 : 0] din
  .wr_en(wr_en),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(dout1),    // output wire [63 : 0] dout
  .full(full1),    // output wire full
  .empty(empty1)  // output wire empty
);    
    
    
    
    
endmodule
