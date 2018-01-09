library ieee;
use ieee.std_logic_1164.all;

entity Y_gate is
Port(
	A,B : in std_logic;
	Y_out : out std_logic
);
end entity Y_gate;

architecture Y_arc of Y_gate is
begin
	Y_out <= not ((A or not B) and (not A or B));
end architecture Y_arc;