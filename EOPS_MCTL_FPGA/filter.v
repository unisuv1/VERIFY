 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2013/12/30 16:24:09
// Design Name: 
// Module Name: CoorSystem
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


module filter(
    input EN_A_pin,
    input EN_B_pin,
	 input EN_C_pin,						// New added 2015-11-16
    input PD_IN,
    input encoder_sel,
    input internal_encoder_en,
	 input filter_sel,
	 input  x_clear,
    //
    input clk,
    input Global_reset_signal,
    input syetem_rst,
    //test
    output reg Add,
    output reg Dec, 
    output reg EN_A_f,
    output reg EN_B_f,
	 output reg EN_C_f,
    output reg [31:0] f_counter_A,
    output reg  [31:0] f_counter_B,
	 output reg  [31:0] f_counter_C,
    output reg [3:0]filter_state_A,
    output reg [3:0]filter_state_B,
	 output reg [3:0]filter_state_C,
    output reg EN_A_r,
    output reg EN_B_r,
	 output reg EN_C_r,
    output reg internal_EN_A,
    output reg internal_EN_B,
	 output reg internal_EN_C,
    //
    input EN_A_B_direct,
    input [7:0] Divider,
    input [3:0] Multiplier,
    input [31:0] Filter_cnt,
    output  [31:0] X_Coor_L,
    output  [31:0] X_Coor_H,
    output  [31:0] risingX_Coor_L,
    output  [31:0] risingX_Coor_H,
    output  [31:0] fallingX_Coor_L,
    output  [31:0] fallingX_Coor_H,
    output  risingInterrup_Status,
    output  fallingInterrup_Status
    );
//select EN_A EN_B
wire EN_A;
wire EN_B;
wire EN_C;
//reg internal_EN_A;
//reg internal_EN_B;
wire EN_A_wire;
wire EN_B_wire;
wire EN_C_wire;

assign EN_A_wire = encoder_sel ? internal_EN_A : EN_A_pin;
assign EN_B_wire = encoder_sel ? internal_EN_B : EN_B_pin;
assign EN_C_wire = encoder_sel ? internal_EN_C : EN_C_pin;		// New added 2015-11-16

assign EN_A = EN_A_B_direct ? EN_B_wire : EN_A_wire;
assign EN_B = EN_A_B_direct ? EN_A_wire : EN_B_wire;
assign EN_C = EN_C_wire;													// New added 2015-11-16

////////////////////x_clear/////////////////////////
reg x_clear_r;
reg x_clear_rr;
wire x_clear_rise;
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            x_clear_r <= 0;
				x_clear_rr <= 0;
        end
	  else
			begin
				 x_clear_r <= x_clear;
				 x_clear_rr <= x_clear_r;
			end
end

assign  x_clear_rise =  !x_clear_rr & x_clear;
//////////////////internal encoder//////////////////////
reg [31:0] internal_EA_cnt;
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            internal_EN_A <= 0;
            internal_EA_cnt <= 0;
        end
    else if(internal_encoder_en & internal_EA_cnt <= 800000)
        begin
           internal_EN_A <= 0;
           internal_EA_cnt <= internal_EA_cnt + 1;
        end
     else if(internal_encoder_en & internal_EA_cnt <= 1600000 & internal_EA_cnt >= 800000)
        begin
           internal_EN_A <= 1;
           internal_EA_cnt <= internal_EA_cnt + 1;
        end
      else if(internal_encoder_en & internal_EA_cnt >= 1600000)
        begin
           internal_EN_A <= 1;
           internal_EA_cnt <= 0;
        end
      else
        begin
            internal_EN_A <= internal_EN_A;
            internal_EA_cnt <= internal_EA_cnt;
        end
end

reg [31:0] internal_EB_cnt;
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            internal_EN_B <= 0;
            internal_EB_cnt <= 0;
        end
    else if(internal_encoder_en & internal_EB_cnt <= 800000)
        begin
           internal_EN_B <= 0;
           internal_EB_cnt <= internal_EB_cnt + 1;
        end
     else if(internal_encoder_en & internal_EB_cnt <= 1600000 & internal_EB_cnt >= 800000)
        begin
           internal_EN_B <= 1;
           internal_EB_cnt <= internal_EB_cnt + 1;
        end
     else if(internal_encoder_en & internal_EB_cnt <= 2400000 & internal_EB_cnt >= 1600000)
        begin
           internal_EN_B <= 0;
           internal_EB_cnt <= internal_EB_cnt + 1;
        end
      else if(internal_encoder_en & internal_EB_cnt >= 2400000)
        begin
           internal_EN_B <= internal_EN_B;
           internal_EB_cnt <= 15000;
        end
      else
        begin
            internal_EN_B <= internal_EN_B;
            internal_EB_cnt <= internal_EB_cnt;
        end
end
////////////////////////////////////////////////////////

//filter EN_A EN_B;
parameter [3:0] IDLE = 4'b0000, 
            START_count = 4'b0001, //update the parameter
            COUNT_ing = 4'b0011, //start just single dma trans
            DMA_DONE = 4'b0111;//start just single dma trans
//reg EN_A_f;
//reg EN_B_f;
//reg EN_A_r;
//reg EN_B_r;
reg EN_A_rr;
reg EN_B_rr;
reg EN_C_rr;

//reg [3:0]filter_state_A;
//reg [3:0]filter_state_B;
//reg  [7:0] f_counter_A;
//reg  [7:0] f_counter_B;
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            EN_A_r <= 0;
            EN_B_r <= 0;
				EN_C_r <= 0;
            EN_A_rr <= 0;
            EN_B_rr <= 0;
				EN_C_rr <= 0;
        end
    else
        begin
            EN_A_r <= EN_A;
            EN_B_r <= EN_B;
				EN_C_r <= EN_C;
            EN_A_rr <= EN_A_r;
            EN_B_rr <= EN_B_r;
				EN_C_rr <= EN_C_r;
        end
end
 
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            filter_state_A <= IDLE;
            f_counter_A <= 0;
             if(EN_A)
                EN_A_f <= 1;
              else
                 EN_A_f <= 0;            
         end
	  else if(!filter_sel)
	       begin
            filter_state_A <= IDLE;
            f_counter_A <= 0;
                 EN_A_f <= EN_A;            
         end
     else
        begin
            case(filter_state_A)
            IDLE:begin
                 f_counter_A <= 0;
                 filter_state_A <= START_count;
                    if(EN_A)
                         EN_A_f <= 1;
                    else
                         EN_A_f <= 0;
                 end
             START_count:begin
                          EN_A_f <= EN_A_f;
                         if(EN_A != EN_A_rr)
                            begin
                                f_counter_A <= f_counter_A + 1;
                                filter_state_A <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_A <= 0;
                                filter_state_A <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_A == Filter_cnt)
                            begin
                                if(EN_A_r)
                                    begin
                                        f_counter_A <= 0;
                                        EN_A_f <= 1;
                                        filter_state_A <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_A <= 0;
                                        EN_A_f <= 0;
                                        filter_state_A <= START_count;
                                     end
                            end
                        else if(EN_A == EN_A_r )
                               begin
                                   EN_A_f <= EN_A_f;
                                   f_counter_A <= f_counter_A + 1;
                                   filter_state_A <= COUNT_ing;
                                end
                          else
                               begin
                                  EN_A_f <= EN_A_f;
                                  f_counter_A <= 0;
                                  filter_state_A <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_A <= IDLE;
                                              EN_A_f <= 0;
                                              f_counter_A <= 0;				                                                      
                           	              end
                endcase
         end
end        

always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            filter_state_B <= IDLE;
            f_counter_B <= 0;
            if(EN_B)
                EN_B_f <= 1;
            else
                EN_B_f <= 0;            
        end
		else if(!filter_sel)
	       begin
            filter_state_B <= IDLE;
            f_counter_B <= 0;
                 EN_B_f <= EN_B;            
         end
     else
        begin
            case(filter_state_B)
            IDLE:begin
                 f_counter_B <= 0;
                 filter_state_B <= START_count;
                 if(EN_B)
                      EN_B_f <= 1;
                  else
                      EN_B_f <= 0;
                 end
             START_count:begin
                          EN_B_f <= EN_B_f;
                         if(EN_B != EN_B_rr)
                            begin
                                f_counter_B <= f_counter_B + 1;
                                filter_state_B <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_B <= 0;
                                filter_state_B <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_B == Filter_cnt)
                            begin
                                if(EN_B_r)
                                    begin
                                        f_counter_B <= 0;
                                        EN_B_f <= 1;
                                        filter_state_B <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_B <= 0;
                                        EN_B_f <= 0;
                                        filter_state_B <= START_count;
                                     end
                            end
                        else if(EN_B == EN_B_r )
                               begin
                                   EN_B_f <= EN_B_f;
                                   f_counter_B <= f_counter_B + 1;
                                   filter_state_B <= COUNT_ing;
                                end
                          else
                               begin
                                  EN_B_f <= EN_B_f;
                                  f_counter_B <= 0;
                                  filter_state_B <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_B <= IDLE;
                                              EN_B_f <= 0;
                                              f_counter_B <= 0;				                                                      
                           	              end
                endcase
         end
end    


always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            filter_state_C <= IDLE;
            f_counter_C <= 0;
            if(EN_C)
                EN_C_f <= 1;
            else
                EN_C_f <= 0;            
        end
		else if(!filter_sel)
	       begin
            filter_state_C <= IDLE;
            f_counter_C <= 0;
            EN_C_f <= EN_C;            
         end
     else
        begin
            case(filter_state_C)
            IDLE:begin
                 f_counter_C <= 0;
                 filter_state_C <= START_count;
                 if(EN_C)
                      EN_C_f <= 1;
                  else
                      EN_C_f <= 0;
                 end
             START_count:begin
                          EN_C_f <= EN_C_f;
                         if(EN_C != EN_C_rr)
                            begin
                                f_counter_C <= f_counter_C + 1;
                                filter_state_C <= COUNT_ing;
                            end
                          else
                            begin
                                f_counter_C <= 0;
                                filter_state_C <= START_count;
                            end
                           end
              COUNT_ing:begin
                        if(f_counter_C == Filter_cnt)
                            begin
                                if(EN_C_r)
                                    begin
                                        f_counter_C <= 0;
                                        EN_C_f <= 1;
                                        filter_state_C <= START_count;
                                    end
                                 else
                                     begin
                                        f_counter_C <= 0;
                                        EN_C_f <= 0;
                                        filter_state_C <= START_count;
                                     end
                            end
                        else if(EN_C == EN_C_r )
                               begin
                                   EN_C_f <= EN_C_f;
                                   f_counter_C <= f_counter_C + 1;
                                   filter_state_C <= COUNT_ing;
                                end
                          else
                               begin
                                  EN_C_f <= EN_C_f;
                                  f_counter_C <= 0;
                                  filter_state_C <= START_count;
                               end
                           end   
                                default:  begin                                                                                                                          
                           	       			  filter_state_C <= IDLE;
                                              EN_C_f <= 0;
                                              f_counter_C <= 0;				                                                      
                           	              end
                endcase
         end
end  



                                                                                          
//count EN_A EN_B
reg [63:0] X_Coor;
reg EN_A_f_r;
reg EN_B_f_r;
//reg Add;
//reg Dec;
assign {X_Coor_H,X_Coor_L} = X_Coor;
always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            EN_A_f_r <= 0;
            EN_B_f_r <= 0;
        end
    else
        begin
            EN_A_f_r <= EN_A_f;
            EN_B_f_r <= EN_B_f;
        end
end

always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            Add <= 0;
            Dec <= 0;
        end
    else if((EN_B_f_r == 1 & EN_B_f == 1 & EN_A_f == 1 & EN_A_f_r == 0) || 
        	(EN_B_f_r == 0 & EN_B_f == 0 & EN_A_f == 0 & EN_A_f_r == 1) || 
        	(EN_A_f_r == 1 & EN_A_f == 1 & EN_B_f == 0 & EN_B_f_r == 1) || 
        	(EN_A_f_r == 0 & EN_A_f == 0 & EN_B_f == 1 & EN_B_f_r == 0))
        begin
          Add <= 1;
          Dec <= 0;
        end
    else if((EN_B_f_r == 1 & EN_B_f == 1 & EN_A_f == 0 & EN_A_f_r == 1) || 
            (EN_B_f_r == 0 & EN_B_f == 0 & EN_A_f == 1 & EN_A_f_r == 0) || 
        	(EN_A_f_r == 1 & EN_A_f == 1 & EN_B_f == 1 & EN_B_f_r == 0) || 
        	(EN_A_f_r == 0 & EN_A_f == 0 & EN_B_f == 0 & EN_B_f_r == 1))
         begin
           Add <= 0;
           Dec <= 1;
         end
    else
        begin
               Add <= 0;
               Dec <= 0;
           end
    
end

always @(posedge clk)
begin
    if(Global_reset_signal)
        begin
            X_Coor <= 0;
        end
	 else if (x_clear_rise)
	     begin
            X_Coor <= 0;
        end
    else if(Add)
        begin
            X_Coor <= X_Coor + 1 ;
        end
    else if(Dec)
         begin
            X_Coor <= X_Coor - 1;
         end
    else
        begin
            X_Coor <= X_Coor;
        end
    
end
//count PD_IN
reg [63:0] risingX_Coor;
reg [63:0] fallingX_Coor;
assign {risingX_Coor_H,risingX_Coor_L} = risingX_Coor;
assign {fallingX_Coor_H,fallingX_Coor_L} = fallingX_Coor;
reg PD_IN_r;

always @(posedge clk)
begin
    if(syetem_rst)
        begin
            PD_IN_r <= 0;
        end
    else
        begin
            PD_IN_r <= PD_IN;
        end
end

assign risingInterrup_Status = PD_IN & ~PD_IN_r;
assign fallingInterrup_Status = ~PD_IN & PD_IN_r;

always @(posedge clk)
begin
    if(syetem_rst)
        begin
            risingX_Coor <= 0;
        end
    else if(risingInterrup_Status)
        begin
            risingX_Coor <= risingX_Coor + 1;
        end
     else
          begin
               risingX_Coor <= risingX_Coor;
           end
end


always @(posedge clk)
begin
    if(syetem_rst)
        begin
            fallingX_Coor <= 0;
        end
    else if(fallingInterrup_Status)
        begin
            fallingX_Coor <= fallingX_Coor + 1;
        end
     else
          begin
            fallingX_Coor <= fallingX_Coor;
           end
end

endmodule
