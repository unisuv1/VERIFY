// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:POWER_CTRL:1.0
// IP Revision: 4

(* X_CORE_INFO = "POWER_CTRL,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "POWER_CTRL_0,POWER_CTRL,{}" *)
(* CORE_GENERATION_INFO = "POWER_CTRL_0,POWER_CTRL,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=POWER_CTRL,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=0000,START_count=0001,POWER_ing=0001,power_5v=0001,power_14v=0010,power_7v=0011,COUNT_ing=0010,up_delay=2000000,down_delay=200000}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module POWER_CTRL_0 (
  clk,
  clk_out,
  system_rst,
  power_down,
  power_state,
  delay_cnt,
  down_delay_cnt,
  power_H_in_f,
  power_O_in_f,
  vh_error_f,
  power_up,
  power_fliter,
  power_H_in,
  power_O_in,
  vh_error,
  vh_error_en,
  power_H_error,
  power_O_error,
  power_vh_error,
  power_up_5v,
  power_up_14v,
  power_up_7v
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;
output wire clk_out;
input wire system_rst;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_down" *)
output wire power_down;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_state" *)
output wire [3 : 0] power_state;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER delay_cnt" *)
output wire [31 : 0] delay_cnt;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER down_delay_cnt" *)
output wire [31 : 0] down_delay_cnt;
output wire power_H_in_f;
output wire power_O_in_f;
output wire vh_error_f;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_up" *)
input wire power_up;
(* X_INTERFACE_INFO = "xilinx.com:user:POWER:1.0 POWER power_fliter" *)
input wire [31 : 0] power_fliter;
input wire power_H_in;
input wire power_O_in;
input wire vh_error;
input wire vh_error_en;
output wire power_H_error;
output wire power_O_error;
output wire power_vh_error;
output wire power_up_5v;
output wire power_up_14v;
output wire power_up_7v;

  POWER_CTRL #(
    .IDLE('B0000),
    .START_count('B0001),
    .POWER_ing('B0001),
    .power_5v('B0001),
    .power_14v('B0010),
    .power_7v('B0011),
    .COUNT_ing('B0010),
    .up_delay(2000000),
    .down_delay(200000)
  ) inst (
    .clk(clk),
    .clk_out(clk_out),
    .system_rst(system_rst),
    .power_down(power_down),
    .power_state(power_state),
    .delay_cnt(delay_cnt),
    .down_delay_cnt(down_delay_cnt),
    .power_H_in_f(power_H_in_f),
    .power_O_in_f(power_O_in_f),
    .vh_error_f(vh_error_f),
    .power_up(power_up),
    .power_fliter(power_fliter),
    .power_H_in(power_H_in),
    .power_O_in(power_O_in),
    .vh_error(vh_error),
    .vh_error_en(vh_error_en),
    .power_H_error(power_H_error),
    .power_O_error(power_O_error),
    .power_vh_error(power_vh_error),
    .power_up_5v(power_up_5v),
    .power_up_14v(power_up_14v),
    .power_up_7v(power_up_7v)
  );
endmodule
