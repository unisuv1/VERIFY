LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity Encoder_full is
	port 
	(
		Encoder_A					: in     std_logic;						  ---
		Encoder_B					: in     std_logic;						  ---

		nRESET                  : in     std_logic;						  --- nreset by power on
		enable			: in     std_logic;						  ---
		clk_sys					: in std_logic;   --- for A+, it is 133Mhz
		
		fire_multiplication					: in STD_LOGIC_VECTOR (15 DOWNTO 0);
--		measure_sample_num : in STD_LOGIC_VECTOR (15 DOWNTO 0);
--		multiplication_num	: out STD_LOGIC_VECTOR (31 DOWNTO 0);			

		synchronization_en 	: out STD_LOGIC;
		Encoder_A_Smooth_720 : out STD_LOGIC;
		Encoder_B_Smooth_720 : out STD_LOGIC
--- 		Encoder_A_Smooth_1440 : out STD_LOGIC;
---			Encoder_B_Smooth_1440 : out STD_LOGIC;

---			Locked_1440			: out     std_logic;
---			Smoothed_1440		: out     std_logic
	);
end entity;

architecture rtl of Encoder_full is

--constant measure_sample_num : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00001000";

signal numer	: STD_LOGIC_VECTOR (19 DOWNTO 0);
signal quotient : STD_LOGIC_VECTOR (17 DOWNTO 0);

type divide3_state_t is
(
	d3_idle,
	d3_init,
	d3_loop,
	d3_shift,
	d3_out
);
signal d3_ms : divide3_state_t := d3_idle;
signal out_divide3 : STD_LOGIC;
signal d3_count : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal enable_divide3 : STD_LOGIC;
signal divide3_src : STD_LOGIC_VECTOR (1 DOWNTO 0);

Type smooth_state_t is
(
	sst_none,
	sst_measure_time_wait_first_jump,
	sst_measure_time_jump,
	sst_measure_time_wait_jump,
	sst_check_smooth_start
);
signal smooth_ms : smooth_state_t := sst_none;
signal smooth_into : STD_LOGIC := '0';

component SmoothCounter_full IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cout		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;
component DIVIDE_full IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		denom		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

--component MULT_FULL 
--	PORT
--	(
--		clock 	: in     std_logic;		
--		dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
--		datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
--		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
--	);
--end component;

signal SmoothCounter_aclr : STD_LOGIC ;
signal SmoothCounter_clk_en : STD_LOGIC ;
signal SmoothCounter_cout : STD_LOGIC ;
signal SmoothCounter_cout_forever : STD_LOGIC ;
signal SmoothCounter_q : STD_LOGIC_VECTOR (31 DOWNTO 0) ;
signal OutCounter_aclr : STD_LOGIC ;
signal OutCounter_clk_en : STD_LOGIC ;
signal OutCounter_q : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal OutCounter_540_aclr : STD_LOGIC ;
signal OutCounter_540_clk_en : STD_LOGIC ;
signal OutCounter_540_q : STD_LOGIC_VECTOR (19 DOWNTO 0) ;

signal jump_count : STD_LOGIC_VECTOR (15 DOWNTO 0);

signal Encoder_A_L	: std_logic;						  ---
signal Encoder_B_L	: std_logic;						  ---
signal dir : std_logic;
signal start_dir : std_logic;

signal last_cycle_time : STD_LOGIC_VECTOR (31 DOWNTO 0) ;
signal cycle_time : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal cycle_time_offset : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal synchronization : std_logic; 

type out_720_state_t is
(
	o720st_none,
	o720st_raw,
	o720st_raw_jump,
	o720st_into_smooth,
	o720st_into_smooth_1,
	o720st_into_smooth_2,
	o720st_smooth,
	o720st_smooth_jump,
	o720st_smooth_step,
	o720st_smooth_into_next,
	o720st_smooth_wait_raw_completed,
	o720st_smooth_wait_raw_completed_out_of_smooth,
	o720st_out_of_smooth,
	o720st_out_of_smooth_wait
);
signal out_720_ms : out_720_state_t := o720st_none;
signal out_A_Smooth_720 : STD_LOGIC;
signal out_B_Smooth_720 : STD_LOGIC;
signal out_Locked_720	: std_logic;
signal out_Smoothed_720		: std_logic;

signal out_count : STD_LOGIC_VECTOR (7 DOWNTO 0);
signal out_cycle_count : STD_LOGIC_VECTOR (7 DOWNTO 0);

signal dir_out_720 : std_logic;
signal out_cycle_time : STD_LOGIC_VECTOR (19 DOWNTO 0);
signal out_cycle_step : STD_LOGIC_VECTOR (17 DOWNTO 0);

signal dir_720 : std_logic;
signal jump_720 : std_logic;
signal jump_720_L : std_logic;


type out_540_state_t is
(
	o540st_none,
	o540st_raw,
	o540st_raw_jump_check,
	o540st_raw_jump,
	o540st_into_smooth_wait_divide3,
	o540st_into_smooth,
	o540st_into_smooth_1,
	o540st_into_smooth_2,
	o540st_smooth,
	o540st_smooth_jump,
	o540st_smooth_step,
	o540st_smooth_into_next_wait_divide3,
	o540st_smooth_into_next,
	o540st_smooth_wait_raw_completed,
	o540st_smooth_wait_raw_completed_1,
	o540st_smooth_wait_raw_completed_out_of_smooth,
	o540st_out_of_smooth_set_out_count_540,
	o540st_out_of_smooth,
	o540st_out_of_smooth_wait
);
signal out_540_ms : out_540_state_t := o540st_none;
signal out_A_Smooth_540 : STD_LOGIC;
signal out_B_Smooth_540 : STD_LOGIC;
signal out_Locked_540	: std_logic;
signal out_Smoothed_540		: std_logic;

signal out_count_540 : STD_LOGIC_VECTOR (7 DOWNTO 0);
signal out_count_540_before_smooth : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal out_count_540_adjust_point : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal out_cycle_count_540 : STD_LOGIC_VECTOR (7 DOWNTO 0);

signal dir_out_540 : std_logic;
signal out_cycle_time_540 : STD_LOGIC_VECTOR (19 DOWNTO 0);
signal out_cycle_step_540 : STD_LOGIC_VECTOR (17 DOWNTO 0);

signal dir_540 : std_logic;
signal jump_540 : std_logic;
signal jump_540_L : std_logic;

signal start_dir_when_break : STD_LOGIC;
signal jump_count_after_break : STD_LOGIC_VECTOR (7 DOWNTO 0);

constant min_jump_interval : STD_LOGIC_VECTOR (19 DOWNTO 0) := X"00100"; --- about 2us

--- some assert :
--- 1. the error between smoothed signal and raw signal always <= one jump.
--- 2. the jump interval of raw signal is NOT too short. 

signal new_cycle_time_1 :STD_LOGIC_VECTOR (19 DOWNTO 0);
signal new_cycle_time_2 :STD_LOGIC_VECTOR (19 DOWNTO 0);
signal new_cycle_time_2_540 :STD_LOGIC_VECTOR (19 DOWNTO 0);

--liubo
signal step_time : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal step_count : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal multiplication_count : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal multiplication : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal full_count : STD_LOGIC_VECTOR (3 DOWNTO 0);
signal dir_s : STD_LOGIC;
signal step_denom : STD_LOGIC_VECTOR (15 DOWNTO 0);
signal multiplication_step : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal multiplication_remain : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal dir_en : STD_LOGIC;
signal step_sign : STD_LOGIC;
signal smooth_en : STD_LOGIC;
signal smooth_data : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal remain_cnt : STD_LOGIC_VECTOR (31 DOWNTO 0);

signal smooth_cnt : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal smooth_num : STD_LOGIC_VECTOR (31 DOWNTO 0);
signal smooth_D : STD_LOGIC_VECTOR (31 DOWNTO 0);

signal reverse_cnt : STD_LOGIC_VECTOR (3 DOWNTO 0);

signal measure_sample_num : STD_LOGIC_VECTOR (15 DOWNTO 0); 


begin

	SmoothCounter_inst : SmoothCounter_full
	PORT map
	(
		aclr		=> SmoothCounter_aclr,
		clk_en		=> SmoothCounter_clk_en,	---第一个沿开始，最后一个沿结束、或者换向结束
		clock		=> clk_sys,
		cout		=> SmoothCounter_cout,			---没用
		q			=> SmoothCounter_q						---对一个平滑周期计数（计时）
	);
	
	DIVIDE_full_inst : DIVIDE_full
	PORT map
	(
		clock    => clk_sys,
		denom		=> multiplication_step,			---分辨率（在这个平滑周期内要输出的编码信号次数）
		numer		=> last_cycle_time,					---上一个平滑周期的时间
		remain   => multiplication_remain,	---输出所有编码信号次数后剩余的时间
		quotient		=> step_time						---每一次输出编码信号所需要的时间
	);
	
	synchronization_en <= synchronization;
	
--	MULT_FULL_inst : MULT_FULL
--	PORT map
--	(
--		clock    => clk_sys,
--		dataa		=> measure_sample_num,
--		datab		=> fire_multiplication,
--		result	=> multiplication
--	);

		--multiplication_num <= multiplication;
		smooth_num <= "0000000000"&multiplication(31 downto 10);--512分之1	
		multiplication <= "0000000000000"&fire_multiplication&"000";
		measure_sample_num <= X"0008";
		--smooth_num <= X"00000000";
	
	
	
	---本状态机（输出状态机）控制编码器输出的流程（一个输出平滑周期内）
	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			step_count <= X"00000000";
			out_A_Smooth_720 <= '0';
			out_B_Smooth_720 <= '0';
			full_count <= "0000";
			multiplication_count <= X"00000000";
			dir_s <= '0';
			multiplication_step <= X"00000000";
			step_sign <= '0';
			smooth_en <= '0';
			smooth_data <= X"00000000";
			remain_cnt <= X"00000000";
			smooth_cnt <= X"00000000";
			smooth_D <= X"00000000";
		elsif (rising_edge(clk_sys)) then
			if(synchronization = '1') then		--坐标重置（系统复位、打印分辨率变化），运动方向反向,不在匀速区（只有最新版本有）
				step_count <= X"00000000";
				out_A_Smooth_720 <= out_A_Smooth_720;
				out_B_Smooth_720 <= out_B_Smooth_720;
				full_count <= "0000";
				multiplication_count <= X"00000000";
				dir_s <= start_dir;
				multiplication_step <= multiplication;
				step_sign <= '0';
				smooth_en <= '0';
				smooth_data <= X"00000000";		
				remain_cnt <= X"00000000";
				smooth_cnt <= X"00000000";
			else	
				case full_count is
					when "0000" => ---等待状态
						multiplication_step <= multiplication;
						step_count <= X"00000000";
						smooth_en <= '0';						---清零计时周期结束标志
						remain_cnt <= X"00000000";
						smooth_cnt <= X"00000000";
						smooth_D <= X"00000000";
						if(smooth_into = '1') then	---计时状态机计时周期结束
							full_count <= "0010";
							dir_s <= start_dir;
						else
							full_count <= "0000";
						end if;
						step_sign <= '0';
					when "0001" => ---循环输出状态
						smooth_en <= '0';						---清零计时周期结束标志
						if(smooth_into = '1') then	---在此状态机就开始
							step_count <= step_count;
							multiplication_count <= X"00000000";
							multiplication_step <= multiplication + multiplication_step - multiplication_count;
							full_count <= "0010";
							dir_s <= start_dir;
							step_sign <= step_sign;
							remain_cnt <= X"00000000";
						elsif(step_count >= '0'&step_time(31 downto 1) and step_sign = '0') then			---输出编码信号控制，从1/2step_time开始
							step_sign <= '1';
							if(multiplication_count >= multiplication_step - '1') then									
								full_count <= "0011";
								multiplication_count <= X"00000000";
								smooth_data <= step_time;
							else
								step_count <= step_count + '1';
								multiplication_count <= multiplication_count + '1';
								full_count <= "0001";
							end if;
							if(dir_s = '0') then
								if(out_A_Smooth_720 = '0') then
									if(out_B_Smooth_720 = '0') then
										out_B_Smooth_720 <= '1';
									else
										out_A_Smooth_720 <= '1';
									end if;
								else
									if(out_B_Smooth_720 = '0') then
										out_A_Smooth_720 <= '0';
									else
										out_B_Smooth_720 <= '0';
									end if;
								end if;
							else
								if(out_A_Smooth_720 = '0') then
									if(out_B_Smooth_720 = '0') then
										out_A_Smooth_720 <= '1';
									else
										out_B_Smooth_720 <= '0';
									end if;
								else
									if(out_B_Smooth_720 = '0') then
										out_B_Smooth_720 <= '1';
									else
										out_A_Smooth_720 <= '0';
									end if;
								end if;
							end if;	
						elsif(remain_cnt <= multiplication_remain) then  ---把余数分摊
							if(step_count >= step_time) then	
								step_count <= X"00000000";
								full_count <= "0001";
								step_sign <= '0';			
								remain_cnt <= remain_cnt + '1';
							else
								step_count <= step_count + '1';
								full_count <= "0001";
								step_sign <= step_sign;	
								remain_cnt <= remain_cnt;
							end if;						
						elsif(step_count >= step_time - '1') then	---一个编码信号计数周期，重新计数
							step_count <= X"00000000";
							full_count <= "0001";
							step_sign <= '0';
						else																			---不到一个编码信号计数周期，继续计数
							step_count <= step_count + '1';		
							full_count <= "0001";
							step_sign <= step_sign;
						end if;					
					when "0010" =>															---输出清零状态（该状态内不等待，清零、跳入循环输出状态）
							smooth_en <= '0';
							full_count <= "0001";	
							dir_s <= start_dir;	
							remain_cnt <= X"00000000";
							smooth_cnt <= X"00000000";
							smooth_D <= X"00000000";
					when "0011" => ---输出最后一个编码信号的状态
						step_sign <= '0';
						multiplication_count <= X"00000000";
						multiplication_step <= multiplication;
						remain_cnt <= X"00000000";
						if(smooth_into = '1') then
							full_count <= "0011";							
							smooth_en <= '1';		---在"0011"状态，计时周期结束的标志
							step_count <= step_count + '1';
						elsif(step_count >= smooth_data - '1') then	---如果最后一个编码信号输出完
							smooth_en <= smooth_en;
							step_count <= X"00000000";
							if(smooth_en = '1') then
								full_count <= "0010";	---如果计时周期结束，跳入输出清零状态
							else
								if(measure_sample_num >= X"0064") then ------------*----------------  EOPS是滑轮编码器，这是给磁栅用的
									smooth_D <= smooth_D + smooth_data;		---------*-------- 
									full_count <= "0100";	
								else
									full_count <= "0000";	---如果计时周期没结束，跳入等待状态
								end if;
							end if;											
						else ---计时周期不结束、输出也不结束，等待输出结束
							step_count <= step_count + '1';
							full_count <= "0011";
							smooth_en <= smooth_en;
						end if;						
					when "0100" =>
						multiplication_step <= multiplication - smooth_cnt - 1;
						step_count <= step_count + '1';
						remain_cnt <= X"00000000";
						if(smooth_into = '1') then
							full_count <= "0100";
							smooth_en <= '1';
						elsif(step_count >= '0'&smooth_data(31 downto 1) - '1') then 
							full_count <= "0101";	
							smooth_cnt <= smooth_cnt + '1';							
							dir_s <= dir_s;
							step_sign <= '1';	
							if(dir_s = '0') then
								if(out_A_Smooth_720 = '0') then
									if(out_B_Smooth_720 = '0') then
										out_B_Smooth_720 <= '1';
									else
										out_A_Smooth_720 <= '1';
									end if;
								else
									if(out_B_Smooth_720 = '0') then
										out_A_Smooth_720 <= '0';
									else
										out_B_Smooth_720 <= '0';
									end if;
								end if;
							else
								if(out_A_Smooth_720 = '0') then
									if(out_B_Smooth_720 = '0') then
										out_A_Smooth_720 <= '1';
									else
										out_B_Smooth_720 <= '0';
									end if;
								else
									if(out_B_Smooth_720 = '0') then
										out_B_Smooth_720 <= '1';
									else
										out_A_Smooth_720 <= '0';
									end if;
								end if;
							end if;								
						else
							full_count <= "0100";
							dir_s <= dir_s;							
						end if;							
					when "0101" =>
						multiplication_step <= multiplication - smooth_cnt;							
						remain_cnt <= X"00000000";
						if(smooth_into = '1') then
							full_count <= "0101";
							smooth_en <= '1';						
							step_count <= step_count + '1';
							smooth_cnt <= smooth_cnt;	
						elsif(step_count >= smooth_data - '1') then 							
							step_sign <= '0';	
							smooth_D <= smooth_D + smooth_data;
							if(smooth_en = '1') then
								full_count <= "0010";		
							elsif(smooth_cnt >= smooth_num) then
								full_count <= "0000";	
							else
								full_count <= "0100";	
							end if;
							dir_s <= dir_s;
							step_count <= X"00000000";									
						else
							full_count <= "0101";
							dir_s <= dir_s;
							step_count <= step_count + '1';
							smooth_cnt <= smooth_cnt;	
						end if;
					-- when "0110" =>
						-- multiplication_step <= multiplication;
						-- step_count <= step_count + '1';
						-- smooth_en <= '0';
						-- remain_cnt <= X"00000000";
						-- smooth_cnt <= X"00000000";
						-- smooth_D <= X"00000000";
						-- if(smooth_into = '1') then
							-- full_count <= "0010";
							-- dir_s <= start_dir;
						-- else
							-- full_count <= "0000";
						-- end if;
						-- step_sign <= '0';						
					when others =>
						smooth_en <= '0';
						step_count <= X"00000000";
						out_A_Smooth_720 <= '0';
						out_B_Smooth_720 <= '0';
						full_count <= "0000";	
						step_sign <= '0';
				end case;	
			end if;
		end if;
	end process;
	
--	process (measure_sample_choose)
--	begin
--		case measure_sample_choose is
--			when "00" =>
--				measure_sample_num <= "000001000";
--				multiplication <= "0000000000000"&fire_multiplication&"000";
--			when "01" =>
--				measure_sample_num <= "001000000";
--				multiplication <= "0000000000"&fire_multiplication&"000000";
--			when "10" =>
--				measure_sample_num <= "010000000";
--				multiplication <= "000000000"&fire_multiplication&"0000000";
--			when "11" =>
--				measure_sample_num <= "100000000";
--				multiplication <= "00000000"&fire_multiplication&"00000000";
--		end case;
--	end process;

---本状态机（计时状态机）控制计数的开始和结束流程（在一个计数平滑周期内）
	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			smooth_ms <= sst_none;
			SmoothCounter_aclr <= '1';
			SmoothCounter_clk_en <= '0';
			SmoothCounter_cout_forever <= '0';
			jump_count  <= X"0000";
			dir <= '0';
			start_dir <= '0';
			cycle_time <= X"00000";
			last_cycle_time <= X"00000000";
			cycle_time_offset <= X"00000";
			smooth_into <= '0';
			
			Encoder_A_L <= '0';
			Encoder_B_L <= '0';
			synchronization <= '0';
			dir_en <= '0';
			reverse_cnt <= "0000";
		elsif (rising_edge(clk_sys)) then
			Encoder_A_L <= Encoder_A;
			Encoder_B_L <= Encoder_B;

			case smooth_ms is 
				when sst_none => ---上电等待
					SmoothCounter_aclr <= '1';
					SmoothCounter_clk_en <= '0';
					SmoothCounter_cout_forever <= '0';
					jump_count  <= X"0000";
					dir <= '0';
					start_dir <= '0';
					cycle_time <= X"00000";
					last_cycle_time <= X"00000000";
					cycle_time_offset <= X"00000";
					smooth_into <= '0';
					synchronization <= '0';
					dir_en <= '0';	
					reverse_cnt <= "0000";				
					if(enable = '1') then	---有使能跳到等待第一次跳
						smooth_ms <= sst_measure_time_wait_first_jump;
					end if;
				when sst_measure_time_wait_first_jump =>	---等待第一次跳
					SmoothCounter_cout_forever <= '0';
					synchronization <= '0';
					reverse_cnt <= "0000";
					if(enable = '0') then
						smooth_ms <= sst_none;
					elsif(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then	---检测到编码信号沿
						if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
							(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
							(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
							(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
							dir <= '0';
							start_dir <= '0'; ---记录方向，第一跳
						else
							dir <= '1';
							start_dir <= '1';
						end if;						
						SmoothCounter_aclr <= '0';
						SmoothCounter_clk_en <= '1';
						smooth_ms <= sst_measure_time_wait_jump;
					end if;
					reverse_cnt <= "0000";
				when sst_measure_time_jump =>
					if(start_dir /= dir) then
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';
						jump_count  <= X"0000";
						dir <= dir;
						start_dir <= dir;
						last_cycle_time <= X"00000000";
						smooth_into <= '0';		
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						synchronization <= '1';
						smooth_ms <= sst_check_smooth_start;
						SmoothCounter_cout_forever <= '0';
						reverse_cnt <= "0000";
					elsif(jump_count = measure_sample_num - '1') then
						synchronization <= '0';
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';						
						smooth_ms <= sst_check_smooth_start;
						if(full_count = "0011") then
							last_cycle_time <= SmoothCounter_q(31 DOWNTO 0) - smooth_data + step_count;
						elsif(full_count = "0101") then
							last_cycle_time <= SmoothCounter_q(31 DOWNTO 0) - smooth_D;
						-- elsif(full_count = "0110") then
							-- last_cycle_time <= SmoothCounter_q(31 DOWNTO 0) - step_count;							
						else
							last_cycle_time <= SmoothCounter_q(31 DOWNTO 0);
						end if;
						smooth_into <= '1';	
						start_dir <= dir;					
					else
						jump_count <= jump_count + '1';
						smooth_ms <= sst_measure_time_wait_jump;
						smooth_into <= '0';
						synchronization <= '0';
						SmoothCounter_aclr <= '0';
						SmoothCounter_clk_en <= '1';
					end if;
				when sst_measure_time_wait_jump =>	---等待跳转状态
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					synchronization <= '0';
					smooth_into <= '0';
					if(SmoothCounter_cout = '1') then
						SmoothCounter_cout_forever <= '1';
					end if;
					if(enable = '0') then
						smooth_ms <= sst_none;
					elsif(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then
						synchronization <= '0';
						if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
							(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
							(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
							(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
							dir <= '0';
						else
							dir <= '1';
						end if;
						smooth_ms <= sst_measure_time_jump;
					else
						smooth_ms <= sst_measure_time_wait_jump;	
					end if;
				when sst_check_smooth_start =>
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					SmoothCounter_cout_forever <= '0';	
					smooth_ms <= sst_measure_time_wait_jump;
					jump_count  <= X"0000";
					smooth_into <= '0';
					synchronization <= '0';		
					reverse_cnt <= "0000";
			end case;
		end if;
	end process;

	Encoder_A_Smooth_720 <= out_A_Smooth_720;
	Encoder_B_Smooth_720 <= out_B_Smooth_720;


end rtl;
