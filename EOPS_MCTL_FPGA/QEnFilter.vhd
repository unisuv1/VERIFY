----------------------------------------------------------------------------------
--     ____  _           _
--    |  _ \(_)_ __  ___| |_ __ _ _ ___
--    | |_) | | '_ \/ __| __/ _` | '___|
--    |  _ <| | |_) \__ \ || (_| | |
--    |_| \_\_| .__/|___/\__\__,_|_|
--            |_|
-- Company: 	北京瑞普星科技有限公司
-- Engineer: 	刘伟
--
-- Create Date:
-- Design Name:
-- Module Name:
-- Project Name: S系统（转接板）
-- Target Devices: ALTERA Cyclone IV EP4CGX30CF23C7N
-- Tool versions: QUARTUS II 13.1
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library altera;
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use altera.altera_syn_attributes.all;

entity QEnFilter is
port(
	Clk 		: in  std_logic; 	
	SamEn		: in  std_logic; 	
	QEn		: in  std_logic; 	
	QEn_Filted	: out  std_logic
	);
end QEnFilter;

architecture rtl of QEnFilter is

signal QE : std_logic_vector(3 downto 0);

signal J, K : std_logic;

signal DivCnt : std_logic_vector(5 downto 0);
signal DivCnt5_1 : std_logic;
-- signal SamEn : std_logic;
signal QEn_Filted_dup : std_logic;


begin
-- process(Clk)
-- begin
	-- if (rising_edge(Clk)) then
		-- DivCnt <= DivCnt + 1;
		-- DivCnt5_1 <= DivCnt(5);
		-- SamEn <= DivCnt(5) and (not DivCnt5_1);				-- sample rate = Clk/(2^(n+1))
	-- end if;
-- end process;
								

process(Clk)
begin
	if (rising_edge(Clk)) then
		if(SamEn='1')then
			QE(0) <= QEn;
			QE(3 downto 1) <= QE(2 downto 0);
		end if;
	end if;
end process;

J <= QE(3) and QE(2) and QE(1);
K <= (not QE(3)) and (not QE(2)) and (not QE(1));

-- JK filp flop --
QEn_Filted <= QEn_Filted_dup;
process(Clk)
begin
	if (rising_edge(Clk)) then
		if(SamEn='1')then
			QEn_Filted_dup <= (J and (not QEn_Filted_dup)) or ((not K) and QEn_Filted_dup);
		end if;
	end if;
end process;

end rtl;



