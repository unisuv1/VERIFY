LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY VIRTUAL_ENCODER IS
	PORT
	(
		nRST				: in std_logic;
		clk					: in std_logic;

		gen_en_encoder		: in std_logic;		---虚拟编码使能信号
		encoder_1of4		: in std_logic_vector(15 downto 0);		---虚拟编码1/4周期（时钟数）
			
		gen_encoder_A		: out std_logic;	---虚拟编码A相
		gen_encoder_B		: out std_logic		---虚拟编码B相
	);
END ENTITY;
	
ARCHITECTURE BEHV OF VIRTUAL_ENCODER	IS

signal gen_encoder_cnt		: std_logic_vector(15 downto 0);			
	
BEGIN
	process(clk, nRST)
	begin
		if(clk'event and clk = '1') then
			if(nRST = '0') then
				gen_encoder_A 		<= '0';
				gen_encoder_B 		<= '0';
				gen_encoder_cnt	<= (others => '0');
			else
				if(gen_encoder_cnt < encoder_1of4) then
					gen_encoder_cnt	<= gen_encoder_cnt + 1;
					gen_encoder_B		<= '1';
					gen_encoder_A		<= '0';
				elsif(gen_encoder_cnt >= encoder_1of4 and gen_encoder_cnt < encoder_1of4(14 downto 0) & '0') then
					gen_encoder_cnt	<= gen_encoder_cnt + 1;
					gen_encoder_B		<= '1';
					gen_encoder_A		<= '1';
				elsif(gen_encoder_cnt >= encoder_1of4(14 downto 0) & '0' and gen_encoder_cnt < encoder_1of4(14 downto 0) & '0' + encoder_1of4) then
					gen_encoder_cnt	<= gen_encoder_cnt + 1;
					gen_encoder_B		<= '0';
					gen_encoder_A		<= '1';
				elsif(gen_encoder_cnt >= encoder_1of4(14 downto 0) & '0' + encoder_1of4 and gen_encoder_cnt < encoder_1of4(13 downto 0) & '0' & '0') then
					gen_encoder_cnt	<= gen_encoder_cnt + 1;
					gen_encoder_B		<= '0';
					gen_encoder_A		<= '0';
				else
					gen_encoder_cnt	<= (others => '0');
					gen_encoder_B		<= '1';
					gen_encoder_A		<= '0';
				end if;
			end if;
		end if;
	end process;
	
END BEHV;