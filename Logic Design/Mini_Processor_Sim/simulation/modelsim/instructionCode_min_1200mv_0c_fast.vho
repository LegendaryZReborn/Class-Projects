-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/26/2016 23:31:01"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	upd : IN std_logic;
	exe : IN std_logic;
	instruction : IN std_logic_vector(15 DOWNTO 0);
	al_valueout : OUT std_logic_vector(7 DOWNTO 0);
	bl_valueout : OUT std_logic_vector(7 DOWNTO 0);
	tl_valueout : OUT std_logic_vector(7 DOWNTO 0);
	a0 : OUT std_logic;
	a1 : OUT std_logic;
	a2 : OUT std_logic;
	a3 : OUT std_logic;
	a4 : OUT std_logic;
	a5 : OUT std_logic;
	a6 : OUT std_logic;
	b0 : OUT std_logic;
	b1 : OUT std_logic;
	b2 : OUT std_logic;
	b3 : OUT std_logic;
	b4 : OUT std_logic;
	b5 : OUT std_logic;
	b6 : OUT std_logic
	);
END main;

-- Design Ports Information
-- al_valueout[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- al_valueout[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bl_valueout[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tl_valueout[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a6	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b6	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exe	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upd	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_upd : std_logic;
SIGNAL ww_exe : std_logic;
SIGNAL ww_instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_al_valueout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bl_valueout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tl_valueout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a6 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b6 : std_logic;
SIGNAL \regE|setB~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|exe_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|isSub~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|imm[7]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux|currAns[7]~27clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regE|setA~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AddSub|Bit0|sum~6_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~8_combout\ : std_logic;
SIGNAL \regE|setB~0_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~21_combout\ : std_logic;
SIGNAL \toInvert|al_valout[0]~0_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~22_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~23_combout\ : std_logic;
SIGNAL \D|exe_out~combout\ : std_logic;
SIGNAL \toInvert|bl_valout[1]~1_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[2]~2_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~44_combout\ : std_logic;
SIGNAL \toInvert|al_valout[3]~3_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[4]~4_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~52_combout\ : std_logic;
SIGNAL \toInvert|al_valout[5]~5_combout\ : std_logic;
SIGNAL \toInvert|al_valout[6]~6_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~72_combout\ : std_logic;
SIGNAL \D|process_1~8_combout\ : std_logic;
SIGNAL \D|process_1~13_combout\ : std_logic;
SIGNAL \D|process_1~17_combout\ : std_logic;
SIGNAL \D|instrC[2]~11_combout\ : std_logic;
SIGNAL \D|comb~12_combout\ : std_logic;
SIGNAL \D|comb~15_combout\ : std_logic;
SIGNAL \D|isSub~2_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~76_combout\ : std_logic;
SIGNAL \upd~input_o\ : std_logic;
SIGNAL \regE|setB~0clkctrl_outclk\ : std_logic;
SIGNAL \D|exe_out~clkctrl_outclk\ : std_logic;
SIGNAL \al_valueout[0]~output_o\ : std_logic;
SIGNAL \al_valueout[1]~output_o\ : std_logic;
SIGNAL \al_valueout[2]~output_o\ : std_logic;
SIGNAL \al_valueout[3]~output_o\ : std_logic;
SIGNAL \al_valueout[4]~output_o\ : std_logic;
SIGNAL \al_valueout[5]~output_o\ : std_logic;
SIGNAL \al_valueout[6]~output_o\ : std_logic;
SIGNAL \al_valueout[7]~output_o\ : std_logic;
SIGNAL \bl_valueout[0]~output_o\ : std_logic;
SIGNAL \bl_valueout[1]~output_o\ : std_logic;
SIGNAL \bl_valueout[2]~output_o\ : std_logic;
SIGNAL \bl_valueout[3]~output_o\ : std_logic;
SIGNAL \bl_valueout[4]~output_o\ : std_logic;
SIGNAL \bl_valueout[5]~output_o\ : std_logic;
SIGNAL \bl_valueout[6]~output_o\ : std_logic;
SIGNAL \bl_valueout[7]~output_o\ : std_logic;
SIGNAL \tl_valueout[0]~output_o\ : std_logic;
SIGNAL \tl_valueout[1]~output_o\ : std_logic;
SIGNAL \tl_valueout[2]~output_o\ : std_logic;
SIGNAL \tl_valueout[3]~output_o\ : std_logic;
SIGNAL \tl_valueout[4]~output_o\ : std_logic;
SIGNAL \tl_valueout[5]~output_o\ : std_logic;
SIGNAL \tl_valueout[6]~output_o\ : std_logic;
SIGNAL \tl_valueout[7]~output_o\ : std_logic;
SIGNAL \a0~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \a2~output_o\ : std_logic;
SIGNAL \a3~output_o\ : std_logic;
SIGNAL \a4~output_o\ : std_logic;
SIGNAL \a5~output_o\ : std_logic;
SIGNAL \a6~output_o\ : std_logic;
SIGNAL \b0~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \b3~output_o\ : std_logic;
SIGNAL \b4~output_o\ : std_logic;
SIGNAL \b5~output_o\ : std_logic;
SIGNAL \b6~output_o\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \D|Equal1~0_combout\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \D|Equal1~1_combout\ : std_logic;
SIGNAL \D|Equal1~2_combout\ : std_logic;
SIGNAL \exe~input_o\ : std_logic;
SIGNAL \regE|setA~0_combout\ : std_logic;
SIGNAL \regE|setA~0clkctrl_outclk\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \D|process_1~0_combout\ : std_logic;
SIGNAL \D|process_1~19_combout\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \D|process_1~2_combout\ : std_logic;
SIGNAL \D|process_1~6_combout\ : std_logic;
SIGNAL \D|process_1~7_combout\ : std_logic;
SIGNAL \D|process_1~16_combout\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \D|process_1~9_combout\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \D|process_1~3_combout\ : std_logic;
SIGNAL \D|process_1~1_combout\ : std_logic;
SIGNAL \D|process_1~4_combout\ : std_logic;
SIGNAL \D|process_1~5_combout\ : std_logic;
SIGNAL \D|instrC[2]~4_combout\ : std_logic;
SIGNAL \D|process_1~14_combout\ : std_logic;
SIGNAL \D|process_1~10_combout\ : std_logic;
SIGNAL \D|imm[7]~2_combout\ : std_logic;
SIGNAL \D|process_1~18_combout\ : std_logic;
SIGNAL \D|imm[7]~3_combout\ : std_logic;
SIGNAL \D|instrC[3]~5_combout\ : std_logic;
SIGNAL \D|process_1~11_combout\ : std_logic;
SIGNAL \D|process_1~12_combout\ : std_logic;
SIGNAL \D|instrC[0]~6_combout\ : std_logic;
SIGNAL \D|instrC[0]~7_combout\ : std_logic;
SIGNAL \D|instrC[0]~10_combout\ : std_logic;
SIGNAL \D|instrC[0]~8_combout\ : std_logic;
SIGNAL \D|comb~11_combout\ : std_logic;
SIGNAL \D|comb~10_combout\ : std_logic;
SIGNAL \D|isSub~combout\ : std_logic;
SIGNAL \D|isSub~clkctrl_outclk\ : std_logic;
SIGNAL \decideReg|outValue[0]~1_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[0]~0_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~1_cout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~2_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~24_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~20_combout\ : std_logic;
SIGNAL \D|process_1~15_combout\ : std_logic;
SIGNAL \D|instrC[2]~9_combout\ : std_logic;
SIGNAL \D|comb~13_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~25_combout\ : std_logic;
SIGNAL \D|imm[7]~4_combout\ : std_logic;
SIGNAL \Mux|currAns[0]~26_combout\ : std_logic;
SIGNAL \D|comb~14_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~27_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~27clkctrl_outclk\ : std_logic;
SIGNAL \D|imm[7]~4clkctrl_outclk\ : std_logic;
SIGNAL \Mux|currAns[2]~36_combout\ : std_logic;
SIGNAL \toInvert|invertedV~0_combout\ : std_logic;
SIGNAL \toInvert|al_valout[1]~1_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~3\ : std_logic;
SIGNAL \AddSub|Bit0|sum~4_combout\ : std_logic;
SIGNAL \wRegPass|outValue[0]~1_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~33_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~32_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~34_combout\ : std_logic;
SIGNAL \wRegPass|outValue[1]~0_combout\ : std_logic;
SIGNAL \Increment|cout|Bit1|sum~4_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~28_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~29_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~30_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~31_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~35_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~37_combout\ : std_logic;
SIGNAL \Mux|currAns[1]~38_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~77_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~79_combout\ : std_logic;
SIGNAL \wRegPass|outValue[2]~2_combout\ : std_logic;
SIGNAL \Increment|cout|Bit2|sum~0_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~39_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~50_combout\ : std_logic;
SIGNAL \toInvert|invertedV~4_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[5]~5_combout\ : std_logic;
SIGNAL \toInvert|invertedV~3_combout\ : std_logic;
SIGNAL \toInvert|al_valout[4]~4_combout\ : std_logic;
SIGNAL \toInvert|invertedV~2_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[3]~3_combout\ : std_logic;
SIGNAL \toInvert|invertedV~1_combout\ : std_logic;
SIGNAL \toInvert|al_valout[2]~2_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~5\ : std_logic;
SIGNAL \AddSub|Bit0|sum~7\ : std_logic;
SIGNAL \AddSub|Bit0|sum~9\ : std_logic;
SIGNAL \AddSub|Bit0|sum~11\ : std_logic;
SIGNAL \AddSub|Bit0|sum~12_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~57_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~65_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~61_combout\ : std_logic;
SIGNAL \Increment|cout|Bit3|cout~0_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~62_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~63_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~73_combout\ : std_logic;
SIGNAL \decideReg|outValue[7]~0_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[7]~7_combout\ : std_logic;
SIGNAL \toInvert|al_valout[7]~7_combout\ : std_logic;
SIGNAL \toInvert|invertedV~5_combout\ : std_logic;
SIGNAL \toInvert|bl_valout[6]~6_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~13\ : std_logic;
SIGNAL \AddSub|Bit0|sum~15\ : std_logic;
SIGNAL \AddSub|Bit0|sum~16_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~69_combout\ : std_logic;
SIGNAL \Increment|cout|Bit6|cout~0_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~70_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~71_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~74_combout\ : std_logic;
SIGNAL \Mux|currAns[7]~75_combout\ : std_logic;
SIGNAL \wRegPass|outValue[7]~7_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~64_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~66_combout\ : std_logic;
SIGNAL \AddSub|Bit0|sum~14_combout\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \Mux|currAns[6]~67_combout\ : std_logic;
SIGNAL \Mux|currAns[6]~68_combout\ : std_logic;
SIGNAL \wRegPass|outValue[6]~6_combout\ : std_logic;
SIGNAL \Increment|cout|Bit5|sum~0_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~55_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~56_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~58_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~59_combout\ : std_logic;
SIGNAL \Mux|currAns[5]~60_combout\ : std_logic;
SIGNAL \wRegPass|outValue[5]~5_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~49_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~51_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~53_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~41_combout\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \AddSub|Bit0|sum~10_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~48_combout\ : std_logic;
SIGNAL \Mux|currAns[4]~54_combout\ : std_logic;
SIGNAL \wRegPass|outValue[4]~4_combout\ : std_logic;
SIGNAL \Increment|cout|Bit3|sum~0_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~42_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~43_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~45_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~46_combout\ : std_logic;
SIGNAL \Mux|currAns[3]~47_combout\ : std_logic;
SIGNAL \wRegPass|outValue[3]~3_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~40_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~80_combout\ : std_logic;
SIGNAL \Mux|currAns[2]~78_combout\ : std_logic;
SIGNAL \DisPro|a0~0_combout\ : std_logic;
SIGNAL \DisPro|a1~0_combout\ : std_logic;
SIGNAL \DisPro|a2~0_combout\ : std_logic;
SIGNAL \DisPro|a3~0_combout\ : std_logic;
SIGNAL \DisPro|a4~0_combout\ : std_logic;
SIGNAL \DisPro|a5~0_combout\ : std_logic;
SIGNAL \DisPro|a6~0_combout\ : std_logic;
SIGNAL \DisPro|b0~0_combout\ : std_logic;
SIGNAL \DisPro|b1~0_combout\ : std_logic;
SIGNAL \DisPro|b2~0_combout\ : std_logic;
SIGNAL \DisPro|b3~0_combout\ : std_logic;
SIGNAL \DisPro|b4~0_combout\ : std_logic;
SIGNAL \DisPro|b5~0_combout\ : std_logic;
SIGNAL \DisPro|b6~0_combout\ : std_logic;
SIGNAL \D|imm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Temp|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \toInvert|invertedV\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \D|instrC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux|currAns\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BL|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AL|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DisPro|ALT_INV_b6~0_combout\ : std_logic;
SIGNAL \DisPro|ALT_INV_a6~0_combout\ : std_logic;

BEGIN

ww_upd <= upd;
ww_exe <= exe;
ww_instruction <= instruction;
al_valueout <= ww_al_valueout;
bl_valueout <= ww_bl_valueout;
tl_valueout <= ww_tl_valueout;
a0 <= ww_a0;
a1 <= ww_a1;
a2 <= ww_a2;
a3 <= ww_a3;
a4 <= ww_a4;
a5 <= ww_a5;
a6 <= ww_a6;
b0 <= ww_b0;
b1 <= ww_b1;
b2 <= ww_b2;
b3 <= ww_b3;
b4 <= ww_b4;
b5 <= ww_b5;
b6 <= ww_b6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\regE|setB~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \regE|setB~0_combout\);

\D|exe_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|exe_out~combout\);

\D|isSub~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|isSub~combout\);

\D|imm[7]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|imm[7]~4_combout\);

\Mux|currAns[7]~27clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux|currAns[7]~27_combout\);

\regE|setA~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \regE|setA~0_combout\);
\DisPro|ALT_INV_b6~0_combout\ <= NOT \DisPro|b6~0_combout\;
\DisPro|ALT_INV_a6~0_combout\ <= NOT \DisPro|a6~0_combout\;

-- Location: LCCOMB_X29_Y38_N20
\AddSub|Bit0|sum~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~6_combout\ = (\toInvert|bl_valout[2]~2_combout\ & ((\toInvert|al_valout[2]~2_combout\ & (\AddSub|Bit0|sum~5\ & VCC)) # (!\toInvert|al_valout[2]~2_combout\ & (!\AddSub|Bit0|sum~5\)))) # (!\toInvert|bl_valout[2]~2_combout\ & 
-- ((\toInvert|al_valout[2]~2_combout\ & (!\AddSub|Bit0|sum~5\)) # (!\toInvert|al_valout[2]~2_combout\ & ((\AddSub|Bit0|sum~5\) # (GND)))))
-- \AddSub|Bit0|sum~7\ = CARRY((\toInvert|bl_valout[2]~2_combout\ & (!\toInvert|al_valout[2]~2_combout\ & !\AddSub|Bit0|sum~5\)) # (!\toInvert|bl_valout[2]~2_combout\ & ((!\AddSub|Bit0|sum~5\) # (!\toInvert|al_valout[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|bl_valout[2]~2_combout\,
	datab => \toInvert|al_valout[2]~2_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~5\,
	combout => \AddSub|Bit0|sum~6_combout\,
	cout => \AddSub|Bit0|sum~7\);

-- Location: LCCOMB_X29_Y38_N22
\AddSub|Bit0|sum~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~8_combout\ = ((\toInvert|al_valout[3]~3_combout\ $ (\toInvert|bl_valout[3]~3_combout\ $ (!\AddSub|Bit0|sum~7\)))) # (GND)
-- \AddSub|Bit0|sum~9\ = CARRY((\toInvert|al_valout[3]~3_combout\ & ((\toInvert|bl_valout[3]~3_combout\) # (!\AddSub|Bit0|sum~7\))) # (!\toInvert|al_valout[3]~3_combout\ & (\toInvert|bl_valout[3]~3_combout\ & !\AddSub|Bit0|sum~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|al_valout[3]~3_combout\,
	datab => \toInvert|bl_valout[3]~3_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~7\,
	combout => \AddSub|Bit0|sum~8_combout\,
	cout => \AddSub|Bit0|sum~9\);

-- Location: LCCOMB_X26_Y40_N24
\regE|setB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regE|setB~0_combout\ = (!\upd~input_o\ & (!\D|Equal1~2_combout\ & \exe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upd~input_o\,
	datac => \D|Equal1~2_combout\,
	datad => \exe~input_o\,
	combout => \regE|setB~0_combout\);

-- Location: LCCOMB_X27_Y38_N2
\Mux|currAns[0]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~21_combout\ = (\D|instrC\(0) & ((\D|Equal1~2_combout\ & (!\AL|reg_out\(0))) # (!\D|Equal1~2_combout\ & ((!\BL|reg_out\(0)))))) # (!\D|instrC\(0) & ((\D|Equal1~2_combout\ & ((\BL|reg_out\(0)))) # (!\D|Equal1~2_combout\ & 
-- (\AL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(0),
	datab => \D|Equal1~2_combout\,
	datac => \AL|reg_out\(0),
	datad => \BL|reg_out\(0),
	combout => \Mux|currAns[0]~21_combout\);

-- Location: LCCOMB_X30_Y38_N30
\toInvert|al_valout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[0]~0_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\AL|reg_out\(0)))) # (!\D|Equal1~2_combout\ & (\toInvert|invertedV\(0))))) # (!\D|isSub~combout\ & (((\AL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~combout\,
	datab => \D|Equal1~2_combout\,
	datac => \toInvert|invertedV\(0),
	datad => \AL|reg_out\(0),
	combout => \toInvert|al_valout[0]~0_combout\);

-- Location: LCCOMB_X29_Y38_N12
\Mux|currAns[0]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~22_combout\ = (\D|instrC\(0) & (\AL|reg_out\(0) & (\BL|reg_out\(0)))) # (!\D|instrC\(0) & (((\AddSub|Bit0|sum~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(0),
	datab => \D|instrC\(0),
	datac => \BL|reg_out\(0),
	datad => \AddSub|Bit0|sum~2_combout\,
	combout => \Mux|currAns[0]~22_combout\);

-- Location: LCCOMB_X29_Y38_N6
\Mux|currAns[0]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~23_combout\ = (\D|instrC\(1) & (((\Mux|currAns[0]~21_combout\) # (\D|instrC\(2))))) # (!\D|instrC\(1) & (\Mux|currAns[0]~22_combout\ & ((!\D|instrC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[0]~22_combout\,
	datab => \Mux|currAns[0]~21_combout\,
	datac => \D|instrC\(1),
	datad => \D|instrC\(2),
	combout => \Mux|currAns[0]~23_combout\);

-- Location: LCCOMB_X26_Y40_N10
\D|exe_out\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|exe_out~combout\ = LCELL((\upd~input_o\ & !\exe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \upd~input_o\,
	datad => \exe~input_o\,
	combout => \D|exe_out~combout\);

-- Location: LCCOMB_X30_Y38_N14
\toInvert|bl_valout[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[1]~1_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\toInvert|invertedV\(1)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(1))))) # (!\D|isSub~combout\ & (\BL|reg_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(1),
	datab => \D|isSub~combout\,
	datac => \toInvert|invertedV\(1),
	datad => \D|Equal1~2_combout\,
	combout => \toInvert|bl_valout[1]~1_combout\);

-- Location: LCCOMB_X28_Y38_N16
\toInvert|bl_valout[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[2]~2_combout\ = (\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(2))) # (!\D|isSub~combout\ & ((\BL|reg_out\(2)))))) # (!\D|Equal1~2_combout\ & (((\BL|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(2),
	datac => \D|isSub~combout\,
	datad => \BL|reg_out\(2),
	combout => \toInvert|bl_valout[2]~2_combout\);

-- Location: LCCOMB_X31_Y38_N22
\Mux|currAns[3]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~44_combout\ = (\Mux|currAns[2]~33_combout\ & ((\BL|reg_out\(3)) # ((\Mux|currAns[2]~32_combout\) # (\AL|reg_out\(3))))) # (!\Mux|currAns[2]~33_combout\ & (\BL|reg_out\(3) & (!\Mux|currAns[2]~32_combout\ & \AL|reg_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~33_combout\,
	datab => \BL|reg_out\(3),
	datac => \Mux|currAns[2]~32_combout\,
	datad => \AL|reg_out\(3),
	combout => \Mux|currAns[3]~44_combout\);

-- Location: LCCOMB_X28_Y38_N10
\toInvert|al_valout[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[3]~3_combout\ = (\D|Equal1~2_combout\ & (((\AL|reg_out\(3))))) # (!\D|Equal1~2_combout\ & ((\D|isSub~combout\ & ((\toInvert|invertedV\(3)))) # (!\D|isSub~combout\ & (\AL|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \D|isSub~combout\,
	datac => \AL|reg_out\(3),
	datad => \toInvert|invertedV\(3),
	combout => \toInvert|al_valout[3]~3_combout\);

-- Location: LCCOMB_X27_Y38_N0
\toInvert|bl_valout[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[4]~4_combout\ = (\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(4))) # (!\D|isSub~combout\ & ((\BL|reg_out\(4)))))) # (!\D|Equal1~2_combout\ & (((\BL|reg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(4),
	datac => \BL|reg_out\(4),
	datad => \D|isSub~combout\,
	combout => \toInvert|bl_valout[4]~4_combout\);

-- Location: LCCOMB_X27_Y38_N16
\Mux|currAns[4]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~52_combout\ = (\AL|reg_out\(4)) # (\BL|reg_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AL|reg_out\(4),
	datad => \BL|reg_out\(4),
	combout => \Mux|currAns[4]~52_combout\);

-- Location: LCCOMB_X25_Y38_N8
\toInvert|al_valout[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[5]~5_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\AL|reg_out\(5)))) # (!\D|Equal1~2_combout\ & (\toInvert|invertedV\(5))))) # (!\D|isSub~combout\ & (((\AL|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|invertedV\(5),
	datab => \D|isSub~combout\,
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(5),
	combout => \toInvert|al_valout[5]~5_combout\);

-- Location: LCCOMB_X25_Y38_N12
\toInvert|al_valout[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[6]~6_combout\ = (\D|Equal1~2_combout\ & (((\AL|reg_out\(6))))) # (!\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(6))) # (!\D|isSub~combout\ & ((\AL|reg_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(6),
	datac => \D|isSub~combout\,
	datad => \AL|reg_out\(6),
	combout => \toInvert|al_valout[6]~6_combout\);

-- Location: LCCOMB_X34_Y38_N20
\Mux|currAns[7]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~72_combout\ = (\D|instrC\(1) & (!\D|instrC\(2))) # (!\D|instrC\(1) & ((\D|instrC\(2) & ((\wRegPass|outValue[6]~6_combout\) # (!\D|instrC\(0)))) # (!\D|instrC\(2) & ((\D|instrC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(1),
	datab => \D|instrC\(2),
	datac => \wRegPass|outValue[6]~6_combout\,
	datad => \D|instrC\(0),
	combout => \Mux|currAns[7]~72_combout\);

-- Location: LCCOMB_X29_Y39_N16
\D|process_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~8_combout\ = (\instruction[10]~input_o\ & (!\instruction[3]~input_o\ & (\instruction[9]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \D|process_1~8_combout\);

-- Location: LCCOMB_X29_Y39_N2
\D|process_1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~13_combout\ = (!\instruction[11]~input_o\ & (!\instruction[13]~input_o\ & (!\instruction[9]~input_o\ & \instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[13]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \D|process_1~13_combout\);

-- Location: LCCOMB_X29_Y39_N10
\D|process_1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~17_combout\ = (!\instruction[11]~input_o\ & !\instruction[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datac => \instruction[13]~input_o\,
	combout => \D|process_1~17_combout\);

-- Location: LCCOMB_X31_Y39_N26
\D|instrC[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[2]~11_combout\ = (!\D|imm[7]~2_combout\ & (!\D|process_1~18_combout\ & ((\instruction[11]~input_o\) # (!\D|process_1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~11_combout\,
	datab => \instruction[11]~input_o\,
	datac => \D|imm[7]~2_combout\,
	datad => \D|process_1~18_combout\,
	combout => \D|instrC[2]~11_combout\);

-- Location: LCCOMB_X31_Y39_N12
\D|comb~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~12_combout\ = (!\D|instrC[2]~9_combout\ & (\D|instrC[3]~5_combout\ & ((!\D|instrC[2]~4_combout\) # (!\D|instrC[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC[2]~11_combout\,
	datab => \D|instrC[2]~9_combout\,
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[2]~4_combout\,
	combout => \D|comb~12_combout\);

-- Location: LCCOMB_X31_Y39_N22
\D|comb~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~15_combout\ = (\D|instrC[3]~5_combout\ & ((\D|instrC[2]~9_combout\) # ((\D|instrC[2]~11_combout\ & !\D|instrC[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC[2]~11_combout\,
	datab => \D|instrC[2]~9_combout\,
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[2]~4_combout\,
	combout => \D|comb~15_combout\);

-- Location: LCCOMB_X31_Y40_N20
\D|isSub~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|isSub~2_combout\ = (\D|process_1~11_combout\ & (!\D|process_1~16_combout\ & (\instruction[11]~input_o\ & \D|imm[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~11_combout\,
	datab => \D|process_1~16_combout\,
	datac => \instruction[11]~input_o\,
	datad => \D|imm[7]~2_combout\,
	combout => \D|isSub~2_combout\);

-- Location: LCCOMB_X26_Y38_N10
\Mux|currAns[4]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~76_combout\ = (\D|instrC\(1) & ((\D|instrC\(2)) # (\D|instrC\(0)))) # (!\D|instrC\(1) & (\D|instrC\(2) & \D|instrC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(1),
	datab => \D|instrC\(2),
	datad => \D|instrC\(0),
	combout => \Mux|currAns[4]~76_combout\);

-- Location: LCCOMB_X31_Y38_N0
\D|imm[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(0) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[0]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[0]~input_o\,
	datab => \D|imm\(0),
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(0));

-- Location: LCCOMB_X24_Y38_N22
\D|imm[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(5) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[5]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[5]~input_o\,
	datac => \D|imm\(5),
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(5));

-- Location: IOIBUF_X25_Y41_N1
\upd~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upd,
	o => \upd~input_o\);

-- Location: CLKCTRL_G14
\regE|setB~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \regE|setB~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \regE|setB~0clkctrl_outclk\);

-- Location: CLKCTRL_G12
\D|exe_out~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|exe_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|exe_out~clkctrl_outclk\);

-- Location: IOOBUF_X31_Y41_N23
\al_valueout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(0),
	devoe => ww_devoe,
	o => \al_valueout[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\al_valueout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(1),
	devoe => ww_devoe,
	o => \al_valueout[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\al_valueout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(2),
	devoe => ww_devoe,
	o => \al_valueout[2]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\al_valueout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(3),
	devoe => ww_devoe,
	o => \al_valueout[3]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\al_valueout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(4),
	devoe => ww_devoe,
	o => \al_valueout[4]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\al_valueout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(5),
	devoe => ww_devoe,
	o => \al_valueout[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\al_valueout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(6),
	devoe => ww_devoe,
	o => \al_valueout[6]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\al_valueout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AL|reg_out\(7),
	devoe => ww_devoe,
	o => \al_valueout[7]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\bl_valueout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(0),
	devoe => ww_devoe,
	o => \bl_valueout[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\bl_valueout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(1),
	devoe => ww_devoe,
	o => \bl_valueout[1]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\bl_valueout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(2),
	devoe => ww_devoe,
	o => \bl_valueout[2]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\bl_valueout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(3),
	devoe => ww_devoe,
	o => \bl_valueout[3]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\bl_valueout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(4),
	devoe => ww_devoe,
	o => \bl_valueout[4]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\bl_valueout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(5),
	devoe => ww_devoe,
	o => \bl_valueout[5]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\bl_valueout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(6),
	devoe => ww_devoe,
	o => \bl_valueout[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\bl_valueout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BL|reg_out\(7),
	devoe => ww_devoe,
	o => \bl_valueout[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\tl_valueout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(0),
	devoe => ww_devoe,
	o => \tl_valueout[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\tl_valueout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(1),
	devoe => ww_devoe,
	o => \tl_valueout[1]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\tl_valueout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(2),
	devoe => ww_devoe,
	o => \tl_valueout[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\tl_valueout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(3),
	devoe => ww_devoe,
	o => \tl_valueout[3]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\tl_valueout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(4),
	devoe => ww_devoe,
	o => \tl_valueout[4]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\tl_valueout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(5),
	devoe => ww_devoe,
	o => \tl_valueout[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\tl_valueout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(6),
	devoe => ww_devoe,
	o => \tl_valueout[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\tl_valueout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Temp|reg_out\(7),
	devoe => ww_devoe,
	o => \tl_valueout[7]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\a0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a0~0_combout\,
	devoe => ww_devoe,
	o => \a0~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\a1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a1~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\a2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a2~0_combout\,
	devoe => ww_devoe,
	o => \a2~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\a3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a3~0_combout\,
	devoe => ww_devoe,
	o => \a3~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\a4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a4~0_combout\,
	devoe => ww_devoe,
	o => \a4~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\a5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|a5~0_combout\,
	devoe => ww_devoe,
	o => \a5~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\a6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|ALT_INV_a6~0_combout\,
	devoe => ww_devoe,
	o => \a6~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\b0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b0~0_combout\,
	devoe => ww_devoe,
	o => \b0~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\b1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b1~0_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\b2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b2~0_combout\,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\b3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b3~0_combout\,
	devoe => ww_devoe,
	o => \b3~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\b4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b4~0_combout\,
	devoe => ww_devoe,
	o => \b4~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\b5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|b5~0_combout\,
	devoe => ww_devoe,
	o => \b5~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\b6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisPro|ALT_INV_b6~0_combout\,
	devoe => ww_devoe,
	o => \b6~output_o\);

-- Location: IOIBUF_X38_Y41_N1
\instruction[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\instruction[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\instruction[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: LCCOMB_X29_Y39_N6
\D|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|Equal1~0_combout\ = (!\instruction[9]~input_o\ & (!\instruction[8]~input_o\ & !\instruction[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[9]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \instruction[10]~input_o\,
	combout => \D|Equal1~0_combout\);

-- Location: IOIBUF_X29_Y41_N1
\instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X32_Y38_N12
\D|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|Equal1~1_combout\ = (!\instruction[1]~input_o\ & !\instruction[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \instruction[2]~input_o\,
	combout => \D|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y38_N6
\D|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|Equal1~2_combout\ = (\D|process_1~0_combout\ & (\D|Equal1~0_combout\)) # (!\D|process_1~0_combout\ & (((!\instruction[0]~input_o\ & \D|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~0_combout\,
	datab => \D|Equal1~0_combout\,
	datac => \instruction[0]~input_o\,
	datad => \D|Equal1~1_combout\,
	combout => \D|Equal1~2_combout\);

-- Location: IOIBUF_X25_Y41_N8
\exe~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exe,
	o => \exe~input_o\);

-- Location: LCCOMB_X26_Y40_N4
\regE|setA~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regE|setA~0_combout\ = (!\upd~input_o\ & (\D|Equal1~2_combout\ & \exe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upd~input_o\,
	datac => \D|Equal1~2_combout\,
	datad => \exe~input_o\,
	combout => \regE|setA~0_combout\);

-- Location: CLKCTRL_G13
\regE|setA~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \regE|setA~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \regE|setA~0clkctrl_outclk\);

-- Location: IOIBUF_X29_Y41_N8
\instruction[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\instruction[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\instruction[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: LCCOMB_X29_Y39_N24
\D|process_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~0_combout\ = (!\instruction[14]~input_o\ & (\instruction[13]~input_o\ & (\instruction[15]~input_o\ & \instruction[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[14]~input_o\,
	datab => \instruction[13]~input_o\,
	datac => \instruction[15]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \D|process_1~0_combout\);

-- Location: LCCOMB_X29_Y39_N26
\D|process_1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~19_combout\ = (!\instruction[11]~input_o\ & (\instruction[9]~input_o\ $ (!\instruction[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[9]~input_o\,
	datac => \instruction[8]~input_o\,
	combout => \D|process_1~19_combout\);

-- Location: IOIBUF_X48_Y41_N8
\instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\instruction[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: LCCOMB_X29_Y39_N14
\D|process_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~2_combout\ = (\instruction[6]~input_o\ & (\instruction[7]~input_o\ & (!\instruction[8]~input_o\ & !\instruction[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \D|process_1~2_combout\);

-- Location: LCCOMB_X30_Y39_N0
\D|process_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~6_combout\ = (\instruction[15]~input_o\ & (\instruction[12]~input_o\ & (\instruction[1]~input_o\ $ (!\instruction[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[1]~input_o\,
	datab => \instruction[15]~input_o\,
	datac => \instruction[12]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \D|process_1~6_combout\);

-- Location: LCCOMB_X30_Y39_N10
\D|process_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~7_combout\ = (!\instruction[4]~input_o\ & (\instruction[14]~input_o\ & (\D|process_1~2_combout\ & \D|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[4]~input_o\,
	datab => \instruction[14]~input_o\,
	datac => \D|process_1~2_combout\,
	datad => \D|process_1~6_combout\,
	combout => \D|process_1~7_combout\);

-- Location: LCCOMB_X30_Y39_N14
\D|process_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~16_combout\ = (\D|process_1~13_combout\ & (\instruction[3]~input_o\ & (!\instruction[10]~input_o\ & \D|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~13_combout\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \D|process_1~7_combout\,
	combout => \D|process_1~16_combout\);

-- Location: IOIBUF_X31_Y41_N8
\instruction[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: LCCOMB_X30_Y39_N30
\D|process_1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~9_combout\ = (\D|process_1~8_combout\ & (\instruction[11]~input_o\ & (\instruction[13]~input_o\ & \D|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~8_combout\,
	datab => \instruction[11]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \D|process_1~7_combout\,
	combout => \D|process_1~9_combout\);

-- Location: IOIBUF_X52_Y21_N22
\instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: LCCOMB_X29_Y39_N22
\D|process_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~3_combout\ = (!\instruction[10]~input_o\ & (!\instruction[12]~input_o\ & (!\instruction[14]~input_o\ & !\instruction[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[14]~input_o\,
	datad => \instruction[5]~input_o\,
	combout => \D|process_1~3_combout\);

-- Location: LCCOMB_X30_Y39_N2
\D|process_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~1_combout\ = (\instruction[4]~input_o\ & (\instruction[3]~input_o\ & (!\instruction[1]~input_o\ & !\instruction[0]~input_o\))) # (!\instruction[4]~input_o\ & (!\instruction[3]~input_o\ & (\instruction[1]~input_o\ & \instruction[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[4]~input_o\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[1]~input_o\,
	datad => \instruction[0]~input_o\,
	combout => \D|process_1~1_combout\);

-- Location: LCCOMB_X30_Y39_N20
\D|process_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~4_combout\ = (\D|process_1~2_combout\ & (\D|process_1~3_combout\ & \D|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~2_combout\,
	datab => \D|process_1~3_combout\,
	datad => \D|process_1~1_combout\,
	combout => \D|process_1~4_combout\);

-- Location: LCCOMB_X30_Y39_N6
\D|process_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~5_combout\ = (\instruction[11]~input_o\ & (!\instruction[13]~input_o\ & \D|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \D|process_1~4_combout\,
	combout => \D|process_1~5_combout\);

-- Location: LCCOMB_X30_Y39_N4
\D|instrC[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[2]~4_combout\ = (!\D|process_1~9_combout\ & ((\instruction[9]~input_o\) # ((!\D|process_1~5_combout\) # (!\instruction[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[15]~input_o\,
	datac => \D|process_1~9_combout\,
	datad => \D|process_1~5_combout\,
	combout => \D|instrC[2]~4_combout\);

-- Location: LCCOMB_X30_Y39_N8
\D|process_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~14_combout\ = (\D|process_1~13_combout\ & (!\instruction[3]~input_o\ & (!\instruction[10]~input_o\ & \D|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~13_combout\,
	datab => \instruction[3]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \D|process_1~7_combout\,
	combout => \D|process_1~14_combout\);

-- Location: LCCOMB_X30_Y39_N28
\D|process_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~10_combout\ = (!\instruction[15]~input_o\ & (\instruction[9]~input_o\ & \D|process_1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[15]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \D|process_1~5_combout\,
	combout => \D|process_1~10_combout\);

-- Location: LCCOMB_X30_Y39_N26
\D|imm[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm[7]~2_combout\ = (!\D|process_1~12_combout\ & (\D|instrC[2]~4_combout\ & (!\D|process_1~14_combout\ & !\D|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~12_combout\,
	datab => \D|instrC[2]~4_combout\,
	datac => \D|process_1~14_combout\,
	datad => \D|process_1~10_combout\,
	combout => \D|imm[7]~2_combout\);

-- Location: LCCOMB_X30_Y39_N24
\D|process_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~18_combout\ = (\D|process_1~17_combout\ & (!\instruction[15]~input_o\ & (!\instruction[9]~input_o\ & \D|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~17_combout\,
	datab => \instruction[15]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \D|process_1~4_combout\,
	combout => \D|process_1~18_combout\);

-- Location: LCCOMB_X30_Y39_N18
\D|imm[7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm[7]~3_combout\ = (!\D|process_1~15_combout\ & (!\D|process_1~16_combout\ & (\D|imm[7]~2_combout\ & !\D|process_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~15_combout\,
	datab => \D|process_1~16_combout\,
	datac => \D|imm[7]~2_combout\,
	datad => \D|process_1~18_combout\,
	combout => \D|imm[7]~3_combout\);

-- Location: LCCOMB_X29_Y39_N28
\D|instrC[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[3]~5_combout\ = ((!\instruction[10]~input_o\ & (\D|process_1~0_combout\ & \D|process_1~19_combout\))) # (!\D|imm[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \D|process_1~0_combout\,
	datac => \D|process_1~19_combout\,
	datad => \D|imm[7]~3_combout\,
	combout => \D|instrC[3]~5_combout\);

-- Location: LCCOMB_X30_Y39_N16
\D|process_1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~11_combout\ = (!\instruction[9]~input_o\ & (!\instruction[15]~input_o\ & (\instruction[13]~input_o\ & \D|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[15]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \D|process_1~4_combout\,
	combout => \D|process_1~11_combout\);

-- Location: LCCOMB_X30_Y39_N12
\D|process_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~12_combout\ = (!\instruction[11]~input_o\ & \D|process_1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datad => \D|process_1~11_combout\,
	combout => \D|process_1~12_combout\);

-- Location: LCCOMB_X29_Y39_N12
\D|instrC[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[0]~6_combout\ = (\D|process_1~5_combout\ & ((\instruction[15]~input_o\ & ((!\instruction[9]~input_o\))) # (!\instruction[15]~input_o\ & (!\D|process_1~9_combout\ & \instruction[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \D|process_1~9_combout\,
	datac => \instruction[9]~input_o\,
	datad => \D|process_1~5_combout\,
	combout => \D|instrC[0]~6_combout\);

-- Location: LCCOMB_X29_Y39_N0
\D|instrC[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[0]~7_combout\ = (\D|process_1~12_combout\) # ((!\D|instrC[0]~6_combout\ & ((\D|process_1~14_combout\) # (\D|process_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~14_combout\,
	datab => \D|process_1~12_combout\,
	datac => \D|process_1~9_combout\,
	datad => \D|instrC[0]~6_combout\,
	combout => \D|instrC[0]~7_combout\);

-- Location: LCCOMB_X31_Y40_N2
\D|instrC[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[0]~10_combout\ = (\D|process_1~16_combout\ & (\D|instrC[0]~7_combout\)) # (!\D|process_1~16_combout\ & (((\instruction[11]~input_o\ & \D|process_1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC[0]~7_combout\,
	datab => \D|process_1~16_combout\,
	datac => \instruction[11]~input_o\,
	datad => \D|process_1~11_combout\,
	combout => \D|instrC[0]~10_combout\);

-- Location: LCCOMB_X31_Y40_N16
\D|instrC[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[0]~8_combout\ = (!\D|process_1~18_combout\ & ((\D|imm[7]~2_combout\ & ((\D|instrC[0]~10_combout\))) # (!\D|imm[7]~2_combout\ & (\D|instrC[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|imm[7]~2_combout\,
	datab => \D|process_1~18_combout\,
	datac => \D|instrC[0]~7_combout\,
	datad => \D|instrC[0]~10_combout\,
	combout => \D|instrC[0]~8_combout\);

-- Location: LCCOMB_X31_Y39_N30
\D|comb~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~11_combout\ = (\D|instrC[3]~5_combout\ & \D|instrC[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[0]~8_combout\,
	combout => \D|comb~11_combout\);

-- Location: LCCOMB_X31_Y39_N20
\D|comb~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~10_combout\ = (\D|instrC[3]~5_combout\ & !\D|instrC[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[0]~8_combout\,
	combout => \D|comb~10_combout\);

-- Location: LCCOMB_X27_Y38_N30
\D|instrC[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC\(0) = (!\D|comb~10_combout\ & ((\D|comb~11_combout\) # (\D|instrC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|comb~11_combout\,
	datac => \D|comb~10_combout\,
	datad => \D|instrC\(0),
	combout => \D|instrC\(0));

-- Location: LCCOMB_X30_Y38_N26
\D|isSub\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|isSub~combout\ = (!\D|process_1~18_combout\ & ((\D|isSub~2_combout\) # (\D|isSub~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~2_combout\,
	datac => \D|process_1~18_combout\,
	datad => \D|isSub~combout\,
	combout => \D|isSub~combout\);

-- Location: FF_X29_Y38_N13
\BL|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(0));

-- Location: CLKCTRL_G10
\D|isSub~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|isSub~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|isSub~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y38_N20
\decideReg|outValue[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decideReg|outValue[0]~1_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(0))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(0),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(0),
	combout => \decideReg|outValue[0]~1_combout\);

-- Location: LCCOMB_X30_Y38_N22
\toInvert|invertedV[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(0) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\decideReg|outValue[0]~1_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|invertedV\(0),
	datac => \D|isSub~clkctrl_outclk\,
	datad => \decideReg|outValue[0]~1_combout\,
	combout => \toInvert|invertedV\(0));

-- Location: LCCOMB_X29_Y38_N2
\toInvert|bl_valout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[0]~0_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\toInvert|invertedV\(0)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(0))))) # (!\D|isSub~combout\ & (((\BL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~combout\,
	datab => \D|Equal1~2_combout\,
	datac => \BL|reg_out\(0),
	datad => \toInvert|invertedV\(0),
	combout => \toInvert|bl_valout[0]~0_combout\);

-- Location: LCCOMB_X29_Y38_N14
\AddSub|Bit0|sum~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~1_cout\ = CARRY(\toInvert|bl_valout[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|bl_valout[0]~0_combout\,
	datad => VCC,
	cout => \AddSub|Bit0|sum~1_cout\);

-- Location: LCCOMB_X29_Y38_N16
\AddSub|Bit0|sum~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~2_combout\ = (\toInvert|al_valout[0]~0_combout\ & ((\D|isSub~combout\ & (\AddSub|Bit0|sum~1_cout\ & VCC)) # (!\D|isSub~combout\ & (!\AddSub|Bit0|sum~1_cout\)))) # (!\toInvert|al_valout[0]~0_combout\ & ((\D|isSub~combout\ & 
-- (!\AddSub|Bit0|sum~1_cout\)) # (!\D|isSub~combout\ & ((\AddSub|Bit0|sum~1_cout\) # (GND)))))
-- \AddSub|Bit0|sum~3\ = CARRY((\toInvert|al_valout[0]~0_combout\ & (!\D|isSub~combout\ & !\AddSub|Bit0|sum~1_cout\)) # (!\toInvert|al_valout[0]~0_combout\ & ((!\AddSub|Bit0|sum~1_cout\) # (!\D|isSub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|al_valout[0]~0_combout\,
	datab => \D|isSub~combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~1_cout\,
	combout => \AddSub|Bit0|sum~2_combout\,
	cout => \AddSub|Bit0|sum~3\);

-- Location: LCCOMB_X29_Y38_N4
\Mux|currAns[0]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~24_combout\ = (\D|instrC\(0) & ((\AddSub|Bit0|sum~2_combout\))) # (!\D|instrC\(0) & (\wRegPass|outValue[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[1]~0_combout\,
	datab => \D|instrC\(0),
	datad => \AddSub|Bit0|sum~2_combout\,
	combout => \Mux|currAns[0]~24_combout\);

-- Location: LCCOMB_X27_Y38_N4
\Mux|currAns[0]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~20_combout\ = (!\D|instrC\(0) & ((\BL|reg_out\(0)) # (\AL|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(0),
	datab => \D|instrC\(0),
	datad => \AL|reg_out\(0),
	combout => \Mux|currAns[0]~20_combout\);

-- Location: LCCOMB_X30_Y39_N22
\D|process_1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|process_1~15_combout\ = (\instruction[11]~input_o\ & \D|process_1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[11]~input_o\,
	datad => \D|process_1~11_combout\,
	combout => \D|process_1~15_combout\);

-- Location: LCCOMB_X31_Y39_N0
\D|instrC[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC[2]~9_combout\ = (\D|imm[7]~2_combout\ & (!\D|process_1~18_combout\ & ((\D|process_1~16_combout\) # (\D|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|process_1~16_combout\,
	datab => \D|process_1~15_combout\,
	datac => \D|imm[7]~2_combout\,
	datad => \D|process_1~18_combout\,
	combout => \D|instrC[2]~9_combout\);

-- Location: LCCOMB_X31_Y39_N2
\D|comb~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~13_combout\ = (\D|instrC[3]~5_combout\ & ((\D|instrC[2]~9_combout\) # ((\D|instrC[2]~11_combout\ & \D|instrC[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC[2]~11_combout\,
	datab => \D|instrC[2]~9_combout\,
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[2]~4_combout\,
	combout => \D|comb~13_combout\);

-- Location: LCCOMB_X31_Y39_N24
\D|instrC[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC\(2) = (!\D|comb~12_combout\ & ((\D|comb~13_combout\) # (\D|instrC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|comb~12_combout\,
	datab => \D|comb~13_combout\,
	datad => \D|instrC\(2),
	combout => \D|instrC\(2));

-- Location: LCCOMB_X29_Y38_N8
\Mux|currAns[0]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~25_combout\ = (\Mux|currAns[0]~23_combout\ & ((\Mux|currAns[0]~24_combout\) # ((!\D|instrC\(2))))) # (!\Mux|currAns[0]~23_combout\ & (((\Mux|currAns[0]~20_combout\ & \D|instrC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[0]~23_combout\,
	datab => \Mux|currAns[0]~24_combout\,
	datac => \Mux|currAns[0]~20_combout\,
	datad => \D|instrC\(2),
	combout => \Mux|currAns[0]~25_combout\);

-- Location: LCCOMB_X29_Y39_N4
\D|imm[7]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm[7]~4_combout\ = (!\instruction[10]~input_o\ & (\D|process_1~0_combout\ & (\D|process_1~19_combout\ & \D|imm[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \D|process_1~0_combout\,
	datac => \D|process_1~19_combout\,
	datad => \D|imm[7]~3_combout\,
	combout => \D|imm[7]~4_combout\);

-- Location: LCCOMB_X28_Y39_N16
\D|instrC[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC\(3) = (\D|imm[7]~3_combout\ & ((\D|imm[7]~4_combout\) # (\D|instrC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|imm[7]~3_combout\,
	datac => \D|imm[7]~4_combout\,
	datad => \D|instrC\(3),
	combout => \D|instrC\(3));

-- Location: LCCOMB_X29_Y38_N0
\Mux|currAns[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[0]~26_combout\ = (\D|instrC\(3) & (\D|imm\(0))) # (!\D|instrC\(3) & ((\Mux|currAns[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|imm\(0),
	datab => \Mux|currAns[0]~25_combout\,
	datad => \D|instrC\(3),
	combout => \Mux|currAns[0]~26_combout\);

-- Location: LCCOMB_X31_Y39_N8
\D|comb~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|comb~14_combout\ = (!\D|instrC[2]~9_combout\ & (\D|instrC[3]~5_combout\ & ((\D|instrC[2]~4_combout\) # (!\D|instrC[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC[2]~11_combout\,
	datab => \D|instrC[2]~9_combout\,
	datac => \D|instrC[3]~5_combout\,
	datad => \D|instrC[2]~4_combout\,
	combout => \D|comb~14_combout\);

-- Location: LCCOMB_X31_Y39_N10
\D|instrC[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|instrC\(1) = (!\D|comb~14_combout\ & ((\D|comb~15_combout\) # (\D|instrC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|comb~15_combout\,
	datac => \D|comb~14_combout\,
	datad => \D|instrC\(1),
	combout => \D|instrC\(1));

-- Location: LCCOMB_X27_Y39_N14
\Mux|currAns[7]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~27_combout\ = ((!\D|instrC\(2) & (!\D|instrC\(1) & !\D|instrC\(0)))) # (!\D|instrC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(3),
	datab => \D|instrC\(2),
	datac => \D|instrC\(1),
	datad => \D|instrC\(0),
	combout => \Mux|currAns[7]~27_combout\);

-- Location: CLKCTRL_G11
\Mux|currAns[7]~27clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux|currAns[7]~27clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux|currAns[7]~27clkctrl_outclk\);

-- Location: LCCOMB_X29_Y38_N10
\Mux|currAns[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(0) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[0]~26_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns\(0),
	datab => \Mux|currAns[0]~26_combout\,
	datad => \Mux|currAns[7]~27clkctrl_outclk\,
	combout => \Mux|currAns\(0));

-- Location: FF_X29_Y38_N5
\Temp|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(0));

-- Location: FF_X30_Y38_N25
\AL|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(0));

-- Location: CLKCTRL_G7
\D|imm[7]~4clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|imm[7]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|imm[7]~4clkctrl_outclk\);

-- Location: LCCOMB_X31_Y38_N4
\D|imm[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(1) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[1]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \D|imm\(1),
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(1));

-- Location: LCCOMB_X25_Y38_N0
\Mux|currAns[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~36_combout\ = (\D|instrC\(1) & ((!\D|instrC\(2)) # (!\D|instrC\(0)))) # (!\D|instrC\(1) & ((\D|instrC\(0)) # (\D|instrC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(1),
	datab => \D|instrC\(0),
	datad => \D|instrC\(2),
	combout => \Mux|currAns[2]~36_combout\);

-- Location: LCCOMB_X30_Y38_N16
\toInvert|invertedV~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~0_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(1))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(1),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(1),
	combout => \toInvert|invertedV~0_combout\);

-- Location: LCCOMB_X30_Y38_N4
\toInvert|invertedV[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(1) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~0_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|invertedV\(1),
	datac => \D|isSub~clkctrl_outclk\,
	datad => \toInvert|invertedV~0_combout\,
	combout => \toInvert|invertedV\(1));

-- Location: LCCOMB_X30_Y38_N12
\toInvert|al_valout[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[1]~1_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\AL|reg_out\(1)))) # (!\D|Equal1~2_combout\ & (\toInvert|invertedV\(1))))) # (!\D|isSub~combout\ & (((\AL|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~combout\,
	datab => \toInvert|invertedV\(1),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(1),
	combout => \toInvert|al_valout[1]~1_combout\);

-- Location: LCCOMB_X29_Y38_N18
\AddSub|Bit0|sum~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~4_combout\ = ((\toInvert|bl_valout[1]~1_combout\ $ (\toInvert|al_valout[1]~1_combout\ $ (!\AddSub|Bit0|sum~3\)))) # (GND)
-- \AddSub|Bit0|sum~5\ = CARRY((\toInvert|bl_valout[1]~1_combout\ & ((\toInvert|al_valout[1]~1_combout\) # (!\AddSub|Bit0|sum~3\))) # (!\toInvert|bl_valout[1]~1_combout\ & (\toInvert|al_valout[1]~1_combout\ & !\AddSub|Bit0|sum~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|bl_valout[1]~1_combout\,
	datab => \toInvert|al_valout[1]~1_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~3\,
	combout => \AddSub|Bit0|sum~4_combout\,
	cout => \AddSub|Bit0|sum~5\);

-- Location: LCCOMB_X30_Y38_N8
\wRegPass|outValue[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[0]~1_combout\ = (\D|Equal1~2_combout\ & (\AL|reg_out\(0))) # (!\D|Equal1~2_combout\ & ((\BL|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AL|reg_out\(0),
	datac => \D|Equal1~2_combout\,
	datad => \BL|reg_out\(0),
	combout => \wRegPass|outValue[0]~1_combout\);

-- Location: LCCOMB_X25_Y38_N14
\Mux|currAns[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~33_combout\ = (!\D|instrC\(1) & \D|instrC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(1),
	datad => \D|instrC\(2),
	combout => \Mux|currAns[2]~33_combout\);

-- Location: LCCOMB_X27_Y38_N14
\Mux|currAns[2]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~32_combout\ = (\D|instrC\(1)) # ((\D|instrC\(2) & \D|instrC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(2),
	datac => \D|instrC\(0),
	datad => \D|instrC\(1),
	combout => \Mux|currAns[2]~32_combout\);

-- Location: LCCOMB_X31_Y38_N30
\Mux|currAns[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~34_combout\ = (\BL|reg_out\(1) & ((\Mux|currAns[2]~33_combout\) # ((!\Mux|currAns[2]~32_combout\ & \AL|reg_out\(1))))) # (!\BL|reg_out\(1) & (\Mux|currAns[2]~33_combout\ & ((\Mux|currAns[2]~32_combout\) # (\AL|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(1),
	datab => \Mux|currAns[2]~33_combout\,
	datac => \Mux|currAns[2]~32_combout\,
	datad => \AL|reg_out\(1),
	combout => \Mux|currAns[1]~34_combout\);

-- Location: LCCOMB_X30_Y38_N2
\wRegPass|outValue[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[1]~0_combout\ = (\D|Equal1~2_combout\ & ((\AL|reg_out\(1)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(1),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(1),
	combout => \wRegPass|outValue[1]~0_combout\);

-- Location: LCCOMB_X30_Y38_N24
\Increment|cout|Bit1|sum~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit1|sum~4_combout\ = \wRegPass|outValue[1]~0_combout\ $ (((\D|Equal1~2_combout\ & ((\AL|reg_out\(0)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \BL|reg_out\(0),
	datac => \AL|reg_out\(0),
	datad => \wRegPass|outValue[1]~0_combout\,
	combout => \Increment|cout|Bit1|sum~4_combout\);

-- Location: LCCOMB_X27_Y38_N22
\Mux|currAns[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~28_combout\ = (!\D|instrC\(2) & !\D|instrC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(2),
	datac => \D|instrC\(0),
	combout => \Mux|currAns[7]~28_combout\);

-- Location: FF_X30_Y38_N11
\BL|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(1));

-- Location: LCCOMB_X27_Y38_N6
\Mux|currAns[2]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~29_combout\ = (\D|instrC\(2)) # ((\D|Equal1~2_combout\ & !\D|instrC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \D|instrC\(2),
	datac => \D|instrC\(0),
	combout => \Mux|currAns[2]~29_combout\);

-- Location: LCCOMB_X27_Y38_N10
\Mux|currAns[1]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~30_combout\ = (\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[2]~29_combout\ & ((\BL|reg_out\(1)))) # (!\Mux|currAns[2]~29_combout\ & (\AL|reg_out\(1))))) # (!\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(1),
	datab => \BL|reg_out\(1),
	datac => \Mux|currAns[7]~28_combout\,
	datad => \Mux|currAns[2]~29_combout\,
	combout => \Mux|currAns[1]~30_combout\);

-- Location: LCCOMB_X31_Y38_N20
\Mux|currAns[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~31_combout\ = (\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[1]~30_combout\)))) # (!\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[1]~30_combout\ & (\wRegPass|outValue[2]~2_combout\)) # (!\Mux|currAns[1]~30_combout\ & 
-- ((\Increment|cout|Bit1|sum~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[2]~2_combout\,
	datab => \Increment|cout|Bit1|sum~4_combout\,
	datac => \Mux|currAns[7]~28_combout\,
	datad => \Mux|currAns[1]~30_combout\,
	combout => \Mux|currAns[1]~31_combout\);

-- Location: LCCOMB_X31_Y38_N24
\Mux|currAns[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~35_combout\ = (\Mux|currAns[2]~32_combout\ & ((\Mux|currAns[1]~34_combout\ & (\wRegPass|outValue[0]~1_combout\)) # (!\Mux|currAns[1]~34_combout\ & ((\Mux|currAns[1]~31_combout\))))) # (!\Mux|currAns[2]~32_combout\ & 
-- (((\Mux|currAns[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~32_combout\,
	datab => \wRegPass|outValue[0]~1_combout\,
	datac => \Mux|currAns[1]~34_combout\,
	datad => \Mux|currAns[1]~31_combout\,
	combout => \Mux|currAns[1]~35_combout\);

-- Location: LCCOMB_X31_Y38_N18
\Mux|currAns[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~37_combout\ = (!\D|instrC\(3) & ((\Mux|currAns[2]~36_combout\ & ((\Mux|currAns[1]~35_combout\))) # (!\Mux|currAns[2]~36_combout\ & (\AddSub|Bit0|sum~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(3),
	datab => \Mux|currAns[2]~36_combout\,
	datac => \AddSub|Bit0|sum~4_combout\,
	datad => \Mux|currAns[1]~35_combout\,
	combout => \Mux|currAns[1]~37_combout\);

-- Location: LCCOMB_X31_Y38_N8
\Mux|currAns[1]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[1]~38_combout\ = (\Mux|currAns[1]~37_combout\) # ((\D|instrC\(3) & \D|imm\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(3),
	datac => \D|imm\(1),
	datad => \Mux|currAns[1]~37_combout\,
	combout => \Mux|currAns[1]~38_combout\);

-- Location: LCCOMB_X31_Y38_N26
\Mux|currAns[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(1) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[1]~38_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns\(1),
	datac => \Mux|currAns[1]~38_combout\,
	datad => \Mux|currAns[7]~27clkctrl_outclk\,
	combout => \Mux|currAns\(1));

-- Location: FF_X31_Y38_N1
\Temp|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(1));

-- Location: FF_X30_Y38_N29
\AL|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(1));

-- Location: LCCOMB_X32_Y38_N28
\D|imm[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(2) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\instruction[2]~input_o\))) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\D|imm\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|imm\(2),
	datac => \instruction[2]~input_o\,
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(2));

-- Location: LCCOMB_X32_Y38_N26
\Mux|currAns[2]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~77_combout\ = (\D|instrC\(3) & (((\D|imm\(2))))) # (!\D|instrC\(3) & (\AddSub|Bit0|sum~6_combout\ & (!\Mux|currAns[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddSub|Bit0|sum~6_combout\,
	datab => \D|instrC\(3),
	datac => \Mux|currAns[2]~36_combout\,
	datad => \D|imm\(2),
	combout => \Mux|currAns[2]~77_combout\);

-- Location: FF_X28_Y38_N3
\BL|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(2));

-- Location: LCCOMB_X32_Y38_N2
\Mux|currAns[2]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~79_combout\ = (\Mux|currAns[2]~32_combout\ & (((!\Mux|currAns[2]~33_combout\)))) # (!\Mux|currAns[2]~32_combout\ & ((\BL|reg_out\(2) & ((\Mux|currAns[2]~33_combout\) # (\AL|reg_out\(2)))) # (!\BL|reg_out\(2) & (\Mux|currAns[2]~33_combout\ 
-- & \AL|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~32_combout\,
	datab => \BL|reg_out\(2),
	datac => \Mux|currAns[2]~33_combout\,
	datad => \AL|reg_out\(2),
	combout => \Mux|currAns[2]~79_combout\);

-- Location: LCCOMB_X28_Y38_N2
\wRegPass|outValue[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[2]~2_combout\ = (\D|Equal1~2_combout\ & (\AL|reg_out\(2))) # (!\D|Equal1~2_combout\ & ((\BL|reg_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(2),
	datac => \BL|reg_out\(2),
	datad => \D|Equal1~2_combout\,
	combout => \wRegPass|outValue[2]~2_combout\);

-- Location: LCCOMB_X28_Y38_N14
\Increment|cout|Bit2|sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit2|sum~0_combout\ = \wRegPass|outValue[2]~2_combout\ $ (((\wRegPass|outValue[1]~0_combout\ & \wRegPass|outValue[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wRegPass|outValue[2]~2_combout\,
	datac => \wRegPass|outValue[1]~0_combout\,
	datad => \wRegPass|outValue[0]~1_combout\,
	combout => \Increment|cout|Bit2|sum~0_combout\);

-- Location: LCCOMB_X28_Y38_N8
\Mux|currAns[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~39_combout\ = (\Mux|currAns[2]~29_combout\ & (((!\Mux|currAns[7]~28_combout\)))) # (!\Mux|currAns[2]~29_combout\ & ((\Mux|currAns[7]~28_combout\ & (\AL|reg_out\(2))) # (!\Mux|currAns[7]~28_combout\ & 
-- ((\Increment|cout|Bit2|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(2),
	datab => \Mux|currAns[2]~29_combout\,
	datac => \Increment|cout|Bit2|sum~0_combout\,
	datad => \Mux|currAns[7]~28_combout\,
	combout => \Mux|currAns[2]~39_combout\);

-- Location: LCCOMB_X31_Y38_N14
\D|imm[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(3) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[3]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[3]~input_o\,
	datac => \D|imm\(3),
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(3));

-- Location: FF_X27_Y38_N17
\AL|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(4));

-- Location: LCCOMB_X27_Y38_N26
\Mux|currAns[4]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~50_combout\ = (\Mux|currAns[2]~32_combout\ & ((\Mux|currAns[2]~29_combout\ & (\BL|reg_out\(4))) # (!\Mux|currAns[2]~29_combout\ & ((\AL|reg_out\(4)))))) # (!\Mux|currAns[2]~32_combout\ & (((\BL|reg_out\(4) & \AL|reg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~29_combout\,
	datab => \BL|reg_out\(4),
	datac => \Mux|currAns[2]~32_combout\,
	datad => \AL|reg_out\(4),
	combout => \Mux|currAns[4]~50_combout\);

-- Location: FF_X25_Y38_N1
\AL|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(5));

-- Location: LCCOMB_X25_Y38_N16
\toInvert|invertedV~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~4_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(5))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL|reg_out\(5),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(5),
	combout => \toInvert|invertedV~4_combout\);

-- Location: LCCOMB_X25_Y38_N24
\toInvert|invertedV[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(5) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~4_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|invertedV\(5),
	datac => \D|isSub~clkctrl_outclk\,
	datad => \toInvert|invertedV~4_combout\,
	combout => \toInvert|invertedV\(5));

-- Location: LCCOMB_X25_Y38_N30
\toInvert|bl_valout[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[5]~5_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\toInvert|invertedV\(5)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(5))))) # (!\D|isSub~combout\ & (\BL|reg_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(5),
	datab => \toInvert|invertedV\(5),
	datac => \D|isSub~combout\,
	datad => \D|Equal1~2_combout\,
	combout => \toInvert|bl_valout[5]~5_combout\);

-- Location: LCCOMB_X27_Y38_N28
\toInvert|invertedV~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~3_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(4))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datac => \BL|reg_out\(4),
	datad => \AL|reg_out\(4),
	combout => \toInvert|invertedV~3_combout\);

-- Location: LCCOMB_X27_Y38_N18
\toInvert|invertedV[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(4) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~3_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|invertedV\(4),
	datac => \D|isSub~clkctrl_outclk\,
	datad => \toInvert|invertedV~3_combout\,
	combout => \toInvert|invertedV\(4));

-- Location: LCCOMB_X27_Y38_N24
\toInvert|al_valout[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[4]~4_combout\ = (\D|Equal1~2_combout\ & (((\AL|reg_out\(4))))) # (!\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(4))) # (!\D|isSub~combout\ & ((\AL|reg_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(4),
	datac => \D|isSub~combout\,
	datad => \AL|reg_out\(4),
	combout => \toInvert|al_valout[4]~4_combout\);

-- Location: FF_X28_Y38_N1
\AL|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(3));

-- Location: LCCOMB_X28_Y38_N20
\toInvert|invertedV~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~2_combout\ = (\D|Equal1~2_combout\ & ((\BL|reg_out\(3)))) # (!\D|Equal1~2_combout\ & (\AL|reg_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datac => \AL|reg_out\(3),
	datad => \BL|reg_out\(3),
	combout => \toInvert|invertedV~2_combout\);

-- Location: LCCOMB_X28_Y38_N0
\toInvert|invertedV[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(3) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~2_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~clkctrl_outclk\,
	datab => \toInvert|invertedV\(3),
	datad => \toInvert|invertedV~2_combout\,
	combout => \toInvert|invertedV\(3));

-- Location: LCCOMB_X28_Y38_N12
\toInvert|bl_valout[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[3]~3_combout\ = (\D|Equal1~2_combout\ & ((\D|isSub~combout\ & ((\toInvert|invertedV\(3)))) # (!\D|isSub~combout\ & (\BL|reg_out\(3))))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \BL|reg_out\(3),
	datac => \D|isSub~combout\,
	datad => \toInvert|invertedV\(3),
	combout => \toInvert|bl_valout[3]~3_combout\);

-- Location: LCCOMB_X28_Y38_N18
\toInvert|invertedV~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~1_combout\ = (\D|Equal1~2_combout\ & ((\BL|reg_out\(2)))) # (!\D|Equal1~2_combout\ & (\AL|reg_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datac => \AL|reg_out\(2),
	datad => \BL|reg_out\(2),
	combout => \toInvert|invertedV~1_combout\);

-- Location: LCCOMB_X28_Y38_N28
\toInvert|invertedV[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(2) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~1_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~clkctrl_outclk\,
	datab => \toInvert|invertedV\(2),
	datad => \toInvert|invertedV~1_combout\,
	combout => \toInvert|invertedV\(2));

-- Location: LCCOMB_X28_Y38_N22
\toInvert|al_valout[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[2]~2_combout\ = (\D|Equal1~2_combout\ & (((\AL|reg_out\(2))))) # (!\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(2))) # (!\D|isSub~combout\ & ((\AL|reg_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(2),
	datac => \D|isSub~combout\,
	datad => \AL|reg_out\(2),
	combout => \toInvert|al_valout[2]~2_combout\);

-- Location: LCCOMB_X29_Y38_N24
\AddSub|Bit0|sum~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~10_combout\ = (\toInvert|bl_valout[4]~4_combout\ & ((\toInvert|al_valout[4]~4_combout\ & (\AddSub|Bit0|sum~9\ & VCC)) # (!\toInvert|al_valout[4]~4_combout\ & (!\AddSub|Bit0|sum~9\)))) # (!\toInvert|bl_valout[4]~4_combout\ & 
-- ((\toInvert|al_valout[4]~4_combout\ & (!\AddSub|Bit0|sum~9\)) # (!\toInvert|al_valout[4]~4_combout\ & ((\AddSub|Bit0|sum~9\) # (GND)))))
-- \AddSub|Bit0|sum~11\ = CARRY((\toInvert|bl_valout[4]~4_combout\ & (!\toInvert|al_valout[4]~4_combout\ & !\AddSub|Bit0|sum~9\)) # (!\toInvert|bl_valout[4]~4_combout\ & ((!\AddSub|Bit0|sum~9\) # (!\toInvert|al_valout[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|bl_valout[4]~4_combout\,
	datab => \toInvert|al_valout[4]~4_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~9\,
	combout => \AddSub|Bit0|sum~10_combout\,
	cout => \AddSub|Bit0|sum~11\);

-- Location: LCCOMB_X29_Y38_N26
\AddSub|Bit0|sum~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~12_combout\ = ((\toInvert|al_valout[5]~5_combout\ $ (\toInvert|bl_valout[5]~5_combout\ $ (!\AddSub|Bit0|sum~11\)))) # (GND)
-- \AddSub|Bit0|sum~13\ = CARRY((\toInvert|al_valout[5]~5_combout\ & ((\toInvert|bl_valout[5]~5_combout\) # (!\AddSub|Bit0|sum~11\))) # (!\toInvert|al_valout[5]~5_combout\ & (\toInvert|bl_valout[5]~5_combout\ & !\AddSub|Bit0|sum~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|al_valout[5]~5_combout\,
	datab => \toInvert|bl_valout[5]~5_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~11\,
	combout => \AddSub|Bit0|sum~12_combout\,
	cout => \AddSub|Bit0|sum~13\);

-- Location: LCCOMB_X24_Y38_N28
\Mux|currAns[5]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~57_combout\ = (\Mux|currAns[2]~33_combout\ & ((\Mux|currAns[2]~32_combout\) # ((\AL|reg_out\(5)) # (\BL|reg_out\(5))))) # (!\Mux|currAns[2]~33_combout\ & (!\Mux|currAns[2]~32_combout\ & (\AL|reg_out\(5) & \BL|reg_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~33_combout\,
	datab => \Mux|currAns[2]~32_combout\,
	datac => \AL|reg_out\(5),
	datad => \BL|reg_out\(5),
	combout => \Mux|currAns[5]~57_combout\);

-- Location: FF_X25_Y38_N7
\AL|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(6));

-- Location: LCCOMB_X26_Y38_N2
\Mux|currAns[6]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~65_combout\ = (\Mux|currAns[2]~33_combout\ & ((\Mux|currAns[2]~32_combout\) # ((\BL|reg_out\(6)) # (\AL|reg_out\(6))))) # (!\Mux|currAns[2]~33_combout\ & (!\Mux|currAns[2]~32_combout\ & (\BL|reg_out\(6) & \AL|reg_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~33_combout\,
	datab => \Mux|currAns[2]~32_combout\,
	datac => \BL|reg_out\(6),
	datad => \AL|reg_out\(6),
	combout => \Mux|currAns[6]~65_combout\);

-- Location: LCCOMB_X25_Y38_N4
\Mux|currAns[6]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~61_combout\ = (\AL|reg_out\(6) & !\D|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(6),
	datad => \D|Equal1~2_combout\,
	combout => \Mux|currAns[6]~61_combout\);

-- Location: LCCOMB_X28_Y38_N4
\Increment|cout|Bit3|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit3|cout~0_combout\ = (\wRegPass|outValue[3]~3_combout\ & (\wRegPass|outValue[2]~2_combout\ & (\wRegPass|outValue[1]~0_combout\ & \wRegPass|outValue[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[3]~3_combout\,
	datab => \wRegPass|outValue[2]~2_combout\,
	datac => \wRegPass|outValue[1]~0_combout\,
	datad => \wRegPass|outValue[0]~1_combout\,
	combout => \Increment|cout|Bit3|cout~0_combout\);

-- Location: LCCOMB_X26_Y38_N20
\Mux|currAns[6]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~62_combout\ = \wRegPass|outValue[6]~6_combout\ $ (((\wRegPass|outValue[4]~4_combout\ & (\wRegPass|outValue[5]~5_combout\ & \Increment|cout|Bit3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[4]~4_combout\,
	datab => \wRegPass|outValue[5]~5_combout\,
	datac => \wRegPass|outValue[6]~6_combout\,
	datad => \Increment|cout|Bit3|cout~0_combout\,
	combout => \Mux|currAns[6]~62_combout\);

-- Location: LCCOMB_X26_Y38_N26
\Mux|currAns[6]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~63_combout\ = (\D|instrC\(2)) # ((\D|instrC\(0) & ((\Mux|currAns[6]~62_combout\))) # (!\D|instrC\(0) & (\Mux|currAns[6]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(0),
	datab => \Mux|currAns[6]~61_combout\,
	datac => \D|instrC\(2),
	datad => \Mux|currAns[6]~62_combout\,
	combout => \Mux|currAns[6]~63_combout\);

-- Location: LCCOMB_X34_Y38_N18
\D|imm[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(7) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[7]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \D|imm\(7),
	datad => \D|imm[7]~4clkctrl_outclk\,
	combout => \D|imm\(7));

-- Location: LCCOMB_X34_Y38_N26
\Mux|currAns[7]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~73_combout\ = (\D|instrC\(2) & (\D|instrC\(1) $ (\D|instrC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(1),
	datac => \D|instrC\(2),
	datad => \D|instrC\(0),
	combout => \Mux|currAns[7]~73_combout\);

-- Location: FF_X30_Y38_N1
\AL|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(7));

-- Location: LCCOMB_X30_Y38_N6
\decideReg|outValue[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decideReg|outValue[7]~0_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(7))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL|reg_out\(7),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(7),
	combout => \decideReg|outValue[7]~0_combout\);

-- Location: LCCOMB_X30_Y38_N10
\toInvert|invertedV[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(7) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\decideReg|outValue[7]~0_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~clkctrl_outclk\,
	datab => \toInvert|invertedV\(7),
	datad => \decideReg|outValue[7]~0_combout\,
	combout => \toInvert|invertedV\(7));

-- Location: LCCOMB_X30_Y38_N18
\toInvert|bl_valout[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[7]~7_combout\ = (\D|Equal1~2_combout\ & ((\D|isSub~combout\ & (\toInvert|invertedV\(7))) # (!\D|isSub~combout\ & ((\BL|reg_out\(7)))))) # (!\D|Equal1~2_combout\ & (((\BL|reg_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \toInvert|invertedV\(7),
	datac => \BL|reg_out\(7),
	datad => \D|isSub~combout\,
	combout => \toInvert|bl_valout[7]~7_combout\);

-- Location: LCCOMB_X30_Y38_N0
\toInvert|al_valout[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|al_valout[7]~7_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\AL|reg_out\(7)))) # (!\D|Equal1~2_combout\ & (\toInvert|invertedV\(7))))) # (!\D|isSub~combout\ & (((\AL|reg_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|isSub~combout\,
	datab => \toInvert|invertedV\(7),
	datac => \AL|reg_out\(7),
	datad => \D|Equal1~2_combout\,
	combout => \toInvert|al_valout[7]~7_combout\);

-- Location: LCCOMB_X25_Y38_N10
\toInvert|invertedV~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV~5_combout\ = (\D|Equal1~2_combout\ & (\BL|reg_out\(6))) # (!\D|Equal1~2_combout\ & ((\AL|reg_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL|reg_out\(6),
	datac => \D|Equal1~2_combout\,
	datad => \AL|reg_out\(6),
	combout => \toInvert|invertedV~5_combout\);

-- Location: LCCOMB_X25_Y38_N2
\toInvert|invertedV[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|invertedV\(6) = (GLOBAL(\D|isSub~clkctrl_outclk\) & ((!\toInvert|invertedV~5_combout\))) # (!GLOBAL(\D|isSub~clkctrl_outclk\) & (\toInvert|invertedV\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|invertedV\(6),
	datac => \D|isSub~clkctrl_outclk\,
	datad => \toInvert|invertedV~5_combout\,
	combout => \toInvert|invertedV\(6));

-- Location: LCCOMB_X25_Y38_N18
\toInvert|bl_valout[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \toInvert|bl_valout[6]~6_combout\ = (\D|isSub~combout\ & ((\D|Equal1~2_combout\ & ((\toInvert|invertedV\(6)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(6))))) # (!\D|isSub~combout\ & (\BL|reg_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(6),
	datab => \toInvert|invertedV\(6),
	datac => \D|isSub~combout\,
	datad => \D|Equal1~2_combout\,
	combout => \toInvert|bl_valout[6]~6_combout\);

-- Location: LCCOMB_X29_Y38_N28
\AddSub|Bit0|sum~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~14_combout\ = (\toInvert|al_valout[6]~6_combout\ & ((\toInvert|bl_valout[6]~6_combout\ & (\AddSub|Bit0|sum~13\ & VCC)) # (!\toInvert|bl_valout[6]~6_combout\ & (!\AddSub|Bit0|sum~13\)))) # (!\toInvert|al_valout[6]~6_combout\ & 
-- ((\toInvert|bl_valout[6]~6_combout\ & (!\AddSub|Bit0|sum~13\)) # (!\toInvert|bl_valout[6]~6_combout\ & ((\AddSub|Bit0|sum~13\) # (GND)))))
-- \AddSub|Bit0|sum~15\ = CARRY((\toInvert|al_valout[6]~6_combout\ & (!\toInvert|bl_valout[6]~6_combout\ & !\AddSub|Bit0|sum~13\)) # (!\toInvert|al_valout[6]~6_combout\ & ((!\AddSub|Bit0|sum~13\) # (!\toInvert|bl_valout[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toInvert|al_valout[6]~6_combout\,
	datab => \toInvert|bl_valout[6]~6_combout\,
	datad => VCC,
	cin => \AddSub|Bit0|sum~13\,
	combout => \AddSub|Bit0|sum~14_combout\,
	cout => \AddSub|Bit0|sum~15\);

-- Location: LCCOMB_X29_Y38_N30
\AddSub|Bit0|sum~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AddSub|Bit0|sum~16_combout\ = \toInvert|bl_valout[7]~7_combout\ $ (\AddSub|Bit0|sum~15\ $ (!\toInvert|al_valout[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toInvert|bl_valout[7]~7_combout\,
	datad => \toInvert|al_valout[7]~7_combout\,
	cin => \AddSub|Bit0|sum~15\,
	combout => \AddSub|Bit0|sum~16_combout\);

-- Location: LCCOMB_X34_Y38_N0
\Mux|currAns[7]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~69_combout\ = (\D|instrC\(0) & (\BL|reg_out\(7) & \AL|reg_out\(7))) # (!\D|instrC\(0) & ((\BL|reg_out\(7)) # (\AL|reg_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(0),
	datac => \BL|reg_out\(7),
	datad => \AL|reg_out\(7),
	combout => \Mux|currAns[7]~69_combout\);

-- Location: LCCOMB_X34_Y38_N2
\Increment|cout|Bit6|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit6|cout~0_combout\ = (\wRegPass|outValue[5]~5_combout\ & (\wRegPass|outValue[4]~4_combout\ & (\wRegPass|outValue[6]~6_combout\ & \Increment|cout|Bit3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[5]~5_combout\,
	datab => \wRegPass|outValue[4]~4_combout\,
	datac => \wRegPass|outValue[6]~6_combout\,
	datad => \Increment|cout|Bit3|cout~0_combout\,
	combout => \Increment|cout|Bit6|cout~0_combout\);

-- Location: LCCOMB_X34_Y38_N28
\Mux|currAns[7]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~70_combout\ = (\D|instrC\(0) & ((\wRegPass|outValue[7]~7_combout\ $ (\Increment|cout|Bit6|cout~0_combout\)))) # (!\D|instrC\(0) & (\decideReg|outValue[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decideReg|outValue[7]~0_combout\,
	datab => \D|instrC\(0),
	datac => \wRegPass|outValue[7]~7_combout\,
	datad => \Increment|cout|Bit6|cout~0_combout\,
	combout => \Mux|currAns[7]~70_combout\);

-- Location: LCCOMB_X34_Y38_N10
\Mux|currAns[7]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~71_combout\ = (\D|instrC\(1) & ((\Mux|currAns[7]~70_combout\))) # (!\D|instrC\(1) & (\Mux|currAns[7]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(1),
	datac => \Mux|currAns[7]~69_combout\,
	datad => \Mux|currAns[7]~70_combout\,
	combout => \Mux|currAns[7]~71_combout\);

-- Location: LCCOMB_X34_Y38_N24
\Mux|currAns[7]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~74_combout\ = (\Mux|currAns[7]~72_combout\ & ((\Mux|currAns[7]~73_combout\) # ((\Mux|currAns[7]~71_combout\)))) # (!\Mux|currAns[7]~72_combout\ & (!\Mux|currAns[7]~73_combout\ & (\AddSub|Bit0|sum~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[7]~72_combout\,
	datab => \Mux|currAns[7]~73_combout\,
	datac => \AddSub|Bit0|sum~16_combout\,
	datad => \Mux|currAns[7]~71_combout\,
	combout => \Mux|currAns[7]~74_combout\);

-- Location: LCCOMB_X34_Y38_N6
\Mux|currAns[7]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[7]~75_combout\ = (\D|instrC\(3) & (\D|imm\(7))) # (!\D|instrC\(3) & ((\Mux|currAns[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|imm\(7),
	datac => \D|instrC\(3),
	datad => \Mux|currAns[7]~74_combout\,
	combout => \Mux|currAns[7]~75_combout\);

-- Location: LCCOMB_X34_Y38_N12
\Mux|currAns[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(7) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[7]~75_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns\(7),
	datac => \Mux|currAns[7]~27clkctrl_outclk\,
	datad => \Mux|currAns[7]~75_combout\,
	combout => \Mux|currAns\(7));

-- Location: FF_X31_Y38_N11
\Temp|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(7));

-- Location: FF_X30_Y38_N19
\BL|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(7));

-- Location: LCCOMB_X30_Y38_N28
\wRegPass|outValue[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[7]~7_combout\ = (\D|Equal1~2_combout\ & ((\AL|reg_out\(7)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \BL|reg_out\(7),
	datad => \AL|reg_out\(7),
	combout => \wRegPass|outValue[7]~7_combout\);

-- Location: LCCOMB_X26_Y38_N28
\Mux|currAns[6]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~64_combout\ = (\Mux|currAns[2]~29_combout\ & ((\Mux|currAns[6]~63_combout\ & ((\wRegPass|outValue[7]~7_combout\))) # (!\Mux|currAns[6]~63_combout\ & (\BL|reg_out\(6))))) # (!\Mux|currAns[2]~29_combout\ & (((\Mux|currAns[6]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BL|reg_out\(6),
	datab => \Mux|currAns[2]~29_combout\,
	datac => \Mux|currAns[6]~63_combout\,
	datad => \wRegPass|outValue[7]~7_combout\,
	combout => \Mux|currAns[6]~64_combout\);

-- Location: LCCOMB_X26_Y38_N8
\Mux|currAns[6]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~66_combout\ = (\Mux|currAns[2]~32_combout\ & ((\Mux|currAns[6]~65_combout\ & (\wRegPass|outValue[5]~5_combout\)) # (!\Mux|currAns[6]~65_combout\ & ((\Mux|currAns[6]~64_combout\))))) # (!\Mux|currAns[2]~32_combout\ & 
-- (\Mux|currAns[6]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~32_combout\,
	datab => \Mux|currAns[6]~65_combout\,
	datac => \wRegPass|outValue[5]~5_combout\,
	datad => \Mux|currAns[6]~64_combout\,
	combout => \Mux|currAns[6]~66_combout\);

-- Location: IOIBUF_X34_Y41_N1
\instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: LCCOMB_X26_Y38_N6
\D|imm[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(6) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\instruction[6]~input_o\)) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\D|imm\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[6]~input_o\,
	datac => \D|imm[7]~4clkctrl_outclk\,
	datad => \D|imm\(6),
	combout => \D|imm\(6));

-- Location: LCCOMB_X26_Y38_N30
\Mux|currAns[6]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~67_combout\ = (\D|instrC\(3) & (((\D|imm\(6))))) # (!\D|instrC\(3) & (!\Mux|currAns[2]~36_combout\ & (\AddSub|Bit0|sum~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~36_combout\,
	datab => \D|instrC\(3),
	datac => \AddSub|Bit0|sum~14_combout\,
	datad => \D|imm\(6),
	combout => \Mux|currAns[6]~67_combout\);

-- Location: LCCOMB_X26_Y38_N4
\Mux|currAns[6]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[6]~68_combout\ = (\Mux|currAns[6]~67_combout\) # ((\Mux|currAns[2]~41_combout\ & \Mux|currAns[6]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~41_combout\,
	datac => \Mux|currAns[6]~66_combout\,
	datad => \Mux|currAns[6]~67_combout\,
	combout => \Mux|currAns[6]~68_combout\);

-- Location: LCCOMB_X26_Y38_N12
\Mux|currAns[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(6) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[6]~68_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns\(6),
	datac => \Mux|currAns[6]~68_combout\,
	datad => \Mux|currAns[7]~27clkctrl_outclk\,
	combout => \Mux|currAns\(6));

-- Location: FF_X26_Y38_N11
\Temp|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(6));

-- Location: FF_X25_Y38_N15
\BL|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(6));

-- Location: LCCOMB_X25_Y38_N6
\wRegPass|outValue[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[6]~6_combout\ = (\D|Equal1~2_combout\ & ((\AL|reg_out\(6)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BL|reg_out\(6),
	datac => \AL|reg_out\(6),
	datad => \D|Equal1~2_combout\,
	combout => \wRegPass|outValue[6]~6_combout\);

-- Location: LCCOMB_X25_Y38_N26
\Increment|cout|Bit5|sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit5|sum~0_combout\ = \wRegPass|outValue[5]~5_combout\ $ (((\wRegPass|outValue[4]~4_combout\ & \Increment|cout|Bit3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wRegPass|outValue[4]~4_combout\,
	datac => \wRegPass|outValue[5]~5_combout\,
	datad => \Increment|cout|Bit3|cout~0_combout\,
	combout => \Increment|cout|Bit5|sum~0_combout\);

-- Location: LCCOMB_X25_Y38_N28
\Mux|currAns[5]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~55_combout\ = (\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[2]~29_combout\ & ((\BL|reg_out\(5)))) # (!\Mux|currAns[2]~29_combout\ & (\AL|reg_out\(5))))) # (!\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(5),
	datab => \BL|reg_out\(5),
	datac => \Mux|currAns[7]~28_combout\,
	datad => \Mux|currAns[2]~29_combout\,
	combout => \Mux|currAns[5]~55_combout\);

-- Location: LCCOMB_X25_Y38_N22
\Mux|currAns[5]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~56_combout\ = (\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[5]~55_combout\)))) # (!\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[5]~55_combout\ & (\wRegPass|outValue[6]~6_combout\)) # (!\Mux|currAns[5]~55_combout\ & 
-- ((\Increment|cout|Bit5|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[7]~28_combout\,
	datab => \wRegPass|outValue[6]~6_combout\,
	datac => \Increment|cout|Bit5|sum~0_combout\,
	datad => \Mux|currAns[5]~55_combout\,
	combout => \Mux|currAns[5]~56_combout\);

-- Location: LCCOMB_X24_Y38_N2
\Mux|currAns[5]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~58_combout\ = (\Mux|currAns[5]~57_combout\ & ((\wRegPass|outValue[4]~4_combout\) # ((!\Mux|currAns[2]~32_combout\)))) # (!\Mux|currAns[5]~57_combout\ & (((\Mux|currAns[2]~32_combout\ & \Mux|currAns[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[4]~4_combout\,
	datab => \Mux|currAns[5]~57_combout\,
	datac => \Mux|currAns[2]~32_combout\,
	datad => \Mux|currAns[5]~56_combout\,
	combout => \Mux|currAns[5]~58_combout\);

-- Location: LCCOMB_X24_Y38_N20
\Mux|currAns[5]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~59_combout\ = (!\D|instrC\(3) & ((\Mux|currAns[2]~36_combout\ & ((\Mux|currAns[5]~58_combout\))) # (!\Mux|currAns[2]~36_combout\ & (\AddSub|Bit0|sum~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(3),
	datab => \AddSub|Bit0|sum~12_combout\,
	datac => \Mux|currAns[2]~36_combout\,
	datad => \Mux|currAns[5]~58_combout\,
	combout => \Mux|currAns[5]~59_combout\);

-- Location: LCCOMB_X24_Y38_N30
\Mux|currAns[5]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[5]~60_combout\ = (\Mux|currAns[5]~59_combout\) # ((\D|imm\(5) & \D|instrC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|imm\(5),
	datac => \D|instrC\(3),
	datad => \Mux|currAns[5]~59_combout\,
	combout => \Mux|currAns[5]~60_combout\);

-- Location: LCCOMB_X24_Y38_N4
\Mux|currAns[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(5) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[5]~60_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[7]~27clkctrl_outclk\,
	datab => \Mux|currAns\(5),
	datac => \Mux|currAns[5]~60_combout\,
	combout => \Mux|currAns\(5));

-- Location: FF_X24_Y38_N1
\Temp|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(5));

-- Location: FF_X25_Y38_N5
\BL|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(5));

-- Location: LCCOMB_X25_Y38_N20
\wRegPass|outValue[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[5]~5_combout\ = (\D|Equal1~2_combout\ & ((\AL|reg_out\(5)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datab => \BL|reg_out\(5),
	datad => \AL|reg_out\(5),
	combout => \wRegPass|outValue[5]~5_combout\);

-- Location: LCCOMB_X27_Y38_N8
\Mux|currAns[4]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~49_combout\ = (\Mux|currAns[2]~29_combout\ & (((\wRegPass|outValue[5]~5_combout\)))) # (!\Mux|currAns[2]~29_combout\ & (\wRegPass|outValue[4]~4_combout\ $ (((\Increment|cout|Bit3|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~29_combout\,
	datab => \wRegPass|outValue[4]~4_combout\,
	datac => \wRegPass|outValue[5]~5_combout\,
	datad => \Increment|cout|Bit3|cout~0_combout\,
	combout => \Mux|currAns[4]~49_combout\);

-- Location: LCCOMB_X27_Y38_N20
\Mux|currAns[4]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~51_combout\ = (\Mux|currAns[4]~76_combout\ & ((\Mux|currAns[2]~33_combout\) # ((\Mux|currAns[4]~49_combout\)))) # (!\Mux|currAns[4]~76_combout\ & (!\Mux|currAns[2]~33_combout\ & (\Mux|currAns[4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[4]~76_combout\,
	datab => \Mux|currAns[2]~33_combout\,
	datac => \Mux|currAns[4]~50_combout\,
	datad => \Mux|currAns[4]~49_combout\,
	combout => \Mux|currAns[4]~51_combout\);

-- Location: LCCOMB_X26_Y38_N24
\Mux|currAns[4]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~53_combout\ = (\Mux|currAns[4]~51_combout\ & (((\wRegPass|outValue[3]~3_combout\) # (!\Mux|currAns[2]~33_combout\)))) # (!\Mux|currAns[4]~51_combout\ & (\Mux|currAns[4]~52_combout\ & ((\Mux|currAns[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[4]~52_combout\,
	datab => \wRegPass|outValue[3]~3_combout\,
	datac => \Mux|currAns[4]~51_combout\,
	datad => \Mux|currAns[2]~33_combout\,
	combout => \Mux|currAns[4]~53_combout\);

-- Location: LCCOMB_X26_Y38_N0
\Mux|currAns[2]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~41_combout\ = (!\D|instrC\(3) & ((\D|instrC\(1) & ((!\D|instrC\(0)) # (!\D|instrC\(2)))) # (!\D|instrC\(1) & ((\D|instrC\(2)) # (\D|instrC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|instrC\(1),
	datab => \D|instrC\(3),
	datac => \D|instrC\(2),
	datad => \D|instrC\(0),
	combout => \Mux|currAns[2]~41_combout\);

-- Location: IOIBUF_X50_Y41_N8
\instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: LCCOMB_X26_Y38_N16
\D|imm[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D|imm\(4) = (GLOBAL(\D|imm[7]~4clkctrl_outclk\) & ((\instruction[4]~input_o\))) # (!GLOBAL(\D|imm[7]~4clkctrl_outclk\) & (\D|imm\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|imm[7]~4clkctrl_outclk\,
	datab => \D|imm\(4),
	datad => \instruction[4]~input_o\,
	combout => \D|imm\(4));

-- Location: LCCOMB_X26_Y38_N14
\Mux|currAns[4]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~48_combout\ = (\D|instrC\(3) & (((\D|imm\(4))))) # (!\D|instrC\(3) & (!\Mux|currAns[2]~36_combout\ & ((\AddSub|Bit0|sum~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~36_combout\,
	datab => \D|imm\(4),
	datac => \AddSub|Bit0|sum~10_combout\,
	datad => \D|instrC\(3),
	combout => \Mux|currAns[4]~48_combout\);

-- Location: LCCOMB_X26_Y38_N22
\Mux|currAns[4]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[4]~54_combout\ = (\Mux|currAns[4]~48_combout\) # ((\Mux|currAns[4]~53_combout\ & \Mux|currAns[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux|currAns[4]~53_combout\,
	datac => \Mux|currAns[2]~41_combout\,
	datad => \Mux|currAns[4]~48_combout\,
	combout => \Mux|currAns[4]~54_combout\);

-- Location: LCCOMB_X26_Y38_N18
\Mux|currAns[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(4) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[4]~54_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux|currAns\(4),
	datac => \Mux|currAns[4]~54_combout\,
	datad => \Mux|currAns[7]~27clkctrl_outclk\,
	combout => \Mux|currAns\(4));

-- Location: FF_X26_Y38_N17
\Temp|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(4));

-- Location: FF_X27_Y38_N5
\BL|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(4));

-- Location: LCCOMB_X27_Y38_N12
\wRegPass|outValue[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[4]~4_combout\ = (\D|Equal1~2_combout\ & ((\AL|reg_out\(4)))) # (!\D|Equal1~2_combout\ & (\BL|reg_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal1~2_combout\,
	datac => \BL|reg_out\(4),
	datad => \AL|reg_out\(4),
	combout => \wRegPass|outValue[4]~4_combout\);

-- Location: LCCOMB_X28_Y38_N26
\Increment|cout|Bit3|sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Increment|cout|Bit3|sum~0_combout\ = \wRegPass|outValue[3]~3_combout\ $ (((\wRegPass|outValue[2]~2_combout\ & (\wRegPass|outValue[1]~0_combout\ & \wRegPass|outValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wRegPass|outValue[3]~3_combout\,
	datab => \wRegPass|outValue[2]~2_combout\,
	datac => \wRegPass|outValue[1]~0_combout\,
	datad => \wRegPass|outValue[0]~1_combout\,
	combout => \Increment|cout|Bit3|sum~0_combout\);

-- Location: LCCOMB_X31_Y38_N2
\Mux|currAns[3]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~42_combout\ = (\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[2]~29_combout\ & ((\BL|reg_out\(3)))) # (!\Mux|currAns[2]~29_combout\ & (\AL|reg_out\(3))))) # (!\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(3),
	datab => \Mux|currAns[7]~28_combout\,
	datac => \BL|reg_out\(3),
	datad => \Mux|currAns[2]~29_combout\,
	combout => \Mux|currAns[3]~42_combout\);

-- Location: LCCOMB_X31_Y38_N28
\Mux|currAns[3]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~43_combout\ = (\Mux|currAns[7]~28_combout\ & (((\Mux|currAns[3]~42_combout\)))) # (!\Mux|currAns[7]~28_combout\ & ((\Mux|currAns[3]~42_combout\ & (\wRegPass|outValue[4]~4_combout\)) # (!\Mux|currAns[3]~42_combout\ & 
-- ((\Increment|cout|Bit3|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[7]~28_combout\,
	datab => \wRegPass|outValue[4]~4_combout\,
	datac => \Increment|cout|Bit3|sum~0_combout\,
	datad => \Mux|currAns[3]~42_combout\,
	combout => \Mux|currAns[3]~43_combout\);

-- Location: LCCOMB_X31_Y38_N16
\Mux|currAns[3]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~45_combout\ = (\Mux|currAns[3]~44_combout\ & ((\wRegPass|outValue[2]~2_combout\) # ((!\Mux|currAns[2]~32_combout\)))) # (!\Mux|currAns[3]~44_combout\ & (((\Mux|currAns[2]~32_combout\ & \Mux|currAns[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[3]~44_combout\,
	datab => \wRegPass|outValue[2]~2_combout\,
	datac => \Mux|currAns[2]~32_combout\,
	datad => \Mux|currAns[3]~43_combout\,
	combout => \Mux|currAns[3]~45_combout\);

-- Location: LCCOMB_X31_Y38_N6
\Mux|currAns[3]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~46_combout\ = (!\D|instrC\(3) & ((\Mux|currAns[2]~36_combout\ & ((\Mux|currAns[3]~45_combout\))) # (!\Mux|currAns[2]~36_combout\ & (\AddSub|Bit0|sum~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddSub|Bit0|sum~8_combout\,
	datab => \D|instrC\(3),
	datac => \Mux|currAns[2]~36_combout\,
	datad => \Mux|currAns[3]~45_combout\,
	combout => \Mux|currAns[3]~46_combout\);

-- Location: LCCOMB_X31_Y38_N12
\Mux|currAns[3]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[3]~47_combout\ = (\Mux|currAns[3]~46_combout\) # ((\D|instrC\(3) & \D|imm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|instrC\(3),
	datac => \D|imm\(3),
	datad => \Mux|currAns[3]~46_combout\,
	combout => \Mux|currAns[3]~47_combout\);

-- Location: LCCOMB_X31_Y38_N10
\Mux|currAns[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(3) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[3]~47_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns\(3),
	datab => \Mux|currAns[7]~27clkctrl_outclk\,
	datad => \Mux|currAns[3]~47_combout\,
	combout => \Mux|currAns\(3));

-- Location: FF_X29_Y38_N11
\Temp|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(3));

-- Location: FF_X28_Y38_N31
\BL|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setB~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BL|reg_out\(3));

-- Location: LCCOMB_X28_Y38_N30
\wRegPass|outValue[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wRegPass|outValue[3]~3_combout\ = (\D|Equal1~2_combout\ & (\AL|reg_out\(3))) # (!\D|Equal1~2_combout\ & ((\BL|reg_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(3),
	datac => \BL|reg_out\(3),
	datad => \D|Equal1~2_combout\,
	combout => \wRegPass|outValue[3]~3_combout\);

-- Location: LCCOMB_X28_Y38_N24
\Mux|currAns[2]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~40_combout\ = (\Mux|currAns[2]~29_combout\ & ((\Mux|currAns[2]~39_combout\ & ((\wRegPass|outValue[3]~3_combout\))) # (!\Mux|currAns[2]~39_combout\ & (\BL|reg_out\(2))))) # (!\Mux|currAns[2]~29_combout\ & (((\Mux|currAns[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~29_combout\,
	datab => \BL|reg_out\(2),
	datac => \Mux|currAns[2]~39_combout\,
	datad => \wRegPass|outValue[3]~3_combout\,
	combout => \Mux|currAns[2]~40_combout\);

-- Location: LCCOMB_X32_Y38_N4
\Mux|currAns[2]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~80_combout\ = (\Mux|currAns[2]~32_combout\ & ((\Mux|currAns[2]~79_combout\ & ((\Mux|currAns[2]~40_combout\))) # (!\Mux|currAns[2]~79_combout\ & (\wRegPass|outValue[1]~0_combout\)))) # (!\Mux|currAns[2]~32_combout\ & 
-- (((\Mux|currAns[2]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~32_combout\,
	datab => \wRegPass|outValue[1]~0_combout\,
	datac => \Mux|currAns[2]~79_combout\,
	datad => \Mux|currAns[2]~40_combout\,
	combout => \Mux|currAns[2]~80_combout\);

-- Location: LCCOMB_X32_Y38_N8
\Mux|currAns[2]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns[2]~78_combout\ = (\Mux|currAns[2]~77_combout\) # ((\Mux|currAns[2]~41_combout\ & \Mux|currAns[2]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|currAns[2]~41_combout\,
	datac => \Mux|currAns[2]~77_combout\,
	datad => \Mux|currAns[2]~80_combout\,
	combout => \Mux|currAns[2]~78_combout\);

-- Location: LCCOMB_X32_Y38_N18
\Mux|currAns[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux|currAns\(2) = (GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & ((\Mux|currAns[2]~78_combout\))) # (!GLOBAL(\Mux|currAns[7]~27clkctrl_outclk\) & (\Mux|currAns\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux|currAns\(2),
	datac => \Mux|currAns[2]~78_combout\,
	datad => \Mux|currAns[7]~27clkctrl_outclk\,
	combout => \Mux|currAns\(2));

-- Location: FF_X29_Y38_N1
\Temp|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D|exe_out~clkctrl_outclk\,
	asdata => \Mux|currAns\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temp|reg_out\(2));

-- Location: FF_X28_Y38_N29
\AL|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regE|setA~0clkctrl_outclk\,
	asdata => \Temp|reg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AL|reg_out\(2));

-- Location: LCCOMB_X24_Y38_N6
\DisPro|a0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a0~0_combout\ = (\AL|reg_out\(7) & (\AL|reg_out\(4) & (\AL|reg_out\(5) $ (\AL|reg_out\(6))))) # (!\AL|reg_out\(7) & (!\AL|reg_out\(5) & (\AL|reg_out\(4) $ (\AL|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a0~0_combout\);

-- Location: LCCOMB_X24_Y38_N24
\DisPro|a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a1~0_combout\ = (\AL|reg_out\(7) & ((\AL|reg_out\(4) & (\AL|reg_out\(5))) # (!\AL|reg_out\(4) & ((\AL|reg_out\(6)))))) # (!\AL|reg_out\(7) & (\AL|reg_out\(6) & (\AL|reg_out\(4) $ (\AL|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a1~0_combout\);

-- Location: LCCOMB_X24_Y38_N18
\DisPro|a2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a2~0_combout\ = (\AL|reg_out\(7) & (\AL|reg_out\(6) & ((\AL|reg_out\(5)) # (!\AL|reg_out\(4))))) # (!\AL|reg_out\(7) & (!\AL|reg_out\(4) & (\AL|reg_out\(5) & !\AL|reg_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a2~0_combout\);

-- Location: LCCOMB_X24_Y38_N16
\DisPro|a3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a3~0_combout\ = (\AL|reg_out\(4) & ((\AL|reg_out\(5) $ (!\AL|reg_out\(6))))) # (!\AL|reg_out\(4) & ((\AL|reg_out\(7) & (\AL|reg_out\(5) & !\AL|reg_out\(6))) # (!\AL|reg_out\(7) & (!\AL|reg_out\(5) & \AL|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a3~0_combout\);

-- Location: LCCOMB_X24_Y38_N26
\DisPro|a4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a4~0_combout\ = (\AL|reg_out\(5) & (!\AL|reg_out\(7) & (\AL|reg_out\(4)))) # (!\AL|reg_out\(5) & ((\AL|reg_out\(6) & (!\AL|reg_out\(7))) # (!\AL|reg_out\(6) & ((\AL|reg_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a4~0_combout\);

-- Location: LCCOMB_X24_Y38_N8
\DisPro|a5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a5~0_combout\ = (\AL|reg_out\(4) & (\AL|reg_out\(7) $ (((\AL|reg_out\(5)) # (!\AL|reg_out\(6)))))) # (!\AL|reg_out\(4) & (!\AL|reg_out\(7) & (\AL|reg_out\(5) & !\AL|reg_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a5~0_combout\);

-- Location: LCCOMB_X24_Y38_N14
\DisPro|a6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|a6~0_combout\ = (\AL|reg_out\(4) & ((\AL|reg_out\(7)) # (\AL|reg_out\(5) $ (\AL|reg_out\(6))))) # (!\AL|reg_out\(4) & ((\AL|reg_out\(5)) # (\AL|reg_out\(7) $ (\AL|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(7),
	datab => \AL|reg_out\(4),
	datac => \AL|reg_out\(5),
	datad => \AL|reg_out\(6),
	combout => \DisPro|a6~0_combout\);

-- Location: LCCOMB_X32_Y38_N20
\DisPro|b0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b0~0_combout\ = (\AL|reg_out\(3) & (\AL|reg_out\(0) & (\AL|reg_out\(1) $ (\AL|reg_out\(2))))) # (!\AL|reg_out\(3) & (!\AL|reg_out\(1) & (\AL|reg_out\(0) $ (\AL|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(0),
	datab => \AL|reg_out\(1),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(2),
	combout => \DisPro|b0~0_combout\);

-- Location: LCCOMB_X27_Y40_N12
\DisPro|b1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b1~0_combout\ = (\AL|reg_out\(1) & ((\AL|reg_out\(0) & ((\AL|reg_out\(3)))) # (!\AL|reg_out\(0) & (\AL|reg_out\(2))))) # (!\AL|reg_out\(1) & (\AL|reg_out\(2) & (\AL|reg_out\(3) $ (\AL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(1),
	datab => \AL|reg_out\(2),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(0),
	combout => \DisPro|b1~0_combout\);

-- Location: LCCOMB_X32_Y38_N22
\DisPro|b2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b2~0_combout\ = (\AL|reg_out\(3) & (\AL|reg_out\(2) & ((\AL|reg_out\(1)) # (!\AL|reg_out\(0))))) # (!\AL|reg_out\(3) & (!\AL|reg_out\(0) & (\AL|reg_out\(1) & !\AL|reg_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(0),
	datab => \AL|reg_out\(1),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(2),
	combout => \DisPro|b2~0_combout\);

-- Location: LCCOMB_X27_Y40_N30
\DisPro|b3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b3~0_combout\ = (\AL|reg_out\(0) & (\AL|reg_out\(1) $ ((!\AL|reg_out\(2))))) # (!\AL|reg_out\(0) & ((\AL|reg_out\(1) & (!\AL|reg_out\(2) & \AL|reg_out\(3))) # (!\AL|reg_out\(1) & (\AL|reg_out\(2) & !\AL|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(1),
	datab => \AL|reg_out\(2),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(0),
	combout => \DisPro|b3~0_combout\);

-- Location: LCCOMB_X32_Y38_N24
\DisPro|b4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b4~0_combout\ = (\AL|reg_out\(1) & (\AL|reg_out\(0) & (!\AL|reg_out\(3)))) # (!\AL|reg_out\(1) & ((\AL|reg_out\(2) & ((!\AL|reg_out\(3)))) # (!\AL|reg_out\(2) & (\AL|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(0),
	datab => \AL|reg_out\(1),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(2),
	combout => \DisPro|b4~0_combout\);

-- Location: LCCOMB_X32_Y38_N6
\DisPro|b5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b5~0_combout\ = (\AL|reg_out\(0) & (\AL|reg_out\(3) $ (((\AL|reg_out\(1)) # (!\AL|reg_out\(2)))))) # (!\AL|reg_out\(0) & (\AL|reg_out\(1) & (!\AL|reg_out\(3) & !\AL|reg_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(0),
	datab => \AL|reg_out\(1),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(2),
	combout => \DisPro|b5~0_combout\);

-- Location: LCCOMB_X27_Y40_N8
\DisPro|b6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DisPro|b6~0_combout\ = (\AL|reg_out\(0) & ((\AL|reg_out\(3)) # (\AL|reg_out\(1) $ (\AL|reg_out\(2))))) # (!\AL|reg_out\(0) & ((\AL|reg_out\(1)) # (\AL|reg_out\(2) $ (\AL|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AL|reg_out\(1),
	datab => \AL|reg_out\(2),
	datac => \AL|reg_out\(3),
	datad => \AL|reg_out\(0),
	combout => \DisPro|b6~0_combout\);

ww_al_valueout(0) <= \al_valueout[0]~output_o\;

ww_al_valueout(1) <= \al_valueout[1]~output_o\;

ww_al_valueout(2) <= \al_valueout[2]~output_o\;

ww_al_valueout(3) <= \al_valueout[3]~output_o\;

ww_al_valueout(4) <= \al_valueout[4]~output_o\;

ww_al_valueout(5) <= \al_valueout[5]~output_o\;

ww_al_valueout(6) <= \al_valueout[6]~output_o\;

ww_al_valueout(7) <= \al_valueout[7]~output_o\;

ww_bl_valueout(0) <= \bl_valueout[0]~output_o\;

ww_bl_valueout(1) <= \bl_valueout[1]~output_o\;

ww_bl_valueout(2) <= \bl_valueout[2]~output_o\;

ww_bl_valueout(3) <= \bl_valueout[3]~output_o\;

ww_bl_valueout(4) <= \bl_valueout[4]~output_o\;

ww_bl_valueout(5) <= \bl_valueout[5]~output_o\;

ww_bl_valueout(6) <= \bl_valueout[6]~output_o\;

ww_bl_valueout(7) <= \bl_valueout[7]~output_o\;

ww_tl_valueout(0) <= \tl_valueout[0]~output_o\;

ww_tl_valueout(1) <= \tl_valueout[1]~output_o\;

ww_tl_valueout(2) <= \tl_valueout[2]~output_o\;

ww_tl_valueout(3) <= \tl_valueout[3]~output_o\;

ww_tl_valueout(4) <= \tl_valueout[4]~output_o\;

ww_tl_valueout(5) <= \tl_valueout[5]~output_o\;

ww_tl_valueout(6) <= \tl_valueout[6]~output_o\;

ww_tl_valueout(7) <= \tl_valueout[7]~output_o\;

ww_a0 <= \a0~output_o\;

ww_a1 <= \a1~output_o\;

ww_a2 <= \a2~output_o\;

ww_a3 <= \a3~output_o\;

ww_a4 <= \a4~output_o\;

ww_a5 <= \a5~output_o\;

ww_a6 <= \a6~output_o\;

ww_b0 <= \b0~output_o\;

ww_b1 <= \b1~output_o\;

ww_b2 <= \b2~output_o\;

ww_b3 <= \b3~output_o\;

ww_b4 <= \b4~output_o\;

ww_b5 <= \b5~output_o\;

ww_b6 <= \b6~output_o\;
END structure;


