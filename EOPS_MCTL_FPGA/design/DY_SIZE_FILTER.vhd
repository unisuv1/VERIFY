LIBRARY IEEE;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DY_SIZE_FILTER IS
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
END ENTITY;

ARCHITECTURE BEHV OF DY_SIZE_FILTER IS
	
	component PDFIFO 
		PORT
		(
			aclr		: IN STD_LOGIC ;
			clock		: IN STD_LOGIC ;
			data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
			rdreq		: IN STD_LOGIC ;
			wrreq		: IN STD_LOGIC ;
			almost_full	: OUT STD_LOGIC ;
			empty		: OUT STD_LOGIC ;
			full		: OUT STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
			usedw		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
		);
	END component;	
	

	signal	L1_sensor_in			: std_logic;
	signal 	L2_sensor_in			: std_logic;	

	signal 	pre_CH_SPR_XRawCoor 	: std_logic_vector(63 downto 0);	
--	signal 	Ch_SPR_XPRTSize_Rd		: std_logic_vector(63 downto 0);
	signal 	Ch_SPR_XPRTSize_Rd		: std_logic_vector(31 downto 0);
	type 	sensor_state is (IDLE, Waitting_R, Waitting_F, Enable);
	signal 	sensor_sts 				: sensor_state := IDLE;
	signal  PD_FIFO_rdreq_1		: std_logic;





	signal PD_FIFO_wrreq			: std_logic;	
	signal PD_FIFO_DATA				: std_logic_vector(63 downto 0);
	signal PD_FIFO_rdreq			: std_logic;
	signal PD_FIFO_DATAOUT			: std_logic_vector(63 downto 0);			

BEGIN	
	
	
	PD_FIFO_wrreq <= (not Ch_SPR_XPRTSize_Wr_en) and Ch_SPR_XPRTSize_Wr_en1;
	PD_FIFO_DATA <= CH_SPR_XPRTSize_Wr;

	
	---FIFO缓存坐标--用于尺寸滤波  -*-
	PDFIFO_inst : PDFIFO PORT MAP (
		aclr	 	=> PDFIFO_aclr,
		clock	 	=> clk,
		data	 	=> PD_FIFO_DATA,
		rdreq	 	=> PD_FIFO_rdreq,
		wrreq	 	=> PD_FIFO_wrreq,
		almost_full	=> PD_FIFO_alfull,
		empty	 	=> PD_FIFO_empty,
--		full	 	=> PDFIFO_full,
		q	 		=> PD_FIFO_DATAOUT,
		usedw	 	=> open
	);
	
	
	process(clk,nRST)
	begin
		if(nRST = '0') then
			L1_sensor_in	<= '0';
			L2_sensor_in	<= '0';
			PD_FIFO_rdreq <= '0';
			PD_FIFO_rdreq_1 <= '0';
		elsif(clk'event and clk='1') then	

			L1_sensor_in	<= sensor_in;
			L2_sensor_in 	<= L1_sensor_in;
			
			PD_FIFO_rdreq <= PD_FIFO_rdreq_1;
			
			if(sizefilter_mode = '0') then		---在静态尺寸滤波模式（每个电眼的尺寸参数是固定的）	
				case sensor_sts is
					when IDLE => 	
						if(sensor_en = '1' and dianyan_en = '1') then		---电眼使能，则进入等待上升沿状态
							sensor_sts 	<= Waitting_R;					
							discard_cnt		<= (others => '0');	
							valid_edge		<= '0';
							valid_edge_f	<= '0';
						else
							sensor_sts 		<= IDLE;					
							valid_edge 		<= '0';
							valid_edge_f 	<= '0';
						end if;
						
					when Waitting_R =>					
						if(L2_sensor_in = '0' and L1_sensor_in = '1' and dianyan_en = '1') then		---检测到电眼上升沿，记录当前坐标，进入等待下降沿状态
							valid_edge 		<= '1'; 							-- the first sensor don't be filtered
							sensor_sts		<= Waitting_F;	
							pre_CH_SPR_XRawCoor <= SPR_XRawCoor;						
						else
							valid_edge 		<= '0';							
							sensor_sts		<= Waitting_R;
						end if;			
				
					when Waitting_F =>					
						valid_edge 	<= '0';		---高电平持续一个时钟
						if(L2_sensor_in = '1' and L1_sensor_in = '0') then		---检测到下降沿，进入等待使能状态
							valid_edge_f	<= '1';								-- the first sensor don't be filtered
							sensor_sts		<= Enable;
						else
							valid_edge_f	<= '0';							
							sensor_sts	<= Waitting_F;
						end if;
										
					when Enable =>				
						valid_edge_f <= '0';	---高电平持续一个时钟
						if(SPR_XRawCoor - pre_CH_SPR_XRawCoor > CH_SPR_XPRTSize_Wr) then   ---如果运行距离大于尺寸，使能到等待状态状态开始下一次循环
							sensor_sts 	<= IDLE;						
						else							---如果运行距离小于尺寸，且此时输入有电眼，则记录过滤掉的电眼个数
							if(L2_sensor_in = '0' and L1_sensor_in = '1') then
								discard_cnt	<= discard_cnt + '1';
							else
								discard_cnt	<= discard_cnt;
							end if;								
						end if;
											
					when others =>
						sensor_sts 	<= IDLE;
						valid_edge 	<= '0';
						valid_edge_f 	<= '0';
				end case;	
			elsif(accurate_eye_en = '1') then			---动态尺寸滤波模式，如果使能精确电眼	
				if(PDFIFO_aclr = '0') then
					case sensor_sts is
						when IDLE => 
							if(sensor_en = '1' and PD_FIFO_empty = '0' and dianyan_en = '1') then			-- sensor enable and FIFO not be empty
								sensor_sts 		<= Waitting_R;
								PD_FIFO_rdreq_1 	<= '1';	---从FIFO中读取该电眼的滤波参数的读控制
								discard_cnt		<= (others => '0');						-- next enable_cycle clear
								Ch_SPR_XPRTSize_Rd	<= PD_FIFO_DATAOUT(31 downto 0);	---从FIFO中读取该电眼的滤波参数
								
							else
								sensor_sts 		<= IDLE;
								PD_FIFO_rdreq_1 	<= '0';
								discard_cnt		<= (others => '0');	
								Ch_SPR_XPRTSize_Rd	<= (others => '0');
							end if;
						
							if(PD_FIFO_empty = '0') then				
								empty_error 	<= '0';	
							else			
								empty_error 	<= '1';		
							end if;
							
							valid_edge <= '0';
							valid_edge_f 	<= '0';
							pre_CH_SPR_XRawCoor <= SPR_XRawCoor;	---记录当前电眼
						
						when Waitting_R =>
							PD_FIFO_rdreq_1 <= '0';
							valid_edge_f 	<= '0';
							if(SPR_XRawCoor -  pre_CH_SPR_XRawCoor > X"0000000000000003") then		-- check rising edge		---运行距离大于3后，产生上升沿							
								valid_edge 		<= '1';								-- the first sensor don't be filtered
	--								empty_error 	<= '0';								
								sensor_sts		<= Waitting_F;
							else
								valid_edge		<= '0';
								sensor_sts		<= Waitting_R;
							end if;
											
						when Waitting_F =>
							valid_edge 		<= '0';
							PD_FIFO_rdreq_1 	<= '0';
							if(SPR_XRawCoor -  pre_CH_SPR_XRawCoor > X"0000000000000006") then		-- check falling edge			运行距离大于6后，产生下降沿		
								valid_edge_f	<= '1';								-- the first sensor don't be filtered
	--								empty_error 	<= '0';								
								sensor_sts		<= Enable;
							else
								valid_edge_f	<= '0';
								sensor_sts		<= Waitting_F;
							end if;
											
						when Enable =>	
							valid_edge 		<= '0';
							valid_edge_f <= '0';
							PD_FIFO_rdreq_1 	<= '0';
							empty_error 	<= '0';	

							if(SPR_XRawCoor - pre_CH_SPR_XRawCoor >= Ch_SPR_XPRTSize_Rd) then		---如果运行距离大于尺寸，使能到等待状态状态开始下一次循环
								-- if FIFO is empty, printing finish
									sensor_sts 		<= IDLE;																
							else		
									sensor_sts		<= Enable;								
							end if;

												
						when others =>
							sensor_sts 		<= IDLE;					
							valid_edge 		<= '0';
							valid_edge_f 	<= '0';
							PD_FIFO_rdreq_1	<= '0';
					end case;	
				else
					sensor_sts 		<= IDLE;					
					valid_edge 		<= '0';
					valid_edge_f 	<= '0';
					PD_FIFO_rdreq_1	<= '0';					
				end if;
			else		---动态尺寸滤波，没有使能精确电眼
			
				case sensor_sts is
					when IDLE => 
						if(sensor_en = '1' and PD_FIFO_empty = '0') then			-- sensor enable and FIFO not be empty
							sensor_sts 		<= Waitting_R;
							PD_FIFO_rdreq_1 	<= '1';	---从FIFO中读取该电眼的滤波参数的读控制
							discard_cnt		<= (others => '0');						-- next enable_cycle clear
							Ch_SPR_XPRTSize_Rd	<= PD_FIFO_DATAOUT(31 downto 0);		---从FIFO中读取该电眼的滤波参数										
						else
							sensor_sts 		<= IDLE;
							PD_FIFO_rdreq_1 	<= '0';
							discard_cnt		<= (others => '0');	
							Ch_SPR_XPRTSize_Rd	<= (others => '0');
						end if;
					
						if(PD_FIFO_empty = '0') then				
							empty_error 	<= '0';	
						else			
							empty_error 	<= '1';		
						end if;
						
						valid_edge <= '0';
					
					when Waitting_R =>
						PD_FIFO_rdreq_1 <= '0';
						if(sensor_en = '1') then
							if(L2_sensor_in = '0' and L1_sensor_in = '1' and dianyan_en = '1') then		-- check rising edge									
								pre_CH_SPR_XRawCoor <= SPR_XRawCoor;  ---记录当前坐标
								valid_edge 		<= '1';								-- the first sensor don't be filtered
--								empty_error 	<= '0';								
								sensor_sts		<= Waitting_F;
							else
								valid_edge		<= '0';
								sensor_sts		<= Waitting_R;
							end if;
						else						
							valid_edge 		<= '0';
							sensor_sts 		<= IDLE;
						end if;
										
					when Waitting_F =>
						valid_edge 		<= '0';
						PD_FIFO_rdreq_1 	<= '0';
						if(sensor_en = '1') then
							if(L2_sensor_in = '1' and L1_sensor_in = '0') then		-- check falling edge					
								valid_edge_f	<= '1';								-- the first sensor don't be filtered
--								empty_error 	<= '0';								
								sensor_sts		<= Enable;
							else
								valid_edge_f	<= '0';
								sensor_sts		<= Waitting_F;
							end if;
						else
							valid_edge_f 	<= '0';
							sensor_sts 		<= IDLE;
						end if;
										
					when Enable =>	
						valid_edge_f <= '0';
						if(sensor_en = '1') then
							if(SPR_XRawCoor - pre_CH_SPR_XRawCoor > Ch_SPR_XPRTSize_Rd) then
								if(PD_FIFO_empty = '1') then							-- if FIFO is empty, printing finish
									sensor_sts 		<= IDLE;
									PD_FIFO_rdreq_1 	<= '0';
									empty_error 	<= '1';
								else
									sensor_sts 		<= Waitting_R;
									PD_FIFO_rdreq_1 	<= '1';
									empty_error 	<= '0';	
									Ch_SPR_XPRTSize_Rd	<= PD_FIFO_DATAOUT(31 downto 0);
								end if;
								
							else
							
								if(L2_sensor_in = '0' and L1_sensor_in = '1') then
									discard_cnt	<= discard_cnt + '1';
								else
									discard_cnt	<= discard_cnt;
								end if;
								
							end if;
						else
							sensor_sts		<= IDLE;
							valid_edge 		<= '0';
							valid_edge_f 	<= '0';
							PD_FIFO_rdreq_1 	<= '0';
						end if;
											
					when others =>
						sensor_sts 		<= IDLE;					
						valid_edge 		<= '0';
						valid_edge_f 	<= '0';
						PD_FIFO_rdreq_1	<= '0';
				end case;				
			end if;
		end if;
	end process;
END BEHV;
			