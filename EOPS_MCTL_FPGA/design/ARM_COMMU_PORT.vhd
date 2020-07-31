LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity ARM_COMMU_PORT is
	port
	(      
		nRST							: in std_logic;
		clk_100							: in std_logic; 
		
		F_SW0   	 					: in std_logic;		---拨码开关信号（原来用于控制输入，现在废弃基本被spi接口取代）
		F_SW1   	 					: in std_logic;
		F_SW2   	 					: in std_logic;
		F_SW3       					: in std_logic;
		F_SW4							: in std_logic;
		F_SW5							: in std_logic;	
		                    			
		ARM_FPGA_CLK   					: in std_logic;		---ARM与FPGA接口，类似spi协议
		ARM_FPGA_SYNC  					: in std_logic;
		ARM_FPGA_DATA  					: inout std_logic;		
		
		---ARM写FPGA的参数
		Boardtype						:	buffer std_logic_vector(7 downto 0); 	--- 板卡类型
		sensor_en1_reg					:	buffer std_logic;	---三路电眼使能信号
   		sensor_en2_reg					:	buffer std_logic;
		sensor_en3_reg					:	buffer std_logic;   	
		select_not						:	buffer std_logic;	---电眼输入极性选择
		default_out						:	buffer std_logic;	---电眼输出极性选择
		PN_sel							:	buffer std_logic;	---电眼输入类型（PNP/NPN）选择
		filter_en						:	buffer std_logic;	---电眼时间滤波使能
		sizefilter_sw					:	buffer std_logic;	---电眼尺寸滤波使能
		sizefilter_mode					:	buffer std_logic;	---电眼尺寸滤波模式	
		sensor_en_sel					:	buffer std_logic := '0';	---电眼使能信号的选择（外部管脚/内部寄存器）	
		sensor_4b5b_en					:	buffer std_logic := '0'; ---电眼4b/5b编码使能
		dianyan_extra					:	buffer std_logic_vector(1 downto 0);	---电眼附加功能标志
		select_swap	 					:	buffer std_logic;	---	编码器AB交换使能	
		filter_delay_encoder_en			:	buffer std_logic := '1';	---编码器滤波使能
		select1_2	 					:	buffer std_logic;	--- 编码器输入通道选择（预留）
		multiplication					:	buffer std_logic_vector(7 downto 0);	---编码器倍频
		gen_en_sensor					:	buffer std_logic;	---内部电眼发生使能
		gen_en_encoder					:	buffer std_logic;	---内部编码器发生使能
		printdye_en						:	buffer std_logic;	---印染模式特殊电眼使能
		sensor_group1_sel				:	buffer std_logic_vector(3 downto 0);	---第一组输出电眼的电眼源选择
		sensor_group2_sel				:	buffer std_logic_vector(3 downto 0);	---第二组输出电眼的电眼源选择
		sensor_group3_sel				:	buffer std_logic_vector(3 downto 0);	---第三组输出电眼的电眼源选择	
		sensor_delay_time1 				:	buffer std_logic_vector(15 downto 0);	---第一组电眼延时寄存器
		sensor_delay_time2 				:	buffer std_logic_vector(15 downto 0);	---第二组电眼延时寄存器
		sensor_delay_time3 				:	buffer std_logic_vector(15 downto 0);	---第三组电眼延时寄存器
		PD1FIFO_aclr					:	buffer std_logic;	---通道1的FIFO清空标志
		PD2FIFO_aclr					:	buffer std_logic;	---通道2的FIFO清空标志	
		PD3FIFO_aclr					:	buffer std_logic;	---通道3的FIFO清空标志	
		filter_time						:	buffer std_logic_vector(31 downto 0); 	---电眼滤波时间长度	
		sensor_cycle					:	buffer std_logic_vector(63 downto 0)	:= x"000000000000D60A";	---内部电眼周期编码坐标个数		-- 54794 1of4 cycle = 1s	
		encoder_1of4					:	buffer std_logic_vector(15 downto 0)	:= x"039D";	---内部编码器四分之一周期的时钟数		-- 73us	
		filter_delay_time_encoder		:	buffer std_logic_vector(15 downto 0) := x"0010";	---编码器滤波大小
		sensor_valid_time				:	buffer std_logic_vector(31 downto 0) := x"0007A120";	---内部电眼持续时间
		Ch1_SPR_XPRTSize_Wr 			:	buffer std_logic_vector(63 downto 0) := (others => '0');	---通道1打印砖的大小 --PrintSize
		Ch1_SPR_XPRTSize_Wr_en			:	buffer std_logic := '0';   
		Ch1_SPR_XPRTSize_Wr_en1 		:	buffer std_logic := '0'; 
		Ch2_SPR_XPRTSize_Wr 			:	buffer std_logic_vector(63 downto 0) := (others => '0');	---通道2打印砖的大小 --PrintSize
		Ch2_SPR_XPRTSize_Wr_en			:	buffer std_logic := '0';	
		Ch2_SPR_XPRTSize_Wr_en1 		:	buffer std_logic := '0';
		Ch3_SPR_XPRTSize_Wr 			:	buffer std_logic_vector(63 downto 0) := (others => '0');	---通道3打印砖的大小 --PrintSize
		Ch3_SPR_XPRTSize_Wr_en			:	buffer std_logic := '0';
		Ch3_SPR_XPRTSize_Wr_en1 		:	buffer std_logic := '0';
		dianyan_on_coor					:	buffer std_logic_vector(31 downto 0) := (others => '0');	---回拉使能速度			
		dianyan_off_coor				:	buffer std_logic_vector(31 downto 0) := (others => '0');	---回拉生效速度			
		UV_on_coor						:	buffer std_logic_vector(31 downto 0) := (others => '0');		---UV灯开启速度
		UV_off_coor						:	buffer std_logic_vector(31 downto 0) := (others => '0');		---UV灯关闭速度		
		UV_OFF_TIME						:	buffer std_logic_vector(15 downto 0);				---UV灯关闭速度持续时间
		UV_over_coor					:	buffer std_logic_vector(31 downto 0) := (others => '0');	---UV关闭延时坐标		
		terrace_front_do_coor			:	buffer std_logic_vector(31 downto 0) := (others => '0');	---平台升起延时坐标
		terrace_after_do_coor			:	buffer std_logic_vector(31 downto 0) := (others => '0');	---平台下落延时坐标
		terrace_front_eye_coor			:	buffer std_logic_vector(31 downto 0) := (others => '0');	---关闭电眼延时坐标
		terrace_after_eye_coor			:	buffer std_logic_vector(31 downto 0) := (others => '0');	---开启电眼延时坐标
		terrace_filter					:	buffer std_logic_vector(31 downto 0) := (others => '0');	---平台起落滤波时间	
		terrace_eye_coor				:	buffer std_logic_vector(31 downto 0) := (others => '0');	---凹印电眼使能速度				

		---ARM读FPGA的参数
		SPR_XRawCoor					:	in std_logic_vector(63 downto 0);		---原始坐标（坐标系统输出的坐标）
		valid_edge1						:	in std_logic;
		empty_error1					:	in std_logic;
		PD1FIFO_empty					: 	in std_logic;
		PD1FIFO_alfull					:	in std_logic;
		discard1_cnt					:	in std_logic_vector(7 downto 0);
		valid_edge2						:	in std_logic;
		empty_error2					:	in std_logic;
		PD2FIFO_empty					: 	in std_logic;
		PD2FIFO_alfull					:	in std_logic;
		discard2_cnt					:	in std_logic_vector(7 downto 0);		
		valid_edge3						:	in std_logic;
		empty_error3					:	in std_logic;
		PD3FIFO_empty					: 	in std_logic;
		PD3FIFO_alfull					:	in std_logic;
		discard3_cnt					:	in std_logic_vector(7 downto 0);
		sensor_4b5b_cnt1				: 	in std_logic_vector(15 downto 0);
		sensor_4b5b_cnt2				: 	in std_logic_vector(15 downto 0);
		sensor_4b5b_cnt3				: 	in std_logic_vector(15 downto 0);		
		label_signal_1					: 	in	std_logic;
		label_signal_2					: 	in	std_logic;
		dianyan_en1						: 	in	std_logic;
		dianyan_en2						: 	in	std_logic;
		terrace_signal					: 	in	std_logic;
		terrace_en						: 	in	std_logic;
		UV_en							: 	in	std_logic;
		dianyan_en						: 	in	std_logic;
		control_condition				: 	in	std_logic_vector(3 downto 0);
		terrace_eye_num					:	in	std_logic_vector(31 downto 0);
		terrace_eye_count				: 	in	std_logic_vector(31 downto 0);

		dianyan_sign_clr				:	out std_logic			 ---无用---	ARM读电眼使能状态时，置1	
	);
end entity;
	
architecture behv of ARM_COMMU_PORT is
	
constant SPP_3CH			: std_logic_vector(7 downto 0) := x"fc";			-- 3ch version
constant Version			: std_logic_vector(7 downto 0) := x"0F"; 

	
	
signal Heat_clk				: std_logic;
signal Heat_data			: std_logic; 
signal Heat_sync			: std_logic; 
signal outen         		: std_logic;  		
signal ser_data	  	 		: std_logic;   
signal Reg_reset	 		: std_logic; 
signal wr_reg				: std_logic;
signal crc_en				: std_logic;

signal shift_counter		: std_logic_vector(7 downto 0);
signal shift_reg     		: std_logic_vector(31 downto 0);
		 
signal L1_Heat_clk			: std_logic;    
signal L2_Heat_clk			: std_logic;

signal data_in				: std_logic;
signal lfsr_c,lfsr_q,crc_out	: std_logic_vector(7 downto 0); 	
signal reg_lock 			: std_logic;	--register write lock except BoardType 	
--	signal Ser_Port_error		: std_logic;

signal dataout_reg	 		: std_logic_vector(15 downto 0);

begin 

	------------------------
	---与ARM接口的实现	
	------------------------
	---与外部引脚连接	
	process(clk_100)
	begin
		if(clk_100'event and clk_100='1') then
			Heat_clk <= ARM_FPGA_CLK;          
			Heat_data <= ARM_FPGA_DATA;
			Heat_sync <= ARM_FPGA_SYNC;
			if(outen = '1') then
				ARM_FPGA_DATA <= ser_data;
			else	
				ARM_FPGA_DATA <= 'Z';
			end if;
		end if;
	end process;        
	---接口逻辑的复位信号产生
	process(clk_100)
	begin
		if rising_edge(clk_100) then
			Reg_reset <= (not nRST) or ( Heat_sync);
		end if;
	end process;
	---接口控制（读、写、CRC）
	process(clk_100,Reg_reset)	
	begin
		if(Reg_reset ='1') then
			outen <= '0';
			crc_en <= '0';	
			shift_counter <= x"00";
			L1_Heat_clk <= '0';
			L2_Heat_clk <= '0';
			shift_reg <= (others => '0');
			wr_reg <= '0';
		elsif(clk_100'event and clk_100='1') then
			L1_Heat_clk <= Heat_clk;
			L2_Heat_clk <= L1_Heat_clk;
			
			if((L2_Heat_clk = '0') and (L1_Heat_clk = '1') and shift_counter /= x"20") then
				shift_counter <= shift_counter + x"01";
			end if;
			
			if((L2_Heat_clk = '0') and (L1_Heat_clk = '1') and shift_counter < x"18") then
				crc_en <= '1';
			else
				crc_en <= '0';
			end if;
		
			if((L2_Heat_clk = '1') and (L1_Heat_clk = '0')) then
				case shift_counter is
					when x"08" =>
						if(shift_reg(7) = '1') then
							outen <= '1';
						end if;
					when x"20" =>
						outen <= '0';
					when others => 
				end case;
			end if;      
		
			if((L2_Heat_clk) = '0' and (L1_Heat_clk = '1')) then
				shift_reg(31 downto 0) <= shift_reg(30 downto 0) & Heat_data;
			end if;
			
			if(shift_counter = x"20" and outen = '0' and (L2_Heat_clk = '1') and (L1_Heat_clk = '0') and crc_out = shift_reg(7 downto 0)) then
				wr_reg <= '1';
			else
				wr_reg <= '0';					
			end if;      
		end if;
	end process;
	---ARM读FPGA    
	process(clk_100, Reg_reset,Heat_sync)
	begin
		if(Reg_reset = '1') then
			dataout_reg	<= x"0000";
			ser_data 	<= '0';
			dianyan_sign_clr <= '1';
		elsif(clk_100'event and clk_100='1') then
			if(shift_counter = x"08") then  
				case shift_reg(7 downto 0) is   
					when x"80" =>	dataout_reg(7 downto 0)	<= version;			-- version information
									dataout_reg(15 downto 8)	<= Boardtype;
					when x"81" => 
									dataout_reg(0)	<= sensor_en1_reg;			-- RW. sensor enable, high bits reserved for others sensors
									dataout_reg(1)	<= sensor_en2_reg;
									dataout_reg(2)	<= sensor_en3_reg;	
									dianyan_sign_clr <= '1';
					when x"82" => 
									dataout_reg(0)	<= select_not;					-- RW. sensor function related register bits, high bits reserved for other sensor functions
									dataout_reg(1)	<= default_out;
									dataout_reg(2)	<= PN_sel;
									dataout_reg(3)	<= filter_en;
									dataout_reg(4)	<= sizefilter_sw;					
									dataout_reg(5)	<= sizefilter_mode;
									dataout_reg(6)	<= sensor_en_sel;
									dataout_reg(7)	<= sensor_4b5b_en;
									dataout_reg(9 downto 8)	<= dianyan_extra;
					when x"83" => 
									dataout_reg(0) 				<= select_swap;				-- RW. encoder function related register bits, high bits reserved for other encoder functions
									dataout_reg(1) 				<= filter_delay_encoder_en;
									dataout_reg(2) 				<= select1_2;		
									dataout_reg(15 downto 8)	<=	multiplication;				
					when x"84" => 	
									dataout_reg(0) 	<= gen_en_sensor;				-- RW. inner sensor and inner encoder related register bits
									dataout_reg(1) 	<= gen_en_encoder;	
									dataout_reg(2) 	<= printdye_en;
					when x"85" => 
									dataout_reg(3 downto 0) 	<= sensor_group1_sel(3 downto 0);		-- RW. sensor output select, high bits reserved for other sensor input.
									dataout_reg(7 downto 4) 	<= sensor_group2_sel(3 downto 0);
									dataout_reg(11 downto 8) 	<= sensor_group3_sel(3 downto 0);
									
					when x"86" => 
									dataout_reg(15 downto 0)	<=	sensor_delay_time1;
					when x"87" => 
									dataout_reg(15 downto 0)	<=	sensor_delay_time2;
					when x"88" => 
									dataout_reg(15 downto 0)	<=	sensor_delay_time3;
										
		
					when x"90" => 	dataout_reg(15 downto 0)	<= filter_time(15 downto 0);				-- RW. 
					when x"91" =>	dataout_reg(15 downto 0) 	<= filter_time(31 downto 16);
					
					when x"92" => 	dataout_reg(15 downto 0) 	<= sensor_cycle(15 downto 0);
					when x"93" => 	dataout_reg(15 downto 0) 	<= sensor_cycle(31 downto 16);
					
					when x"94" => 	dataout_reg(15 downto 0) 	<= encoder_1of4;
					when x"96" => 	dataout_reg(15 downto 0) 	<= filter_delay_time_encoder;
					
					when x"97" => 	dataout_reg(15 downto 0) 	<= sensor_valid_time(15 downto 0);
					when x"98" => 	dataout_reg(15 downto 0) 	<= sensor_valid_time(31 downto 16);
					
					when x"a0" => 	dataout_reg(15 downto 0)	<= SPR_XRawCoor(15 downto 0);				-- only R. current status.
					when x"a1" => 	dataout_reg(15 downto 0)	<= SPR_XRawCoor(31 downto 16);
					when x"a2" => 	dataout_reg(15 downto 0)	<= SPR_XRawCoor(47 downto 32);
					when x"a3" => 	dataout_reg(15 downto 0)	<= SPR_XRawCoor(63 downto 48);
					
					when x"b0" => 	dataout_reg(15 downto 0) 	<= x"000" & valid_edge1 & empty_error1 & PD1FIFO_empty & PD1FIFO_alfull;
					when x"b1" => 	dataout_reg(15 downto 0) 	<= x"00" & discard1_cnt;					
					when x"b4" => 	dataout_reg(15 downto 0) 	<= Ch1_SPR_XPRTSize_Wr(15 downto 0); 	-- RW. sensor size value input, high addr reserved for other sensor size input.
					when x"b5" => 	dataout_reg(15 downto 0) 	<= Ch1_SPR_XPRTSize_Wr(31 downto 16);			
					
					when x"b8" => 	dataout_reg(15 downto 0)	<= x"000" & valid_edge2 & empty_error2 & PD2FIFO_empty & PD2FIFO_alfull;					
					when x"b9" => 	dataout_reg(15 downto 0) 	<= x"00" & discard2_cnt;
					when x"bc" => 	dataout_reg(15 downto 0) 	<= Ch2_SPR_XPRTSize_Wr(15 downto 0); 
					when x"bd" => 	dataout_reg(15 downto 0) 	<= Ch2_SPR_XPRTSize_Wr(31 downto 16); 
					
					--when x"c0" => 	dataout_reg(15 downto 0) 	<= x"000" & valid_edge3 & empty_error3 & PD3FIFO_empty & PD3FIFO_alfull;
					when x"c0" => 	dataout_reg(15 downto 0) 	<= x"000" & valid_edge3 & '0' & '0' & '1';
					when x"c1" => 	dataout_reg(15 downto 0) 	<= x"00" & discard3_cnt;
					when x"c4" => 	dataout_reg(15 downto 0) 	<= Ch3_SPR_XPRTSize_Wr(15 downto 0); 
					when x"c5" => 	dataout_reg(15 downto 0) 	<= Ch3_SPR_XPRTSize_Wr(31 downto 16); 	
					
					when x"d0" => 	dataout_reg(15 downto 0) 	<= sensor_4b5b_cnt1(15 downto 0); 
					when x"d1" => 	dataout_reg(15 downto 0) 	<= sensor_4b5b_cnt2(15 downto 0); 
					when x"d2" => 	dataout_reg(15 downto 0) 	<= sensor_4b5b_cnt3(15 downto 0); 
					
					when x"e0" => dataout_reg(15 downto 0) 	<= dianyan_on_coor(15 downto 0);
					when x"e1" => dataout_reg(15 downto 0) 	<= dianyan_on_coor(31 downto 16);		
					when x"e2" => dataout_reg(15 downto 0) 	<= dianyan_off_coor(15 downto 0);
					when x"e3" => dataout_reg(15 downto 0) 	<= dianyan_off_coor(31 downto 16);	
					when x"e4" => dataout_reg(15 downto 0) 	<= UV_on_coor(15 downto 0);
					when x"e5" => dataout_reg(15 downto 0) 	<= UV_on_coor(31 downto 16);		
					when x"e6" => dataout_reg(15 downto 0) 	<= UV_off_coor(15 downto 0);
					when x"e7" => dataout_reg(15 downto 0) 	<= UV_off_coor(31 downto 16);		
					when x"e8" => dataout_reg(15 downto 0) 	<= UV_off_time;	
					when x"e9" => dataout_reg(15 downto 0) 	<= UV_over_coor(15 downto 0);
					when x"eA" => dataout_reg(15 downto 0) 	<= UV_over_coor(31 downto 16);							
					when x"eF" => dataout_reg(11 downto 0)		<= label_signal_1&label_signal_2&dianyan_en1&dianyan_en2&terrace_signal&terrace_en&UV_en&dianyan_en&control_condition;		
					
					when x"f0" => dataout_reg(15 downto 0) 	<= terrace_front_do_coor(15 downto 0);
					when x"f1" => dataout_reg(15 downto 0) 	<= terrace_front_do_coor(31 downto 16);
					when x"f2" => dataout_reg(15 downto 0) 	<= terrace_after_do_coor(15 downto 0);
					when x"f3" => dataout_reg(15 downto 0) 	<= terrace_after_do_coor(31 downto 16);	
					when x"f4" => dataout_reg(15 downto 0) 	<= terrace_front_eye_coor(15 downto 0);
					when x"f5" => dataout_reg(15 downto 0) 	<= terrace_front_eye_coor(31 downto 16);
					when x"f6" => dataout_reg(15 downto 0) 	<= terrace_after_eye_coor(15 downto 0);
					when x"f7" => dataout_reg(15 downto 0) 	<= terrace_after_eye_coor(31 downto 16);	
					when x"f8" => dataout_reg(15 downto 0) 	<= terrace_eye_num(15 downto 0);
					when x"f9" => dataout_reg(15 downto 0) 	<= terrace_eye_num(31 downto 16);		
					when x"fA" => dataout_reg(15 downto 0) 	<= terrace_filter(15 downto 0);	
					when x"fB" => dataout_reg(15 downto 0) 	<= terrace_filter(31 downto 16);	
					when x"fC" => dataout_reg(15 downto 0) 	<= terrace_eye_coor(15 downto 0);
					when x"fD" => dataout_reg(15 downto 0) 	<= terrace_eye_coor(31 downto 16);
					when x"fe" => dataout_reg(15 downto 0) 	<= terrace_eye_count(15 downto 0);
					when x"ff" => dataout_reg(15 downto 0) 	<= terrace_eye_count(31 downto 16);
					
					when others => dataout_reg <= (others => '0');dianyan_sign_clr <= '0';   
				end case;
			end if; 
		
			if((L2_Heat_clk = '1') and (L1_Heat_clk = '0')) then
				case shift_counter is
					when x"08" => ser_data <= dataout_reg(15); 
					when x"09" => ser_data <= dataout_reg(14);
					when x"0a" => ser_data <= dataout_reg(13);
					when x"0b" => ser_data <= dataout_reg(12);
					when x"0c" => ser_data <= dataout_reg(11);
					when x"0d" => ser_data <= dataout_reg(10);
					when x"0e" => ser_data <= dataout_reg(9);
					when x"0f" => ser_data <= dataout_reg(8);
					when x"10" => ser_data <= dataout_reg(7);
					when x"11" => ser_data <= dataout_reg(6);
					when x"12" => ser_data <= dataout_reg(5);
					when x"13" => ser_data <= dataout_reg(4);
					when x"14" => ser_data <= dataout_reg(3);
					when x"15" => ser_data <= dataout_reg(2);
					when x"16" => ser_data <= dataout_reg(1); 
					when x"17" => ser_data <= dataout_reg(0); 
					when x"18" => ser_data <= crc_out(7);
					when x"19" => ser_data <= crc_out(6);
					when x"1a" => ser_data <= crc_out(5);
					when x"1b" => ser_data <= crc_out(4);  
					when x"1c" => ser_data <= crc_out(3);
					when x"1d" => ser_data <= crc_out(2);
					when x"1e" => ser_data <= crc_out(1);     
					when x"1f" => ser_data <= crc_out(0);    
					when others => ser_data <= '0';
				end case;
			end if;
		end if;
	end process;  
	---ARM读FPGA的crc生成
	process(lfsr_q,data_in,Heat_data)
	begin
		crc_out <= lfsr_q;
		lfsr_c(0) <= lfsr_q(7) xor data_in;
		lfsr_c(1) <= lfsr_q(0) xor lfsr_q(7) xor data_in;
		lfsr_c(2) <= lfsr_q(1) xor lfsr_q(7) xor data_in;
		lfsr_c(3) <= lfsr_q(2);
		lfsr_c(4) <= lfsr_q(3);
		lfsr_c(5) <= lfsr_q(4);
		lfsr_c(6) <= lfsr_q(5); 
		lfsr_c(7) <= lfsr_q(6);
		
		data_in <= Heat_data;  
	end process;
	process(clk_100,Reg_reset)
	begin
		if(Reg_reset = '1') then
			lfsr_q <= x"00";
		elsif(clk_100'event and clk_100 = '1') then
			if(crc_en = '1') then
				lfsr_q <= lfsr_c;
			end if;
		end if;    
	end process;
	---ARM写FPGA
	process(clk_100,nRST,F_SW0,F_SW1,F_SW2,F_SW3,F_SW4,F_SW5)
	begin
		if(nRST = '0') then
			reg_lock 			<= '1';		
--			ser_port_error 	<= '0';		
			filter_time    	<= conv_std_logic_vector(100,32);	-- 2us
			PN_sel         	<= F_SW0;  			-- sensor type
			select_not			<= F_SW1;			--	sensor input reverse
			select_swap			<= F_SW2;   		--	encoder swap
			filter_en      	<= F_SW3;			--	sensor time filter
			default_out    	<= F_SW4;			-- sensor output reverse			
			sizefilter_sw		<= F_SW5;			-- size filter switch
			
			select1_2			<= '0';				-- encoder 1 or 2 select
			
			sensor_en1_reg		<= '0';
			sensor_en2_reg		<= '0';
			sensor_en3_reg		<= '0';
			
			gen_en_sensor		<= '0';			
			gen_en_encoder		<= '0';			
			sensor_cycle		<= x"000000000000D60A";		-- 54794 1of4 cycle = 1s
			encoder_1of4		<= x"039D";					-- 73us		
-- **************************************************************************************				
			Ch1_SPR_XPRTSize_Wr_en <= '0';
			Ch2_SPR_XPRTSize_Wr_en <= '0';
			Ch3_SPR_XPRTSize_Wr_en <= '0';
			Ch1_SPR_XPRTSize_Wr_en1 <= '0';
			Ch2_SPR_XPRTSize_Wr_en1 <= '0';
			Ch3_SPR_XPRTSize_Wr_en1 <= '0';
			
			Ch1_SPR_XPRTSize_Wr		<= (others => '0');
			Ch2_SPR_XPRTSize_Wr		<= (others => '0');
			Ch3_SPR_XPRTSize_Wr		<= (others => '0');
			
			filter_delay_time_encoder	<= x"0010";
			filter_delay_encoder_en		<= '1';			
			
			sizefilter_mode	<= '0';
			
			sensor_group1_sel	<= "0000";
			sensor_group2_sel	<= "0000";
			sensor_group3_sel	<= "0000";
						
			Boardtype	<= SPP_3CH;
			sensor_valid_time	<= x"0007A120";	
			sensor_en_sel		<= '0';
			sensor_4b5b_en		<= '0';
			multiplication 	<= X"00";
			
			dianyan_on_coor <= X"3FFFFFFF";

-- **************************************************************************************		
		elsif(clk_100'event and clk_100='1') then
			Ch1_SPR_XPRTSize_Wr_en1 <= Ch1_SPR_XPRTSize_Wr_en;
			Ch2_SPR_XPRTSize_Wr_en1 <= Ch2_SPR_XPRTSize_Wr_en;
			Ch3_SPR_XPRTSize_Wr_en1 <= Ch3_SPR_XPRTSize_Wr_en;

			if(Boardtype = SPP_3CH) then
				reg_lock <= '0';
			else
				reg_lock <= '1';
			end if;
			
--			if(shift_counter = x"20" and outen = '0' and (L2_Heat_clk = '1') and (L1_Heat_clk = '0')) then
--				if(crc_out = shift_reg(7 downto 0)) then
--					Ser_Port_error <= '0';
--				else 
--					Ser_Port_error <= '1';
--				end if;
--			end if;    			
		
			if(wr_reg = '1') then 
				case shift_reg(31 downto 24) is 
					when x"00" => 
						if(reg_lock = '0') then
							Boardtype		<= shift_reg(23 downto 16);
						end if;
					when x"01" => 
						if(reg_lock = '0') then
							sensor_en1_reg	<= shift_reg(8);					-- RW. sensor enable, high bits reserved for others sensors
							sensor_en2_reg	<= shift_reg(9);
							sensor_en3_reg	<= shift_reg(10);
						end if;
					when x"02" => 
						if(reg_lock = '0') then
							select_not		<= shift_reg(8);					-- RW. sensor function related register bits, high bits reserved for other sensor functions
							default_out		<= shift_reg(9);
							PN_sel			<= shift_reg(10);
							filter_en		<= shift_reg(11);
							sizefilter_sw	<= shift_reg(12);					
							sizefilter_mode	<= shift_reg(13);
							sensor_en_sel	<= shift_reg(14);
							sensor_4b5b_en	<= shift_reg(15);
							dianyan_extra	<= shift_reg(17 downto 16);	
						end if;				
					when x"03" => 
						if(reg_lock = '0') then										-- RW. encoder function related register bits, high bits reserved for other encoder functions
							select_swap				<= shift_reg(8);							
							filter_delay_encoder_en	<= shift_reg(9);
							select1_2				<= shift_reg(10);
							multiplication			<= shift_reg(23 downto 16);
						end if;					
					when x"04" => 
						if(reg_lock = '0') then										-- RW. inner sensor and inner encoder related register bits
							gen_en_sensor		<= shift_reg(8);
							gen_en_encoder		<= shift_reg(9);
							printdye_en			<= shift_reg(10);
						end if;				
					when x"05" => 
						if(reg_lock = '0') then										-- RW. sensor output select, high bits reserved for other sensor input.
							sensor_group1_sel	<= shift_reg(11 downto 8);
							sensor_group2_sel	<= shift_reg(15 downto 12);
							sensor_group3_sel	<= shift_reg(19 downto 16);
						end if;
					when x"06" => 
						if(reg_lock = '0') then		
							sensor_delay_time1 <= shift_reg(23 downto 8);
						end if;
					when x"07" => 
						if(reg_lock = '0') then		
							sensor_delay_time2 <= shift_reg(23 downto 8);
						end if;
					when x"08" => 
						if(reg_lock = '0') then		
							sensor_delay_time3 <= shift_reg(23 downto 8);
						end if;
					when x"0f" => 
						if(reg_lock = '0') then										-- only W.
							PD1FIFO_aclr 	<= shift_reg(8);
							PD2FIFO_aclr 	<= shift_reg(9);
							PD3FIFO_aclr 	<= shift_reg(10);
						end if;				
				
					when x"10" => 														-- RW.
						if(reg_lock = '0') then
							filter_time(15 downto 0)	<= shift_reg(23 downto 8);
						end if;				
					when x"11" => 
						if(reg_lock = '0') then
							filter_time(31 downto 16)	<= shift_reg(23 downto 8);
						end if;
						
					when x"12" => 
						if(reg_lock = '0') then
							sensor_cycle(15 downto 0)	<= shift_reg(23 downto 8);
						end if;				
					when x"13" => 
						if(reg_lock = '0') then
							sensor_cycle(31 downto 16)	<= shift_reg(23 downto 8);
						end if;
			
					when x"14" => 
						if(reg_lock = '0') then
							encoder_1of4				<= shift_reg(23 downto 8);
						end if;
							
					when x"16" => 
						if(reg_lock = '0') then
							filter_delay_time_encoder	<= shift_reg(23 downto 8);
						end if;	
					
					when x"17" => 
						if(reg_lock = '0') then						
							sensor_valid_time(15 downto 0)	<= shift_reg(23 downto 8);
						end if;
					when x"18" => 
						if(reg_lock = '0') then						
							sensor_valid_time(31 downto 16)	<= shift_reg(23 downto 8);
						end if;	
						
					when x"34" => 														-- RW. sensor size value input, high addr reserved for other sensor size input.
						if(reg_lock = '0') then
							Ch1_SPR_XPRTSize_Wr(15 downto 0)	<= shift_reg(23 downto 8);
						end if;				
					when x"35" => 
						if(reg_lock = '0') then
							Ch1_SPR_XPRTSize_Wr(31 downto 16)	<= shift_reg(23 downto 8);
							Ch1_SPR_XPRTSize_Wr_en	<= '1';
						end if;
		
					when x"3c" => 
						if(reg_lock = '0') then
							Ch2_SPR_XPRTSize_Wr(15 downto 0)	<= shift_reg(23 downto 8);
						end if;				
					when x"3d" => 
						if(reg_lock = '0') then
							Ch2_SPR_XPRTSize_Wr(31 downto 16)	<= shift_reg(23 downto 8);
							Ch2_SPR_XPRTSize_Wr_en	<= '1';
						end if;
				
					when x"44" => 
						if(reg_lock = '0') then
							Ch3_SPR_XPRTSize_Wr(15 downto 0)	<= shift_reg(23 downto 8);
						end if;				
					when x"45" => 
						if(reg_lock = '0') then
							Ch3_SPR_XPRTSize_Wr(31 downto 16)	<= shift_reg(23 downto 8);
							Ch3_SPR_XPRTSize_Wr_en	<= '1';
						end if;		
						
					when x"60" => 
						if(reg_lock = '0') then
							dianyan_on_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"61" => 
						if(reg_lock = '0') then
							dianyan_on_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;		
					
					when x"62" => 
						if(reg_lock = '0') then
							dianyan_off_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"63" => 
						if(reg_lock = '0') then
							dianyan_off_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;				
					
					when x"64" => 
						if(reg_lock = '0') then
							UV_on_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"65" => 
						if(reg_lock = '0') then
							UV_on_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;		
					
					when x"66" => 
						if(reg_lock = '0') then
							UV_off_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"67" => 
						if(reg_lock = '0') then
							UV_off_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;
						
					when x"68" => 
						if(reg_lock = '0') then
							UV_off_time <= shift_reg(23 downto 8);
						end if;	
						
					when x"69" => 
						if(reg_lock = '0') then
							UV_over_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;
						
					when x"6A" => 
						if(reg_lock = '0') then
							UV_over_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;				
						
					when x"70" => 
						if(reg_lock = '0') then
							terrace_front_do_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"71" => 
						if(reg_lock = '0') then
							terrace_front_do_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;	
				
					when x"72" => 
						if(reg_lock = '0') then
							terrace_after_do_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"73" => 
						if(reg_lock = '0') then
							terrace_after_do_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;	

					when x"74" => 
						if(reg_lock = '0') then
							terrace_front_eye_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"75" => 
						if(reg_lock = '0') then
							terrace_front_eye_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;	
				
					when x"76" => 
						if(reg_lock = '0') then
							terrace_after_eye_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;	
		
					when x"77" => 
						if(reg_lock = '0') then
							terrace_after_eye_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;		
	
					when x"7A" => 
						if(reg_lock = '0') then
							terrace_filter(15 downto 0) <= shift_reg(23 downto 8);
						end if;
						
					when x"7B" => 
						if(reg_lock = '0') then
							terrace_filter(31 downto 16) <= shift_reg(23 downto 8);
						end if;
									
					when x"7C" => 
						if(reg_lock = '0') then
							terrace_eye_coor(15 downto 0) <= shift_reg(23 downto 8);
						end if;
						
					when x"7D" => 
						if(reg_lock = '0') then
							terrace_eye_coor(31 downto 16) <= shift_reg(23 downto 8);
						end if;						
					when others => 
				end case;
			else
				Ch1_SPR_XPRTSize_Wr_en <= '0';
				Ch2_SPR_XPRTSize_Wr_en <= '0';
				Ch3_SPR_XPRTSize_Wr_en <= '0';
				PD1FIFO_aclr <= '0';
				PD2FIFO_aclr <= '0';
				PD3FIFO_aclr <= '0';
			end if;
		end if;
	end process;   


end behv;