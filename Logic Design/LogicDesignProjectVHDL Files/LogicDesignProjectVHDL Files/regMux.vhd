-- Quartus II VHDL Template
--Reg Multiplexor: Decides which register value is to be used
--Names: Cavaughn Browne, Rephael Edwards, Clarence Williams, Zaineb Ramzan

library ieee;
use ieee.std_logic_1164.all;

entity regMux is

	port
	(
		al_val 		:in std_logic_vector (7 downto 0);
		bl_val 		:in std_logic_vector (7 downto 0);
		whichReg :in std_logic;
		outValue : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of regMux is

 signal currAns: std_logic_vector (7 downto 0);
 
begin

	process(al_val, bl_val, whichReg) is
	begin
	
		if (whichReg = '0') then
			
			currAns <= al_val;
		else
			currAns <= bl_val;
		end if;
	
	end process;
	
	outValue <= currAns;

end rtl;
