-- Quartus II VHDL Template
--Multiplexor
library ieee;
use ieee.std_logic_1164.all;

entity Multiplexor is

	port
	(
		instr   : in std_logic_vector (3 downto 0);
		addorsub  : in std_logic_vector (7 downto 0);
		xand    : in std_logic_vector (7 downto 0);
		mov	  : in std_logic_vector (7 downto 0);
		
		movimm	: in std_logic_vector (7 downto 0);
		incre   : in std_logic_vector (7 downto 0);
		Eor      : in std_logic_vector (7 downto 0);
		shl     : in std_logic_vector  (7 downto 0);
		shr     : in std_logic_vector (7 downto 0);
		to_reg : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of Multiplexor is

 signal currAns: std_logic_vector (7 downto 0);
 
begin

	process(instr) is
	begin
	
		if ((instr = "0000") or (instr = "0111")) then
			--add
			currAns <= addorsub;
		elsif (instr = "0001") then
			--and
			currAns <= xand;
		elsif(instr = "0010") then
			--mov
			currAns <= mov;
		elsif(instr = "0011") then
			--incr
			currAns <= incre;
		elsif(instr = "0100") then
			--or
			currAns <= Eor;
		elsif(instr = "0101") then
			--shl
			currAns <= shl;
		elsif(instr = "0110") then
			--shr
			currAns <= shr;
		elsif(instr = "1000") then
			--move immediate to register
			currAns <= movimm;
		
		end if;
	
	end process;
	
	to_reg <= currAns;

end rtl;
