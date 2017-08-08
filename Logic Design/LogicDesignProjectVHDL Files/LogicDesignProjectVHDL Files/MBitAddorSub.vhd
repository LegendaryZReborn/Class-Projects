-- Quartus II VHDL Template
--Multibit Adder
--if subtraction, then the number to be subtracted should have its bits flipped
--before it is passed in.

--Names: Cavaughn Browne, Rephael Edwards, Clarence Williams, Zaineb Ramzan

library ieee;
use ieee.std_logic_1164.all;


entity MBitAddorSub is
        port( num1, num2 : in  std_logic_vector(7 downto 0);
					isSub : in std_logic;
              sum	       		: out std_logic_vector(7 downto 0) 
				  );
end MBitAddorSub;

architecture rt1 of MBitAddorSub is

component oneBitAdder
 port( a, b, cin         : in  std_logic;
              sum, cout  : out std_logic
				  );
end component;

signal carry: std_logic_vector(7 downto 0);
begin

		

			  Bit0: oneBitAdder port map(num1(0), num2(0), isSub, sum(0), carry(0));
			  Bit1: oneBitAdder port map(num1(1), num2(1), carry(0), sum(1), carry(1));
			  Bit2: oneBitAdder port map(num1(2), num2(2), carry(1), sum(2), carry(2));
			  Bit3: oneBitAdder port map(num1(3), num2(3), carry(2), sum(3), carry(3));
			  Bit4: oneBitAdder port map(num1(4), num2(4), carry(3), sum(4), carry(4));
			  Bit5: oneBitAdder port map(num1(5), num2(5), carry(4), sum(5), carry(5));
			  Bit6: oneBitAdder port map(num1(6), num2(6), carry(5), sum(6), carry(6));
			  Bit7: oneBitAdder port map(num1(7), num2(7), carry(6), sum(7), carry(7));
			
	  
	  
end rt1;