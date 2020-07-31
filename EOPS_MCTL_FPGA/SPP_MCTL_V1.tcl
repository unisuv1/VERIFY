#------------------GLOBAL--------------------#
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name ENABLE_INIT_DONE_OUTPUT OFF

	set_location_assignment PIN_M1  -to clk
	set_location_assignment PIN_N14 -to nRST
	
	set_location_assignment PIN_K10 -to F_GPIO_I[1]
	set_location_assignment PIN_L9  -to F_GPIO_I[2]
	set_location_assignment PIN_L10 -to F_GPIO_I[3]
	set_location_assignment PIN_K1  -to F_GPIO_I[4]
	set_location_assignment PIN_K2  -to F_GPIO_I[5]
	set_location_assignment PIN_N5  -to F_GPIO_I[6]
	set_location_assignment PIN_N6  -to F_GPIO_I[7]
	set_location_assignment PIN_K9  -to F_GPIO_I[8]
	set_location_assignment PIN_L1  -to F_GPIO_I[9]
	set_location_assignment PIN_L2  -to F_GPIO_I[10]
	
	set_location_assignment PIN_D4 -to F_GPIO_O[1]
	set_location_assignment PIN_C3 -to F_GPIO_O[2]
	
	set_location_assignment PIN_N16 -to ARM_FPGA_SYNC
	set_location_assignment PIN_N13 -to ARM_FPGA_CLK
	set_location_assignment PIN_N15 -to ARM_FPGA_DATA
	set_location_assignment PIN_M12 -to ARM_FPGA_RSV
	
	set_location_assignment PIN_K5 -to FPGA_LED[2]
	set_location_assignment PIN_L4 -to FPGA_LED[1]
	
	set_location_assignment PIN_C9 -to F_SW0
	set_location_assignment PIN_D9 -to F_SW1
	set_location_assignment PIN_D8 -to F_SW2
	set_location_assignment PIN_C8 -to F_SW3	
	set_location_assignment PIN_D6 -to F_SW4	
	set_location_assignment PIN_D5 -to F_SW5

	set_location_assignment PIN_L11 -to EN1_X_2A
	set_location_assignment PIN_M11 -to EN1_X_2B
		
	set_location_assignment PIN_R8  -to Lorigin[0]
	set_location_assignment PIN_T7  -to Lorigin[1]
	set_location_assignment PIN_R7  -to Lorigin[2]
	set_location_assignment PIN_T6  -to Lorigin[3]
	set_location_assignment PIN_R9  -to Lorigin[4]
	set_location_assignment PIN_T8  -to Lorigin[5]
	set_location_assignment PIN_R6  -to Lorigin[6]
	set_location_assignment PIN_R5  -to Lorigin[7]
	set_location_assignment PIN_B16 -to Lorigin[8]
	set_location_assignment PIN_C15 -to Lorigin[9]
	set_location_assignment PIN_C16 -to Lorigin[10]
	set_location_assignment PIN_D14 -to Lorigin[11]
	set_location_assignment PIN_C14 -to Lorigin[12]
	set_location_assignment PIN_A15 -to Lorigin[13]
	set_location_assignment PIN_D16 -to Lorigin[14]
	set_location_assignment PIN_D15 -to Lorigin[15]
	set_location_assignment PIN_A2  -to Lorigin[16]
	set_location_assignment PIN_B3  -to Lorigin[17]
	set_location_assignment PIN_A3  -to Lorigin[18]
	set_location_assignment PIN_B4  -to Lorigin[19]
	set_location_assignment PIN_C2  -to Lorigin[20]
	set_location_assignment PIN_B1  -to Lorigin[21]
	set_location_assignment PIN_A4  -to Lorigin[22]
	set_location_assignment PIN_B5  -to Lorigin[23]

	set_location_assignment PIN_R4 -to X_2B
	set_location_assignment PIN_T4 -to X_2A
	set_location_assignment PIN_T12 -to X_1A
	set_location_assignment PIN_R12 -to X_3B		
	set_location_assignment PIN_R13 -to X_1B
	set_location_assignment PIN_D1 -to X_23B
	set_location_assignment PIN_F1 -to X_21B
	set_location_assignment PIN_F2 -to X_21A
	set_location_assignment PIN_G1 -to X_19B
	set_location_assignment PIN_G2 -to X_19A
	set_location_assignment PIN_J1 -to X_17A
	set_location_assignment PIN_J2 -to X_17B
	set_location_assignment PIN_P1 -to X_8A
	set_location_assignment PIN_R1 -to X_6B
	set_location_assignment PIN_P3 -to X_8B
	set_location_assignment PIN_R3 -to X_4B
	set_location_assignment PIN_T2 -to X_6A
	set_location_assignment PIN_T3 -to X_4A
	set_location_assignment PIN_P14 -to X_14A
	set_location_assignment PIN_R10 -to X_7A
	set_location_assignment PIN_R11 -to X_5B
	set_location_assignment PIN_R14 -to X_16B
	set_location_assignment PIN_T10 -to X_5A
	set_location_assignment PIN_T11 -to X_3A
	set_location_assignment PIN_T13 -to X_16A
	set_location_assignment PIN_T14 -to X_14B
	set_location_assignment PIN_T15 -to X_12B
	set_location_assignment PIN_T9 -to X_7B
	set_location_assignment PIN_P15 -to X_10B
	set_location_assignment PIN_P16 -to X_10A
	set_location_assignment PIN_R16 -to X_12A
	set_location_assignment PIN_A10 -to X_9A
	set_location_assignment PIN_A11 -to X_11A
	set_location_assignment PIN_A12 -to X_13A
	set_location_assignment PIN_A13 -to X_15B
	set_location_assignment PIN_A9 -to X_24A
	set_location_assignment PIN_B10 -to X_9B
	set_location_assignment PIN_B11 -to X_11B
	set_location_assignment PIN_B12 -to X_13B
	set_location_assignment PIN_B13 -to X_15A
	set_location_assignment PIN_B9 -to X_22B
	set_location_assignment PIN_A6 -to X_18A
	set_location_assignment PIN_A7 -to X_20A
	set_location_assignment PIN_A8 -to X_22A
	set_location_assignment PIN_B6 -to X_24B
	set_location_assignment PIN_B8 -to X_20B
	set_location_assignment PIN_D3 -to X_23A
	set_location_assignment PIN_F7 -to X_18B

