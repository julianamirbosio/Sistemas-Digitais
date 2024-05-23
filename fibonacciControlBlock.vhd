library ieee;
use ieee.std_logic_1164.all;

entity  fibonacciControlBlock is
        port(
            clock, clear: in std_logic;
            ctrl1, ctrl2, ctrl3, ctrl4, ctrl5, ctrl6, ctrl7, ctrl8, ctrl9: out std_logic;
            stt1, stt2: in std_logic;
			iniciar: in std_logic;
			pronto: out std_logic
        );
end entity;

architecture BC of fibonacciControlBlock is
	type State is (--COMPLETE);
	signal currentState, nextState: State;
begin
	-- NextState Logic
	--
	-- COMPLETE
	--
	-- L01: unsigned int Fibonacci(unsigned int n) {
	-- L02: unsigned int res, i, t1, t2;  // declarations only
	-- L03: if (n <= 2)
	-- L04:     res=1;
	-- L05: else
	-- L06:      t1 = 1;
	-- L07:      t2 = 1;
	-- L08:      res = 2;
	-- L09:      i=3;
	-- L10:      while (i<n)
	-- L11:            t1 = t2;
	-- L12:            t2 = res;
	-- L13:            res = t1+t2;      
	-- L14:            i = i+1;
	-- L15: return res;
	
	-- State Register
	process(clock, clear) is
	begin
		if clear='1' then
				currentState <= -- COMPLETE (Estado inicial);
		elsif rising_edge(clock) then
				currentState <= nextState;
		end if;
	end process;
	
	-- Output Logic
	--
	-- COMPLETE
	--
	-- L01: unsigned int Fibonacci(unsigned int n) {
	-- L02: unsigned int res, i, t1, t2;  // declarations only
	-- L03: if (n <= 2)
	-- L04:     res=1;
	-- L05: else
	-- L06:      t1 = 1;
	-- L07:      t2 = 1;
	-- L08:      res = 2;
	-- L09:      i=3;
	-- L10:      while (i<n)
	-- L11:            t1 = t2;
	-- L12:            t2 = res;
	-- L13:            res = t1+t2;      
	-- L14:            i = i+1;
	-- L15: return res;
	-- n<=2    ---> stt1
	-- i<n       ---> stt2
	-- i=3         ---> ctrl1
    -- i=i+1      ---> ctrl2
	--  t1 = 1     ---> ctrl3
	--  t1 = t2    ---> ctrl4 
	-- t2=1       ---> ctrl5
    -- t2=res    ---> ctrl6
	-- res = 1         ---> ctrl7
    -- res = 2         --->  ctrl8
    -- res = t1+t2   --->  ctrl9	
end architecture;
