LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity	vry_vhdl is
	port (
		rstn		:in		std_logic;
		sclk		:in		std_logic;
		
		c			:out	std_logic
	);	
end entity;
architecture behavior of vry_vhdl is

signal		a		:std_logic	:='0';
signal		b		:std_logic;
	
begin
	
	c <= b;
	
	process(sclk,rstn)
	begin
		if(rstn = '0') then
			b <= '0';
		else
			if(rising_edge(sclk)) then
				b <= a;
			end if;
		end if;	
	end process;


	
	
	
	
end behavior;