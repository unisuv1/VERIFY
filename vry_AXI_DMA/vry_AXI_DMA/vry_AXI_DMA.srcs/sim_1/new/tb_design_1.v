`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 15:37:33
// Design Name: 
// Module Name: tb_design_1
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


module tb_design_1();

reg				rstn,sclk;
reg				init_axi_txn;

wire	txn_done;
wire	error;


initial begin 
	rstn = 0;
	#200
	rstn = 1;
end 

initial sclk = 0;
always #5 sclk = !sclk;

initial begin
	init_axi_txn = 0;
	#300
	init_axi_txn = 1;
end 



design_1_wrapper	design_1_wrapper_inst(
	.m00_axi_aclk			(sclk),
    .m00_axi_aresetn		(rstn),
    .m00_axi_error			(error),
    .m00_axi_init_axi_txn	(init_axi_txn),
    .m00_axi_txn_done		(txn_done)
);



endmodule
