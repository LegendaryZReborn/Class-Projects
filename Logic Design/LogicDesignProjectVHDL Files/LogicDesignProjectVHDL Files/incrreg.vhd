-- Increment Register--
--Names: Cavaughn Browne, Rephael Edwards, Clarence Williams, Zaineb Ramzan

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incrreg is

	port
	(
		reg_v   : in std_logic_vector (7 downto 0);
		to_reg : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of incrreg is
 
 component MBitAddorSub
	 port(
			num1, num2 			: in  std_logic_vector(7 downto 0);
			isSub 				: in std_logic;
			sum	       		: out std_logic_vector(7 downto 0) 
			);
 end component;
 
 
begin

	
	--to_reg <= std_logic_vector(unsigned(reg_v) + 1);--
	cout: MBitAddorSub port map("00000001", reg_v, '0', to_reg);

end rtl;
