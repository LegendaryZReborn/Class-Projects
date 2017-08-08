-- Quartus II VHDL Template


library ieee;
use ieee.std_logic_1164.all;

entity reg is

	port
	(
		enable		: in std_logic;
		reg_in    : in std_logic_vector (7 downto 0);
		reg_out	: out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of reg is
begin

	process (enable) is
	begin
	
		if (enable = '1') then
			reg_out <= reg_in;
		end if;
			
	end process;


end rtl;
