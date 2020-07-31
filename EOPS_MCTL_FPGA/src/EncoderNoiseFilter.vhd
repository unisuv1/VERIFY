LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity EncoderNoiseFilter is
	port 
	(
		Encoder_A					: in std_logic;
		Encoder_B					: in std_logic;
		
		filter_delay_time			: in std_logic_vector(15 downto 0);
		filter_delay_encoder_en		: in std_logic;
		
		nRESET                  	: in std_logic;
		clk_sys						: in std_logic;

		Encoder_A_Filted 			: out STD_LOGIC;
		Encoder_B_Filted 			: out STD_LOGIC;

		Locked						: out std_logic
	);
end entity;

architecture rtl of EncoderNoiseFilter is

signal NoiseFltCounter_A_clk_en	: STD_LOGIC ;
signal NoiseFltCounter_A_aclr 	: STD_LOGIC ;
signal NoiseFltCounter_A_q 		: STD_LOGIC_VECTOR (15 DOWNTO 0) ;

signal NoiseFltCounter_B_clk_en : STD_LOGIC ;
signal NoiseFltCounter_B_aclr 	: STD_LOGIC ;
signal NoiseFltCounter_B_q 		: STD_LOGIC_VECTOR (15 DOWNTO 0) ;

component NoiseFltCounter IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

signal A_Cache1 : std_logic;
signal B_Cache1 : std_logic;

signal A : STD_LOGIC;
signal B : STD_LOGIC;

signal A_Last : STD_LOGIC;
signal B_Last : STD_LOGIC;

signal A_Filter_MS : std_logic_vector(3 downto 0) := "0000";
signal B_Filter_MS : std_logic_vector(3 downto 0) := "0000";

constant Delay_Time_Waiting_Cache_OK : STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000001000" ;

begin
	NoiseFltCounter_A_inst : NoiseFltCounter PORT MAP (
		aclr		=> NoiseFltCounter_A_aclr,
		clk_en		=> NoiseFltCounter_A_clk_en,
		clock		=> clk_sys,
		q			=> NoiseFltCounter_A_q
	);

	NoiseFltCounter_B_inst : NoiseFltCounter PORT MAP (
		aclr		=> NoiseFltCounter_B_aclr,
		clk_en		=> NoiseFltCounter_B_clk_en,
		clock		=> clk_sys,
		q			=> NoiseFltCounter_B_q
	);

	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			A_Cache1 <= '0';
			B_Cache1 <= '0';
			A <= '0';
			B <= '0';
			A_Last <= '0';
			B_Last <= '0';
		elsif (rising_edge(clk_sys)) then
			A_Cache1 <= Encoder_A;						  
			B_Cache1 <= Encoder_B;						  
			A <= A_Cache1;						  
			B <= B_Cache1;						  
			A_Last <= A;
			B_Last <= B;
		end if;
	end process;

	process (clk_sys, nRESET)
	begin
		if (rising_edge(clk_sys)) then

			if(nRESET = '0') then
				NoiseFltCounter_A_aclr <= '1';
				NoiseFltCounter_A_clk_en <= '0';
				A_Filter_MS <= "0000";
				Encoder_A_Filted <= '0';
			else
				if(filter_delay_encoder_en = '1') then
					case A_Filter_MS is
						when "0000" => 
							A_Filter_MS <= "0001";
							NoiseFltCounter_A_aclr <= '0';
							NoiseFltCounter_A_clk_en <= '1';
							
						when "0001" =>
							if(NoiseFltCounter_A_q >= Delay_Time_Waiting_Cache_OK) then  
								A_Filter_MS <= "0010";
								NoiseFltCounter_A_aclr <= '1';
								NoiseFltCounter_A_clk_en <= '0';
							else
								A_Filter_MS <= "0001";
								NoiseFltCounter_A_aclr <= '0';
								NoiseFltCounter_A_clk_en <= '1';
							end if;
							
						when "0010" => 
							if(A /= A_Last) then 
								A_Filter_MS <= "0010";
								NoiseFltCounter_A_aclr <= '1';
								NoiseFltCounter_A_clk_en <= '0';
							else
								if(NoiseFltCounter_A_q >= filter_delay_time) then 
									A_Filter_MS <= "0011";
									NoiseFltCounter_A_aclr <= '1';
									NoiseFltCounter_A_clk_en <= '0';
									Encoder_A_Filted <= A;
								else
									A_Filter_MS <= "0010";
									NoiseFltCounter_A_aclr <= '0';
									NoiseFltCounter_A_clk_en <= '1';
								end if;
							end if;
						when "0011" => 
							if(A /= A_Last) then
								A_Filter_MS <= "0100";
								NoiseFltCounter_A_aclr <= '1';
								NoiseFltCounter_A_clk_en <= '0';
							else
								A_Filter_MS <= "0011";
								NoiseFltCounter_A_aclr <= '0';
								NoiseFltCounter_A_clk_en <= '1';
								Encoder_A_Filted <= A;
							end if;
						when "0100" => 
							if(A /= A_Last) then 
								A_Filter_MS <= "0100";
								NoiseFltCounter_A_aclr <= '1';
								NoiseFltCounter_A_clk_en <= '0';
							else
								if(NoiseFltCounter_A_q >= filter_delay_time) then 
									A_Filter_MS <= "0011";
									NoiseFltCounter_A_aclr <= '1';
									NoiseFltCounter_A_clk_en <= '0';
									Encoder_A_Filted <= A;
								else
									A_Filter_MS <= "0100";
									NoiseFltCounter_A_aclr <= '0';
									NoiseFltCounter_A_clk_en <= '1';
								end if;
							end if;
						when others =>
					end case;
					
				else 		
				
					Encoder_A_Filted <= A;	
				end if;
					
			end if;
		end if;
	end process;

	process (clk_sys, nRESET)
	begin
		if (rising_edge(clk_sys)) then

			if(nRESET = '0') then
				NoiseFltCounter_B_aclr <= '1';
				NoiseFltCounter_B_clk_en <= '0';
				B_Filter_MS <= "0000";
				Encoder_B_Filted <= '0';
			else
				if(filter_delay_encoder_en = '1') then
					case B_Filter_MS is
						when "0000" => 
							B_Filter_MS <= "0001";
							NoiseFltCounter_B_aclr <= '0';
							NoiseFltCounter_B_clk_en <= '1';
							
						when "0001" =>
							if(NoiseFltCounter_B_q >= Delay_Time_Waiting_Cache_OK) then  
								B_Filter_MS <= "0010";
								NoiseFltCounter_B_aclr <= '1';
								NoiseFltCounter_B_clk_en <= '0';
							else
								B_Filter_MS <= "0001";
								NoiseFltCounter_B_aclr <= '0';
								NoiseFltCounter_B_clk_en <= '1';
							end if;
							
						when "0010" => 
							if(B /= B_Last) then 
								B_Filter_MS <= "0010";
								NoiseFltCounter_B_aclr <= '1';
								NoiseFltCounter_B_clk_en <= '0';
							else
								if(NoiseFltCounter_B_q >= filter_delay_time) then 
									B_Filter_MS <= "0011";
									NoiseFltCounter_B_aclr <= '1';
									NoiseFltCounter_B_clk_en <= '0';
									Encoder_B_Filted <= B;
								else
									B_Filter_MS <= "0010";
									NoiseFltCounter_B_aclr <= '0';
									NoiseFltCounter_B_clk_en <= '1';
								end if;
							end if;
						when "0011" => 
							if(B /= B_Last) then
								B_Filter_MS <= "0100";
								NoiseFltCounter_B_aclr <= '1';
								NoiseFltCounter_B_clk_en <= '0';
							else
								B_Filter_MS <= "0011";
								NoiseFltCounter_B_aclr <= '0';
								NoiseFltCounter_B_clk_en <= '1';
								Encoder_B_Filted <= B;
							end if;
						when "0100" => 
							if(B /= B_Last) then 
								B_Filter_MS <= "0100";
								NoiseFltCounter_B_aclr <= '1';
								NoiseFltCounter_B_clk_en <= '0';
							else
								if(NoiseFltCounter_B_q >= filter_delay_time) then 
									B_Filter_MS <= "0011";
									NoiseFltCounter_B_aclr <= '1';
									NoiseFltCounter_B_clk_en <= '0';
									Encoder_B_Filted <= B;
								else
									B_Filter_MS <= "0100";
									NoiseFltCounter_B_aclr <= '0';
									NoiseFltCounter_B_clk_en <= '1';
								end if;
							end if;
					  when others =>
					end case;					
				else				
					Encoder_B_Filted <= B;
				end if;
					
			end if;
		end if;
	end process;

	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			Locked <= '0';
		elsif (rising_edge(clk_sys)) then
			if(filter_delay_encoder_en = '1') then
				if( (A_Filter_MS = "0011" or A_Filter_MS = "0100") and
					(B_Filter_MS = "0011" or B_Filter_MS = "0100")) then
					Locked	<= '1';
				else
					Locked	<= '0';
				end if;
			else
				Locked	<= '1';
			end if;
		end if;
	end process;

end rtl;