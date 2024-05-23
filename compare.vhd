library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare is
			generic(	width: positive;
						isSigned: boolean := false;
						generateEqual: boolean := false ;
						generateLessThan: boolean := false;
						useFixedSecodOperand: boolean := false;
						fixedSecodOperand: integer := 0 );
			port(	input0, input1: in std_logic_vector(width-1 downto 0);
					lessThan, equal: out std_logic );
end;
