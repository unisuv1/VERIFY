LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY TIME_FILTER IS
	PORT
	(
		clk			: in std_logic;
		nRST			: in std_logic;
		
		sig_raw		: in std_logic;
		timeflt_en	: in std_logic;
		filter_time	: in std_logic_vector(31 downto 0);
		
		sig_out		: out std_logic
	);
END ENTITY;

ARCHITECTURE BEHV OF TIME_FILTER IS

	signal	L1_sig_raw		: std_logic;
	signal 	L2_sig_raw		: std_logic;
	signal 	sig_out_reg		: std_logic;
	
	type		filter_sts is (IDLE, START, COUNTING);
	signal 	filter_state	: filter_sts := IDLE;
	signal   filter_cnt		: std_logic_vector(31 downto 0);
	
BEGIN
	
	sig_out	<= sig_out_reg;

	process(clk,nRST)
	begin
		if(nRST = '0') then
			L1_sig_raw	<= '0';
			L2_sig_raw	<= '0';
		elsif(clk'event and clk = '1') then
			L1_sig_raw	<= sig_raw;
			L2_sig_raw	<= L1_sig_raw;
		end if;
	end process;
	
	process(clk,nRST,sig_raw)
	begin
		if(nRST = '0') then
			filter_state	<= IDLE;
			filter_cnt		<= (others => '0');
			if(sig_raw = '0') then
				sig_out_reg	<= '0';
			else
				sig_out_reg	<= '1';
			end if;
		elsif(clk'event and clk = '1') then
		
			if(timeflt_en = '1') then
				case filter_state is
					when IDLE =>
						filter_state	<= START;
						filter_cnt		<= (others => '0');					
						if(sig_raw = '0') then
							sig_out_reg	<= '0';
						else
							sig_out_reg	<= '1';
						end if;
					when START =>
						sig_out_reg	<= sig_out_reg;
						if(sig_raw /= L2_sig_raw) then
							filter_cnt		<= filter_cnt + '1';
							filter_state	<= COUNTING;
						else
							filter_cnt		<= (others => '0');
							filter_state	<= START;
						end if;
					when COUNTING =>
						if(filter_cnt = filter_time) then
							if(L1_sig_raw = '0') then
								filter_state	<= START;
								filter_cnt		<= (others => '0');								
								sig_out_reg		<= '0';
							else
								filter_state	<= START;
								filter_cnt		<= (others => '0');								
								sig_out_reg		<= '1';
							end if;
						elsif(sig_raw = L1_sig_raw) then
							filter_state	<= COUNTING;
							filter_cnt		<= filter_cnt + '1';
							sig_out_reg		<= sig_out_reg;
						else							
							filter_state	<= START;
							filter_cnt		<= (others => '0');
							sig_out_reg		<= sig_out_reg;	
						end if;
					when others =>
				end case;
			else
				filter_state	<= IDLE;
				filter_cnt		<= (others => '0');
				sig_out_reg		<= sig_raw;
			end if;	
			
		end if;
	end process;		
END BEHV;