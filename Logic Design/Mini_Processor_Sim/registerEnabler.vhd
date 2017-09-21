-- Quartus II VHDL Template
--Register Enabler
library ieee;
use ieee.std_logic_1164.all;

entity registerEnabler is

	port
	(
		wReg	 	: in std_logic;
		upd	 	: in std_logic;
		enableAL	 : out std_logic;
		enableBL	 : out std_logic
	);

end entity;

architecture rtl of registerEnabler is
 signal setA, setB: std_logic;
begin

	process(upd, wReg) is
	begin
	
	if(upd = '0') then
	--None of the registers are updated
		setA <= '0';
		setB <= '0';
	elsif (upd = '1')	then
		-- if 0 AL is updated, if 1 BL is updated
		if(wReg = '0') then
			setA <= '1';
			setB <= '0';
		else
			setA <= '0';
			setB <= '1';
		end if;
		
	end if;
		
	end process; 
	
	enableAL <= setA;
	enableBL <= setB;
	
end rtl;
