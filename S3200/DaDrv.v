/*----------------------------------------------------------------------------*/
//           .______   ____    ____  __    __   ___   ___ 
//           |   _  \  \   \  /   / |  |  |  |  \  \ /  / 
//           |  |_)  |  \   \/   /  |  |__|  |   \  V  /  
//           |   _  <    \_    _/   |   __   |    >   <   
//           |  |_)  |     |  |     |  |  |  |   /  .  \  
//           |______/      |__|     |__|  |__|  /__/ \__\ 
//   
//   
//   
//   
//   
//   
// Company: 	BYHX
// Engineer: 	LiuWei
// 
// Create Date:    
// Design Name: 
// Module Name:     
// Project Name: G5G6
// Target Devices: ALTERA Cyclone IV EP4CE30F29C8
// Tool versions: QUARTUS II 13.0
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// 使用时注意CLK1与CLK2必须同源，以免钟差�?�成fifo上溢或�?�下溢！
/*----------------------------------------------------------------------------*/
module DaDrv
(
	Clk1,
	Clk2,
	aRst,
	
	RdAck,	
	DA0Data,	
	DA1Data,	
	DA2Data,	
	DA3Data,	
	DA4Data,	
	DA5Data,	
	DA6Data,	
	DA7Data,	
	DA8Data,	
	DA9Data,	
	DA10Data,	
	DA11Data,	
	DA12Data,	
	DA13Data,	
	DA14Data,	
	DA15Data,	

	/*----DA----*/
	DA_Data_0_1,
	DA_CSA0,
	DA_CSB0,
	DA_CSA1,
	DA_CSB1,
	
	DA_Data_2_3,
	DA_CSA2,
	DA_CSB2,
	DA_CSA3,
	DA_CSB3,
	
	DA_Data_4_5,
	DA_CSA4,
	DA_CSB4,
	DA_CSA5,
	DA_CSB5,
	
	DA_Data_6_7,
	DA_CSA6,
	DA_CSB6,
	DA_CSA7,
	DA_CSB7
);

//////////////////////////////
	input							Clk1;		//96MHz
	input							Clk2;		//144MHz
	input							aRst;
	
	output							RdAck;	
	input		[9:0]				DA0Data;	
	input		[9:0]				DA1Data;	
	input		[9:0]				DA2Data;	
	input		[9:0]				DA3Data;	
	input		[9:0]				DA4Data;	
	input		[9:0]				DA5Data;	
	input		[9:0]				DA6Data;	
	input		[9:0]				DA7Data;	
	input		[9:0]				DA8Data;	
	input		[9:0]				DA9Data;	
	input		[9:0]				DA10Data;	
	input		[9:0]				DA11Data;	
	input		[9:0]				DA12Data;	
	input		[9:0]				DA13Data;	
	input		[9:0]				DA14Data;	
	input		[9:0]				DA15Data;	

	/*----DA----*/
	output		[9:0]				DA_Data_0_1;
	output							DA_CSA0;
	output							DA_CSB0;
	output							DA_CSA1;
	output							DA_CSB1;
	
	output		[9:0]				DA_Data_2_3;
	output							DA_CSA2;
	output							DA_CSB2;
	output							DA_CSA3;
	output							DA_CSB3;
	
	output		[9:0]				DA_Data_4_5;
	output							DA_CSA4;
	output							DA_CSB4;
	output							DA_CSA5;
	output							DA_CSB5;
	
	output		[9:0]				DA_Data_6_7;
	output							DA_CSA6;
	output							DA_CSB6;
	output							DA_CSA7;
	output							DA_CSB7;
	////////////////////////////////
	reg	RdAck;
	
	reg	[9:0] DA_Data_0_1;
	reg	DA_CSA0;
	reg	DA_CSB0;
	reg	DA_CSA1;
	reg	DA_CSB1;

	reg	[9:0] DA_Data_2_3;
	reg	DA_CSA2;
	reg	DA_CSB2;
	reg	DA_CSA3;
	reg	DA_CSB3;

	reg	[9:0] DA_Data_4_5;
	reg	DA_CSA4;
	reg	DA_CSB4;
	reg	DA_CSA5;
	reg	DA_CSB5;

	reg	[9:0] DA_Data_6_7;
	reg	DA_CSA6;
	reg	DA_CSB6;
	reg	DA_CSA7;
	reg	DA_CSB7;	
////////////////////////////////////////////////////////////////////////////////	
	
reg [9:0] DA0DataLat;
reg [9:0] DA1DataLat;
reg [9:0] DA2DataLat;
reg [9:0] DA3DataLat;
reg [9:0] DA4DataLat;
reg [9:0] DA5DataLat;
reg [9:0] DA6DataLat;
reg [9:0] DA7DataLat;
reg [9:0] DA8DataLat;
reg [9:0] DA9DataLat;
reg [9:0] DA10DataLat;
reg [9:0] DA11DataLat;
reg [9:0] DA12DataLat;
reg [9:0] DA13DataLat;
reg [9:0] DA14DataLat;
reg [9:0] DA15DataLat;

reg [39:0] FifoDataIn;
reg FifoWr;
wire FifoEmpty;
wire FifoFull;
wire [39:0] FifoQ;
reg FifoRd=0;

reg [4:0] DelayCnt=5'b10000;
reg [3:0] Cnt1=0;

reg [3:0] Cnt2=0;
reg FifoEmpty_1=1;
reg Reset1=1, Reset2=1;
reg Run=0;

reg [3:0] DaLat=0;

////////////////////////////////////////////////////////////////////////////////
/////////////////写缓�?
//为利于移植，计数�?16周期，等Fifo解除复位16周期后，再解除写入部分复位，
//以免Fifo解除复位不完全就被写入�?�引发bug

//复位用计数器
always@(posedge Clk1 or posedge aRst)
begin
	if(aRst)
	begin
		DelayCnt <= 5'b10000;
	end
	else
	begin
		DelayCnt <= DelayCnt + DelayCnt[4];
	end
end

always@(posedge Clk1)
begin
	if(DelayCnt[4])
	begin
		Cnt1 <= 0;
	end
	else
	begin
		if(Cnt1==7)
			Cnt1 <= 0;
		else
			Cnt1 <= Cnt1 + 1'b1;
	end
end

always@(posedge Clk1)
begin
	if(Cnt1==1)
	begin
		DA0DataLat <= DA0Data;
		DA1DataLat <= DA1Data;
		DA2DataLat <= DA2Data;
		DA3DataLat <= DA3Data;
		DA4DataLat <= DA4Data;
		DA5DataLat <= DA5Data;
		DA6DataLat <= DA6Data;
		DA7DataLat <= DA7Data;
		DA8DataLat <= DA8Data;
		DA9DataLat <= DA9Data;
		DA10DataLat <= DA10Data;
		DA11DataLat <= DA11Data;
		DA12DataLat <= DA12Data;
		DA13DataLat <= DA13Data;
		DA14DataLat <= DA14Data;
		DA15DataLat <= DA15Data;
	end
end

always@(posedge Clk1)
begin
	if(Cnt1==1)
		RdAck <= 1;
	else
		RdAck <= 0;
end


always@(posedge Clk1)
begin
	case(Cnt1)
		2:
		begin
			FifoDataIn[1*10-1:0*10] <= DA0DataLat;
			FifoDataIn[2*10-1:1*10] <= DA4DataLat;
			FifoDataIn[3*10-1:2*10] <= DA8DataLat;
			FifoDataIn[4*10-1:3*10] <= DA12DataLat;
			
		end
		3:
		begin
			FifoDataIn[1*10-1:0*10] <= DA1DataLat;
			FifoDataIn[2*10-1:1*10] <= DA5DataLat;
			FifoDataIn[3*10-1:2*10] <= DA9DataLat;
			FifoDataIn[4*10-1:3*10] <= DA13DataLat;
		end		
		4:
		begin
			FifoDataIn[1*10-1:0*10] <= DA2DataLat;
			FifoDataIn[2*10-1:1*10] <= DA6DataLat;
			FifoDataIn[3*10-1:2*10] <= DA10DataLat;
			FifoDataIn[4*10-1:3*10] <= DA14DataLat;
		end			
		5:
		begin
			FifoDataIn[1*10-1:0*10] <= DA3DataLat;
			FifoDataIn[2*10-1:1*10] <= DA7DataLat;
			FifoDataIn[3*10-1:2*10] <= DA11DataLat;
			FifoDataIn[4*10-1:3*10] <= DA15DataLat;
		end
		default:
		begin
			FifoDataIn[1*10-1:0*10] <= 10'hxxx;
			FifoDataIn[2*10-1:1*10] <= 10'hxxx;
			FifoDataIn[3*10-1:2*10] <= 10'hxxx;
			FifoDataIn[4*10-1:3*10] <= 10'hxxx;
		end			
	endcase
end

always@(posedge Clk1)
begin
	if((Cnt1==2)||
	   (Cnt1==3)||
	   (Cnt1==4)||
	   (Cnt1==5))
	   FifoWr <= 1;
	else
	   FifoWr <= 0;
		
end

////////////////////////////////////////////////////////////////////////////////
Da_Fifo Da_Fifo_inst 
(
///*	input	  		*/.aclr(aRst),
///*	input	[39:0] 	*/.data(FifoDataIn),
///*	input	  		*/.rdclk(Clk2),
///*	input	  		*/.rdreq(FifoRd),
///*	input	  		*/.wrclk(Clk1),
///*	input	  		*/.wrreq(FifoWr),
///*	output	[39:0] 	*/.q(FifoQ),
///*	output	  		*/.rdempty(FifoEmpty)
        .rst(aRst),
        .wr_clk(Clk1),
        .rd_clk(Clk2),
        .din(FifoDataIn),
        .wr_en(FifoWr),
        .rd_en(FifoRd),
        .dout(FifoQ),
        .full(FifoFull),
        .empty(FifoEmpty)
);

////////////////////////////////////////////////////////////////////////////////
////////读缓�?
//复位
always@(posedge Clk2 or posedge aRst)
begin
	if(aRst)
	begin
		Reset1 <= 1;
		Reset2 <= 1;
	end
	else
	begin
		Reset1 <= 0;
		Reset2 <= Reset1;
	end
end

always@(posedge Clk2 or posedge Reset2)
begin
	if(Reset2)
	begin
		FifoEmpty_1 <= 1;
	end
	else
	begin
		FifoEmpty_1 <= FifoEmpty;
	end
end

always@(posedge Clk2 or posedge Reset2)
begin
	if(Reset2)
	begin
		Run <= 0;
	end
	else
	begin
		Run <= Run || ((!FifoEmpty) && FifoEmpty_1);
	end
end

always@(posedge Clk2 or posedge Reset2)
begin
	if(Reset2)
	begin
		Cnt2 <= 0;
	end
	else
	begin
		if(Cnt2==11)
			Cnt2 <= 0;
		else
			Cnt2 <= Cnt2 + Run;
	end
end

always@(posedge Clk2)
begin
	case(Cnt2)
		0:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 0;
			DaLat[2] <= 1;
			DaLat[3] <= 1;
			FifoRd <= 0;
		end	
		1:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 0;
			DaLat[2] <= 0;
			DaLat[3] <= 1;
			FifoRd <= 1;			
		end
		2:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 0;
			DaLat[2] <= 0;
			DaLat[3] <= 1;
			FifoRd <= 0;			
		end			
		3:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 0;
			DaLat[2] <= 0;
			DaLat[3] <= 1;
			FifoRd <= 0;				
		end			
		4:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 1;
			DaLat[2] <= 0;
			DaLat[3] <= 0;
			FifoRd <= 1;				
		end
		5:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 1;
			DaLat[2] <= 0;
			DaLat[3] <= 0;
			FifoRd <= 0;			
		end
		6:
		begin
			DaLat[0] <= 1;
			DaLat[1] <= 1;
			DaLat[2] <= 0;
			DaLat[3] <= 0;
			FifoRd <= 0;			
		end
		7:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 1;
			DaLat[2] <= 1;
			DaLat[3] <= 0;
			FifoRd <= 1;			
		end
		8:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 1;
			DaLat[2] <= 1;
			DaLat[3] <= 0;
			FifoRd <= 0;			
		end
		9:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 1;
			DaLat[2] <= 1;
			DaLat[3] <= 0;
			FifoRd <= 0;			
		end
		10:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 0;
			DaLat[2] <= 1;
			DaLat[3] <= 1;
			FifoRd <= 1;			
		end
		11:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 0;
			DaLat[2] <= 1;
			DaLat[3] <= 1;
			FifoRd <= 0;			
		end
		default:
		begin
			DaLat[0] <= 0;
			DaLat[1] <= 0;
			DaLat[2] <= 0;
			DaLat[3] <= 0;
			FifoRd <= 0;			
		end
	endcase	
end

always@(posedge Clk2)
begin
	begin
		DA_Data_0_1 <= FifoQ[1*10-1:0*10];
		DA_Data_2_3 <= FifoQ[2*10-1:1*10];
		DA_Data_4_5 <= FifoQ[3*10-1:2*10];
		DA_Data_6_7 <= FifoQ[4*10-1:3*10];

		
		DA_CSA0 <= DaLat[1];
		DA_CSB0 <= DaLat[2];
		DA_CSA1 <= DaLat[3];
		DA_CSB1 <= DaLat[0];
		
		DA_CSA2 <= DaLat[1];
		DA_CSB2 <= DaLat[2];
		DA_CSA3 <= DaLat[3];
		DA_CSB3 <= DaLat[0];
		
		DA_CSA4 <= DaLat[1];
		DA_CSB4 <= DaLat[2];
		DA_CSA5 <= DaLat[3];
		DA_CSB5 <= DaLat[0];
		
		DA_CSA6 <= DaLat[1];
		DA_CSB6 <= DaLat[2];
		DA_CSA7 <= DaLat[3];
		DA_CSB7 <= DaLat[0];
	end
end

endmodule
