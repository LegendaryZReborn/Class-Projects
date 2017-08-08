-- Quartus II VHDL Template
--Main

library ieee;
use ieee.std_logic_1164.all;


entity main is
        port( 	upd, exe 		: in std_logic;
              instruction    	: in std_logic_vector(15 downto 0);
				  al_valueout     : out std_logic_vector(7 downto 0);
				  bl_valueout     : out std_logic_vector(7 downto 0);
				  tl_valueout     : out std_logic_vector(7 downto 0);
				  a0, a1 ,a2 ,a3 ,a4, a5,	a6    : out std_logic;
				  b0, b1, b2, b3, b4, b5, b6     : out std_logic
				  );
end main;

architecture rt1 of main is

--Decoder component
component Decoder
 port
	(
		instruction	 	: in std_logic_vector(15 downto 0);
		upd	 			: in std_logic;
		exe	 			: in std_logic;
		exe_out 			: out std_logic;
		upd_out			: out std_logic;
		wReg				: out std_logic;
		chosenInstr    : out std_logic_vector(3 downto 0);
		isSub				: out std_logic;
		imm				: out std_logic_vector(7 downto 0)
	);

end component;

--registerEnabler
component registerEnabler
 port
	(
		wReg	 	: in std_logic;
		upd	 	: in std_logic;
		enableAL	 : out std_logic;
		enableBL	 : out std_logic
	);

end component;

--reg
component reg
 port
	(
		enable		: in std_logic;
		reg_in    : in std_logic_vector (7 downto 0);
		reg_out	: out std_logic_vector (7 downto 0)
	);

end component;

--Operator Multiplexor
component Multiplexor
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

end component;

component bitInverter
port
	(
		al_val 		:in std_logic_vector (7 downto 0);
		bl_val 		:in std_logic_vector (7 downto 0);
		whichReg 	:in std_logic;
		isSub 		:in std_logic;
		isSub_out 	:out std_logic;
		al_valout 	: out std_logic_vector (7 downto 0);
		bl_valout 	: out std_logic_vector (7 downto 0)
		
	);

end component;

component MBitAddorSub
port( 
		num1, num2 	: in  std_logic_vector(7 downto 0);
		isSub 		: in std_logic;
      sum	      : out std_logic_vector(7 downto 0) 
				  );
end component;

component xand
port
	(
		reg1_v    : in std_logic_vector (7 downto 0);
		reg2_v    : in std_logic_vector (7 downto 0);
		to_reg1 : out std_logic_vector (7 downto 0)
	);
end component;

component movertr
port
	(
		reg2_v    : in std_logic_vector (7 downto 0);
		to_reg1 : out std_logic_vector (7 downto 0)
	);
end component;

component regMux2
port
	(
		al_val 		:in std_logic_vector (7 downto 0);
		bl_val 		:in std_logic_vector (7 downto 0);
		whichReg :in std_logic;
		outValue : out std_logic_vector (7 downto 0)
	);
end component;

component eOr
port
	(
		reg1_v    : in std_logic_vector (7 downto 0);
		reg2_v    : in std_logic_vector (7 downto 0);
		to_reg1 : out std_logic_vector (7 downto 0)
	);
end component;

component regMux
port
	(
		al_val 		:in std_logic_vector (7 downto 0);
		bl_val 		:in std_logic_vector (7 downto 0);
		whichReg :in std_logic;
		outValue : out std_logic_vector (7 downto 0)
	);
end component;

component incrreg
port
	(
		reg_v   : in std_logic_vector (7 downto 0);
		to_reg : out std_logic_vector (7 downto 0)
	);

end component;

component shiftLeft
port 
	(
		sl_in	    : in std_logic_vector (7 Downto 0);
		sl_out	: out  std_logic_vector (7 downto 0)
	);
end component;

component shiftRight
port 
	(
		sr_in	    : in std_logic_vector (7 Downto 0);
		sr_out	: out  std_logic_vector (7 downto 0)
	);
end component;

component moveimmtr
port
	(
		imm   : in std_logic_vector (7 downto 0);
		to_reg : out std_logic_vector (7 downto 0)
	);
end component;

component processToDisplay
		port
	(
		al_value   : in std_logic_vector (7 downto 0);
		a0, a1 ,a2 ,a3 ,a4, a5,	a6    : out std_logic;
		b0, b1, b2, b3, b4, b5, b6    : out std_logic
		
	);
end component;

--decoder's needs
signal exe_outM, upd_outM, wRegM, enableAL_M, enableBL_M, isSubM: std_logic;
signal chosenInstrM: std_logic_vector (3 downto 0);
signal immD: std_logic_vector(7 downto 0);

--for reg
signal al_outM, bl_outM, treg_outM: std_logic_vector(7 downto 0);

--for operations
signal addSubAns, andAns, movAns, increAns, orAns, shlAns, shrAns, 
imovAns, muxAns, bIal_out, bIbl_out, reg2, passedRegv : std_logic_vector(7 downto 0);

--for display

begin

	D: Decoder port map(instruction, (not upd), (not exe), exe_outM, upd_outM, wRegM, chosenInstrM, isSubM, immD);
	regE: registerEnabler port map(wRegM, upd_outM, enableAL_M, enableBL_M);		  
	
	--operators
	
	--add/sub
	toInvert: bitInverter port map(al_outM, bl_outM, wRegM, isSubM, isSubM, bIal_out, bIbl_out);
	AddSub: MBitAddorSub port map(bIal_out, bIbl_out, isSubM, addSubAns);
	
	--and
	AlandBl: xand port map(al_outM, bl_outM, andAns);
	
	--move reg2 to reg1
	decideReg: regMux2 port map(al_outM, bl_outM, wRegM, reg2);
	MoveToReg1: movertr port map(reg2, movAns);
	
	--or
	orReg: eOr port map(al_outM, bl_outM, orAns);
	
	--Multiplexor to decider which reg for other operations
	wRegPass: regMux port map(al_outM, bl_outM, wRegM, passedRegv);
	--increment register
	Increment: incrreg port map(passedRegv, increAns);
	
	--shift left
	shiftL: shiftLeft port map(passedRegv, shlAns);
	
	--shift right
	shiftR: shiftRight port map(passedRegv, shrAns);
	
	--imm to register
	ImmtoReg: moveimmtr port map(immD, imovAns);
	
	--answers passed through multiplexor
	Mux: Multiplexor port map(chosenInstrM, addSubAns, andAns, movAns, imovAns, increAns,orAns, shlAns, shrAns, muxAns);
	
	--temp register stores the value and passes it to AL or BL when necessary.
	Temp: reg port map(exe_outM, muxAns, treg_outM);
	AL: reg port map(enableAL_M,treg_outM, al_outM);
	BL: reg port map(enableBL_M, treg_outM, bl_outM);
	
	DisPro: processToDisplay port map(al_outM, a0, a1, a2, a3, a4, a5, a6, b0, b1, b2, b3, b4, b5, b6);
	 al_valueout <= al_outM; 
	 bl_valueout <= bl_outM;
	 tl_valueout <= treg_outM;
	 
	 
end rt1;
