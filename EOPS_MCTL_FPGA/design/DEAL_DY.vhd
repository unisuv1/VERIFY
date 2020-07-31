LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity DEAL_DY is
	port(
		nRST					:in		std_logic;
		clk_100					:in		std_logic;
		
		gen_en_sensor			:in		std_logic; 	---虚拟电眼使能
		sensor_en_sel			:in		std_logic;	---电眼使能信号的选择（外部管脚/内部寄存器）	
		PN_sel					:in		std_logic;	---电眼输入类型（PNP/NPN）选择	
		select_not				:in		std_logic;	---电眼输入极性选择
		
		sensor_en1_reg			:in 	std_logic;	---PM三路电眼使能信号
   		sensor_en2_reg			:in 	std_logic;
		sensor_en3_reg			:in 	std_logic;
		
		dianyan_en				:in 	std_logic;	---主控板电眼使能

		F_GPIO_I				:in 	std_logic_vector(10 downto 1);		---电眼信号输入（1,2,3；6,7,8）、UV灯状态信号（4）、平台状态信号（9）、凹印电眼信号（9）、1-2-3通道的电眼使能(9、4、5)

		gen_dy					:in		std_logic;
						
		timeflt_en				:in		std_logic;
		filter_time				:in		std_logic_vector(31 downto 0);
			
		sensor_delay_time1		:in		std_logic_vector(15 downto 0);
		sensor_delay_time2		:in		std_logic_vector(15 downto 0);
		sensor_delay_time3		:in		std_logic_vector(15 downto 0);
			
		X_Raw_A_Filted_port		:in 	std_logic;
		X_Raw_B_Filted_port		:in 	std_logic;
		
		sizefilter_mode			:in 	std_logic;								---尺寸滤波模式	 
		SPR_XRawCoor_in			:in 	std_logic_vector(63 downto 0);			---坐标输入	
	
		PD1FIFO_aclr			:in		std_logic;							---尺寸参数FIFO清空信号
		Ch1_SPR_XPRTSize_Wr 	:in		std_logic_vector(63 downto 0);		---尺寸参数数据        
		Ch1_SPR_XPRTSize_Wr_en	:in		std_logic := '0';					---尺寸参数写使能      
		Ch1_SPR_XPRTSize_Wr_en1 :in		std_logic := '0';                   ---尺寸参数写使能1     
		PD2FIFO_aclr			:in		std_logic;							
		Ch2_SPR_XPRTSize_Wr 	:in		std_logic_vector(63 downto 0);		
		Ch2_SPR_XPRTSize_Wr_en	:in		std_logic := '0';	
		Ch2_SPR_XPRTSize_Wr_en1 :in		std_logic := '0';
		PD3FIFO_aclr			:in		std_logic;							
		Ch3_SPR_XPRTSize_Wr 	:in		std_logic_vector(63 downto 0);		
		Ch3_SPR_XPRTSize_Wr_en	:in		std_logic := '0';
		Ch3_SPR_XPRTSize_Wr_en1 :in		std_logic := '0';
			
		sensor_en1				:buffer std_logic;				---三路电眼使能输出
		sensor_en2				:buffer std_logic;
		sensor_en3				:buffer std_logic;
		sensor_in1				:buffer std_logic;				---三路电眼输出
		sensor_in2				:buffer std_logic;
		sensor_in3				:buffer std_logic;

		PD1_FIFO_alfull			:out	std_logic;				---尺寸参数FIFO的几乎满标志
		PD1_FIFO_empty			:out	std_logic;				---尺寸参数FIFO的空标志
		empty_error1			:out 	std_logic;				---尺寸参数FIFO的空错误标志
		PD2_FIFO_alfull			:out	std_logic;
		PD2_FIFO_empty			:out	std_logic;
		empty_error2			:out 	std_logic;
		PD3_FIFO_alfull			:out	std_logic;
		PD3_FIFO_empty			:out	std_logic;
		empty_error3			:out 	std_logic;

		valid_edge1				:buffer	std_logic;						---输出电眼的上升沿标志
		valid_edge_f1			:out	std_logic;						---输出电眼的下降沿标志
		discard1_cnt			:out 	std_logic_vector(7 downto 0);	---过滤掉电眼的个数
		valid_edge2				:buffer std_logic;						---输出电眼的上升沿标志            
		valid_edge_f2			:out 	std_logic;						---输出电眼的下降沿标志            
		discard2_cnt			:out 	std_logic_vector(7 downto 0);	---过滤掉电眼的个数
		valid_edge3				:buffer std_logic;						---输出电眼的上升沿标志            
		valid_edge_f3			:out 	std_logic;						---输出电眼的下降沿标志            
		discard3_cnt			:out 	std_logic_vector(7 downto 0);	---过滤掉电眼的个数

		sensor_4b5b_en			:in		std_logic; 							---电眼4b/5b编码使能			
		sensor_4b5b_cnt1		:buffer	std_logic_vector(15 downto 0);		---三路4b/5b电眼计数
		sensor_4b5b_cnt2		:buffer	std_logic_vector(15 downto 0);  
		sensor_4b5b_cnt3		:buffer	std_logic_vector(15 downto 0);	
			
		dianyan_sign_clr		:in		std_logic;			 				---ARM读电眼使能状态时，置1
		terrace_eye_num			:buffer std_logic_vector(31 downto 0) := (others => '0');	---电眼个数统计
		terrace_eye_count		:buffer std_logic_vector(31 downto 0) := (others => '0');	---电眼个数统计（无用）

		dianyan_extra			:in 	std_logic_vector(1 downto 0);		---电眼附加功能标志	
		printdye_en				:in 	std_logic							---印染模式特殊电眼使能					
		
	);
end entity;
	
	
architecture BEHV of DEAL_DY IS


signal		ext_sensor1			: std_logic; 
signal		ext_sensor2 		: std_logic; 
signal		ext_sensor3 		: std_logic; 

	
signal 		ext_dy_flt1			: std_logic;
signal 		ext_dy_flt2 		: std_logic;
signal 		ext_dy_flt3 	 	: std_logic;

signal 		sensor_out1			: std_logic;
signal 		sensor_out2			: std_logic;
signal 		sensor_out3			: std_logic;

signal 		accurate_eye_en		: std_logic;	


signal		sensor_en1_r1	: std_logic;
signal		sensor_en1_r2	: std_logic;
signal		sensor_en2_r1	: std_logic;
signal		sensor_en2_r2	: std_logic;
signal		sensor_en3_r1	: std_logic;
signal		sensor_en3_r2	: std_logic;	
	
signal 		terrace_interrupt	: std_logic;
signal 		dianyan_en_l	: std_logic;
signal 		valid_edge1_l	: std_logic;
signal		dianyan_sign	: std_logic;

signal SPR_XRawCoor_r1		: std_logic_vector(63 downto 0);
signal SPR_XRawCoor			: std_logic_vector(63 downto 0);


component TIME_FILTER IS
	PORT
	(
		clk			: in std_logic;
		nRST			: in std_logic;
		
		sig_raw		: in std_logic;
		timeflt_en	: in std_logic;
		filter_time	: in std_logic_vector(31 downto 0);
		
		sig_out		: out std_logic
	);
END component;
	
component DY_DLY IS
	port
	(
		nRST					: in std_logic;		
		clk						: in std_logic;
		
		sensor_delay_in			: in std_logic;							---电眼输入
		sensor_delay_time		: in std_logic_vector(15 downto 0);		---延时时间
		
		X_Raw_A_Filted_port		: in std_logic;							---坐标用于判断运动方向和产生延时单位
		X_Raw_B_Filted_port		: in std_logic;
			
		sensor_delay_out		: out std_logic							---电眼输出		
	);	
END component;
	
component DY_SIZE_FILTER IS
	PORT
	(
		nRST					: in std_logic;
		clk						: in std_logic;		---时间复位
					
		sensor_en				: in std_logic;		---电眼使能（内部/外部）
		dianyan_en				: in std_logic;		---主控板电眼使能
		accurate_eye_en			: in std_logic;		---精确电眼使能（用于使用内部电眼的标签打印）				
		sensor_in				: in std_logic;		---电眼输入
		
		sizefilter_mode			: in std_logic;		---尺寸滤波模式	

		PDFIFO_aclr				:in std_logic;		---尺寸参数FIFO清空信号
		Ch_SPR_XPRTSize_Wr_en	:in std_logic := '0';   ---尺寸参数FIFO的写使能
		Ch_SPR_XPRTSize_Wr_en1 	:in std_logic := '0'; 	---尺寸参数FIFO的写使能1	
		CH_SPR_XPRTSize_Wr		:in std_logic_vector(63 downto 0);	---尺寸参数数据
		
		PD_FIFO_alfull			:out	std_logic;		---尺寸参数FIFO的几乎满标志
		PD_FIFO_empty			:buffer	std_logic;      ---尺寸参数FIFO的空标志    
		empty_error				:out std_logic;			---尺寸参数FIFO的空错误标志
				
		SPR_XRawCoor			: in std_logic_vector(63 downto 0);	---实时坐标
		
		valid_edge				: out std_logic;	---输出电眼的上升沿标志
		valid_edge_f			: out std_logic;	---输出电眼的下降沿标志
		discard_cnt				: buffer std_logic_vector(7 downto 0)	---过滤掉电眼的个数
	);
END component;	



	

	
begin
	
	process(clk_100) begin 
		if(clk_100'event and clk_100 = '1') then 
			SPR_XRawCoor_r1 <= SPR_XRawCoor_in;
			SPR_XRawCoor <= SPR_XRawCoor_r1;			
		end if;		
	end process;	
	
	
	---对电眼使能信号选择（状态输入控制/spi接口控制）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			sensor_en1 	<= '0';
			sensor_en2 	<= '0';
			sensor_en3 	<= '0';
--			sol_dou		<= '0';
		elsif(clk_100'event and clk_100='1') then	
			if(sensor_en_sel = '0') then
				sensor_en1	<= F_GPIO_I(9);
				sensor_en2	<= F_GPIO_I(5);
				sensor_en3	<= F_GPIO_I(4);
--				sol_dou		<= F_GPIO_I(10);
			else
				sensor_en1	<= sensor_en1_reg;
				sensor_en2	<= sensor_en2_reg;
				sensor_en3	<= sensor_en3_reg;
--				sol_dou		<= sol_dou_reg;
			end if;
		end if;
	end process;
	
		---对外部电眼信号做选择（NPN/PNP,R/F）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			ext_sensor1		<= '0';
			ext_sensor2	 	<= '0';
			ext_sensor3	 	<= '0';			
		elsif(clk_100'event and clk_100='1') then	
		   if(PN_sel = '0')then
				if(select_not = '0') then
					ext_sensor1		<= F_GPIO_I(1);				-- NPN 
					ext_sensor2		<= F_GPIO_I(2);
					ext_sensor3		<= F_GPIO_I(3);
				else
					ext_sensor1		<= not F_GPIO_I(1);
					ext_sensor2		<= not F_GPIO_I(2);
					ext_sensor3		<= not F_GPIO_I(3);
				end if;
		   else
				if(select_not = '0') then						-- PNP
					ext_sensor1		<= F_GPIO_I(6);
					ext_sensor2		<= F_GPIO_I(7);
					ext_sensor3		<= F_GPIO_I(8);
				else
					ext_sensor1		<= not F_GPIO_I(6);
					ext_sensor2		<= not F_GPIO_I(7);
					ext_sensor3		<= not F_GPIO_I(8);
				end if;
			end if;	
		end if;
	end process;	
	
	
	time_flt1:	TIME_FILTER	PORT map(
		clk				=>	clk_100,						
		nRST			=>	nRST,							
		                                        			
		timeflt_en		=>	timeflt_en,							
		sig_raw			=>	ext_sensor1,						

		filter_time		=>	filter_time(30 downto 0) & '0',
		            			
		sig_out			=>	ext_dy_flt1						
	);
	time_flt2:	TIME_FILTER	PORT map(
		clk				=>	clk_100,						
		nRST			=>	nRST,							
		                                        			
		timeflt_en		=>	timeflt_en,							
		sig_raw			=>	ext_sensor2,						

		filter_time		=>	filter_time(30 downto 0) & '0',
		            			
		sig_out			=>	ext_dy_flt2						
	);
---	time_flt3:	TIME_FILTER	PORT map(
---		clk				=>	clk_100,						
---		nRST			=>	nRST,							
---		                                        			
---		timeflt_en		=>	timeflt_en,							
---		sig_raw			=>	ext_sensor3,						
---
---		filter_time		=>	filter_time(30 downto 0) & '0',
---		            			
---		sig_out			=>	ext_dy_flt3						
---	);

	---对电眼信号选择（内部/外部）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			sensor_in1 	<= '1';
			sensor_in2 	<= '1';
			sensor_in3 	<= '1';
		elsif(clk_100'event and clk_100='1') then	
			if(gen_en_sensor = '1') then
				sensor_in1 	<= gen_dy;
				sensor_in2 	<= gen_dy;
				sensor_in3 	<= gen_dy;
			else
				sensor_in1 	<= ext_dy_flt1;
				sensor_in2 	<= ext_dy_flt2;
				sensor_in3 	<= ext_dy_flt3;
			end if;
		end if;
	end process;
	
	

	---电眼信号延时--用于尺寸滤波 -*-      防止撞边沿（图宽 电眼的 边沿）
	DELAY1: DY_DLY port map(
	
		clk		=> clk_100,
		nRST		=> nRST,	
		
		sensor_delay_in		=> sensor_in1,
		sensor_delay_time		=> sensor_delay_time1(14 downto 0)&'0',	
		
		X_Raw_A_Filted_port	=> X_Raw_A_Filted_port,
		X_Raw_B_Filted_port	=> X_Raw_B_Filted_port,
			
		sensor_delay_out		=> sensor_out1	
	);	
	DELAY2: DY_DLY port map(
	
		clk		=> clk_100,
		nRST		=> nRST,	
		
		sensor_delay_in		=> sensor_in2,
		sensor_delay_time		=> sensor_delay_time2(14 downto 0)&'0',	
		
		X_Raw_A_Filted_port	=> X_Raw_A_Filted_port,
		X_Raw_B_Filted_port	=> X_Raw_B_Filted_port,
			
		sensor_delay_out		=> sensor_out2	
	);	
--	DELAY3: DY_DLY port map(
--	
--		clk		=> clk_100,
--		nRST		=> nRST,	
--		
--		sensor_delay_in		=> sensor_in3,
--		sensor_delay_time		=> sensor_delay_time3,	
--		
--		X_Raw_A_Filted_port	=> X_Raw_A_Filted_port,
--		X_Raw_B_Filted_port	=> X_Raw_B_Filted_port,
--			
--		sensor_delay_out		=> sensor_out3	
--	);


	---精确电眼产生使能--用于尺寸滤波 ---用于标签机并且是内部产生电眼时（内部电眼用时间计时产生，由于标签机要求电眼精确，所以要用内部电眼）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			accurate_eye_en	<= '0';			
		elsif(clk_100'event and clk_100='1') then
			if(sizefilter_mode = '1' and dianyan_extra = "10" and gen_en_sensor = '1' and printdye_en = '0') then
				accurate_eye_en	<= '1';		
			else
				accurate_eye_en	<= '0';		
			end if;
		end if;
	end process;

	

DY_SIZE_FILTER_inst1: DY_SIZE_FILTER
	PORT map
	(
		nRST						=>	nRST,	
		clk							=>	clk_100	,
					            				
		sensor_en					=>	sensor_en1,		
		dianyan_en					=>	dianyan_en	,	
		accurate_eye_en				=>	accurate_eye_en	,			
		sensor_in					=>	sensor_out1,		
		                        				
		sizefilter_mode				=>	sizefilter_mode,		
                                				
		PDFIFO_aclr					=>	PD1FIFO_aclr,		
		Ch_SPR_XPRTSize_Wr_en		=>	Ch1_SPR_XPRTSize_Wr_en,		
		Ch_SPR_XPRTSize_Wr_en1 		=>	Ch1_SPR_XPRTSize_Wr_en1,		
		CH_SPR_XPRTSize_Wr			=>	CH1_SPR_XPRTSize_Wr,		
		                        				
		PD_FIFO_alfull				=>	PD1_FIFO_alfull,		
		PD_FIFO_empty				=>	PD1_FIFO_empty,		
		empty_error					=>	empty_error1,		
				                				
		SPR_XRawCoor				=>	SPR_XRawCoor,		
		                        				
		valid_edge					=>	valid_edge1	,	
		valid_edge_f				=>	valid_edge_f1,		
		discard_cnt					=>	discard1_cnt		
	);

DY_SIZE_FILTER_inst2: DY_SIZE_FILTER
	PORT map
	(
		nRST						=>	nRST,	
		clk							=>	clk_100	,
					            				
		sensor_en					=>	sensor_en1,		
		dianyan_en					=>	dianyan_en	,	
		accurate_eye_en				=>	accurate_eye_en	,			
		sensor_in					=>	sensor_out2,		
		                        				
		sizefilter_mode				=>	sizefilter_mode,		
                                				
		PDFIFO_aclr					=>	PD2FIFO_aclr,		
		Ch_SPR_XPRTSize_Wr_en		=>	Ch2_SPR_XPRTSize_Wr_en,		
		Ch_SPR_XPRTSize_Wr_en1 		=>	Ch2_SPR_XPRTSize_Wr_en1,		
		CH_SPR_XPRTSize_Wr			=>	CH2_SPR_XPRTSize_Wr,		
		                        				
		PD_FIFO_alfull				=>	PD2_FIFO_alfull,		
		PD_FIFO_empty				=>	PD2_FIFO_empty,		
		empty_error					=>	empty_error2,		
				                				
		SPR_XRawCoor				=>	SPR_XRawCoor,		
		                        				
		valid_edge					=>	valid_edge2	,	
		valid_edge_f				=>	valid_edge_f2,		
		discard_cnt					=>	discard2_cnt		
	);

--DY_SIZE_FILTER_inst3: DY_SIZE_FILTER
--	PORT map
--	(
--		nRST						=>	nRST,	
--		clk							=>	clk_100	,
--					            				
--		sensor_en					=>	sensor_en1,		
--		dianyan_en					=>	dianyan_en	,	
--		accurate_eye_en				=>	accurate_eye_en	,			
--		sensor_in					=>	sensor_out3,		
--		                        				
--		sizefilter_mode				=>	sizefilter_mode,		
--                                				
--		PDFIFO_aclr					=>	PD3FIFO_aclr,		
--		Ch_SPR_XPRTSize_Wr_en		=>	Ch3_SPR_XPRTSize_Wr_en,		
--		Ch_SPR_XPRTSize_Wr_en1 		=>	Ch3_SPR_XPRTSize_Wr_en1,		
--		CH_SPR_XPRTSize_Wr			=>	CH3_SPR_XPRTSize_Wr,		
--		                        				
--		PD_FIFO_alfull				=>	PD3_FIFO_alfull,		
--		PD_FIFO_empty				=>	PD3_FIFO_empty,		
--		empty_error					=>	empty_error3,		
--				                				
--		SPR_XRawCoor				=>	SPR_XRawCoor,		
--		                        				
--		valid_edge					=>	valid_edge3	,	
--		valid_edge_f				=>	valid_edge_f3,		
--		discard_cnt					=>	discard3_cnt		
--	);
	
	
	
	
	---产生 sensor_4b5b_cnt1
	process(clk_100,nRST)
	begin
		if(nRST = '0') then

			sensor_en1_r1	<= '0';
			sensor_en1_r2	<= '0';
			sensor_en2_r1	<= '0';
			sensor_en2_r2	<= '0';
			sensor_en3_r1	<= '0';
			sensor_en3_r2	<= '0';
			sensor_4b5b_cnt1	<= (others => '0');
			
		elsif(clk_100'event and clk_100='1') then
			sensor_en1_r1	<= sensor_en1;
			sensor_en1_r2	<= sensor_en1_r1;
		
			sensor_en2_r1	<= sensor_en2;
			sensor_en2_r2	<= sensor_en2_r1;
			
			sensor_en3_r1	<= sensor_en3;
			sensor_en3_r2	<= sensor_en3_r1;
		
			if(sensor_en1_r2 = '0' and sensor_en1_r1 = '1') then
				sensor_4b5b_cnt1	<= (others => '0');
			elsif(sensor_en1_r2 = '1') then		
				if(sensor_4b5b_en = '1') then
					if(valid_edge1 = '1') then
						sensor_4b5b_cnt1	<= sensor_4b5b_cnt1 + '1';
					else
						sensor_4b5b_cnt1	<= sensor_4b5b_cnt1;
					end if;
				else
					sensor_4b5b_cnt1	<= sensor_4b5b_cnt1;
				end if;
			else
				sensor_4b5b_cnt1	<= sensor_4b5b_cnt1;
			end if;

			if(sensor_en2_r2 = '0' and sensor_en2_r1 = '1') then
				sensor_4b5b_cnt2	<= (others => '0');
			elsif(sensor_en2_r2 = '1') then		
				if(sensor_4b5b_en = '1') then
					if(valid_edge2 = '1') then
						sensor_4b5b_cnt2	<= sensor_4b5b_cnt2 + '1';
					else
						sensor_4b5b_cnt2	<= sensor_4b5b_cnt2;
					end if;
				else
					sensor_4b5b_cnt2	<= sensor_4b5b_cnt2;
				end if;
			else
				sensor_4b5b_cnt2	<= sensor_4b5b_cnt2;
			end if;
			
			if(sensor_en3_r2 = '0' and sensor_en3_r1 = '1') then
				sensor_4b5b_cnt3	<= (others => '0');
			elsif(sensor_en3_r2 = '1') then		
				if(sensor_4b5b_en = '1') then
					if(valid_edge3 = '1') then
						sensor_4b5b_cnt3	<= sensor_4b5b_cnt3 + '1';
					else
						sensor_4b5b_cnt3	<= sensor_4b5b_cnt3;
					end if;
				else
					sensor_4b5b_cnt3	<= sensor_4b5b_cnt3;
				end if;
			else
				sensor_4b5b_cnt3	<= sensor_4b5b_cnt3;
			end if;
		end if;
	end process;
	
	---统计电眼个数
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			terrace_eye_num <= (others => '0');
			terrace_eye_count <= (others => '0');
			terrace_interrupt <= '0';
			dianyan_en_l <= '0';
			valid_edge1_l <= '0';
			dianyan_sign <= '0';
		elsif(clk_100'event and clk_100='1') then
			dianyan_en_l <= dianyan_en;
			valid_edge1_l <= valid_edge1;
			
			if(dianyan_sign_clr = '1') then
				dianyan_sign <= '0';
			elsif(terrace_interrupt = '1') then
				dianyan_sign <= '1';
			else
				dianyan_sign <= dianyan_sign;
			end if;
			
			if(dianyan_en_l = '1' and dianyan_en = '0') then
				terrace_interrupt <= '1';
			else
				terrace_interrupt <= '0';
			end if;
			
			if(dianyan_en = '1') then	
				terrace_eye_num <= terrace_eye_num;
				if(valid_edge1_l = '0' and valid_edge1 = '1') then
					terrace_eye_count <= terrace_eye_count + '1';
				else
					terrace_eye_count <= terrace_eye_count;
				end if;
			else
				if(dianyan_en_l = '1' and dianyan_en = '0') then
					terrace_eye_num <= terrace_eye_count;
				else
					terrace_eye_num <= terrace_eye_num;					
				end if;
				terrace_eye_count <= (others => '0');		
			end if;
		end if;
	end process;	
	
	
	
end BEHV;