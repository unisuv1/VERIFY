`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/01/17 10:58:06
// Design Name: 
// Module Name: POWER_CTRL
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


module POWER_CTRL(
    input clk,
    output clk_out,
    input system_rst,
    //test
    output reg power_down,
    output reg [3:0] power_state,
    output reg [31:0] delay_cnt,
    output reg [31:0] down_delay_cnt,
    
    //
    output reg power_H_in_f,
    output reg power_O_in_f,
    output reg vh_error_f,              //new port
    //
    input power_up,
    input [31:0] power_fliter,
    input power_H_in,
    input power_O_in,
    input vh_error,                 //半压大于全压
    input vh_error_en,              //半压大于全压使能：
    //output reg power_up_24v,
    output reg power_H_error,
    output reg power_O_error,
    output reg power_vh_error,      //半压大于全压
    output   power_up_5v,           //24V开关
    output reg power_up_14v,        //全压开关
    output reg power_up_7v          //半压开关
    );
    reg power_up_5v_r;
    wire system_rst_internal;
    assign system_rst_internal = system_rst;
    assign power_up_5v =  power_up_5v_r;// | 1;
    
    assign clk_out = clk;
//filter EN_A EN_B;
parameter [3:0] IDLE = 4'b0000, 
            START_count = 4'b0001, //update the parameter
            POWER_ing =  4'b0001,
            power_5v = 4'b0001,
            power_14v = 4'b0010,
            power_7v = 4'b0011, 
            COUNT_ing = 4'b0010; //start just single dma trans

//reg power_H_in_f;
//reg power_O_in_f;
reg power_H_in_f_r;
reg power_O_in_f_r;
reg vh_error_f_r;
reg power_H_in_r;
reg power_O_in_r;
reg vh_error_r;
reg [3:0]filter_state_A;
reg [3:0]filter_state_B;
reg [3:0]filter_state_C;
reg  [31:0] f_counter_A;
reg  [31:0] f_counter_B;
reg  [31:0] f_counter_C;

wire power_H_in_fall;
wire power_O_in_fall;
wire vh_error_in_fall;
reg lock;
reg [7:0] cnt;

always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            cnt <= 0;
            lock <= 0;
        end
    else if(cnt == 100)
        begin
            cnt <= cnt;
            lock <= 1;
        end
    else
        begin
            cnt <= cnt + 1;
            lock <= 0;
        end
end


//output error
always @(posedge clk)
begin
    if(system_rst_internal  & ~lock)
        begin
            power_H_in_f_r <= 1;
            power_O_in_f_r <= 1;
            vh_error_f_r <= 1;
        end
    else
        begin
            power_H_in_f_r <= power_H_in_f;
            power_O_in_f_r <= power_O_in_f;
            vh_error_f_r <= vh_error_f;
        end
end

assign power_H_in_fall = !power_H_in_f & power_H_in_f_r;
assign power_O_in_fall = !power_O_in_f & power_O_in_f_r;
assign vh_error_fall = !vh_error_f & vh_error_f_r;

always @(posedge clk)
begin
    if(system_rst_internal  & ~lock)
        begin
            power_H_error <= 0;
        end
    else if(power_H_in_fall)
        begin
            power_H_error <= 1;
        end
end

always @(posedge clk)
begin
    if(system_rst_internal  & ~lock)
        begin
            power_O_error <= 0;
        end
    else if(power_O_in_fall)
        begin
            power_O_error <= 1;
        end
end

always @(posedge clk)
begin
    if(system_rst_internal  & ~lock)
        begin
            power_vh_error <= 0;
        end
    else 
        begin
            power_vh_error <= ~((vh_error_f|(~vh_error_en))|power_down);
        end
end


//output power up single
reg power_up_r;
wire power_up_rise;
wire power_up_fall;

always @(posedge clk)
begin
    if(system_rst_internal  & ~lock)
        begin
            power_up_r <= 0;
        end
    else
        begin
            power_up_r <= power_up;
        end
end

assign power_up_rise = !power_up_r & power_up;
assign power_up_fall = power_up_r & !power_up;

parameter [31:0] up_delay = 2000000;   //时差20ms
parameter [31:0] down_delay = 200000;   //时差2ms
//parameter [31:0] up_delay = 100;   //仿真测试用
//reg [31:0] delay_cnt;
//reg [31:0] down_delay_cnt;
//reg [3:0] power_state;
//reg power_down;
always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            power_up_5v_r <= 0;
            power_up_14v <= 0;
            power_up_7v <= 0;
            power_state <= IDLE;
            power_down <= 0;
        end
    else
        begin
            case(power_state)
            IDLE:begin
                //if(power_H_in_f & power_O_in_f & power_up_rise)   //上电
                if(power_H_in_f & power_O_in_f & power_up)   //上电
                begin
                 power_up_5v_r <= 1;
                 power_state <= power_5v;
                 power_down <= 0;
                end
                else
                begin
                    power_up_5v_r <= 0;
                    power_state <= IDLE;
                    power_down <= 1;
                end
                 power_up_14v <= 0;
                 power_up_7v <= 0;
                 delay_cnt <= 0;
            end
            power_5v:begin
                if(power_down == 1)                             //全压打开后等待一段时间关闭24V
                begin
                     if(delay_cnt < down_delay)
                     begin
                        power_up_5v_r <= power_up_5v_r;
                        power_up_14v <= power_up_14v;
                        power_up_7v <= power_up_7v;
                        power_state <= power_state;
                        delay_cnt <= delay_cnt + 1;
                        power_down <= power_down;
                     end
                     else
                     begin
                        power_up_5v_r <= 0;
                        power_up_14v <= power_up_14v;
                        power_up_7v <= power_up_7v;
                        power_state <= power_5v;
                        delay_cnt <= 0;
                        power_down <= 1;
                     end
                end
                else
                begin
                 //if(~power_H_in_f | ~power_O_in_f | ~(vh_error_f&vh_error_en)|power_up_fall)  //上电过程中打开24v后断电
                 if(~power_H_in_f | ~power_O_in_f | ~power_up)  //上电过程中打开24v后断电
                 begin
                    power_up_5v_r <= 0;
                    power_up_14v <= 0;
                    power_up_7v <= 0;
                    power_state <= IDLE;
                    delay_cnt <= 0;
                    power_down <= 1; 
                 end
                 else
                 begin
                    if(delay_cnt < up_delay)
                        begin
                           power_up_5v_r <= power_up_5v_r;
                           power_up_14v <= 0;
                           power_up_7v <= 0;
                           power_state <= power_state;
                           delay_cnt <= delay_cnt + 1;
                           power_down <= 0;
                        end
                    else
                        begin
                            power_up_5v_r <= power_up_5v_r;
                            power_up_14v <= 1;
                            power_up_7v <= 0;
                            power_state <= power_14v;
                            delay_cnt <= 0;
                            power_down <= 0;
                        end
                 end
                 end
            end
            power_14v:begin
             if(power_down == 1)                            //半压打开后掉电等待一段时间后关闭全压
                begin
                     if(delay_cnt < down_delay)
                     begin
                        power_up_5v_r <= power_up_5v_r;
                        power_up_14v <= power_up_14v;
                        power_up_7v <= power_up_7v;
                        power_state <= power_state;
                        delay_cnt <= delay_cnt + 1;
                        power_down <= power_down;
                     end
                     else
                     begin
                        power_up_5v_r <= power_up_5v_r;
                        power_up_14v <= 0;
                        power_up_7v <= power_up_7v;
                        power_state <= power_5v;
                        delay_cnt <= 0;
                        power_down <= 1;
                     end
                end 
               else
               begin                   
                   //if(~power_H_in_f | ~power_O_in_f | ~(vh_error_f&vh_error_en)|power_up_fall)  
                   if(~power_H_in_f | ~power_O_in_f | ~power_up)
                     begin
                        power_up_5v_r <= power_up_5v_r;
                        power_up_14v <= 0;
                        power_up_7v <= 0;
                        power_state <= power_5v;
                        delay_cnt <= 0;
                        power_down <= 1; 
                      end
                    else
                      begin
                         if(delay_cnt < up_delay)
                             begin
                               power_up_5v_r <= power_up_5v_r;
                               power_up_14v <= power_up_14v;
                               power_up_7v <= 0;
                               power_state <= power_state;
                               delay_cnt <= delay_cnt + 1;
                               power_down <= 0;
                              end
                           else
                              begin
                                power_up_5v_r <= power_up_5v_r;
                                power_up_14v <= 1;
                                power_up_7v <= 1;
                                power_state <= power_7v;
                                delay_cnt <= delay_cnt;
                                power_down <= 0;
                              end
                       end
                     end
            end
            power_7v:begin
                            //if(~power_H_in_f | ~power_O_in_f | ~(vh_error_f&vh_error_en)|power_up_fall)     //关闭半压
                            if(~power_H_in_f | ~power_O_in_f | ~(vh_error_f|(~vh_error_en))|~power_up)     //关闭半压
                                 begin
                                    power_up_5v_r <= power_up_5v_r;
                                    power_up_14v <= power_up_14v;
                                    power_up_7v <= 0;
                                    power_state <= power_14v;
                                    delay_cnt <= 0;
                                    power_down <= 1; 
                                  end
                                else
                                    begin
                                         power_up_5v_r <= power_up_5v_r;
                                         power_up_14v <= power_up_14v;
                                         power_up_7v <= power_up_7v;
                                         power_state <= power_state;
                                         delay_cnt <= 0;
                                         power_down <= 0; 
                                    end
            end    
           endcase        
        end
end
//always @(posedge clk)
//begin
//    if(system_rst_internal & ~lock)
//        begin
//            power_up_5v_r <= 0;
//            down_delay_cnt <= 0;
//            power_state <= IDLE;
//        end
//    else
//    	begin
//    	case(power_state)
//    	IDLE:begin
//    	     	 if(power_H_in_f & power_O_in_f & power_up_rise)
//               begin
//                 power_up_5v_r <= 1;
//                 down_delay_cnt <= 0;
//                 power_state <= POWER_ing;
//               end
//             else
//              begin
//                power_up_5v_r <= 0;
//                down_delay_cnt <= 0;
//                power_state <= IDLE;
//              end
//    	     end
// POWER_ing:begin     
//             if(down_delay_cnt == up_delay & power_down)
//               begin
//                 power_up_5v_r <= 0;
//                 down_delay_cnt <= 0;
//                 power_state <= IDLE;
//               end
//             else if(power_down)
//               begin
//                 power_up_5v_r <= 1;
//                 down_delay_cnt <= down_delay_cnt + 1;
//                 power_state <= POWER_ing;
//               end
//             else 
//                begin
//                 power_up_5v_r <= 1;
//                 down_delay_cnt <= 0;
//                 power_state <= POWER_ing;
//               end
//          end
//         endcase
//      end
               
//end

//reg power_up_5v_r_r;
//always @(posedge clk)
//begin
//    if(system_rst_internal & ~lock)
//        begin
//            power_up_5v_r_r <= 0;
//        end
//    else 
//        begin
//            power_up_5v_r_r <= power_up_5v_r;
//        end
//end

//always @(posedge clk)
//begin
//    if(system_rst_internal & ~lock)
//        begin
//            power_up_14v <= 0;
//           // power_up_7v <= 0;
//            delay_cnt <= 0;
//            power_down <= 0;
//        end
//    else 
//    //if(~power_H_in_f | ~power_O_in_f)
//    if(~power_H_in_f | ~power_O_in_f | ~(vh_error_f&vh_error_en)|power_up_fall)   //掉电	  
//    	 begin
//            power_up_14v <= 0;
//            //power_up_7v <= 0;
//            delay_cnt <= 0;
//            power_down <= 1;
//        end
//    else if(power_state == IDLE)            //空闲
//       begin
//            delay_cnt <= 0;
//            power_down <= 0; 
//            power_up_14v <= 0;
//           // power_up_7v <= 0;
//        end 
//    else if(power_down == 1)            //掉电
//    		 begin
//            power_up_14v <= 0;
//            //power_up_7v <= 0;
//            delay_cnt <= 0;
//            power_down <= 1;
//        end
//    else if(power_up_5v_r != power_up_5v_r_r)       //上电开始
//        begin
//            delay_cnt <= 0;
//            power_down <= power_down;
//            power_up_14v <= power_up_14v;
//            //power_up_7v <= power_up_7v;
//        end
//    else if((delay_cnt == up_delay) & power_up_5v_r)        //上电
//       begin
//            delay_cnt <= delay_cnt;
//            power_down <= power_down;
//            power_up_14v <= 1;
//        end
//    else if((delay_cnt == up_delay) & !power_up_5v_r)  //
//       begin
//            delay_cnt <= delay_cnt;
//            power_down <= power_down; 
//            power_up_14v <= 0;
//        end    
//    else
//        begin
//            delay_cnt <= delay_cnt + 1;
//            power_down <= power_down; 
//            power_up_14v <= power_up_14v;
//        end
//end
//fliter
always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            power_H_in_r <= 1;
            power_O_in_r <= 1;
            vh_error_r <= 1;
        end
    else
        begin
            power_H_in_r <= power_H_in;
            power_O_in_r <= power_O_in;
            vh_error_r <= vh_error;
        end
end
 
always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            filter_state_A <= IDLE;
            f_counter_A <= 0;
             if(power_H_in)
                power_H_in_f <= 1;
              else
                 power_H_in_f <= 0;            
         end
     else
        begin
            case(filter_state_A)
            IDLE:begin
                 f_counter_A <= 0;
                 filter_state_A <= START_count;
                   if(power_H_in)
                     power_H_in_f <= 1;
                   else
                     power_H_in_f <= 0;   
                 end
             START_count:begin
                          power_H_in_f <= power_H_in_f;
                         if(power_H_in != power_H_in_r)
                            begin
                                f_counter_A <= 0;
                                filter_state_A <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_A <= 0;
                                filter_state_A <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_A == power_fliter)
                            begin
                                if(power_H_in_r)
                                    begin
                                        f_counter_A <= 0;
                                        power_H_in_f <= 1;
                                        filter_state_A <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_A <= 0;
                                        power_H_in_f <= 0;
                                        filter_state_A <= START_count;
                                     end
                            end
                        else if(power_H_in == power_H_in_r )
                               begin
                                   power_H_in_f <= power_H_in_f;
                                   f_counter_A <= f_counter_A + 1;
                                   filter_state_A <= COUNT_ing;
                                end
                          else
                               begin
                                  power_H_in_f <= power_H_in_f;
                                  f_counter_A <= 0;
                                  filter_state_A <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_A <= IDLE;
                                              power_H_in_f <= 0;
                                              f_counter_A <= 0;				                                                      
                           	              end
                endcase
         end
end        

always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            filter_state_B <= IDLE;
            f_counter_B <= 0;
             if(power_O_in)
                power_O_in_f <= 1;
              else
                 power_O_in_f <= 0;            
         end
     else
        begin
            case(filter_state_B)
            IDLE:begin
                 f_counter_B <= 0;
                 filter_state_B <= START_count;
                   if(power_O_in)
                     power_O_in_f <= 1;
                   else
                     power_O_in_f <= 0;   
                 end
             START_count:begin
                          power_O_in_f <= power_O_in_f;
                         if(power_O_in != power_O_in_r)
                            begin
                                f_counter_B <= 0;
                                filter_state_B <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_B <= 0;
                                filter_state_B <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_B == power_fliter)
                            begin
                                if(power_O_in_r)
                                    begin
                                        f_counter_B <= 0;
                                        power_O_in_f <= 1;
                                        filter_state_B <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_B <= 0;
                                        power_O_in_f <= 0;
                                        filter_state_B <= START_count;
                                     end
                            end
                        else if(power_O_in == power_O_in_r )
                               begin
                                   power_O_in_f <= power_O_in_f;
                                   f_counter_B <= f_counter_B + 1;
                                   filter_state_B <= COUNT_ing;
                                end
                          else
                               begin
                                  power_O_in_f <= power_O_in_f;
                                  f_counter_B <= 0;
                                  filter_state_B <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_B <= IDLE;
                                              power_O_in_f <= 0;
                                              f_counter_B <= 0;				                                                      
                           	              end
                endcase
         end
end        

always @(posedge clk)
begin
    if(system_rst_internal & ~lock)
        begin
            filter_state_C <= IDLE;
            f_counter_C <= 0;
            vh_error_f <= 1;
         end
     else
        begin
            case(filter_state_C)
            IDLE:begin
                     f_counter_C <= 0;
                     if(power_state == power_7v)
                     begin
                        filter_state_C <= START_count;
                     end
                     else                 
                     begin
                        filter_state_C <= START_count;
                     end                 
                     vh_error_f <= 1;
                 end
             START_count:begin
                          vh_error_f <= vh_error_f;
                         if(vh_error != vh_error_r)
                            begin
                                f_counter_C <= 0;
                                filter_state_C <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_C <= 0;
                                filter_state_C <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_C == power_fliter)
                            begin
                                if(vh_error_r)
                                    begin
                                        f_counter_C <= 0;
                                        vh_error_f <= 1;
                                        filter_state_C <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_C <= 0;
                                        vh_error_f <= 0;
                                        filter_state_C <= START_count;
                                     end
                            end
                        else if(vh_error == vh_error_r )
                               begin
                                   vh_error_f <= vh_error_f;
                                   f_counter_C <= f_counter_C + 1;
                                   filter_state_C <= COUNT_ing;
                                end
                          else
                               begin
                                  vh_error_f <= vh_error_f;
                                  f_counter_C <= 0;
                                  filter_state_C <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_C <= IDLE;
                                              vh_error_f <= 0;
                                              f_counter_C <= 0;				                                                      
                           	              end
                endcase
         end
end        
endmodule
