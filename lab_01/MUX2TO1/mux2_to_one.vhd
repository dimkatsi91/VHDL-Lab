library ieee;
use ieee.std_logic_1164.all;

entity mux2_to_one is
port( I0,I1,sel : in std_logic;
      Y         : out std_logic );
end;

architecture mux_arc of mux2_to_one is
begin
	Y <= (not sel and I0) or (sel and I1);
end;