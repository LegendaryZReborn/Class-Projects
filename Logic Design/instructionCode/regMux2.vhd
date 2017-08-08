-- Quartus II VHDL Template
--Reg Multiplexor 2 - to help the move operation
library ieee;
use ieee.std_logic_1164.all;

entity regMux2 is

	port
	(
		al_val 		:in std_logic_vector (7 downto 0);
		bl_val 		:in std_logic_vector (7 downto 0);
		whichReg :in std_logic;
		outValue : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of regMux2 is

 signal currAns: std_logic_vector (7 downto 0);
 
begin

	process(al_val, bl_val, whichReg) is
	begin
	
		if (whichReg = '0') then
			
			currAns <= bl_val;
		else
			currAns <= al_val;
		end if;
	
	end process;
	
	outValue <= currAns;

end rtl;
