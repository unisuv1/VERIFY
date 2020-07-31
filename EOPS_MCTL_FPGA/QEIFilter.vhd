----------------------------------------------------------------------------------
--     ____  _           _
--    |  _ \(_)_ __  ___| |_ __ _ _ ___
--    | |_) | | '_ \/ __| __/ _` | '___|
--    |  _ <| | |_) \__ \ || (_| | |
--    |_| \_\_| .__/|___/\__\__,_|_|
--            |_|
-- Company: 	���������ǿƼ����޹�˾
-- Engineer: 	��ΰ
--
-- Create Date:
-- Design Name:
-- Module Name:
-- Project Name: Sϵͳ��ת�Ӱ壩
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

entity QEIFilter is
port(
	Clk 		: in  std_logic; 	--100MHz
	QEA		: in  std_logic; 	
	QEB		: in  std_logic; 	
	QEA_Filted	: out  std_logic;
	QEB_Filted	: out  std_logic
	);
end QEIFilter;

architecture rtl of QEIFilter is

component QEnFilter is
port(
	Clk 		: in  std_logic; 	
	SamEn		: in  std_logic; 	
	QEn		: in  std_logic; 	
	QEn_Filted	: out  std_logic
	);
end component QEnFilter;

signal DivCnt : std_logic_vector(5 downto 0);
signal DivCnt5_1 : std_logic;
signal DivCnt3_1 : std_logic;
signal SamEn : std_logic;

begin
process(Clk)
begin
	if (rising_edge(Clk)) then
		DivCnt <= DivCnt + 1;
		DivCnt3_1 <= DivCnt(3);
		DivCnt5_1 <= DivCnt(5);
		SamEn <= DivCnt(3) and (not DivCnt3_1);				-- sample rate = Clk/(2^(n+1)) = 100MHz/128  减少到32，避免滤除1um光栅时编码器信号
	end if;
end process;
								
QEAFilter : QEnFilter 
port map(
	Clk 		=> Clk,	
	SamEn		=> SamEn,		
	QEn		=> QEA,		
	QEn_Filted	=> QEA_Filted							
	);

QEBFilter : QEnFilter 
port map(
	Clk 		=> Clk,	
	SamEn		=> SamEn,		
	QEn		=> QEB,		
	QEn_Filted	=> QEB_Filted							
	);


end rtl;



