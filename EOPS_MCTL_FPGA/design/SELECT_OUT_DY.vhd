LIBRARY IEEE;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

entity SELECT_OUT_DY IS
	PORT(
		nRST					:in		std_logic;
		clk_100					:in		std_logic;
		
		printdye_en				:in		std_logic;
		sensor_4b5b_en			:in		std_logic; 		 
		
		sensor_in1				:in		std_logic;
		sensor_in2				:in		std_logic;
		sensor_in3				:in		std_logic;
		
		sensor_en1				:in		std_logic;
		sensor_en2				:in		std_logic;
		sensor_en3				:in		std_logic; 
  
		sizefilter_sw   		:in		std_logic;
		default_out				:in		std_logic;				
		valid_edge1				:in 	std_logic;					---输出电眼的上升沿标志
		valid_edge_f1			:in 	std_logic;					---输出电眼的下降沿标志
		valid_edge2				:in 	std_logic;					---输出电眼的上升沿标志            
		valid_edge_f2			:in 	std_logic;					---输出电眼的下降沿标志            
		valid_edge3				:in 	std_logic;					---输出电眼的上升沿标志            
		valid_edge_f3			:in 	std_logic;					---输出电眼的下降沿标志 
		
		sensor_group1_sel		:in		std_logic_vector(3 downto 0);
		sensor_group2_sel		:in		std_logic_vector(3 downto 0);
		sensor_group3_sel		:in		std_logic_vector(3 downto 0);		
		
		Lorigin					:out std_logic_vector(23 downto 0)          			
	);
END entity;
	
	
	
architecture BEHV of SELECT_OUT_DY IS


	signal size_origin1			: std_logic;
	signal size_origin2			: std_logic;
	signal size_origin3			: std_logic;
	
	signal origin,f_origin		: std_logic_vector(23 downto 0);

	signal Lorigin_par			: std_logic_vector(3 downto 0);
	signal Lorigin_ser			: std_logic;
	
	
	component SENSOR_SERIALIZE
		PORT
		(
			clk				: in std_logic;
			nRST				: in std_logic;
			sig_par_in		: in std_logic_vector(3 downto 0);
			sensor_4b5b_en	: in std_logic;
			sig_ser_out		: out std_logic		
		);
	end component;	

	
	
begin 
	
	---电眼信号选择（123组、是否印染模式、是否4b/5b、是否尺寸滤波）
	process(clk_100,nRST)
	begin
		if(nRST = '0') then

			size_origin1	<= '0';
			size_origin2	<= '0';
			size_origin3	<= '0';
			
		elsif(clk_100'event and clk_100='1') then
			
			if(valid_edge1 = '1') then	---尺寸滤波模块输出的信号（valid_edge1）控制产生尺寸滤波电眼信号（size_origin1）
				size_origin1	<= not default_out;
			elsif(valid_edge_f1 = '1' or sensor_en1 = '0') then
				size_origin1	<= default_out;
			else
				size_origin1	<= size_origin1;
			end if;
			
			if(valid_edge2 = '1') then
				size_origin2	<= not default_out;
			elsif(valid_edge_f2 = '1' or sensor_en2 = '0') then
				size_origin2	<= default_out;
			else
				size_origin2	<= size_origin2;
			end if;
			
			size_origin3	<= default_out;
--			if(valid_edge3 = '1') then
--				size_origin3	<= not default_out;
--			elsif(valid_edge_f3 = '1' or sensor_en3 = '0') then
--				size_origin3	<= default_out;
--			else
--				size_origin3	<= size_origin3;
--			end if;	
		
			
			if(sensor_group1_sel = "0000") then
				f_origin(7 downto 0)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(7 downto 0)		<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			elsif(sensor_group1_sel = "0001") then
				f_origin(7 downto 0)	<= size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2;
				origin(7 downto 0)		<= sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2;		
			elsif(sensor_group1_sel = "0010") then			
				f_origin(7 downto 0)	<= size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3;
				origin(7 downto 0)		<= sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3;
			else
				f_origin(7 downto 0)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(7 downto 0)		<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			end if;

			if(sensor_group2_sel = "0000") then
				f_origin(15 downto 8)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(15 downto 8)		<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			elsif(sensor_group2_sel = "0001") then
				f_origin(15 downto 8)	<= size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2;
				origin(15 downto 8)		<= sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2;		
			elsif(sensor_group2_sel = "0010") then			
				f_origin(15 downto 8)	<= size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3;
				origin(15 downto 8)		<= sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3;
			else
				f_origin(15 downto 8)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(15 downto 8)		<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			end if;

			if(sensor_group3_sel = "0000") then
				f_origin(23 downto 16)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(23 downto 16)	<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			elsif(sensor_group3_sel = "0001") then
				f_origin(23 downto 16)	<= size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2 & size_origin2;			
				origin(23 downto 16)	<= sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2 & sensor_in2;
			elsif(sensor_group3_sel = "0010") then			
				f_origin(23 downto 16)	<= size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3 & size_origin3;
				origin(23 downto 16)	<= sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3 & sensor_in3;
			else
				f_origin(23 downto 16)	<= size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1 & size_origin1;
				origin(23 downto 16)	<= sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1 & sensor_in1;
			end if;
			
			if(printdye_en = '0') then
				if(sensor_4b5b_en = '0') then
					if(sizefilter_sw = '1') then
						Lorigin	<= origin;	
					else
						Lorigin 	<= f_origin;
					end if;
				else
					Lorigin	<= Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser &	
									Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser &
									Lorigin_ser & Lorigin_ser & Lorigin_ser & Lorigin_ser;
				end if;
			else
				Lorigin <= sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 &
							  sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 & sensor_en1 &
							  sensor_en1 & sensor_en1;
			end if;
			
			if(sizefilter_sw = '1') then
				Lorigin_par	<= '0' & sensor_in3   & sensor_in2   & sensor_in1;	
			else
				Lorigin_par	<= '0' & size_origin3 & size_origin2 & size_origin1;
			end if;
			
		end if;
	end process;	
	
	
		---电眼信号4b/5b编码	为了把三个通道的电眼编码为一组24路同时输出
	Lorigin_serialize: SENSOR_SERIALIZE
		PORT MAP
		(
			clk				=> clk_100,
			nRST			=> nRST,
			sig_par_in		=> Lorigin_par,
			sensor_4b5b_en	=> sensor_4b5b_en,
			sig_ser_out		=> Lorigin_ser
		);
	
	
END BEHV;