LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MUX_ENCODER IS
	PORT
	(
		clk					: in std_logic;
		nRST				: in std_logic;
		
		Encd_A				: in std_logic;					
		Encd_B				: in std_logic;
			
		X_1A				: out std_logic;
		X_1B				: out std_logic;		
		X_2A				: out std_logic;
		X_2B				: out std_logic;
		X_3A				: out std_logic;
		X_3B				: out std_logic;
		X_4A				: out std_logic;
		X_4B				: out std_logic;
		X_5A				: out std_logic;
		X_5B				: out std_logic;
		X_6A				: out std_logic;
		X_6B				: out std_logic;
		X_7A				: out std_logic;
		X_7B				: out std_logic;
		X_8A				: out std_logic;
		X_8B				: out std_logic;
		X_9A				: out std_logic;
		X_9B				: out std_logic;
		X_10A				: out std_logic;
		X_10B				: out std_logic;
		X_11A				: out std_logic;
		X_11B				: out std_logic;
		X_12A				: out std_logic;
		X_12B				: out std_logic;
		X_13A				: out std_logic;
		X_13B				: out std_logic;
		X_14A				: out std_logic;
		X_14B				: out std_logic;
		X_15A				: out std_logic;
		X_15B				: out std_logic;
		X_16A				: out std_logic;
		X_16B				: out std_logic;
		X_17A				: out std_logic;
		X_17B				: out std_logic;	
		X_18A				: out std_logic;
		X_18B				: out std_logic;	
		X_19A				: out std_logic;
		X_19B				: out std_logic;	
		X_20A				: out std_logic;
		X_20B				: out std_logic;	
		X_21A				: out std_logic;
		X_21B				: out std_logic;
		X_22A				: out std_logic;
		X_22B				: out std_logic;	
		X_23A				: out std_logic;
		X_23B				: out std_logic;
		X_24A				: out std_logic;
		X_24B				: out std_logic
	);
END ENTITY;

ARCHITECTURE BEHV OF MUX_ENCODER IS


BEGIN

	process(clk,nRST)
	begin
		if(nRST = '0') then
			X_1A <= 'Z';
			X_1B <= 'Z';
			X_2A <= 'Z';
			X_2B <= 'Z';
			X_3A <= 'Z';
			X_3B <= 'Z';
			X_4A <= 'Z';
			X_4B <= 'Z';
			X_5A <= 'Z';
			X_5B <= 'Z';
			X_6A <= 'Z';
			X_6B <= 'Z';
			X_7A <= 'Z';
			X_7B <= 'Z';
			X_8A <= 'Z';
			X_8B <= 'Z';
			X_9A <= 'Z';
			X_9B <= 'Z';
			X_10A <= 'Z';
			X_10B <= 'Z';
			X_11A <= 'Z';
			X_11B <= 'Z';
			X_12A <= 'Z';
			X_12B <= 'Z';
			X_13A <= 'Z';
			X_13B <= 'Z';
			X_14A <= 'Z';
			X_14B <= 'Z';
			X_15A <= 'Z';
			X_15B <= 'Z';
			X_16A <= 'Z';
			X_16B <= 'Z';
			X_17A <= 'Z';
			X_17B <= 'Z';
			X_18A <= 'Z';
			X_18B <= 'Z';
			X_19A <= 'Z';
			X_19B <= 'Z';
			X_20A <= 'Z';
			X_20B <= 'Z';
			X_21A <= 'Z';
			X_21B <= 'Z';
			X_22A <= 'Z';
			X_22B <= 'Z';
			X_23A <= 'Z';
			X_23B <= 'Z';
			X_24A <= 'Z';
			X_24B <= 'Z';
						
		elsif(clk'event and clk='1') then
		
			X_1A <= Encd_A;
			X_1B <= Encd_B;	
			
			X_2A <= Encd_A;
			X_2B <= Encd_B;	
			
			X_3A <= Encd_A;
			X_3B <= Encd_B;
			
			X_4A <= Encd_A;
			X_4B <= Encd_B;	
			
			X_5A <= Encd_A;
			X_5B <= Encd_B;	
			
			X_6A <= Encd_A;
			X_6B <= Encd_B;	
			
			X_7A <= Encd_A;
			X_7B <= Encd_B;	
			
			X_8A <= Encd_A;
			X_8B <= Encd_B;	
			
			X_9A <= Encd_A;
			X_9B <= Encd_B;	
			
			X_10A <= Encd_A;
			X_10B <= Encd_B;	
			
			X_11A <= Encd_A;
			X_11B <= Encd_B;	
			
			X_12A <= Encd_A;
			X_12B <= Encd_B;	
			
			X_13A <= Encd_A;
			X_13B <= Encd_B;
			
			X_14A <= Encd_A;
			X_14B <= Encd_B;
			
			X_15A <= Encd_A;
			X_15B <= Encd_B;
			
			X_16A <= Encd_A;
			X_16B <= Encd_B;
			
			X_17A <= Encd_A;
			X_17B <= Encd_B;
			
			X_18A <= Encd_A;
			X_18B <= Encd_B;
			
			X_19A <= Encd_A;
			X_19B <= Encd_B;
			
			X_20A <= Encd_A;
			X_20B <= Encd_B;

			X_21A <= Encd_A;
			X_21B <= Encd_B;

			X_22A <= Encd_A;
			X_22B <= Encd_B;					
			
			X_23A <= Encd_A;
			X_23B <= Encd_B;
			
			X_24A <= Encd_A;
			X_24B <= Encd_B;

		end if;	
	end process;	
END BEHV;