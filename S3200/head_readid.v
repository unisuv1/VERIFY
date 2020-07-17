`timescale 1 ps / 1 ps

module head_readid(
   input              rstn                 ,
   input              clk                  ,
	input              clk_0_21             ,
// input              request_poweron      ,//上电
// output reg [6:0]   status               ,
	output reg         comfirm_result_suc   ,
	output reg         comfirm_result_err   ,

   output reg [7:0]   F0_dataA             ,
   output reg [7:0]   F0_dataB             ,
   output reg [7:0]   F1_dataA             ,
   output reg [7:0]   F1_dataB             ,
   output reg [7:0]   F2_dataA             ,
   output reg [7:0]   F2_dataB             ,
   output reg [7:0]   F3_dataA             ,
   output reg [7:0]   F3_dataB             ,
	
	output reg [7:0]   F4_dataA             ,
   output reg [7:0]   F4_dataB             ,
	output reg [7:0]   F5_dataA             ,
   output reg [7:0]   F5_dataB             ,
   output reg [7:0]   F6_dataA             ,
   output reg [7:0]   F6_dataB             ,
   output reg [7:0]   F7_dataA             ,
   output reg [7:0]   F7_dataB             ,
   output reg [7:0]   F8_dataA             ,
   output reg [7:0]   F9_dataB             ,
	//
   output             F0_SCK               ,	
   output reg         F0_LAT		          ,
   output reg	       F0_CHA               ,
   output reg         F0_SI3		          ,
   output reg         F0_NCHG		          ,
	//
   output             F1_SCK               ,	
   output reg         F1_LAT		          ,
   output reg	       F1_CHA               ,
   output reg         F1_SI3		          ,
   output reg         F1_NCHG		          ,
	//
   output             F2_SCK               ,	
   output reg         F2_LAT		          ,
   output reg	       F2_CHA               ,
   output reg         F2_SI3		          ,
   output reg         F2_NCHG		          ,
	//
   output             F3_SCK               ,	
   output reg         F3_LAT		          ,
   output reg	       F3_CHA               ,
   output reg         F3_SI3		          ,
   output reg         F3_NCHG		          ,
   input              F_XHOT		            
);

//------------------------------------------------------------------//
reg        [6:0  ]         status          ; 
reg        [20:0 ]         vdd_cnt         ;
reg        [2:0  ]         n_cnt           ;
reg        [2:0  ]         m_cnt           ;
reg                        wait_end        ;
reg        [7:0  ]         commond_cnt     ;
reg        [575:0]         F_XHOT_r        ;
reg        [10:0 ]         rd_cnt          ;	    
//judge code
reg        [7:0  ]         judge_data_0    ; 
reg        [7:0  ]         judge_data_1    ;   
reg        [7:0  ]         judge_data_50   ; 
reg        [7:0  ]         judge_data_51   ; 
//
reg        [7:0  ]         judge1_data_22  ; 
reg        [7:0  ]         judge2_data_22  ;  
//chip1 data
reg        [7:0  ]         judge1_data_23  ; 
reg        [7:0  ]         judge1_data_24  ;  
reg        [7:0  ]         judge2_data_23  ; 
reg        [7:0  ]         judge2_data_24  ;  
//chip2 data
reg        [7:0  ]         judge1_data_25  ; 
reg        [7:0  ]         judge1_data_26  ; 
reg        [7:0  ]         judge2_data_25  ; 
reg        [7:0  ]         judge2_data_26  ;
//chip3 data
reg        [7:0  ]         judge1_data_27  ; 
reg        [7:0  ]         judge1_data_28  ;
reg        [7:0  ]         judge2_data_27  ; 
reg        [7:0  ]         judge2_data_28  ;  
//chip4 data
reg        [7:0  ]         judge1_data_29  ; 
reg        [7:0  ]         judge1_data_30  ; 
reg        [7:0  ]         judge2_data_29  ; 
reg        [7:0  ]         judge2_data_30  ; 
//
reg        [7:0  ]         judge1_data_31  ; 
reg        [7:0  ]         judge1_data_32  ;  
reg        [7:0  ]         judge2_data_31  ; 
reg        [7:0  ]         judge2_data_32  ; 
 
reg        [7:0  ]         judge1_data_33  ; 
reg        [7:0  ]         judge1_data_34  ; 
reg        [7:0  ]         judge2_data_33  ; 
reg        [7:0  ]         judge2_data_34  ;

reg        [7:0  ]         judge1_data_35  ; 
reg        [7:0  ]         judge1_data_36  ;
reg        [7:0  ]         judge2_data_35  ; 
reg        [7:0  ]         judge2_data_36  ; 
 
reg        [7:0  ]         judge1_data_37  ; 
reg        [7:0  ]         judge1_data_38  ; 
reg        [7:0  ]         judge2_data_37  ; 
reg        [7:0  ]         judge2_data_38  ;

reg        [7:0  ]         judge1_data_39  ; 
reg        [7:0  ]         judge2_data_39  ; 

reg                        comfirm_ok      ;
wire                       clk_cmd         ;
reg                        poweron         ;
reg        [7:0  ]         power_cnt       ;

//------------------------------------------------------------------//
localparam idle                       ='d0 ;
localparam vdd_power_on               ='d1 ;
localparam wait_end_power_on          ='d2 ;
localparam n_ready                    ='d3 ;
localparam n_ready_dly                ='d4 ;
localparam n_ready_dly1               ='d5 ;

localparam chip1_step                 ='d6 ;
localparam chip1_step_intialize       ='d7 ;
localparam chip1_step_commond	        ='d8 ;
localparam chip1_step_read            ='d9 ;
localparam chip1_step_read_judge      ='d10;
localparam chip1_step_error           ='d11;
localparam chip1_step_error_n         ='d12;
localparam chip1_step_error_n1 	     ='d13;

localparam chip2_step                 ='d14;
localparam chip2_step_intialize       ='d48;
localparam chip2_step_commond	        ='d49;
localparam chip2_step_read            ='d15;
localparam chip2_step_read_judge      ='d16;
localparam chip2_step_error           ='d17;
localparam chip2_step_error_n 	     ='d18;
localparam chip2_step_error_n1        ='d19;

localparam chip3_step                 ='d20;
localparam chip3_step_intialize       ='d50;
localparam chip3_step_commond	        ='d51;
localparam chip3_step_read            ='d21;
localparam chip3_step_read_judge      ='d22;
localparam chip3_step_error           ='d23;
localparam chip3_step_error_n 	     ='d24;
localparam chip3_step_error_n1        ='d25;

localparam chip4_step                 ='d26;
localparam chip4_step_intialize       ='d52;
localparam chip4_step_commond	        ='d53;
localparam chip4_step_read            ='d27;
localparam chip4_step_read_judge      ='d28;
localparam chip4_step_error           ='d29;
localparam chip4_step_error_n 	     ='d30;
localparam chip4_step_error_n1        ='d31;
localparam chip4_step_ok              ='d32; 
localparam chip4_step_ok_1            ='d33; 
localparam chip4_step_ok_2            ='d34; 

localparam comfirm_result_ok          ='d35; 
localparam chip1_result_error         ='d36; 
localparam chip2_result_error         ='d37; 
localparam chip3_result_error         ='d38; 
localparam chip4_result_error         ='d39; 

localparam chip1_step_intialize_1     ='d40;
localparam chip1_step_intialize_2     ='d41;
localparam chip2_step_intialize_1     ='d54;
localparam chip2_step_intialize_2     ='d55;
localparam chip3_step_intialize_1     ='d56;
localparam chip3_step_intialize_2     ='d57;
localparam chip4_step_intialize_1     ='d58;
localparam chip4_step_intialize_2     ='d59;

localparam chip1_step_read_judge_1    ='d42; 
localparam chip2_step_read_judge_1    ='d43; 
localparam chip3_step_read_judge_1    ='d44; 
localparam chip4_step_read_judge_1    ='d45;
localparam comfirm_result_ok_1        ='d46; 
localparam comfirm_result_ok_2        ='d47;
localparam comfirm_result_error       ='d60;

//------------------------------------------------------------------//
//comfirm_result_success
always@(negedge rstn or posedge clk)
if(!rstn)
   comfirm_result_suc <= 'd0;
else if (status == comfirm_result_ok_2)		
   comfirm_result_suc <= 'd1 ;
else 	
   comfirm_result_suc <= comfirm_result_suc;
	
//------------------------------------------------------------------//
//comfirm_result_error
always@(negedge rstn or posedge clk)
if(!rstn)
   comfirm_result_err <= 'd0;
else if (status == comfirm_result_error)		
   comfirm_result_err <= 'd1 ;
else 	
   comfirm_result_err <= comfirm_result_err;

//------------------------------------------------------------------//
//poweron
always@(negedge rstn or posedge clk)
if(!rstn)
   power_cnt <= 'b0;
else if(status == idle && power_cnt <= 'd5)
   power_cnt <= power_cnt + 'd1;
else 
   power_cnt <= power_cnt;

always@(negedge rstn or posedge clk)
if(!rstn)
   poweron <= 'b0;
else if(status == idle && power_cnt == 'd3)
   poweron <= 'd1;
else 
   poweron <= 'd0;
	
always@(negedge rstn or posedge clk)
if(!rstn)
   vdd_cnt <= 'b0;
else if (status == wait_end_power_on && vdd_cnt <= 21'd120 ) 		
   vdd_cnt <= vdd_cnt + 'd1 ;
else 	
   vdd_cnt <= vdd_cnt;

//------------------------------------------------------------------//	
//n count
always@(posedge clk)
if(status == n_ready )
   n_cnt <= 'd1;
else if (status == chip2_step_error || 
         status == chip3_step_error || 
         status == chip4_step_error ||
         status == chip4_step_ok      ) 		
   n_cnt <= n_cnt + 'd1 ;
else 		
   n_cnt <= n_cnt;
	
//------------------------------------------------------------------//
//m count
always@(posedge clk)
if(status == n_ready)
   m_cnt <= 'd0;
else if (status == chip1_step_error ) 		
   m_cnt <= m_cnt + 'd1 ;
else 		
   m_cnt <= m_cnt;

//------------------------------------------------------------------//
//LAT CHA NCHG step
//chip1
always@(negedge rstn or posedge clk)
if(!rstn)
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd0;
   F0_CHA  <= 'd0;
end
else if (status == chip1_step ) 		
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd1;
   F0_CHA  <= 'd0;
end
else if (status == chip1_step_intialize ) 		
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd1;
   F0_CHA  <= 'd1;
end
else if (status == chip1_step_intialize_1 ) 		
begin
   F0_LAT  <= 'd1;
   F0_NCHG <= 'd0;
   F0_CHA  <= 'd1;
end
else if (status == chip1_step_intialize_2 ) 		
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd1;
   F0_CHA  <= 'd1;
end
else if (status == chip1_step_commond ) 		
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd1;
   F0_CHA  <= 'd1;
end
else if (status == chip1_step_read  && rd_cnt >= 'd575)
begin
   F0_LAT  <= 'd0;
   F0_NCHG <= 'd1;
   F0_CHA  <= 'd0;
end
else	
begin
   F0_LAT  <= F0_LAT;
   F0_NCHG <= F0_NCHG;
   F0_CHA  <= F0_CHA;
end

//chip2
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	F1_LAT  <= 'd0;
   F1_NCHG <= 'd0;
   F1_CHA  <= 'd0;
end
else if(status == chip2_step ) 		
begin
   F1_LAT  <= 'd0;
   F1_NCHG <= 'd1;
   F1_CHA  <= 'd1;
end
else if (status == chip2_step_read  && rd_cnt >= 'd575)
begin
	F1_LAT  <= 'd0;
   F1_NCHG <= 'd1;
   F1_CHA  <= 'd0;
end
else	
begin
   F1_LAT  <= F1_LAT;
   F1_NCHG <= F1_NCHG;
   F1_CHA  <= F1_CHA;
end

//chip3
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	F2_LAT  <= 'd0;
   F2_NCHG <= 'd0;
   F2_CHA  <= 'd0;
end
else if(status == chip3_step ) 		
begin
   F2_LAT  <= 'd0;
   F2_NCHG <= 'd1;
   F2_CHA  <= 'd1;
end
else if (status == chip3_step_read  && rd_cnt >= 'd575)
begin
	F2_LAT  <= 'd0;
   F2_NCHG <= 'd1;
   F2_CHA  <= 'd0;
end
else	
begin
   F2_LAT  <= F2_LAT;
   F2_NCHG <= F2_NCHG;
   F2_CHA  <= F2_CHA;
end

//chip4
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	F3_LAT  <= 'd0;
   F3_NCHG <= 'd0;
   F3_CHA  <= 'd0;
end
else if(status == chip4_step ) 		
begin
   F3_LAT  <= 'd0;
   F3_NCHG <= 'd1;
   F3_CHA  <= 'd1;
end
else if (status == chip4_step_read  && rd_cnt >= 'd575)
begin
	F3_LAT  <= 'd0;
   F3_NCHG <= 'd1;
   F3_CHA  <= 'd0;
end
else	
begin
   F3_LAT  <= F3_LAT;
   F3_NCHG <= F3_NCHG;
   F3_CHA  <= F3_CHA;
end

//------------------------------------------------------------------//
//SI3 step
//chip1
always@(posedge clk)
if(status == idle)		
begin
   F0_SI3  <= 'd1;
end
else if( status == chip1_step             ||
         status == chip1_step_intialize   ||
         status == chip1_step_intialize_1 ||
         status == chip1_step_intialize_2 ||
         (status == chip1_step_commond && 
         ((commond_cnt <= 'd8 && 
         commond_cnt >= 'd5) || 
         commond_cnt == 'd0)))
begin
   F0_SI3  <= 'd1;
end
else if(status == chip1_step_commond && 
         commond_cnt <= 'd4 && commond_cnt >= 'd1)	
begin
   F0_SI3  <= 'd0;
end
else if(status == chip1_step_commond && commond_cnt >= 'd9)		
begin
   F0_SI3  <= 'd0;
end
else	
begin
   F0_SI3  <= F0_SI3;
end

//chip2
always@(posedge clk)
if(status == idle)		
begin
   F1_SI3  <= 'd1;
end
else if(status == chip2_step )   		
begin
   F1_SI3  <= 'd0;
end
else	
begin
   F1_SI3  <= F1_SI3;
end

//chip3
always@(posedge clk)
if(status == idle)		
begin
   F2_SI3  <= 'd1;
end
else if(status == chip3_step )  		
begin
   F2_SI3  <= 'd0;
end
else	
begin
   F2_SI3  <= F2_SI3;
end

//chip4
always@(posedge clk)
if(status == idle)		
begin
   F3_SI3  <= 'd1;
end
else if(status == chip4_step ) 		
begin
   F3_SI3  <= 'd0;
end
else	
begin
   F3_SI3  <= F3_SI3;
end

//------------------------------------------------------------------//
//commond_cnt     
always@(posedge clk)
if(status == chip1_step_intialize_2)
   commond_cnt <= 'd0;
else if (commond_cnt <= 'd8 ) 		
   commond_cnt <= commond_cnt + 'd1 ;
else 		
   commond_cnt <= commond_cnt ;

//------------------------------------------------------------------//
//SCK step
assign F0_SCK = (status == chip1_step_read     ||  
                (status == chip1_step_commond  && 
                 commond_cnt <= 'd9            && 
                 commond_cnt >= 'd1)) ? ~clk : 0;
					 
assign F1_SCK = (status == chip2_step_read) ? ~clk : 0;

assign F2_SCK = (status == chip3_step_read) ? ~clk : 0;
					 
assign F3_SCK = (status == chip4_step_read) ? ~clk : 0;

//------------------------------------------------------------------//
//XHOT data
always@(negedge clk)
if(status == chip1_step_commond ||
   status == chip2_step_commond ||
   status == chip3_step_commond ||
   status == chip4_step_commond )
begin
   F_XHOT_r[575:0] <= 'd0;
end
else if ((status == chip1_step_read   ||
          status == chip2_step_read   ||
          status == chip3_step_read   || 
          status == chip4_step_read ) &&
          rd_cnt <= 'd575 && rd_cnt >= 'd0)		
begin
   F_XHOT_r[575:0] <= {F_XHOT_r[574:0],F_XHOT} ;
end
else	
begin
   F_XHOT_r[575:0] <= F_XHOT_r[575:0] ;
end

//------------------------------------------------------------------//
//XHOT data cnt
always@(posedge clk)
if((status == chip1_step_commond && commond_cnt >= 'd9) || 
   (status == chip2_step_commond && commond_cnt >= 'd9) || 
   (status == chip3_step_commond && commond_cnt >= 'd9) ||
   (status == chip4_step_commond && commond_cnt >= 'd9) )	
begin
   rd_cnt <= 'd0;
end
else if ((status == chip1_step_read  ||
          status == chip2_step_read  ||
          status == chip3_step_read  || 
          status == chip4_step_read) &&
          rd_cnt <= 'd575)		
begin
   rd_cnt  <= rd_cnt + 'd1 ;
end
else 		
begin
   rd_cnt  <= rd_cnt;
end

//------------------------------------------------------------------//
//judge code
always@(negedge clk)
if(status == chip1_step_commond ||
   status == chip2_step_commond ||
   status == chip3_step_commond ||
   status == chip4_step_commond )
begin
   judge_data_0  <= 'd0;
   judge_data_1  <= 'd0;
   judge_data_50 <= 'd0;
   judge_data_51 <= 'd0;
end
else if (status == chip1_step_read_judge ||
         status == chip2_step_read_judge ||
         status == chip3_step_read_judge || 
         status == chip4_step_read_judge ) 		
begin
   judge_data_0  <= F_XHOT_r[575:568] ;
   judge_data_1  <= F_XHOT_r[566:559] ;
   judge_data_50 <= F_XHOT_r[125:118] ;
   judge_data_51 <= F_XHOT_r[116:109] ;
end
else	
begin
   judge_data_0  <= judge_data_0  ;
   judge_data_1  <= judge_data_1  ;
   judge_data_50 <= judge_data_50 ;
   judge_data_51 <= judge_data_51 ;
end

//------------------------------------------------------------------//
//4 chip data
always@(negedge rstn or negedge clk)
if(!rstn)
begin
	judge1_data_22  <= 'd0;
   judge2_data_22  <= 'd0;
	//
   judge1_data_23  <= 'd0;
   judge1_data_24  <= 'd0;
   judge2_data_23  <= 'd0;
   judge2_data_24  <= 'd0;
   //
   judge1_data_25  <= 'd0;
   judge1_data_26  <= 'd0;
   judge2_data_25  <= 'd0;
   judge2_data_26  <= 'd0;
   //
   judge1_data_27  <= 'd0;
   judge1_data_28  <= 'd0;
   judge2_data_27  <= 'd0;
   judge2_data_28  <= 'd0;
   //
   judge1_data_29  <= 'd0;
   judge1_data_30  <= 'd0;
   judge2_data_29  <= 'd0;
   judge2_data_30  <= 'd0;
   //
   judge1_data_31  <= 'd0;
   judge1_data_32  <= 'd0;
   judge2_data_31  <= 'd0;
   judge2_data_32  <= 'd0;
   //
   judge1_data_33  <= 'd0;
   judge1_data_34  <= 'd0;
   judge2_data_33  <= 'd0;
   judge2_data_34  <= 'd0;
   //
   judge1_data_35  <= 'd0;
   judge1_data_36  <= 'd0;
   judge2_data_35  <= 'd0;
   judge2_data_36  <= 'd0;
   //
   judge1_data_37  <= 'd0;
   judge1_data_38  <= 'd0;
   judge2_data_37  <= 'd0;
   judge2_data_38  <= 'd0;
	//
	judge1_data_39  <= 'd0;
   judge2_data_39  <= 'd0;
end

//n==1 chip data
else if ((status == chip2_step  ||
          status == chip3_step  ||
			 status == chip4_step  ||
			 status == chip4_step_ok) 
          && n_cnt == 'd1) 		
begin
	judge1_data_22  <= F_XHOT_r[377:370] ;
   judge1_data_23  <= F_XHOT_r[368:361] ;
   judge1_data_24  <= F_XHOT_r[359:352] ;   
   judge1_data_25  <= F_XHOT_r[350:343] ; 
   judge1_data_26  <= F_XHOT_r[341:334] ; 
   judge1_data_27  <= F_XHOT_r[332:325] ; 
   judge1_data_28  <= F_XHOT_r[323:316] ;   
   judge1_data_29  <= F_XHOT_r[314:307] ; 
   judge1_data_30  <= F_XHOT_r[305:298] ; 
   //
   judge1_data_31  <= F_XHOT_r[296:289] ;
   judge1_data_32  <= F_XHOT_r[287:280] ;
   judge1_data_33  <= F_XHOT_r[278:271] ;
   judge1_data_34  <= F_XHOT_r[269:262] ;
   judge1_data_35  <= F_XHOT_r[260:253] ;
   judge1_data_36  <= F_XHOT_r[251:244] ;
   judge1_data_37  <= F_XHOT_r[342:235] ;
   judge1_data_38  <= F_XHOT_r[233:226] ;
	judge1_data_39  <= F_XHOT_r[224:217] ;
end

//n==2 chip data
else if ((status == chip2_step  ||
          status == chip3_step  ||
			 status == chip4_step  ||
			 status == chip4_step_ok) 
          && n_cnt == 'd2) 		
begin
   judge2_data_22  <= F_XHOT_r[377:370] ;
   judge2_data_23  <= F_XHOT_r[368:361] ;
   judge2_data_24  <= F_XHOT_r[359:352] ;   
   judge2_data_25  <= F_XHOT_r[350:343] ; 
   judge2_data_26  <= F_XHOT_r[341:334] ; 
   judge2_data_27  <= F_XHOT_r[332:325] ; 
   judge2_data_28  <= F_XHOT_r[323:316] ;   
   judge2_data_29  <= F_XHOT_r[314:307] ; 
   judge2_data_30  <= F_XHOT_r[305:298] ;  
	//
	judge2_data_31  <= F_XHOT_r[296:289] ;
   judge2_data_32  <= F_XHOT_r[287:280] ;
   judge2_data_33  <= F_XHOT_r[278:271] ;
   judge2_data_34  <= F_XHOT_r[269:262] ;
   judge2_data_35  <= F_XHOT_r[260:253] ;
   judge2_data_36  <= F_XHOT_r[251:244] ;
   judge2_data_37  <= F_XHOT_r[342:235] ;
   judge2_data_38  <= F_XHOT_r[233:226] ;
   judge2_data_39  <= F_XHOT_r[224:217] ;	
end

////n==1 chip data
//else if (status == chip2_step//chip1_step_read_judge 
//         && n_cnt == 'd1) 		
//begin
//   judge1_data_23  <= F_XHOT_r[368:361] ;
//   judge1_data_24  <= F_XHOT_r[359:352] ;   
//end
//else if (status == chip3_step//chip2_step_read_judge 
//         && n_cnt == 'd1) 		
//begin
//
//   judge1_data_25  <= F_XHOT_r[350:343] ; 
//   judge1_data_26  <= F_XHOT_r[341:334] ; 
//end
//else if (status == chip4_step//chip3_step_read_judge 
//         && n_cnt == 'd1) 		
//begin
//   judge1_data_27  <= F_XHOT_r[332:325] ; 
//   judge1_data_28  <= F_XHOT_r[323:316] ;   
//end
//else if (status == chip4_step_ok//chip4_step_read_judge 
//         && n_cnt == 'd1) 		
//begin 
//   judge1_data_29  <= F_XHOT_r[314:307] ; 
//   judge1_data_30  <= F_XHOT_r[305:298] ;  
//end
//
////n==2 chip data
//else if (status == chip2_step//chip1_step_read_judge 
//         && n_cnt == 'd2) 		
//begin
//   judge2_data_23  <= F_XHOT_r[368:361] ;
//   judge2_data_24  <= F_XHOT_r[359:352] ;   
//end
//else if (status == chip3_step//chip2_step_read_judge 
//         && n_cnt == 'd2) 		
//begin
//
//   judge2_data_25  <= F_XHOT_r[350:343] ; 
//   judge2_data_26  <= F_XHOT_r[341:334] ; 
//end
//else if (status == chip4_step//chip3_step_read_judge 
//         && n_cnt == 'd2) 		
//begin
//   judge2_data_27  <= F_XHOT_r[332:325] ; 
//   judge2_data_28  <= F_XHOT_r[323:316] ;   
//end
//else if (status == chip4_step_ok//chip4_step_read_judge 
//         && n_cnt == 'd2) 		
//begin 
//   judge2_data_29  <= F_XHOT_r[314:307] ; 
//   judge2_data_30  <= F_XHOT_r[305:298] ;  
//end

//hold chip data 
else 
begin
   judge1_data_22  <= judge1_data_22 ; 
   judge2_data_22  <= judge2_data_22 ;
	//
   judge1_data_23  <= judge1_data_23 ;
   judge1_data_24  <= judge1_data_24 ; 
   judge2_data_23  <= judge2_data_23 ;
   judge2_data_24  <= judge2_data_24 ;
   //
   judge1_data_25  <= judge1_data_25 ; 
   judge1_data_26  <= judge1_data_26 ;
   judge2_data_25  <= judge2_data_25 ;
   judge2_data_26  <= judge2_data_26 ;
   //
   judge1_data_27  <= judge1_data_27 ; 
   judge1_data_28  <= judge1_data_28 ; 
   judge2_data_27  <= judge2_data_27 ; 
   judge2_data_28  <= judge2_data_28 ; 
   //
   judge1_data_29  <= judge1_data_29 ; 
   judge1_data_30  <= judge1_data_30 ;  
   judge2_data_29  <= judge2_data_29 ; 
   judge2_data_30  <= judge2_data_30 ; 
	//
	judge1_data_31  <= judge1_data_31 ;
   judge1_data_32  <= judge1_data_32 ; 
   judge2_data_31  <= judge2_data_31 ;
   judge2_data_32  <= judge2_data_32 ;
   //
   judge1_data_33  <= judge1_data_33 ; 
   judge1_data_34  <= judge1_data_34 ;
   judge2_data_33  <= judge2_data_33 ;
   judge2_data_34  <= judge2_data_34 ;
   //
   judge1_data_35  <= judge1_data_35 ; 
   judge1_data_36  <= judge1_data_36 ; 
   judge2_data_35  <= judge2_data_35 ; 
   judge2_data_36  <= judge2_data_36 ; 
   //
   judge1_data_37  <= judge1_data_37 ; 
   judge1_data_38  <= judge1_data_38 ;  
   judge2_data_37  <= judge2_data_37 ; 
   judge2_data_38  <= judge2_data_38 ; 
	//
	judge1_data_39  <= judge1_data_39 ;  
   judge2_data_39  <= judge2_data_39 ;
end

//------------------------------------------------------------------//
//comfirm_result is ok or error
always@(negedge rstn or negedge clk)
if(!rstn)
begin
   F0_dataA   <= 'd0;
   F0_dataB   <= 'd0;
   F1_dataA   <= 'd0;
   F1_dataB   <= 'd0;
   F2_dataA   <= 'd0;
   F2_dataB   <= 'd0;
   F3_dataA   <= 'd0;
   F3_dataB   <= 'd0;
	//
   F4_dataA   <= 'd0;
   F4_dataB   <= 'd0;
   F5_dataA   <= 'd0;
   F5_dataB   <= 'd0;
   F6_dataA   <= 'd0;
   F6_dataB   <= 'd0;
   F7_dataA   <= 'd0;
   F7_dataB   <= 'd0;
   F8_dataA   <= 'd0;
   F9_dataB   <= 'd0;	
	comfirm_ok <= 'd0;
end
else if (status == comfirm_result_ok      &&
         judge1_data_22 == judge2_data_22 &&
         judge1_data_23 == judge2_data_23 &&
         judge1_data_24 == judge2_data_24 &&
         judge1_data_25 == judge2_data_25 &&
         judge1_data_26 == judge2_data_26 &&
         judge1_data_27 == judge2_data_27 &&
         judge1_data_28 == judge2_data_28 &&
         judge1_data_29 == judge2_data_29 &&
         judge1_data_30 == judge2_data_30 &&
			
			judge1_data_31 == judge2_data_31 &&
         judge1_data_32 == judge2_data_32 &&
         judge1_data_33 == judge2_data_33 &&
         judge1_data_34 == judge2_data_34 &&
         judge1_data_35 == judge2_data_35 &&
         judge1_data_36 == judge2_data_36 &&
         judge1_data_37 == judge2_data_37 &&
         judge1_data_38 == judge2_data_38 &&
         judge1_data_39 == judge2_data_39)
begin
      F0_dataA   <= judge1_data_23 ; 
      F0_dataB   <= judge1_data_24 ; 
      F1_dataA   <= judge1_data_25 ;
      F1_dataB   <= judge1_data_26 ;
      F2_dataA   <= judge1_data_27 ;
      F2_dataB   <= judge1_data_28 ;
      F3_dataA   <= judge1_data_29 ;
      F3_dataB   <= judge1_data_30 ;
      //
      F4_dataA   <= judge1_data_31 ; 
      F4_dataB   <= judge1_data_32 ; 
      F5_dataA   <= judge1_data_33 ;
      F5_dataB   <= judge1_data_34 ;
      F6_dataA   <= judge1_data_35 ;
      F6_dataB   <= judge1_data_36 ;
      F7_dataA   <= judge1_data_37 ;
      F7_dataB   <= judge1_data_38 ;
      F8_dataA   <= judge1_data_22 ;
      F9_dataB   <= judge1_data_39 ;
		comfirm_ok <= 'd1            ;
end
else 
begin
      F0_dataA   <= F0_dataA   ; 
      F0_dataB   <= F0_dataB   ; 
      F1_dataA   <= F1_dataA   ;
      F1_dataB   <= F1_dataB   ;
      F2_dataA   <= F2_dataA   ;
      F2_dataB   <= F2_dataB   ;
      F3_dataA   <= F3_dataA   ;
      F3_dataB   <= F3_dataB   ;
		//
      F4_dataA   <= F4_dataA   ; 
      F4_dataB   <= F4_dataB   ; 
      F5_dataA   <= F5_dataA   ;
      F5_dataB   <= F5_dataB   ;
      F6_dataA   <= F6_dataA   ;
      F6_dataB   <= F6_dataB   ;
      F7_dataA   <= F7_dataA   ;
      F7_dataB   <= F7_dataB   ;
      F8_dataA   <= F8_dataA   ;
      F9_dataB   <= F9_dataB   ;		
		comfirm_ok <= comfirm_ok ;
end

//------------------------------------------------------------------//	
//-----------status---------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status <= idle ;
end
else
begin
        //power_wait_10ms
	if(status == idle && poweron)// request_poweron )//					
	    status <= vdd_power_on ;
	else if (status == vdd_power_on)								
	    status <= wait_end_power_on ;
	else if (status == wait_end_power_on && vdd_cnt >= 21'd110 )				
	    status <= n_ready ;
	else if (status == n_ready )				
	    status <= n_ready_dly ;
	else if (status == n_ready_dly )				
	    status <= n_ready_dly1 ;
	else if (status == n_ready_dly1 && n_cnt<='d2  && m_cnt<='d2)				
	    status <= chip1_step ;
		 
	//chip1 memory read	 
	else if (status == chip1_step )				
	    status <= chip1_step_intialize ;		 
	else if (status == chip1_step_intialize )							
	    status <= chip1_step_intialize_1 ;
	else if (status == chip1_step_intialize_1 )							
	    status <= chip1_step_intialize_2 ;
	else if (status == chip1_step_intialize_2 )														
	    status <= chip1_step_commond ;
	else if (status == chip1_step_commond && commond_cnt >= 'd9 )			
	    status <= chip1_step_read ;
	else if (status == chip1_step_read && rd_cnt >= 'd575)	
//	else if (status == chip1_step_read && rd_cnt >= 'd576)			
	    status <= chip1_step_read_judge ;
	else if (status == chip1_step_read_judge )			
	    status <= chip1_step_read_judge_1 ;	
	else if (status == chip1_step_read_judge_1 && 
                 judge_data_0  == 'h55 && 
                 judge_data_1  == 'haa && 
                 judge_data_50 == 'hc3 && 
                 judge_data_51 == 'h3c )			
	    status <= chip2_step ;	
	else if (status == chip1_step_read_judge_1 && 
                 judge_data_0  != 'h55 && 
                 judge_data_1  != 'haa && 
                 judge_data_50 != 'hc3 && 
                 judge_data_51 != 'h3c )			
	    status <= chip1_step_error ;	
	else if (status == chip1_step_error )			
	    status <= chip1_step_error_n ;
	else if (status == chip1_step_error_n )			
	    status <= chip1_step_error_n1 ;		 
	else if (status == chip1_step_error_n1 && m_cnt <= 'd1 )			
	    status <= chip1_step ;
	else if (status == chip1_step_error_n1 && m_cnt >= 'd2 )			
	    status <= chip1_result_error ;
		 
	//chip2 memory read
	else if (status == chip2_step )								
	    status <= chip2_step_read ;	 
	else if (status == chip2_step_read  && rd_cnt >= 'd575)
//	else if (status == chip2_step_read && rd_cnt >= 'd576)				
	    status <= chip2_step_read_judge ;
	else if (status == chip2_step_read_judge )			
	    status <= chip2_step_read_judge_1 ;	
	else if (status == chip2_step_read_judge_1 && 
                 judge_data_0  == 'h55 && 
                 judge_data_1  == 'haa && 
                 judge_data_50 == 'hc3 && 
                 judge_data_51 == 'h3c  )			
	    status <= chip3_step ;	
	else if (status == chip2_step_read_judge_1 && 
                 judge_data_0  != 'h55 && 
                 judge_data_1  != 'haa && 
                 judge_data_50 != 'hc3 && 
                 judge_data_51 != 'h3c  )			
	    status <= chip2_step_error ;
	else if (status == chip2_step_error )			
	    status <= chip2_step_error_n ;
	else if (status == chip2_step_error_n )			
	    status <= chip2_step_error_n1 ;	
	else if (status == chip2_step_error_n1 && n_cnt <= 'd2 )			
	    status <= chip1_step ;
	else if (status == chip2_step_error_n1 && n_cnt >= 'd3 )			
	    status <= chip2_result_error ;
		 
	//chip3 memory read
	else if (status == chip3_step )										
	    status <= chip3_step_read ;	
	else if (status == chip3_step_read  && rd_cnt >= 'd575)
//	else if (status == chip3_step_read && rd_cnt >= 'd576)			
	    status <= chip3_step_read_judge ;
	else if (status == chip3_step_read_judge )			
	    status <= chip3_step_read_judge_1 ;	
	else if (status == chip3_step_read_judge_1 && 
                 judge_data_0  == 'h55 && 
                 judge_data_1  == 'haa && 
                 judge_data_50 == 'hc3 && 
                 judge_data_51 == 'h3c  )			
	    status <= chip4_step ;	
	else if (status == chip3_step_read_judge_1 && 
                 judge_data_0  != 'h55 && 
                 judge_data_1  != 'haa && 
                 judge_data_50 != 'hc3 && 
                 judge_data_51 != 'h3c  )			
	    status <= chip3_step_error ;
	else if (status == chip3_step_error )			
	    status <= chip3_step_error_n ;
	else if (status == chip3_step_error_n )			
	    status <= chip3_step_error_n1 ;	
	else if (status == chip3_step_error_n1 && n_cnt <= 'd2 )			
	    status <= chip1_step ;
	else if (status == chip3_step_error_n1 && n_cnt >= 'd3 )			
	    status <= chip3_result_error ;

	//chip4 memory read
	else if (status == chip4_step )					
	    status <= chip4_step_read ;
	else if (status == chip4_step_read  && rd_cnt >= 'd575)	
//	else if (status == chip4_step_read && rd_cnt >= 'd576)		
	    status <= chip4_step_read_judge ;
	else if (status == chip4_step_read_judge )			
	    status <= chip4_step_read_judge_1 ;	
	else if (status == chip4_step_read_judge_1 && 
                 judge_data_0  == 'h55 && 
                 judge_data_1  == 'haa && 
                 judge_data_50 == 'hc3 && 
                 judge_data_51 == 'h3c  )			
	    status <= chip4_step_ok ;	
	else if (status == chip4_step_read_judge_1 && 
                 judge_data_0  != 'h55 && 
                 judge_data_1  != 'haa && 
                 judge_data_50 != 'hc3 && 
                 judge_data_51 != 'h3c  )			
	    status <= chip4_step_error ;
	else if (status == chip4_step_error )			
	    status <= chip4_step_error_n ;
	else if (status == chip4_step_error_n )			
	    status <= chip4_step_error_n1 ;	
	else if (status == chip4_step_error_n1 && n_cnt <= 'd2 )		
	    status <= chip1_step ;
	else if (status == chip4_step_error_n1 && n_cnt >= 'd3 )			
	    status <= chip4_result_error ;	

        //output result
	else if (status == chip4_step_ok )			
	    status <= chip4_step_ok_1 ;
	else if (status == chip4_step_ok_1 )			
	    status <= chip4_step_ok_2 ;
	else if (status == chip4_step_ok_2 && n_cnt <= 'd2 )			
	    status <= chip1_step ;
	else if (status == chip4_step_ok_2 && n_cnt >= 'd3 )			
	    status <= comfirm_result_ok ;
	else if (status == comfirm_result_ok && comfirm_ok == 'd1 )			
	    status <= comfirm_result_ok_1 ;
	else if (status == comfirm_result_ok_1 )			
	    status <= comfirm_result_ok_2 ;

    //error return idle
   else if (status == chip1_result_error ||
            status == chip2_result_error ||
            status == chip3_result_error ||
            status == chip4_result_error )			
	   status <= comfirm_result_error ;
end				
					
endmodule
