LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY SENSOR_SERIALIZE IS
	PORT
	(
		clk				: in std_logic;
		nRST				: in std_logic;
		sig_par_in		: in std_logic_vector(3 downto 0);
		sensor_4b5b_en	: in std_logic;
		sig_ser_out		: out std_logic		
	);
END ENTITY;

ARCHITECTURE BEHV OF SENSOR_SERIALIZE IS

	constant DATA_5B_0		: std_logic_vector(4 downto 0) := "11110";
	constant DATA_5B_1		: std_logic_vector(4 downto 0) := "01001";
	constant DATA_5B_2		: std_logic_vector(4 downto 0) := "10100";
	constant DATA_5B_3		: std_logic_vector(4 downto 0) := "10101";
	constant DATA_5B_4		: std_logic_vector(4 downto 0) := "01010";
	constant DATA_5B_5		: std_logic_vector(4 downto 0) := "01011";
	constant DATA_5B_6		: std_logic_vector(4 downto 0) := "01110";
	constant DATA_5B_7		: std_logic_vector(4 downto 0) := "01111";
	constant DATA_5B_8		: std_logic_vector(4 downto 0) := "10010";
	constant DATA_5B_9		: std_logic_vector(4 downto 0) := "10011";
	constant DATA_5B_10		: std_logic_vector(4 downto 0) := "10110";
	constant DATA_5B_11		: std_logic_vector(4 downto 0) := "10111";
	constant DATA_5B_12		: std_logic_vector(4 downto 0) := "11010";
	constant DATA_5B_13		: std_logic_vector(4 downto 0) := "11011";
	constant DATA_5B_14		: std_logic_vector(4 downto 0) := "11100";
	constant DATA_5B_15		: std_logic_vector(4 downto 0) := "11101";
--	constant SYN_HEAD			: std_logic_vector(9 downto 0) := "1111111110";
	constant SYN_HEAD			: std_logic_vector(9 downto 0) := "1100010001";
	constant SYN_NUM			: integer := 128;

	signal	sig_par_5b		: std_logic_vector(4 downto 0) := (others => '0');
	signal	sig_par_in_r1	: std_logic_vector(3 downto 0) := (others => '0');
	signal	sig_par_in_r2	: std_logic_vector(3 downto 0) := (others => '0');
	signal	ser_data_cnt	: integer range 0 to 15;
	signal	syn_cnt			: integer range 0 to 129;
	type		serialize_state is(IDLE, SEND_SYN_HEAD, SEND_DATA);
	signal	serialize_fsm	: serialize_state := IDLE;
	
	signal	send_clk_cnt	: integer range 0 to 249;
	signal   send_valid		: std_logic;
	signal	rd_valid			: std_logic;

BEGIN
	
	process(clk, nRST)
	begin
		if(clk'event and clk = '1') then			
			if(nRST = '0') then
				sig_par_in_r1	<= (others => '0');
				sig_par_in_r2	<= (others => '0');
			else
				sig_par_in_r1	<= sig_par_in;
				sig_par_in_r2	<= sig_par_in_r1;
			end if;
		end if;
	end process;
	
	process(clk, nRST)
	begin
		if(clk'event and clk = '1') then			
			if(nRST = '0') then
				send_clk_cnt	<= 0;
				send_valid		<= '0';
			else
				if(send_clk_cnt < 249) then
					send_clk_cnt	<= send_clk_cnt + 1;
				else
					send_clk_cnt	<= 0;
				end if;
			
				if(send_clk_cnt= 5 or send_clk_cnt = 55 or send_clk_cnt = 105 or send_clk_cnt = 155 or send_clk_cnt = 205)	then
					send_valid	<= '1';
				else 
					send_valid	<= '0';
				end if;
			end if;
		end if;
	end process;	

	process(clk, nRST)
	begin
		if(clk'event and clk = '1') then
			if(nRST = '0') then
				sig_par_5b		<= "11110";
				serialize_fsm	<= IDLE;
				ser_data_cnt	<= 9;
				syn_cnt			<= 0;
				rd_valid			<= '0';
			else
				if(rd_valid = '1') then
					case sig_par_in_r2 is
						when x"0" =>	sig_par_5b	<= DATA_5B_0;
						when x"1" =>	sig_par_5b	<= DATA_5B_1;
						when x"2" =>	sig_par_5b	<= DATA_5B_2;
						when x"3" =>	sig_par_5b	<= DATA_5B_3;
						when x"4" =>	sig_par_5b	<= DATA_5B_4;
						when x"5" =>	sig_par_5b	<= DATA_5B_5;
						when x"6" =>	sig_par_5b	<= DATA_5B_6;
						when x"7" =>	sig_par_5b	<= DATA_5B_7;
						when x"8" =>	sig_par_5b	<= DATA_5B_8;
						when x"9" =>	sig_par_5b	<= DATA_5B_9;
						when x"a" =>	sig_par_5b	<= DATA_5B_10;
						when x"b" =>	sig_par_5b	<= DATA_5B_11;
						when x"c" =>	sig_par_5b	<= DATA_5B_12;
						when x"d" =>	sig_par_5b	<= DATA_5B_13;
						when x"e" =>	sig_par_5b	<= DATA_5B_14;
						when x"f" =>	sig_par_5b	<= DATA_5B_15;
						when others => sig_par_5b	<= "11110";
					end case;			
				end if;
			
				case serialize_fsm is
					when IDLE => 						
						ser_data_cnt	<= 9;
						syn_cnt			<= 0;
						if(sensor_4b5b_en = '1') then
							serialize_fsm	<= SEND_SYN_HEAD;
						else
							serialize_fsm	<= IDLE;
						end if;
						
					when SEND_SYN_HEAD =>
					
						if(sensor_4b5b_en = '0') then
							serialize_fsm	<= IDLE;
							syn_cnt			<= 0;
							ser_data_cnt	<= 9;
						else											
							if(send_valid = '1') then
								sig_ser_out		<= SYN_HEAD(ser_data_cnt);
								if(ser_data_cnt > 0) then
									ser_data_cnt	<= ser_data_cnt - 1;
									serialize_fsm	<= SEND_SYN_HEAD;
								else
									ser_data_cnt	<= 4;
									serialize_fsm	<= SEND_DATA;
									rd_valid		<= '1';
								end if;
							else
								rd_valid		<= '0';
							end if;							
						end if;
					
					when SEND_DATA =>					
						if(sensor_4b5b_en = '0') then
							serialize_fsm	<= IDLE;
							syn_cnt			<= 0;
							ser_data_cnt	<= 9;
						else						
							if(syn_cnt = SYN_NUM) then
								serialize_fsm	<= IDLE;
							else	
								serialize_fsm	<= SEND_DATA;
								
								if(send_valid = '1') then
									sig_ser_out		<= sig_par_5b(ser_data_cnt);									
									if(ser_data_cnt = 0) then
										ser_data_cnt	<= 4;
										syn_cnt			<= syn_cnt + 1;
										rd_valid			<= '1';
									else
										ser_data_cnt	<= ser_data_cnt - 1;
										syn_cnt			<= syn_cnt;
										rd_valid			<= '0';
									end if;
								else
									rd_valid		<= '0';
								end if;
							end if;			
						end if;
					when others =>
				end case;
			end if;
		end if;
	end process;

END BEHV;