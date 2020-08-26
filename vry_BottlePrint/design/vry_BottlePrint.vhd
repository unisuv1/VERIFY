LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


--ENTITY vry_BottlePrint IS
--	PORT
--	(
--		nRST		:in		std_logic
--	);
--END vry_BottlePrint;
--
--ARCHITECTURE BEHV OF vry_BottlePrint IS
--	
--begin
--	
--end BEHV;


entity vry_BottlePrint is
	port(
		nRST		:in	std_logic;
		clk_100		:in	std_logic;
		
		dianyan_en	:in	std_logic;
		b_p_clr		:in	std_logic;
		
		valid_edge_f1 :in	std_logic;
		
		b_p_road_num	:in		std_logic_vector(7 downto 0);
		b_p_cycle_num	:in		std_logic_vector(7 downto 0)
			
	);
end vry_BottlePrint;

architecture behv of vry_BottlePrint is
	
--signal b_p_road_num 		:std_logic_vector(7 downto 0) := X"06";
--signal b_p_cycle_num 		:std_logic_vector(7 downto 0) := X"01";
signal b_p_road_cnt			:std_logic_vector(7 downto 0);
signal b_p_cycle_cnt		:std_logic_vector(7 downto 0);
--signal b_p_clr				:std_logic;
signal b_p_clr_l			:std_logic;
signal b_p_dy_out_sel_map	:std_logic_vector(7 downto 0);	
	

begin

--------------------------------------------------------------------------------------
----瓶子打印逻辑：
------打印瓶子时，使用第一路电眼（尺寸滤波后）循环从b_p_road_num路输出，
------每一路输出b_p_cycle_num个电眼。注：电眼使能取消（取消打印、暂停打印），循环不复位、
------继续从原来位置打印。只有在配置循环参数时，循环复位。
------
--------------------------------------------------------------------------------------
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			b_p_cycle_cnt <= x"00";
			b_p_road_cnt <= x"00";
		elsif(clk_100'event and clk_100='1') then	
			if (dianyan_en = '1') then 
				if (b_p_clr_l = '0' and b_p_clr = '1') then	
					b_p_cycle_cnt <= x"00";
					b_p_road_cnt <= x"00";
				else
					if(valid_edge_f1 = '1') then
						if( b_p_cycle_cnt < b_p_cycle_num - '1') then
							b_p_cycle_cnt <= b_p_cycle_cnt + '1';
						else 
							b_p_cycle_cnt <= x"00";
							if(b_p_road_cnt < b_p_road_num - '1') then
								b_p_road_cnt <= b_p_road_cnt + '1';
							else 
								b_p_road_cnt <= x"00";
							end if;
						end if;
					end if;
				end if;
			elsif(b_p_clr_l = '0' and b_p_clr = '1') then				
				b_p_cycle_cnt <= x"00";
				b_p_road_cnt <= x"00";
			end if;
		end if;
	end process;	
	
	process(clk_100,nRST)
	begin
		if(nRST = '0') then
			b_p_clr_l <= '0';
		elsif(clk_100'event and clk_100='1') then	
			b_p_clr_l <= b_p_clr;
		end if;
	end process;
	
end behv;	