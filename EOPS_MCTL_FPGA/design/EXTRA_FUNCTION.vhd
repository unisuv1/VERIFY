LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity EXTRA_FUNCTION IS
	port(
		nRST					:in		std_logic;
		clk_100					:in		std_logic;
		
		dianyan_extra			:in 	std_logic_vector(1 downto 0);	---电眼附加功能标志			

		F_GPIO_I				:in 	std_logic_vector(10 downto 1);	---电眼信号输入（1,2，3；6,7,8）、UV灯状态信号（4）、平台状态信号（9）、凹印电眼信号（9）、1-2-3通道的电眼使能(9、4、5)
		
		terrace_filter			:in 	std_logic_vector(31 downto 0);	---时间滤波参数（时钟数）

		pass_dir				:in		std_logic;	---运行方向
		SPR_XRawCoor			:in		std_logic_vector(63 downto 0);	---实时坐标

		sensor_en1				:in		std_logic;	---第1路电眼使能输入
		
		UV_on_coor				:in		std_logic_vector(31 downto 0);	---UV灯开启速度
		UV_off_coor				:in		std_logic_vector(31 downto 0);	---UV灯关闭速度	
		UV_OFF_TIME				:in		std_logic_vector(15 downto 0);	---UV灯关闭速度持续时间
		UV_over_coor			:in		std_logic_vector(31 downto 0);	---UV关闭延时坐标
			
		dianyan_on_coor			:in			std_logic_vector(31 downto 0);	---回拉使能速度
		dianyan_off_coor		:in 		std_logic_vector(31 downto 0);	---回拉生效速度
		terrace_eye_coor		:in 		std_logic_vector(31 downto 0);	---凹印电眼使能速度
		terrace_front_do_coor	:in 		std_logic_vector(31 downto 0);	---平台升起延时坐标     
		terrace_after_do_coor	:in 		std_logic_vector(31 downto 0);  ---平台下落延时坐标		
		terrace_front_eye_coor	:in 		std_logic_vector(31 downto 0);  ---关闭电眼延时坐标     
		terrace_after_eye_coor	:in 		std_logic_vector(31 downto 0);  ---开启电眼延时坐标	    

		label_signal_1			:out		std_logic;		---标签模式UV灯异常（低表示异常）
		label_signal_2			:out		std_logic; 		---标签模式平台走纸异常（低表示异常）

		dianyan_en				:out		std_logic;		---主控板电眼使能
		dianyan_en1				:buffer		std_logic;		---内部状态（测试使用）
		dianyan_en2				:buffer		std_logic;		---内部状态（测试使用）
		terrace_en				:out		std_logic;		---凹印控制/标签模式下表示寄存器电眼使能

		control_condition		:buffer 	std_logic_vector(3 downto 0);	---FPGA控制状态
		UV_en					:buffer		std_logic;	---UV灯使能
		terrace_signal			:out		std_logic	---凹印纸接头标志

		
	);
		
		
END entity;
	
architecture BEHV OF EXTRA_FUNCTION IS 
	
	
	signal terrace_sign			: std_logic;
	signal label_sign_1			: std_logic;
	signal label_sign_2			: std_logic;	
	signal dianyan_extra_r1		: std_logic_vector(1 downto 0);
	signal dianyan_extra_r2		: std_logic_vector(1 downto 0);
	signal dianyan_extra_rst	: std_logic;	

	signal ms_cnt				: std_logic_vector(19 downto 0);
	signal ms_sign				: std_logic;   


	signal time_coor			: std_logic_vector(63 downto 0) := (others => '0');
	signal time_oldcoor			: std_logic_vector(63 downto 0) := (others => '0');
	signal time_cnt				: std_logic_vector(19 downto 0) := (others => '0');	
	signal time_ready			: std_logic;		
	signal time_coor_num		: std_logic_vector(7 downto 0); 
		
	signal UV_OFF_TIME_cnt		: std_logic_vector(15 downto 0);			
	signal UV_coor	: std_logic_vector(63 downto 0) := (others => '0');  
	signal UV_condition	: std_logic_vector(3 downto 0);
	signal control_coor	: std_logic_vector(63 downto 0) := (others => '0');

	
	component TIMEFILTER is
		port
		(
			clk			: in std_logic;
			
			code_in		: in std_logic;
			Filter_Timer	: in std_logic_vector(31 downto 0);
			ready			: out std_logic;
			code_out		: out std_logic
		);
	end component;	
	
	
	
begin
	
	
	---timeflt1对凹印电眼信号滤波
	timeflt1 :	TIMEFILTER port map (
		clk			=> clk_100,
		
		code_in		=> F_GPIO_I(9),
		Filter_Timer	=> terrace_filter(30 downto 0)&'0',
		--ready     => ready,
		code_out		=> terrace_sign
	);
	
	---timeflt2对UV灯状态信号滤波
	timeflt2 :	TIMEFILTER port map (--UV灯异常
		clk			=> clk_100,
		
		code_in		=> F_GPIO_I(4),
		Filter_Timer	=> X"01312D00",
		--ready     => ready,
		code_out		=> label_sign_1
	);	
	
	---timeflt3对平台状态信号滤波
	timeflt3 :	TIMEFILTER port map (--平台走纸异常
		clk			=> clk_100,
		
		code_in		=> F_GPIO_I(9),
		Filter_Timer	=> X"01312D00",
		--ready     => ready,
		code_out		=> label_sign_2
	);	
	
	---产生电眼外部复位信号 dianyan_extra_rst
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			dianyan_extra_r1 <= "00";
			dianyan_extra_r2 <= "00";
			dianyan_extra_rst <= '0';
		elsif(clk_100'event and clk_100='1') then
			dianyan_extra_r1 <= dianyan_extra;
			dianyan_extra_r2 <= dianyan_extra_r1;
			if(dianyan_extra_r2 = dianyan_extra) then
				dianyan_extra_rst <= '0';
			else
				dianyan_extra_rst <= '1';
			end if;
		end if;
	end process;

	---对 label_sign_1 (UV灯状态信号) label_sign_2 （平台状态信号）打一拍
	process(clk_100,nRST,dianyan_extra_rst)
	begin
		if(nRST = '0' or dianyan_extra_rst = '1') then
			terrace_signal <= '0';
			label_signal_1 <= '0';
			label_signal_2 <= '0';
		elsif(clk_100'event and clk_100='1') then
			if(dianyan_extra = "01") then
				terrace_signal <= terrace_sign;
				label_signal_1 <= '0';	
				label_signal_2 <= '0';
			elsif(dianyan_extra = "10") then
				terrace_signal <= '0';
				label_signal_1 <= label_sign_1;--UV灯异常
				label_signal_2 <= label_sign_2;--平台走纸异常		
			else
				terrace_signal <= '0';
				label_signal_1 <= '0';
				label_signal_2 <= '0';	
			end if;
		end if;
	end process;
	
	
	---产生毫秒（ms）标志 （X"1869E" --- 99998）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then	
			ms_cnt <= X"00000";
			ms_sign <='0';
		elsif(clk_100'event and clk_100='1') then	
			if(ms_cnt = X"1869E") then
				ms_cnt <= X"00000";
				ms_sign <='1';
			else
				ms_cnt <= ms_cnt + '1';
				ms_sign <='0';				
			end if;
		end if;
	end process;
	
	---产生速度信息time_coor（1ms时间内的距离）
	process(clk_100,nRST)
	begin	
		if(nRST = '0') then	
			time_coor <= X"0000000000000000";
			time_oldcoor <= X"0000000000000000";
			time_cnt	<= X"00000";
			time_ready <= '0';
		elsif(clk_100'event and clk_100='1') then	
			if(time_cnt = X"00000") then
				time_oldcoor <= SPR_XRawCoor;
				time_cnt	<= time_cnt	+ '1';
				time_coor <= time_coor;
				time_ready <= '0';
			elsif(time_cnt = X"1869E") then 
				time_cnt	<= X"00000";
				time_oldcoor <= time_oldcoor;
				time_ready <= '1';
				if(time_oldcoor > SPR_XRawCoor) then
					time_coor <= time_oldcoor - SPR_XRawCoor;
				else
					time_coor <= SPR_XRawCoor - time_oldcoor;
				end if;
			else
				time_oldcoor <= time_oldcoor;
				time_cnt	<= time_cnt	+ '1';
				time_coor <= time_coor;
				time_ready <= '0';
			end if;
		end if;
	end process;	

	---标签机控制流程
	process(clk_100,nRST,dianyan_extra_rst)
	begin	
		if(nRST = '0' or dianyan_extra_rst = '1') then		
			UV_en <= '0';
			UV_OFF_TIME_cnt  <= X"0000";
			UV_coor <= X"0000000000000000";
			UV_condition  <= "0000";
			time_coor_num	<= X"00";
		elsif(clk_100'event and clk_100='1') then
			if(dianyan_extra = "10") then
				UV_OFF_TIME_cnt  <= X"0000";
				case UV_condition is
				when "0000" =>
					UV_coor <= X"0000000000000000";	
					if(pass_dir = '1' and sensor_en1 = '1' and label_sign_1 = '1' and label_sign_2 = '1' and time_coor >= UV_on_coor) then
						UV_en <= '1';
						UV_condition  <= "0001";
						time_coor_num <= X"00";
					else
						UV_en <= '0';						
						UV_condition  <= "0000";	
--						if(time_ready = '1') then
--							if(time_coor >= UV_on_coor) then
--								time_coor_num	<= time_coor_num + '1';
--							else
--								time_coor_num	<= X"00";
--							end if;
--						else
--							time_coor_num <= time_coor_num;
--						end if;
					end if;
				when "0001" =>
					UV_coor <= SPR_XRawCoor;
					if(label_sign_1 = '0' or  label_sign_2 = '0') then
						UV_en <= '0';
						UV_condition  <= "0011";
					elsif(time_coor <= UV_off_coor) then
						UV_en <= '0';						
						UV_condition  <= "0000";						
					elsif(sensor_en1 = '0') then
						UV_en <= '1';
						UV_condition  <= "0010";
					else
						UV_en <= '1';
						UV_condition  <= "0001";
					end if;
--					if(time_ready = '1') then
--						if(time_coor <= UV_off_coor) then
--							time_coor_num	<= time_coor_num + '1';
--						else
--							time_coor_num	<= X"00";
--						end if;
--					else
--						time_coor_num <= time_coor_num;
--					end if;					
				when "0010" =>
					UV_coor <= UV_coor;
					time_coor_num	<= X"00";
					if(SPR_XRawCoor >= UV_coor + UV_over_coor or pass_dir = '0' or label_sign_1 = '0' or  label_sign_2 = '0') then
						UV_en <= '0';	
						UV_condition  <= "0011";
					else
						UV_en <= '1';
						UV_condition  <= "0010";
					end if;
				when "0011" =>
					UV_en <= '0';
					UV_coor <= X"0000000000000000";	
					time_coor_num	<= X"00";
					if(sensor_en1 = '0') then
						UV_condition  <= "0000";
					else
						UV_condition  <= "0011";
					end if;
				when others =>
					UV_en <= '0';
					UV_OFF_TIME_cnt  <= X"0000";
					UV_coor <= X"0000000000000000";	
					UV_condition  <= "0000";
					time_coor_num	<= X"00";
				end case;
			else
				UV_condition  <= "0000";
				UV_coor <= X"0000000000000000";	
				time_coor_num	<= X"00";
				if(time_coor >= UV_on_coor and pass_dir = '1'  and sensor_en1 = '1') then
					UV_en <= '1';
					UV_OFF_TIME_cnt  <= X"0000";
				elsif((time_coor <= UV_off_coor or pass_dir = '0' or sensor_en1 = '0') and UV_en = '1') then				
					if(UV_OFF_TIME_cnt >= UV_OFF_TIME) then
						UV_en <= '0';
						UV_OFF_TIME_cnt  <= UV_OFF_TIME_cnt;
					else
						UV_en <= UV_en;
						if(ms_sign = '1') then
							UV_OFF_TIME_cnt  <= UV_OFF_TIME_cnt + '1';
						else
							UV_OFF_TIME_cnt  <= UV_OFF_TIME_cnt;
						end if;
					end if;
				else
					UV_en <= UV_en;
					UV_OFF_TIME_cnt  <= X"0000";	
				end if;	
			end if;
		end if;
	end process;
		
	---回拉和凹印机控制流程
	--- -*- dianyan_en用在尺寸滤波的使能，尺寸滤波功能用于所有产品？
	process(clk_100,nRST,dianyan_extra_rst)
	begin	
		if(nRST = '0' or dianyan_extra_rst = '1') then	
			control_condition <= "0000";
			dianyan_en <= '0';
			dianyan_en1 <= '0';
			dianyan_en2 <= '0';
			terrace_en <= '1';
			control_coor <= X"0000000000000000";
		elsif(clk_100'event and clk_100='1') then
			if(dianyan_extra = "00")then	---回拉
				terrace_en <= '1';
				dianyan_en1 <= '0';
				dianyan_en2 <= '0';
				case control_condition is
					when "0000" =>
						if(sensor_en1 = '0') then
							control_condition <= "0000";
							dianyan_en <= '0';
						else
							control_condition <= "0001";
							dianyan_en <= '1';					
						end if;
						control_coor <= X"0000000000000000";
					when "0001" =>	
						dianyan_en <= '1';
						if(sensor_en1 = '0') then
							control_condition <= "0000";	
						elsif(time_coor >= dianyan_on_coor and dianyan_on_coor /= X"00000000") then
							control_coor <= X"0000000000000000";
							control_condition <= "0010";
						else
							control_condition <= "0001";
							control_coor <= X"0000000000000000";
						end if;
					when "0010" =>	
						if(sensor_en1 = '0') then
							control_condition <= "0000";	
							control_coor <= X"0000000000000000";
						elsif(time_coor < dianyan_off_coor) then
							control_condition <= "0011";
							dianyan_en <= '0';
							control_coor <= SPR_XRawCoor;
						else
							control_condition <= "0010";
							dianyan_en <= '1';
							control_coor <= X"0000000000000000";
						end if;	
					when "0011" =>
						dianyan_en <= '0';
						control_coor <= control_coor;
						if(sensor_en1 = '0') then
							control_condition <= "0000";				
						elsif(SPR_XRawCoor < control_coor and pass_dir = '1') then
							control_condition <= "0100";
						else
							control_condition <= "0011";
						end if;
					when "0100" =>
						dianyan_en <= '0';
						control_coor <= control_coor;
						if(sensor_en1 = '0') then
							control_condition <= "0000";				
						elsif(SPR_XRawCoor > control_coor) then
							control_condition <= "0001";
						else
							control_condition <= "0100";
						end if;				
					when others =>
						control_condition <= "0000";
						dianyan_en <= '0';
						control_coor <= X"0000000000000000";
				end case;
			elsif(dianyan_extra = "01")then	---凹印
				dianyan_en <= dianyan_en2 and sensor_en1 and dianyan_en1;
				if(time_coor >= terrace_eye_coor and pass_dir = '1') then	
					dianyan_en1 <= '1';
			   else
					dianyan_en1 <= '0';
				end if;
				case control_condition is
					when "0000" =>						
						control_coor <= control_coor;
						control_condition <= "0100";
						terrace_en <= '1';
						dianyan_en2 <= '0';
					when "0001" =>
						dianyan_en2 <= '1';
						terrace_en <= '0';	
						control_coor <= SPR_XRawCoor;		
						if(terrace_sign = '0' or dianyan_en1 = '0') then 
							control_condition <= "0010";								
						else
							control_condition <= "0001";	
						end if;
					when "0010" =>
						dianyan_en2 <= '1';
						terrace_en <= '0';					
						if(SPR_XRawCoor >= (terrace_front_eye_coor + control_coor)) then 
							control_condition <= "0011";
						else
							control_condition <= "0010";
						end if;
					when "0011" =>
						dianyan_en2 <= '0';
						terrace_en <= '0';
						if(SPR_XRawCoor >= (terrace_front_do_coor + control_coor)) then 
							control_condition <= "0100";
						else
							control_condition <= "0011";
						end if;	
					when "0100" =>
						dianyan_en2 <= '0';
						terrace_en <= '1';	
						control_coor <= SPR_XRawCoor;					
						if(terrace_sign = '1' and dianyan_en1 = '1') then 							
							control_condition <= "0101";								
						else
							control_condition <= "0100";	
						end if;
					when "0101" =>
						dianyan_en2 <= '0';
						terrace_en <= '1';
						if(SPR_XRawCoor >= (terrace_after_do_coor + control_coor)) then 
							control_condition <= "0110";	
						else
							control_condition <= "0101";	
						end if;
					when "0110" =>
						dianyan_en2 <= '0';
						terrace_en <= '0';
						if(SPR_XRawCoor >= (terrace_after_eye_coor + control_coor)) then 
							control_condition <= "0001";	
						else
							control_condition <= "0110";	
						end if;						
					when others =>
						control_condition <= "0000";
						dianyan_en2 <= '0';
						terrace_en <= '0';
						control_coor <= X"0000000000000000";
				end case;
			else 
				control_condition <= "0000";
				dianyan_en <= sensor_en1 and UV_en;
				dianyan_en1 <= '0';
				dianyan_en2 <= '0';
				terrace_en <= sensor_en1;
				control_coor <= X"0000000000000000";					
			end if;
		end if;
	end process;	
	
	
	
	
END BEHV;