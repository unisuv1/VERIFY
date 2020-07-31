LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity EncoderSmooth is
	port 
	(
		Encoder_A					: in     std_logic;						  ---
		Encoder_B					: in     std_logic;						  ---

		nRESET                  : in     std_logic;						  --- nreset by power on
		enable			: in     std_logic;						  ---
		clk_sys					: in std_logic;   --- for A+, it is 133Mhz

		InFireRegion		: in      std_logic;	
		Is540				: in      std_logic;	
		MinJumpTime			: in STD_LOGIC_VECTOR (13 DOWNTO 0);

		Encoder_A_Smooth_720 : out STD_LOGIC;
		Encoder_B_Smooth_720 : out STD_LOGIC;

		Locked_720			: out     std_logic;
		Smoothed_720		: out     std_logic;

		Encoder_A_Smooth_540 : out STD_LOGIC;
		Encoder_B_Smooth_540 : out STD_LOGIC;

		Locked_540			: out     std_logic;
		Smoothed_540		: out     std_logic

--- 		Encoder_A_Smooth_1440 : out STD_LOGIC;
---			Encoder_B_Smooth_1440 : out STD_LOGIC;

---			Locked_1440			: out     std_logic;
---			Smoothed_1440		: out     std_logic
	);
end entity;

architecture rtl of EncoderSmooth is

constant measure_sample_num : STD_LOGIC_VECTOR (4 DOWNTO 0) := "01000";
constant smooth_sample_num_540 : STD_LOGIC_VECTOR (4 DOWNTO 0) := "00110";

signal numer	: STD_LOGIC_VECTOR (19 DOWNTO 0);
signal quotient : STD_LOGIC_VECTOR (17 DOWNTO 0);
type divide3_state_t is
(
	d3_idle,
	d3_init,
	d3_loop,
	d3_shift,
	d3_out
);
signal d3_ms : divide3_state_t := d3_idle;
signal out_divide3 : STD_LOGIC;
signal d3_count : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal enable_divide3 : STD_LOGIC;
signal divide3_src : STD_LOGIC_VECTOR (1 DOWNTO 0);

Type smooth_state_t is
(
	sst_none,
	sst_measure_time_wait_first_jump,
	sst_measure_time_jump,
	sst_measure_time_start_next,
	sst_measure_time_wait_jump,
	sst_check_smooth_start,
	sst_check_smooth_wait_jump,
	sst_check_smooth_jump,
	sst_check_smooth_judge_start,
	sst_check_smooth_judge,
	sst_check_smooth_judge_compare
);
signal smooth_ms : smooth_state_t := sst_none;
signal smooth_into : STD_LOGIC := '0';

component SmoothCounter IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cout		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (19 DOWNTO 0)
	);
END component;
component SmoothOutCounter IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (19 DOWNTO 0)
	);
END component;
signal SmoothCounter_aclr : STD_LOGIC ;
signal SmoothCounter_clk_en : STD_LOGIC ;
signal SmoothCounter_cout : STD_LOGIC ;
signal SmoothCounter_cout_forever : STD_LOGIC ;
signal SmoothCounter_q : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal OutCounter_aclr : STD_LOGIC ;
signal OutCounter_clk_en : STD_LOGIC ;
signal OutCounter_q : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal OutCounter_540_aclr : STD_LOGIC ;
signal OutCounter_540_clk_en : STD_LOGIC ;
signal OutCounter_540_q : STD_LOGIC_VECTOR (19 DOWNTO 0) ;

signal jump_count : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal cycle_count : STD_LOGIC_VECTOR (4 DOWNTO 0);

signal Encoder_A_L	: std_logic;						  ---
signal Encoder_B_L	: std_logic;						  ---
signal dir : std_logic;
signal start_dir : std_logic;

signal last_cycle_time : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal cycle_time : STD_LOGIC_VECTOR (19 DOWNTO 0) ;
signal cycle_time_offset : STD_LOGIC_VECTOR (19 DOWNTO 0) ;

type out_720_state_t is
(
	o720st_none,
	o720st_raw,
	o720st_raw_jump,
	o720st_into_smooth,
	o720st_into_smooth_1,
	o720st_into_smooth_2,
	o720st_smooth,
	o720st_smooth_jump,
	o720st_smooth_step,
	o720st_smooth_into_next,
	o720st_smooth_wait_raw_completed,
	o720st_smooth_wait_raw_completed_out_of_smooth,
	o720st_out_of_smooth,
	o720st_out_of_smooth_wait
);
signal out_720_ms : out_720_state_t := o720st_none;
signal out_A_Smooth_720 : STD_LOGIC;
signal out_B_Smooth_720 : STD_LOGIC;
signal out_Locked_720	: std_logic;
signal out_Smoothed_720		: std_logic;

signal out_count : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal out_cycle_count : STD_LOGIC_VECTOR (4 DOWNTO 0);

signal dir_out_720 : std_logic;
signal out_cycle_time : STD_LOGIC_VECTOR (19 DOWNTO 0);
signal out_cycle_step : STD_LOGIC_VECTOR (17 DOWNTO 0);

signal dir_720 : std_logic;
signal jump_720 : std_logic;
signal jump_720_L : std_logic;


type out_540_state_t is
(
	o540st_none,
	o540st_raw,
	o540st_raw_jump_check,
	o540st_raw_jump,
	o540st_into_smooth_wait_divide3,
	o540st_into_smooth,
	o540st_into_smooth_1,
	o540st_into_smooth_2,
	o540st_smooth,
	o540st_smooth_jump,
	o540st_smooth_step,
	o540st_smooth_into_next_wait_divide3,
	o540st_smooth_into_next,
	o540st_smooth_wait_raw_completed,
	o540st_smooth_wait_raw_completed_1,
	o540st_smooth_wait_raw_completed_out_of_smooth,
	o540st_out_of_smooth_set_out_count_540,
	o540st_out_of_smooth,
	o540st_out_of_smooth_wait
);
signal out_540_ms : out_540_state_t := o540st_none;
signal out_A_Smooth_540 : STD_LOGIC;
signal out_B_Smooth_540 : STD_LOGIC;
signal out_Locked_540	: std_logic;
signal out_Smoothed_540		: std_logic;

signal out_count_540 : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal out_count_540_before_smooth : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal out_count_540_adjust_point : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal out_cycle_count_540 : STD_LOGIC_VECTOR (4 DOWNTO 0);

signal dir_out_540 : std_logic;
signal out_cycle_time_540 : STD_LOGIC_VECTOR (19 DOWNTO 0);
signal out_cycle_step_540 : STD_LOGIC_VECTOR (17 DOWNTO 0);

signal dir_540 : std_logic;
signal jump_540 : std_logic;
signal jump_540_L : std_logic;

signal start_dir_when_break : STD_LOGIC;
signal jump_count_after_break : STD_LOGIC_VECTOR (4 DOWNTO 0);

--- constant min_jump_interval : STD_LOGIC_VECTOR (19 DOWNTO 0) := X"0010A"; --- about 2us
constant min_jump_interval : STD_LOGIC_VECTOR (19 DOWNTO 0) := X"00085"; --- about 2us

--- some assert :
--- 1. the error between smoothed signal and raw signal always <= one jump.
--- 2. the jump interval of raw signal is NOT too short. 

signal new_cycle_time_1 :STD_LOGIC_VECTOR (19 DOWNTO 0);
signal new_cycle_time_2 :STD_LOGIC_VECTOR (19 DOWNTO 0);
signal new_cycle_time_2_540 :STD_LOGIC_VECTOR (19 DOWNTO 0);

begin

	SmoothCounter_inst : SmoothCounter
	PORT map
	(
		aclr		=> SmoothCounter_aclr,
		clk_en		=> SmoothCounter_clk_en,
		clock		=> clk_sys,
		cout		=> SmoothCounter_cout,
		q			=> SmoothCounter_q
	);

	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			smooth_ms <= sst_none;
			SmoothCounter_aclr <= '1';
			SmoothCounter_clk_en <= '0';
			SmoothCounter_cout_forever <= '0';
			jump_count  <= "00000";
			dir <= '0';
			start_dir <= '0';
			cycle_time <= X"00000";
			last_cycle_time <= X"00000";
			cycle_time_offset <= X"00000";
			smooth_into <= '0';
			cycle_count <= "00000";
			
			Encoder_A_L <= '0';
			Encoder_B_L <= '0';
			start_dir_when_break <= '0';
			jump_count_after_break <= "00000";

		elsif (rising_edge(clk_sys)) then
			Encoder_A_L <= Encoder_A;
			Encoder_B_L <= Encoder_B;
			if(SmoothCounter_cout = '1') then
				SmoothCounter_cout_forever <= '1';
			end if;
			
			case smooth_ms is 
				when sst_none =>
					SmoothCounter_aclr <= '1';
					SmoothCounter_clk_en <= '0';
					SmoothCounter_cout_forever <= '0';
					jump_count  <= "00000";
					dir <= '0';
					start_dir <= '0';
					cycle_time <= X"00000";
					last_cycle_time <= X"00000";
					cycle_time_offset <= X"00000";
					smooth_into <= '0';
					cycle_count <= "00000";
					
					start_dir_when_break <= '0';
					jump_count_after_break <= "00000";

					if(enable = '1') then
						smooth_ms <= sst_measure_time_wait_first_jump;
					end if;
				when sst_measure_time_wait_first_jump =>
					if(enable = '0') then
						smooth_ms <= sst_none;
					elsif(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then
						if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
							(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
							(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
							(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
							dir <= '0';
							start_dir <= '0';
						else
							dir <= '1';
							start_dir <= '1';
						end if;

						SmoothCounter_aclr <= '0';
						SmoothCounter_clk_en <= '1';
						smooth_ms <= sst_measure_time_jump;
					end if;
				when sst_measure_time_jump =>
					if (SmoothCounter_cout = '1' or SmoothCounter_cout_forever = '1' or 
						SmoothCounter_q(19) = '1' or start_dir /= dir) then
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';

						smooth_ms <= sst_measure_time_start_next;
					elsif(jump_count = measure_sample_num - "00001" ) then
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';

						smooth_ms <= sst_check_smooth_start;
						last_cycle_time <= SmoothCounter_q;
					else
						jump_count <= jump_count + "00001";
						smooth_ms <= sst_measure_time_wait_jump;
					end if;
				when sst_measure_time_start_next =>
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					smooth_ms <= sst_measure_time_wait_jump;
					start_dir <= dir;
					jump_count <= "00000";
					smooth_into <= '0';
				when sst_measure_time_wait_jump =>
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					if(enable = '0') then
						smooth_ms <= sst_none;
					elsif(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then
						if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
							(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
							(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
							(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
							dir <= '0';
							if(start_dir_when_break = '0') then 
								jump_count_after_break <= jump_count_after_break + "00001";
							else
								jump_count_after_break <= jump_count_after_break - "00001";
							end if;
						else
							dir <= '1';
							if(start_dir_when_break = '1') then 
								jump_count_after_break <= jump_count_after_break + "00001";
							else
								jump_count_after_break <= jump_count_after_break - "00001";
							end if;
						end if;
						smooth_ms <= sst_measure_time_jump;
					end if;
				when sst_check_smooth_start =>
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					smooth_ms <= sst_check_smooth_wait_jump;
					start_dir <= dir;
					jump_count <= "00000";
				when sst_check_smooth_wait_jump =>
					if(enable = '0') then
						smooth_ms <= sst_none;
					elsif(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then
						if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
							(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
							(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
							(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
							dir <= '0';
							if(smooth_into = '0')then
								if(start_dir_when_break = '0') then 
									jump_count_after_break <= jump_count_after_break + "00001";
								else
									jump_count_after_break <= jump_count_after_break - "00001";
								end if;
							end if;
						else
							dir <= '1';
							if(smooth_into = '0')then
								if(start_dir_when_break = '1') then 
									jump_count_after_break <= jump_count_after_break + "00001";
								else
									jump_count_after_break <= jump_count_after_break - "00001";
								end if;
							end if;
						end if;
						smooth_ms <= sst_check_smooth_jump;
					end if;
				when sst_check_smooth_jump =>
					if (SmoothCounter_cout = '1' or SmoothCounter_cout_forever = '1' or 
						SmoothCounter_q(19) = '1' or start_dir /= dir) then
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';

						smooth_ms <= sst_measure_time_start_next;

						if(smooth_into = '1') then
							start_dir_when_break <= start_dir;
							if(start_dir /= dir) then
								jump_count_after_break <= jump_count - "00001";
							else
								jump_count_after_break <= jump_count + "00001";
							end if;
						end if;
					elsif(jump_count = measure_sample_num - "00001" ) then
						SmoothCounter_aclr <= '1';
						SmoothCounter_clk_en <= '0';
						SmoothCounter_cout_forever <= '0';

						smooth_ms <= sst_check_smooth_judge_start;
						cycle_time <= SmoothCounter_q;
					else
						jump_count <= jump_count + "00001";
						smooth_ms <= sst_check_smooth_wait_jump;
					end if;
				when sst_check_smooth_judge_start =>
					SmoothCounter_aclr <= '0';
					SmoothCounter_clk_en <= '1';
					start_dir <= dir;
					jump_count <= "00000";
					smooth_ms <= sst_check_smooth_judge;
				when sst_check_smooth_judge =>
					if( cycle_time > last_cycle_time) then
						cycle_time_offset <= cycle_time - last_cycle_time;
					else
						cycle_time_offset <= last_cycle_time - cycle_time;
					end if;
					smooth_ms <= sst_check_smooth_judge_compare;
				when sst_check_smooth_judge_compare =>
					case measure_sample_num is
						when "00100" =>
							if(cycle_time_offset >= ("000"&last_cycle_time(19 downto 3))) then
								if(smooth_into = '1') then
									start_dir_when_break <= start_dir;
									jump_count_after_break <= measure_sample_num;
								end if;
								smooth_into <= '0';
								cycle_count <= "00000";
								smooth_ms <= sst_check_smooth_start;
							else
								if(smooth_into = '0') then
									cycle_count <= "00000";
								else
									cycle_count <= cycle_count + "00001";
								end if;
								smooth_into <= '1';
								smooth_ms <= sst_check_smooth_start;
							end if;
						when "01000" =>
							if(cycle_time_offset >= ("0000"&last_cycle_time(19 downto 4))) then
								if(smooth_into = '1') then
									start_dir_when_break <= start_dir;
									jump_count_after_break <= measure_sample_num;
								end if;
								smooth_into <= '0';
								cycle_count <= "00000";
								smooth_ms <= sst_check_smooth_start;
							else
								if(smooth_into = '0') then
									cycle_count <= "00000";
								else
									cycle_count <= cycle_count + "00001";
								end if;
								smooth_into <= '1';
								smooth_ms <= sst_check_smooth_start;
							end if;
						when others =>
							smooth_ms <= sst_check_smooth_start;
					end case;
					last_cycle_time <= cycle_time;
			end case;
		end if;
	end process;

	OutCounter_inst : SmoothOutCounter
	PORT map
	(
		aclr		=> OutCounter_aclr,
		clk_en		=> OutCounter_clk_en,
		clock		=> clk_sys,
		q			=> OutCounter_q
	);

	new_cycle_time_1 <= last_cycle_time(19 DOWNTO 0) - SmoothCounter_q; 
	new_cycle_time_2 <= last_cycle_time(19 DOWNTO 0) + OutCounter_q; 
	Encoder_A_Smooth_720 <= out_A_Smooth_720;
	Encoder_B_Smooth_720 <= out_B_Smooth_720;
	Locked_720 <= out_Locked_720;
	Smoothed_720 <= out_Smoothed_720;

	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			out_A_Smooth_720 <= '0';
			out_b_Smooth_720 <= '0';
			
			jump_720_L <= '0';
		elsif (rising_edge(clk_sys)) then
			
			jump_720_L <= jump_720;
			
			if(jump_720_L /= jump_720) then
				if(dir_720 = '0') then
					if(out_A_Smooth_720 = '0') then
						if(out_B_Smooth_720 = '0') then
							out_B_Smooth_720 <= '1';
						else
							out_A_Smooth_720 <= '1';
						end if;
					else
						if(out_B_Smooth_720 = '0') then
							out_A_Smooth_720 <= '0';
						else
							out_B_Smooth_720 <= '0';
						end if;
					end if;
				else
					if(out_A_Smooth_720 = '0') then
						if(out_B_Smooth_720 = '0') then
							out_A_Smooth_720 <= '1';
						else
							out_B_Smooth_720 <= '0';
						end if;
					else
						if(out_B_Smooth_720 = '0') then
							out_B_Smooth_720 <= '1';
						else
							out_A_Smooth_720 <= '0';
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;

	process (clk_sys, nRESET)
	begin
		if(nRESET = '0') then
			out_720_ms <= o720st_none;
			dir_out_720 <= '0';
			out_count <= "00000";
			out_cycle_count <= "00000";

			out_Locked_720	<= '0';
			out_Smoothed_720 <= '0';

			OutCounter_aclr <= '1';
			OutCounter_clk_en <= '0';
			
			out_cycle_step <= "000000000000000000";
			out_cycle_time <= X"00000";

			dir_720 <= '0';
			jump_720 <= '0';
		elsif (rising_edge(clk_sys)) then
			case out_720_ms is
				when o720st_none =>
					out_Locked_720	<= '0';
					out_Smoothed_720 <= '0';

					OutCounter_aclr <= '1';
					OutCounter_clk_en <= '0';

					dir_out_720 <= '0';
					out_count <= "00000";
					out_cycle_count <= "00000";
					out_cycle_step <= "000000000000000000";
					out_cycle_time <= X"00000";

					if(enable = '1') then
						out_720_ms <= o720st_raw;
					end if;
				when o720st_raw =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '0';

					OutCounter_aclr <= '1';
					OutCounter_clk_en <= '0';

					if(enable = '0') then
						out_720_ms <= o720st_none;
					elsif(smooth_into = '1' and smooth_ms = sst_check_smooth_start) then
						out_720_ms <= o720st_into_smooth;
					else
						if(Encoder_A_L /= Encoder_A or Encoder_B_L /= Encoder_B) then
							if( (Encoder_B_L = '1' and Encoder_B = '1' and Encoder_A = '1' and Encoder_A_L = '0') or 
								(Encoder_B_L = '0' and Encoder_B = '0' and Encoder_A = '0' and Encoder_A_L = '1') or 
								(Encoder_A_L = '1' and Encoder_A = '1' and Encoder_B = '0' and Encoder_B_L = '1') or 
								(Encoder_A_L = '0' and Encoder_A = '0' and Encoder_B = '1' and Encoder_B_L = '0') ) then
								dir_out_720 <= '0';
							else
								dir_out_720 <= '1';
							end if;
							out_720_ms <= o720st_raw_jump;
						end if;
					end if;
				when o720st_raw_jump =>
					dir_720 <= dir_out_720;
					jump_720 <= not jump_720;
					out_720_ms <= o720st_raw;
				when o720st_into_smooth =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '1';

					OutCounter_aclr <= '0';
					OutCounter_clk_en <= '1';
					out_720_ms <= o720st_into_smooth_1;
					out_count <= "00000";
					out_cycle_count <= "00000";
					dir_out_720 <= start_dir;
					case measure_sample_num is
						when "00100" =>
							out_cycle_step <= last_cycle_time(19 DOWNTO 2);
						when "01000" =>
							out_cycle_step <= '0' & last_cycle_time(19 DOWNTO 3);
						when others => 
					end case;
				when o720st_into_smooth_1 =>
					OutCounter_aclr <= '0';
					OutCounter_clk_en <= '1';
					out_720_ms <= o720st_into_smooth_2;
					if(InFireRegion = '0' and Is540 = '0') then
						if(out_cycle_step < min_jump_interval(17 DOWNTO 0)) then
							out_cycle_step <= min_jump_interval(17 DOWNTO 0);
						end if;
					else
						if(out_cycle_step < "0000" & MinJumpTime) then
							out_cycle_step <= "0000" & MinJumpTime;
						end if;
					end if;
				when o720st_into_smooth_2 =>
					out_720_ms <= o720st_smooth;
					out_cycle_time <= "00" & out_cycle_step;
				when o720st_smooth =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '1';
					
					if(OutCounter_q >= out_cycle_time) then
						if(smooth_into = '1') then
							out_720_ms <= o720st_smooth_jump;
						else
							out_720_ms <= o720st_out_of_smooth;
						end if;
					end if;
				when o720st_smooth_jump =>
					dir_720 <= dir_out_720;
					jump_720 <= not jump_720;
					out_720_ms <= o720st_smooth_step;
				when o720st_smooth_step =>
					if(out_count = measure_sample_num - "00001" ) then
						OutCounter_aclr <= '1';
						OutCounter_clk_en <= '0';

						if(out_cycle_count /= cycle_count) then --- raw signal jumps before smoothed siganl.
							out_720_ms <= o720st_smooth_into_next;
						else
							out_720_ms <= o720st_smooth_wait_raw_completed;
						end if;
						out_cycle_count <= out_cycle_count + "00001";
					else
						out_cycle_time <= out_cycle_time + out_cycle_step;
						out_720_ms <= o720st_smooth;
					end if;		
					out_count <= out_count + "00001";
				when o720st_smooth_into_next =>
					OutCounter_aclr <= '1';
					OutCounter_clk_en <= '0';

					out_720_ms <= o720st_into_smooth_1;
					out_count <= "00000";
					dir_out_720 <= start_dir;
					case measure_sample_num is
						when "00100" =>
							out_cycle_step <= new_cycle_time_1(19 DOWNTO 2);
						when "01000" =>
							out_cycle_step <= '0' & new_cycle_time_1(19 DOWNTO 3);
						when others => 
					end case;
				when o720st_smooth_wait_raw_completed =>
					OutCounter_aclr <= '0';
					OutCounter_clk_en <= '1';
					if(smooth_into = '0') then
						out_720_ms <= o720st_smooth_wait_raw_completed_out_of_smooth;
					else
						if(out_cycle_count = cycle_count) then
							out_720_ms <= o720st_into_smooth_1;
							out_count <= "00000";
							dir_out_720 <= start_dir;
							case measure_sample_num is
								when "00100" =>
									out_cycle_step <= new_cycle_time_2(19 DOWNTO 2);
								when "01000" =>
									out_cycle_step <= '0' & new_cycle_time_2(19 DOWNTO 3);
								when others => 
							end case;
						end if;
					end if;
				when o720st_smooth_wait_raw_completed_out_of_smooth =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '0';
					
					if(Encoder_A_L = Encoder_A and Encoder_B_L = Encoder_B) then
						if(jump_count_after_break = out_count) then
							out_720_ms <= o720st_out_of_smooth;
						else
							out_720_ms <= o720st_out_of_smooth_wait;
						end if;
					end if;
				when o720st_out_of_smooth =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '0';

					if(Encoder_A_L = Encoder_A and Encoder_B_L = Encoder_B) then
						if(jump_count_after_break = out_count) then
							out_720_ms <= o720st_raw;
						else
							if( (jump_count_after_break - out_count < "10000" and dir_out_720 = '0') or
								(jump_count_after_break - out_count >= "10000" and dir_out_720 = '1') )then
								dir_720 <= '0';
								jump_720 <= not jump_720;
							else
								dir_720 <= '1';
								jump_720 <= not jump_720;
							end if;
							out_720_ms <= o720st_out_of_smooth_wait;
							OutCounter_aclr <= '1';
							OutCounter_clk_en <= '0';
							if(jump_count_after_break - out_count < "10000") then
								out_count <= out_count + "00001";
							else
								out_count <= out_count - "00001";
							end if;
						end if;
					end if;
				when o720st_out_of_smooth_wait =>
					out_Locked_720	<= '1';
					out_Smoothed_720 <= '0';

					OutCounter_aclr <= '0';
					OutCounter_clk_en <= '1';
					if(InFireRegion = '0' or Is540 = '1') then
						if(OutCounter_q > min_jump_interval) then
							out_720_ms <= o720st_out_of_smooth;
						end if;					
					else
						if(OutCounter_q > "000000" & MinJumpTime) then
							out_720_ms <= o720st_out_of_smooth;
						end if;
					end if;
				when others =>
			end case;
		end if;
	end process;

	Encoder_A_Smooth_540 <= out_A_Smooth_720;
	Encoder_B_Smooth_540 <= out_B_Smooth_720;
	Locked_540 <= out_Locked_720;
	Smoothed_540 <= out_Smoothed_720;

end rtl;
