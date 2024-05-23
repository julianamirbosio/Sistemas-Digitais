library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addersubtractor is
	generic(	width: positive;
				isAdder: boolean := false;
				isSubtractor: boolean := false;
				generateCout: boolean := false;
				generateOvf: boolean := false;
				fixedSecodOperand: integer := 0);
	port(	
		    a, b: in std_logic_vector(width-1 downto 0);
			op: in std_logic;
			result: out std_logic_vector(width-1 downto 0);
			ovf, cout: out std_logic );
end;
