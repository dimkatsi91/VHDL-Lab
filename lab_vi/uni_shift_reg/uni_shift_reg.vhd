-- Universal Shift Register of N-bits
library ieee;
use ieee.std_logic_1164.all;

entity uni_shift_reg is
generic(N:integer:=16);
port(
		CLOCK, RESET : in std_logic;
		shift_in     : in std_logic;
		Sel_logic    : in std_logic_vector(1 downto 0);
	 	DATA_IN      : in std_logic_vector(N-1 downto 0);
	 	DATA_OUT     : buffer std_logic_vector(N-1 downto 0));
end uni_shift_reg;

architecture behav of uni_shift_reg is
signal hold: std_logic_vector(N-1 downto 0);
begin
PROCESS(CLOCK,RESET,Sel_logic,DATA_IN)
begin
if RESET='1' then
	DATA_OUT<=(others=>'0');
elsif falling_edge(CLOCK) then
	case Sel_logic is
		-- Feedback
		when "11" => hold <= DATA_IN;
		-- Parallel Data Output
		when "01" => hold <= hold;
		-- Shifting Left
		when "10" => 
					hold <= hold(N-2 downto 0) & shift_in;
		-- Shifting Right
		when "00" =>
					hold <= shift_in & hold(N-1 downto 1);
	end case;
end if;
DATA_OUT <= hold;
end process;
end behav;