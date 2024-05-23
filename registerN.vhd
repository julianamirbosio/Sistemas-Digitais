library ieee;
use ieee.std_logic_1164.all;

entity registerN is
		generic(	width: positive;
						generateLoad: boolean := false;
						clearValue: integer := 0 );
		port(	-- control
					clock, clear, load: in std_logic;
					-- data
					input: in std_logic_vector(width-1 downto 0);
					output: out std_logic_vector(width-1 downto 0)
    );
end;

architecture rtl of registerN is
  begin
    process(clk)
    begin
      if (rising_edge(clk)) then
        if (load = '1') then
          output <= input;
        end if;
      end if;
    end process;
  end rtl;
