-- Quartus II VHDL Template


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shiftRight is

	port 
	(
		sr_in	    : in std_logic_vector (7 Downto 0);
		sr_out	: out  std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of shiftRight is

signal toShift: unsigned (7 downto 0);
begin

	toShift <= unsigned(sr_in);
	sr_out <= std_logic_vector(shift_right(toShift, 1));

end rtl;
