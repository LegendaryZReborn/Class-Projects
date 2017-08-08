-- Quartus II VHDL Template
--Decoder
library ieee;
use ieee.std_logic_1164.all;

entity Decoder is

	port
	(
		instruction	 	: in std_logic_vector(15 downto 0);
		upd	 			: in std_logic;
		exe	 			: in std_logic;
		exe_out 			: out std_logic;
		upd_out			: out std_logic;
		wReg				: out std_logic;
		chosenInstr    : out std_logic_vector(3 downto 0);
		isSub				: out std_logic;
		imm				: out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of Decoder is

signal firstFour: std_logic_vector (3 downto 0);
signal reg: std_logic_vector (2 downto 0);
signal regC: std_logic;
signal instrC: std_logic_vector (3 downto 0);
signal updd, exed: std_logic;
begin

	firstFour <= instruction(15 downto 12);


	process(instruction) is
	begin
	
		if(firstFour = "1011") then
			reg <= instruction(10 downto 8);
		else
			reg <= instruction(2 downto 0);
		end if;
		
		if(reg = "000") then 
			regC <= '0';
		else
			regC <= '1';
		end if;
	end process;
	
	process(instruction) is
	begin
	
		if((instruction = "0000000011000011") or (instruction = "0000000011011000")) then
			instrC <= "0000";
			isSub <= '0';
		elsif ((instruction = "0010000011000011") or (instruction = "0010000011011000")) then
			instrC <= "0001";
		elsif((instruction = "1000100011000011") or (instruction = "1000100011011000")) then
			instrC <= "0010";
		elsif((instruction = "1111111011000000") or (instruction = "1111111011000011")) then
			instrC <= "0011";
		elsif((instruction = "0000101011000011") or (instruction = "0000101011011000" )) then
			instrC <= "0100";
		elsif((instruction = "1101000011100000") or (instruction = "1101000011100011")) then
			instrC <= "0101";
		elsif((instruction = "1101000011101000") or (instruction = "1101000011101011")) then
			instrC <= "0110";
		elsif((instruction = "0010100011000011") or (instruction = "0010100011011000")) then
			isSub <= '1';
			instrC <= "0111";
		elsif((instruction(15 downto 8) = "10110000") or (instruction(15 downto 8) = "10110011" )) then
	      instrC <= "1000";
			imm <= instruction(7 downto 0);
		end if;
		
	
	end process;
	
	process(upd, exe) is
	begin
	
		if(upd = '1' and exe = '1') then
			updd <= '0';
			exed <= '0';
		else
			updd <= upd;
			exed <= exe;
		end if;
	end process;
	
	exe_out <= exed;
	upd_out <= updd;
	wReg <= regC;
	chosenInstr <= instrC;
end rtl;
