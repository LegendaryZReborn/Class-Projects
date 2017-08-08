-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity movertr is

	port
	(
		reg2_v    : in std_logic_vector (7 downto 0);
		to_reg1 : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of movertr is
 
begin

	to_reg1 <= reg2_v;

end rtl;
