`timescale 1 ps / 1 ps

module Head_Ctrl(
	input              rstn                 	,
	input              clk                  	,
	input              clk_10k                  ,
	input              clk_10k_1                ,
	
    (* mark_debug = "true" *)input      [ 15:0] PrnData0                     ,//add for eops
    (* mark_debug = "true" *)input              D_SCK                       ,//mainboard_mask
    (* mark_debug = "true" *)input              FIRE_TO_FPGA                ,
    (* mark_debug = "true" *)input      [  3:0] F_CMD                         ,
    
    input                 SpData_wren                       ,
    input [7:0]           SpData_addr                      ,
    input [15:0]           SpData_data                      ,
        
    input      [  7:0] waddr_addr_i              ,//add
    input              waddr_wren_i              ,//wave file addr
    input      [ 7:0]  waddr_data_i              ,
    
    input              request_poweron                , //add
    input              request_poweroff                ,
    input              request_job_start                ,
    input              request_fill_Zeros                ,
    input              request_fill_Ones                ,
    input              qr_en,                    
    output             qr_suc,
    output             qr_err,   
    output [143:0]      qr_data,   
    
	input [7:0]  		 DA_DivCnt     	  		,
	input              da_set_en         		,
	input              da_set_wren        		,
	input [15:0]  		 set_da_value       	 	,
	input [9:0] 	 	 VolMax	 	 				,
	input [13:0] 	 	 VolSlope_Max	 	 		,
	
	input [7:0] 	 	 Logic_Init_Ctrl	 	 	,
	input					 Logic_Init_wr				,

	input   	 	 	 wave_sel_wren 	 			 	,
	input [7:0] 	 	 wave_sel_addr	 	 			,
	input [7:0] 	 	 wave_sel_data	 	 			,
	
	input [15:0] 	 	 W_Addr	 	 			 	,
	input [7:0] 	 	 W_Data	 	 			 	,
	input   	 	 	 W_Wren	 	 			 	,
	
    input [15:0]         L_Addr                           ,
    input [7:0]          L_Data                           ,
	input   	 	 	 L_Wren	 	 			 	,
	
    input               RAM_sel             ,   
    input               RAM_init            ,  
            
	output [31:0]  	 volMax_ERROR      	 	,
	output [31:0]  	 VolSlope_Max_ERROR	 	,
	output              F_XHOT_error        , 
	
	input               F_XHOT              ,
	
	output     [4:0]   Print_Status,
	output              PtoDown_err, 

	output             F0_SCK		            ,
	output     [  3:0] F_dataA           		,
    output             F0_lat                   ,
    output             F0_cha                   ,
    output             F0_chb                   ,
    output             F0_nchg                    ,
	
	output             F1_SCK		            ,
	output     [  3:0] F_dataB           		,
    output             F1_lat                   ,
    output             F1_cha                   ,
    output             F1_chb                   ,
    output             F1_nchg                    ,
	
	output             F2_SCK		            ,
	output     [  3:0] F_dataC           		,
    output             F2_lat                   ,
    output             F2_cha                   ,
    output             F2_chb                   ,
    output             F2_nchg                   ,
	
	output             F3_SCK		            ,
	output     [  3:0] F_dataD           		,
    output             F3_lat                   ,
    output             F3_cha                   ,
    output             F3_chb                   ,
    output             F3_nchg                   ,
	
	output             DA0_LAT_A          		,
	output             DA0_LAT_B          		,
	output             DA1_LAT_A          		,
	output             DA1_LAT_B          		,
	output     [  9:0] DA01_DATA           		,

	output             DA2_LAT_A          		,
	output             DA2_LAT_B          		,
	output             DA3_LAT_A          		,
	output             DA3_LAT_B          		,
	output     [  9:0] DA23_DATA           		   
	);
	
localparam      PrintHead_Type  =   8'h06;  //s3200
	
wire[7:0]   F_SgnA,F_SgnB,F_SgnC,F_SgnD,F_SgnE;
wire         request_prefill ,request_print ; 
wire         request_up ,request_down ;
wire         request_shake_bf_pass  ;
wire         request_shake_bf_pass_up  ;
wire         request_shake_bf_pass_down  ;
wire         request_shake_bt_pass    ;

wire         req_poweron  ,req_poweroff   ;
wire         req_prefill ,req_print, req_up  ,req_down;
wire         req_shake_bf_pass        		;
wire         req_shake_bt_pass       		;
wire         req_fill_Zeros ,req_fill_Ones;
wire         req_shake_bf_pass_up ,req_shake_bf_pass_down;

wire         LVDS_data_valid    ;
wire[15:0]   LVDS_wr_dataA;

wire         Wave_req  ,Wave_end ;

wire         data_switch    ;
wire         FPGA_INT1    ;
wire[15:0]   FireCycle_min;

wire         qr_over;
wire        status_print;
wire        PRINT_ERROR;
wire[7:0]   PRINT_ERROR_reg;
wire[7:0]       ch1_wave_start_addr,ch2_wave_start_addr,ch3_wave_start_addr,ch4_wave_start_addr;
wire[7:0]       ch5_wave_start_addr,ch6_wave_start_addr,ch7_wave_start_addr,ch8_wave_start_addr;
wire[7:0]       h1_logic_start_addr,h2_logic_start_addr,h3_logic_start_addr,h4_logic_start_addr;
wire[7:0]       data_Type;
wire        DATA_ERROR;
wire sck ;
wire [3:0] F_dataA ,F_dataB ,F_dataC ,F_dataD ;
wire[7:0] logics_wave_req ;

wire[ 31:0]  		 H0_Data , H1_Data , H2_Data , H3_Data   ;
wire[ 15:0]  		 Wave_Addr    ;
wire[ 7:0]  		 Wave_Data    ;
wire	  		 		 Wave_Wren    ;

wire[ 15:0]  		 Logic_Addr   ;
wire[ 7:0]  		 Logic_Data   ;
wire	  		 		 Logic_Wren   ;
wire all_end;
wire data_end;
wire Logics_end;
wire Waves_end;

wire [31:0] Waves_req ;
wire 	DA1_clk  ,DA2_clk  ,DA3_clk  , DA4_clk , DA5_clk , DA6_clk, DA7_clk, DA8_clk , DA9_clk ,
		DA10_clk, DA11_clk, DA12_clk, DA13_clk, DA14_clk, DA15_clk, DA16_clk;

wire 	DA1_dclk  ,DA2_dclk  ,DA3_dclk  , DA4_dclk , DA5_dclk , DA6_dclk, DA7_dclk, DA8_dclk , DA9_dclk , 
		DA10_dclk, DA11_dclk, DA12_dclk, DA13_dclk, DA14_dclk, DA15_dclk, DA16_dclk;

wire [9:0]	DA1_dat  ,DA2_dat  ,DA3_dat  , DA4_dat , DA5_dat , DA6_dat, DA7_dat, DA8_dat , DA9_dat , 
				DA10_dat, DA11_dat, DA12_dat, DA13_dat, DA14_dat, DA15_dat, DA16_dat ;
				
wire F0_SCK_qr;		           
wire F0_lat_qr;                   
wire F0_cha_qr;                  
wire F0_chb_qr;                  
wire F0_nchg_qr;   

wire F1_SCK_qr;		           
wire F1_lat_qr;                   
wire F1_cha_qr;                  
wire F1_chb_qr;                  
wire F1_nchg_qr;  

wire F2_SCK_qr;		           
wire F2_lat_qr;                   
wire F2_cha_qr;                  
wire F2_chb_qr;                  
wire F2_nchg_qr;  

wire F3_SCK_qr;		           
wire F3_lat_qr;                   
wire F3_cha_qr;                  
wire F3_chb_qr;                  
wire F3_nchg_qr;   	

reg [9:0] DA1_dat_1=0;
reg [9:0] DA2_dat_1=0;
reg [9:0] DA3_dat_1=0;
reg [9:0] DA4_dat_1=0;
reg [9:0] DA5_dat_1=0;
reg [9:0] DA6_dat_1=0;
reg [9:0] DA7_dat_1=0;
reg [9:0] DA8_dat_1=0;
reg [9:0] DA9_dat_1=0;
reg [9:0] DA10_dat_1=0;
reg [9:0] DA11_dat_1=0;
reg [9:0] DA12_dat_1=0;
reg [9:0] DA13_dat_1=0;
reg [9:0] DA14_dat_1=0;
reg [9:0] DA15_dat_1=0;
reg [9:0] DA16_dat_1=0;						
				
wire req_Sck ,SCK_req; 
wire    DaDrvClk;
wire[15:0]      SPdata;
wire            SPdata_start,SPdata_req;
wire[15:0]      Prn_Data;
wire            data_req;
//---------------------------
reg [2:0] status;
localparam idle           =3'd0 ;
localparam get_Start      =3'd1 ;
localparam get_Wait1      =3'd2 ;
localparam get_Wait2      =3'd3 ;
localparam get_end        =3'd4 ;
//-------------
	
assign      F0_lat  = (qr_over == 1) ?   F_SgnA[0] : F0_lat_qr;
assign      F1_lat  = (qr_over == 1) ?   F_SgnA[1] : F1_lat_qr;
assign      F2_lat  = (qr_over == 1) ?   F_SgnA[2] : F2_lat_qr;
assign      F3_lat  = (qr_over == 1) ?   F_SgnA[3] : F3_lat_qr;
	
assign      F0_nchg  = (qr_over == 1) ?   F_SgnB[0] : F0_nchg_qr;
assign      F1_nchg  = (qr_over == 1) ?   F_SgnB[1] : F1_nchg_qr;
assign      F2_nchg  = (qr_over == 1) ?   F_SgnB[2] : F2_nchg_qr;
assign      F3_nchg  = (qr_over == 1) ?   F_SgnB[3] : F3_nchg_qr;

assign      F0_cha  = (qr_over == 1) ?   F_SgnC[0] : F0_cha_qr;
assign      F1_cha  = (qr_over == 1) ?   F_SgnC[1] : F1_cha_qr;
assign      F2_cha  = (qr_over == 1) ?   F_SgnC[2] : F2_cha_qr;
assign      F3_cha  = (qr_over == 1) ?   F_SgnC[3] : F3_cha_qr;
	
assign      F0_chb  = (qr_over == 1) ?   F_SgnD[0] : F0_chb_qr;
assign      F1_chb  = (qr_over == 1) ?   F_SgnD[1] : F1_chb_qr;
assign      F2_chb  = (qr_over == 1) ?   F_SgnD[2] : F2_chb_qr;
assign      F3_chb  = (qr_over == 1) ?   F_SgnD[3] : F3_chb_qr;

//-------------	lvds cmd




LVDS_Ctrl LVDS_Ctrl_inst(
    .rstn                          (rstn                     ),
    .clk                           (clk                     ),
    .PrnData0                         (PrnData0                  ),
    .D_SCK                            (D_SCK                       ),
    .FIRE_TO_FPGA                  (FIRE_TO_FPGA               ),
    .F_CMD                            (F_CMD                              ),

    .request_prefill                (request_prefill            ),
    .request_up                     (request_up                 ),
    .request_shake_bf_pass            (request_shake_bf_pass          ),
    .request_print                  (request_print              ),
    .request_down                   (request_down               ),
    .request_shake_bt_pass                 (request_shake_bt_pass        ),
    .request_shake_bf_pass_up             (request_shake_bf_pass_up     ),
    .request_shake_bf_pass_down       (request_shake_bf_pass_down ),
    
    .FPGA_INT1                              (FPGA_INT1                        ),
    .data_switch                          (data_switch                        ),
    .FireCycle_min_o                (FireCycle_min                     ),
    .LVDS_data_valid                (LVDS_data_valid            ),
    .LVDS_wr_dataA                  (LVDS_wr_dataA              )
);
//-------------------Print_Ctrl------------------------
//wire[4:0]   Print_Status;

Print_Ctrl Print_Ctrl_inst(
    .rstn                            (rstn                       ),
    .clk                             (clk                        ),
    .request_job_start               (request_job_start          ),
    .request_poweron                 (request_poweron            ),
    .request_poweroff                (request_poweroff           ),
    .request_prefill                    (request_prefill            ),
    .request_up                      (request_up                 ),
    .request_shake_bf_pass               (request_shake_bf_pass       ),
    .request_shake_bf_pass_up           (request_shake_bf_pass_up   ),
    .request_shake_bf_pass_down      (request_shake_bf_pass_down ),
    .request_print                   (request_print              ),
    .request_down                    (request_down               ),
    .request_shake_bt_pass                (request_shake_bt_pass          ),
    .request_fill_Zeros                    (request_fill_Zeros               ),
    .request_fill_Ones                    (request_fill_Ones               ),
    
    .req_poweron                     (req_poweron                ),
    .req_poweroff                    (req_poweroff               ),
    .req_prefill                        (req_prefill                ),
    .req_up                          (req_up                     ),
    .req_print                           (req_print                     ),
    .req_down                        (req_down                   ),
    .req_shake_bf_pass                   (req_shake_bf_pass           ),
    .req_shake_bt_pass                  (req_shake_bt_pass              ),
    .req_fill_Zeros                      (req_fill_Zeros                   ),
    .req_fill_Ones                      (req_fill_Ones                   ),
    .req_shake_bf_pass_up               (req_shake_bf_pass_up ),
    .req_shake_bf_pass_down             (req_shake_bf_pass_down),
    .st_ready                        (status_print                     ),
    .PtoDown_err                        (PtoDown_err),
    
    .PRINT_ERROR                         (PRINT_ERROR                    ),
    .PRINT_ERROR_reg                      (PRINT_ERROR_reg            ),
    .Print_Status                         (Print_Status                ),
    .Wave_req                                (Wave_req                         ),
    .Wave_end                        (Wave_end                   )
    );
//----------------------
waves_addr_Ctrl waves_addr_Ctrl_inst(
    .rstn                   (rstn                  ),
    .clk                    (clk                     ),
    .req_poweron            (req_poweron          ),
    .req_poweroff         (req_poweroff         ),
    .req_up               (req_up                      ),
    .req_shake_bf_pass     (req_shake_bf_pass      ),
    .req_print            (req_print            ),
    .req_down                (req_down              ),
    .req_shake_bt_pass     (req_shake_bt_pass       ),
    .req_fill_Zeros       (req_fill_Zeros       ),
    .req_fill_Ones        (req_fill_Ones           ),
    .req_shake_bf_pass_up (req_shake_bf_pass_up ),
    .req_shake_bf_pass_down(req_shake_bf_pass_down),
   
    .w_addr_i (waddr_addr_i),
    .w_wren_i (waddr_wren_i),
    .w_data_i (waddr_data_i),
    
    .ch1_wave_start_addr (ch1_wave_start_addr),
    .ch2_wave_start_addr (ch2_wave_start_addr),
    .ch3_wave_start_addr (ch3_wave_start_addr),
    .ch4_wave_start_addr (ch4_wave_start_addr),
    .ch5_wave_start_addr (ch5_wave_start_addr),
    .ch6_wave_start_addr (ch6_wave_start_addr),
    .ch7_wave_start_addr (ch7_wave_start_addr),
    .ch8_wave_start_addr (ch8_wave_start_addr),
    
    .h1_logic_start_addr (h1_logic_start_addr),  
    .h2_logic_start_addr (h2_logic_start_addr), 
    .h3_logic_start_addr (h3_logic_start_addr), 
    .h4_logic_start_addr (h4_logic_start_addr),   
    .data_Type           (data_Type          )
    );
//-----------------Data_Convert------------------


Data_Convert Data_Convert_inst(
    .rstn                   (rstn              ),
    .clk                   (clk                 ),
    .data_switch              (data_switch         ),
    .wr_req               (LVDS_data_valid  ),
    .wr_data             (LVDS_wr_dataA     ),
    
    .data_Type                 (data_Type             ),
    .PrintHead_Type         (PrintHead_Type     ),
    
    .rd_req               (data_req),
    .Prn_Data            (Prn_Data            ),
    
    .SpData_wren             (SpData_wren     ),
    .SpData_addr             (SpData_addr     ),
    .SpData_data             (SpData_data     ),
    
    .SPdata_start             (SPdata_start         ),
    .SPdata_req                 (SPdata_req         ),
    .SPdata                     (SPdata             ),
    .DATA_ERROR             (DATA_ERROR         )
);
//-------------    
//-------------	
assign all_end = (data_end && Logics_end && Waves_end);
assign SCK_req = 	req_Sck || req_prefill ;	
assign F_XHOT_error = F_XHOT;			

// assign DA0_LAT_A = DA1_clk ;
// assign DA0_LAT_B = DA2_clk ;
// assign DA1_LAT_A = DA3_clk ;
// assign DA1_LAT_B = DA4_clk ;
// assign DA2_LAT_A = DA5_clk ;
// assign DA2_LAT_B = DA6_clk ;
// assign DA3_LAT_A = DA7_clk ;
// assign DA3_LAT_B = DA8_clk ;
// assign DA4_LAT_A = DA9_clk ;
// assign DA4_LAT_B = DA10_clk ;
// assign DA5_LAT_A = DA11_clk ;
// assign DA5_LAT_B = DA12_clk ;
// assign DA6_LAT_A = DA13_clk ;
// assign DA6_LAT_B = DA14_clk ;
// assign DA7_LAT_A = DA15_clk ;
// assign DA7_LAT_B = DA16_clk ;

// assign DA0_DATA  = (DA1_dclk)  ?DA1_dat  :((DA2_dclk)  ? DA2_dat  : ((DA3_dclk)  ? DA3_dat  : DA4_dat))  ;
// assign DA1_DATA  = (DA5_dclk)  ?DA5_dat  :((DA6_dclk)  ? DA6_dat  : ((DA7_dclk)  ? DA7_dat  : DA8_dat))  ;
// assign DA2_DATA  = (DA9_dclk)  ?DA9_dat  :((DA10_dclk) ? DA10_dat : ((DA11_dclk) ? DA11_dat : DA12_dat)) ;
// assign DA3_DATA  = (DA13_dclk) ?DA13_dat :((DA14_dclk) ? DA14_dat : ((DA15_dclk) ? DA15_dat : DA16_dat)) ;

assign F0_SCK  = (qr_over == 1) ? sck : F0_SCK_qr;
assign F1_SCK  = (qr_over == 1) ? sck : F1_SCK_qr;
assign F2_SCK  = (qr_over == 1) ? sck : F2_SCK_qr;
assign F3_SCK  = (qr_over == 1) ? sck : F3_SCK_qr;
//assign F4_SCK = sck ;
//assign F5_SCK = sck ;
//assign F6_SCK = sck ;
//assign F7_SCK = sck ;

//H_DataMAP_Ctrl H_DataMAP_Ctrl_inst(
//	.F_dataA 			(F_dataA) ,
//	.F_dataB 			(F_dataB) ,
//	.F_dataC 			(F_dataC) ,
//	.F_dataD 			(F_dataD) ,
//	.PrintHead_Type 	(PrintHead_Type) ,
//	.H0_Data 			(H0_Data) ,
//	.H1_Data 			(H1_Data) ,
//	.H2_Data 			(H2_Data) ,
//	.H3_Data 			(H3_Data) 
//	);

//assign F0_dataA = F_dataA[7:0] ;
//assign F0_dataB = F_dataA[15:8] ;
//assign F1_dataA = F_dataA[23:16] ;
//assign F1_dataB = F_dataA[31:24] ;

//assign F2_dataA = F_dataB[7:0] ;
//assign F2_dataB = F_dataB[15:8] ;
//assign F3_dataA = F_dataB[23:16] ;
//assign F3_dataB = F_dataB[31:24] ;

//assign F4_dataA = F_dataC[7:0] ;
//assign F4_dataB = F_dataC[15:8] ;
//assign F5_dataA = F_dataC[23:16] ;
//assign F5_dataB = F_dataC[31:24] ;

//assign F6_dataA = F_dataD[7:0] ;
//assign F6_dataB = F_dataD[15:8] ;
//assign F7_dataA = F_dataD[23:16] ;
//assign F7_dataB = F_dataD[31:24] ;
//-------------------wave---------------------
assign Wave_Wren  = W_Wren ;
assign Wave_Addr = W_Addr ;
assign Wave_Data = W_Data ;

assign Logic_Wren = L_Wren ;
assign Logic_Addr= L_Addr ;
assign Logic_Data= L_Data ;

assign Wave_end = (status == get_end );
//------------status----------
always@(negedge rstn or posedge clk)
if(!rstn)
begin
	status<=idle;
end
else
begin
	if(status==idle				&& Wave_req	)status<=get_Start;
	else if(status==get_Start   				)status<=get_Wait1 ; 
	else if(status==get_Wait1   				)status<=get_Wait2 ; 
	else if(status==get_Wait2  && all_end 	)status<=get_end ; 
	else if(status==get_end   					)status<=idle ; 
end
//------------
WaveReq_Ctrl WaveReq_Ctrl_inst(
	.rstn       (rstn	   ),
	.clk       	(clk       ),
	
    .wave_sel_wren     (wave_sel_wren )   ,
    .wave_sel_addr     (wave_sel_addr )   ,
    .wave_sel_data     (wave_sel_data )   ,
		
	.Logics_req	(logics_wave_req),
	.Waves_req 	(Waves_req )  
	);
//-------------------
waves_Ctrl waves_Ctrl_inst(
	.rstn              (rstn	            ),
	.clk               (clk	               ),
	.DA_DivCnt       	 (DA_DivCnt          ),
	.da_set_en			 (da_set_en				),
	.da_set_wren		 (da_set_wren			),
	.set_da_value		 (set_da_value			),
	.VolMax		 		 (VolMax					),
	.VolSlope_Max		 (VolSlope_Max			),
	
	.Waves_req    		 (Waves_req    		),
	.ch1_wave_start_addr (ch1_wave_start_addr),
	.ch2_wave_start_addr (ch2_wave_start_addr),
	.ch3_wave_start_addr (ch3_wave_start_addr),
	.ch4_wave_start_addr (ch4_wave_start_addr),
	.ch5_wave_start_addr (ch5_wave_start_addr),
	.ch6_wave_start_addr (ch6_wave_start_addr),
	.ch7_wave_start_addr (ch7_wave_start_addr),
	.ch8_wave_start_addr (ch8_wave_start_addr),
//	.ch9_wave_start_addr (ch9_wave_start_addr),
//	.ch10_wave_start_addr (ch10_wave_start_addr),
//	.ch11_wave_start_addr (ch11_wave_start_addr),
//	.ch12_wave_start_addr (ch12_wave_start_addr),
//	.ch13_wave_start_addr (ch13_wave_start_addr),
//	.ch14_wave_start_addr (ch14_wave_start_addr),
//	.ch15_wave_start_addr (ch15_wave_start_addr),
//	.ch16_wave_start_addr (ch16_wave_start_addr),
	
	.Wave_Addr  	 	 (Wave_Addr      		),
	.Wave_Data  	 	 (Wave_Data      		),
	.Wave_Wren  	 	 (Wave_Wren      		),
	
    .RAM_sel            (RAM_sel              ),
    .RAM_init            (RAM_init              ),
    
	.volMax_ERROR		 (volMax_ERROR			),
	.VolSlope_Max_ERROR(VolSlope_Max_ERROR	),
	
	.Waves_end  	 	 (Waves_end      		),
	
	.DA1_clk  	 	 	 ( 	),
	.DA1_data   	 	 (DA1_dat 	),
	.DA1_dclk  	 	 	 (DA1_dclk	),
	.DA2_clk  	 	 	 ( 	),
	.DA2_data   	 	 (DA2_dat 	),
	.DA2_dclk  	 	 	 (DA2_dclk	),
	.DA3_clk  	 	 	 ( 	),
	.DA3_data   	 	 (DA3_dat 	),
	.DA3_dclk  	 	 	 (DA3_dclk	),
	.DA4_clk  	 	 	 ( 	),
	.DA4_data   	 	 (DA4_dat 	),
	.DA4_dclk  	 	 	 (DA4_dclk	),
	.DA5_clk  	 	 	 ( 	),
	.DA5_data   	 	 (DA5_dat 	),
	.DA5_dclk  	 	 	 (DA5_dclk	),
	.DA6_clk  	 	 	 ( 	),
	.DA6_data   	 	 (DA6_dat 	),
	.DA6_dclk  	 	 	 (DA6_dclk	),
	.DA7_clk  	 	 	 ( 	),
	.DA7_data   	 	 (DA7_dat 	),
	.DA7_dclk  	 	 	 (DA7_dclk	),
	.DA8_clk  	 	 	 ( 	),
	.DA8_data   	 	 (DA8_dat 	),
	.DA8_dclk  	 	 	 (DA8_dclk	)
//	.DA9_clk  	 	 	 ( 	),
//	.DA9_data   	 	 (DA9_dat 	),
//	.DA9_dclk  	 	 	 (DA9_dclk	),
	
//	.DA10_clk  	 	 	 ( 	),
//	.DA10_data 	 	 	 (DA10_dat 	),
//	.DA10_dclk  	 	 (DA10_dclk	),
//	.DA11_clk  	 	 	 ( 	),
//	.DA11_data 	 	 	 (DA11_dat 	),
//	.DA11_dclk  	 	 (DA11_dclk	),
//	.DA12_clk  	 	 	 ( 	),
//	.DA12_data 	 	 	 (DA12_dat 	),
//	.DA12_dclk  	 	 (DA12_dclk	),
//	.DA13_clk  	 	 	 ( 	),
//	.DA13_data 	 	 	 (DA13_dat 	),
//	.DA13_dclk  	 	 (DA13_dclk	),
//	.DA14_clk  	 	 	 ( 	),
//	.DA14_data 	 	 	 (DA14_dat 	),
//	.DA14_dclk  	 	 (DA14_dclk	),
//	.DA15_clk  	 	 	 ( 	),
//	.DA15_data 	 	 	 (DA15_dat 	),
//	.DA15_dclk  	 	 (DA15_dclk	),
//	.DA16_clk  	 	 	 ( 	),
//	.DA16_data 	 	 	 (DA16_dat 	),
//	.DA16_dclk  	 	 (DA16_dclk	)	
	);

always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA1_dat_1 <= 0;
	else if(DA1_dclk)
		DA1_dat_1 <= DA1_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA2_dat_1 <= 0;
	else if(DA2_dclk)
		DA2_dat_1 <= DA2_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA3_dat_1 <= 0;
	else if(DA3_dclk)
		DA3_dat_1 <= DA3_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA4_dat_1 <= 0;
	else if(DA4_dclk)
		DA4_dat_1 <= DA4_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA5_dat_1 <= 0;
	else if(DA5_dclk)
		DA5_dat_1 <= DA5_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA6_dat_1 <= 0;
	else if(DA6_dclk)
		DA6_dat_1 <= DA6_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA7_dat_1 <= 0;
	else if(DA7_dclk)
		DA7_dat_1 <= DA7_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA8_dat_1 <= 0;
	else if(DA8_dclk)
		DA8_dat_1 <= DA8_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA9_dat_1 <= 0;
	else if(DA9_dclk)
		DA9_dat_1 <= DA9_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA10_dat_1 <= 0;
	else if(DA10_dclk)
		DA10_dat_1 <= DA10_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA11_dat_1 <= 0;
	else if(DA11_dclk)
		DA11_dat_1 <= DA11_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA12_dat_1 <= 0;
	else if(DA12_dclk)
		DA12_dat_1 <= DA12_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA13_dat_1 <= 0;
	else if(DA13_dclk)
		DA13_dat_1 <= DA13_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA14_dat_1 <= 0;
	else if(DA14_dclk)
		DA14_dat_1 <= DA14_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA15_dat_1 <= 0;
	else if(DA15_dclk)
		DA15_dat_1 <= DA15_dat;
end	
	
always @ (posedge clk or negedge rstn)
begin
	if(!rstn)
		DA16_dat_1 <= 0;
	else if(DA16_dclk)
		DA16_dat_1 <= DA16_dat;
end		
	
//-------------------
Logics_Ctrl Logics_Ctrl_inst(
	.rstn              (rstn	            ),
	.clk               (clk	           	 	),
	.Logic_req    		 (Wave_req	       	),
	.Logic_Init_Ctrl   (Logic_Init_Ctrl 	),
	.Logic_Init_wr	 	 (Logic_Init_wr		),
	
	.h1_logic_start_addr (h1_logic_start_addr), 
	.h2_logic_start_addr (h2_logic_start_addr), 
	.h3_logic_start_addr (h3_logic_start_addr), 
	.h4_logic_start_addr (h4_logic_start_addr),
	
	.Logic_Addr  		 (Logic_Addr      	),
	.Logic_Data  		 (Logic_Data      	),
	.Logic_Wren  		 (Logic_Wren      	),
	
    .RAM_sel            (RAM_sel          ),
    .RAM_init           (RAM_init          ),
    
	.Logics_end  	 	 (Logics_end       	),
	
	.F_SgnA  	 		 (F_SgnA      	  		),
	.F_SgnB  	 		 (F_SgnB      	  		),
	.F_SgnC  	 		 (F_SgnC      	  		),
	.F_SgnD  	 		 (F_SgnD      	  	 	),
	.F_SgnE  	 		 (F_SgnE      	  	 	),
	.logics_wave_req   (logics_wave_req    ),
	.req_Sck  	 	 	 (req_Sck      	   )
	);	
//-------------------	


Datas_Ctrl Datas_Ctrl_inst(
	.rstn        		(rstn   					),
	.clk         		(clk       				),
	.PrintHead_Type	(PrintHead_Type	 	),
//	.SCK_DivCnt  		(SCK_DivCnt   			),
    .SCK_DivCnt          (8'd12               ),
	.SCKedge_Ctrl  	(2'd0   		),
	.SCK_req  			(SCK_req   				),
	
	.SPdata				(SPdata					),
//	.SPdataB				(SPdataB					),
	.SPdata_start		(SPdata_start			),
	.SPdata_req			(SPdata_req				),
	
	.Prn_Data  		(Prn_Data   			),
//	.Prn_DataB  		(Prn_DataB   			),
//	.Prn_DataC  		(Prn_DataC   			),
//	.Prn_DataD  		(Prn_DataD   			),
	.data_req_o			(data_req),
	.data_end  			(data_end   			),
	.F_dataA  			(F_dataA   				),
	.F_dataB  			(F_dataB   				),
	.F_dataC  			(F_dataC   				),
	.F_dataD  			(F_dataD   				),
	.sck_o  	 	 		(sck			  			)
	);	


Da_clk_pll Da_clk_pll_inst
(
	.clk_in1  			(clk   				),
	.clk_out1  			(DaDrvClk   				),
    .reset              (!rstn                ),
    .locked             (                )
);		
		
DaDrv DaDrv_inst
(
/*	input							*/.Clk1(clk),		//96MHz
/*	input							*/.Clk2(DaDrvClk),		//144MHz
/*	input							*/.aRst(!rstn),
	
/*	output							*/.RdAck(),	
/*	input		[9:0]				*/.DA0Data(DA1_dat_1),	
/*	input		[9:0]				*/.DA1Data(DA2_dat_1),	
/*	input		[9:0]				*/.DA2Data(DA3_dat_1),	
/*	input		[9:0]				*/.DA3Data(DA4_dat_1),	
/*	input		[9:0]				*/.DA4Data(DA5_dat_1),	
/*	input		[9:0]				*/.DA5Data(DA6_dat_1),	
/*	input		[9:0]				*/.DA6Data(DA7_dat_1),	
/*	input		[9:0]				*/.DA7Data(DA8_dat_1),	
/*	input		[9:0]				*/.DA8Data(DA9_dat_1),	
/*	input		[9:0]				*/.DA9Data(DA10_dat_1),	
/*	input		[9:0]				*/.DA10Data(DA11_dat_1),	
/*	input		[9:0]				*/.DA11Data(DA12_dat_1),	
/*	input		[9:0]				*/.DA12Data(DA13_dat_1),	
/*	input		[9:0]				*/.DA13Data(DA14_dat_1),	
/*	input		[9:0]				*/.DA14Data(DA15_dat_1),	
/*	input		[9:0]				*/.DA15Data(DA16_dat_1),	

	/*----DA----*/
/*	output		[9:0]				*/.DA_Data_0_1(DA01_DATA),
/*	output							*/.DA_CSA0(DA0_LAT_A),
/*	output							*/.DA_CSB0(DA0_LAT_B),
/*	output							*/.DA_CSA1(DA1_LAT_A),
/*	output							*/.DA_CSB1(DA1_LAT_B),
	
/*	output		[9:0]				*/.DA_Data_2_3(DA23_DATA),
/*	output							*/.DA_CSA2(DA2_LAT_A),
/*	output							*/.DA_CSB2(DA2_LAT_B),
/*	output							*/.DA_CSA3(DA3_LAT_A),
/*	output							*/.DA_CSB3(DA3_LAT_B)
	
///*	output		[9:0]				*/.DA_Data_4_5(DA2_DATA),
///*	output							*/.DA_CSA4(DA4_LAT_A),
///*	output							*/.DA_CSB4(DA4_LAT_B),
///*	output							*/.DA_CSA5(DA5_LAT_A),
///*	output							*/.DA_CSB5(DA5_LAT_B),
	
///*	output		[9:0]				*/.DA_Data_6_7(DA3_DATA),
///*	output							*/.DA_CSA6(DA6_LAT_A),
///*	output							*/.DA_CSB6(DA6_LAT_B),
///*	output							*/.DA_CSA7(DA7_LAT_A),
///*	output							*/.DA_CSB7(DA7_LAT_B)
);		
//assign qr_over = qr_suc || qr_err;--QRÂë¹Ø±Õ
assign qr_over = 1'b1;

head_readid head_readid_inst
(
   .rstn(qr_en),
   .clk(clk_10k)                  ,
   .clk_0_21(clk_10k_1)             ,
   .comfirm_result_suc(qr_suc)   ,
   .comfirm_result_err(qr_err)   ,

   .F0_dataA(qr_data[7:0])             ,
   .F0_dataB(qr_data[15:8])              ,
   .F1_dataA(qr_data[23:16])              ,
   .F1_dataB(qr_data[31:24])              ,
   .F2_dataA(qr_data[39:32])              ,
   .F2_dataB(qr_data[47:40])              ,
   .F3_dataA(qr_data[55:48])              ,
   .F3_dataB(qr_data[63:56])              ,
	
   .F4_dataA(qr_data[71:64])              ,
   .F4_dataB(qr_data[79:72])              ,
   .F5_dataA(qr_data[87:80])              ,
   .F5_dataB(qr_data[95:88])              ,
   .F6_dataA(qr_data[103:96])              ,
   .F6_dataB(qr_data[111:104])              ,
   .F7_dataA(qr_data[119:112])              ,
   .F7_dataB(qr_data[127:120])              ,
   .F8_dataA(qr_data[135:128])              ,
   .F9_dataB(qr_data[143:136])              ,
   
   .F_XHOT(F_XHOT),
//	//
   .F0_SCK(F0_SCK_qr)               ,	
   .F0_LAT(F0_lat_qr)		          ,
   .F0_CHA(F0_cha_qr)               ,
   .F0_SI3(F0_chb_qr)		          ,
   .F0_NCHG(F0_nchg_qr)		          ,
//	//
    .F1_SCK(F1_SCK_qr)               ,	
    .F1_LAT(F1_lat_qr)                  ,
    .F1_CHA(F1_cha_qr)               ,
    .F1_SI3(F1_chb_qr)                  ,
    .F1_NCHG(F1_nchg_qr)                  ,
    //	//
    .F2_SCK(F2_SCK_qr)               ,	
    .F2_LAT(F2_lat_qr)                  ,
    .F2_CHA(F2_cha_qr)               ,
    .F2_SI3(F2_chb_qr)                  ,
    .F2_NCHG(F2_nchg_qr)                  ,
    //	//
    .F3_SCK(F3_SCK_qr)               ,	
    .F3_LAT(F3_lat_qr)                  ,
    .F3_CHA(F3_cha_qr)               ,
    .F3_SI3(F3_chb_qr)                  ,
    .F3_NCHG(F3_nchg_qr)                  
);
		
	
endmodule
