-- Quartus II VHDL Template


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shiftLeft is

	port 
	(
		sl_in	    : in std_logic_vector (7 Downto 0);
		sl_out	: out  std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of shiftLeft is

signal toShift: unsigned (7 downto 0);
begin

	toShift <= unsigned(sl_in);
	sl_out <= std_logic_vector(shift_left(toShift, 1));

end rtl;
