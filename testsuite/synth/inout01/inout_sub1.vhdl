library ieee;
use ieee.std_logic_1164.all;

entity inout_sub1_sub is
  port (
    a : inout std_logic;
    b : in std_logic
  );
end;

architecture rtl of inout_sub1_sub is
begin
  a <= b;
end architecture;

library ieee;
use ieee.std_logic_1164.all;

entity inout_sub1 is
  port (
    a : inout std_logic := 'X';
    b : in std_logic
  );
end;

architecture rtl of inout_sub1 is
begin
  inst: entity work.inout_sub1_sub port map (a => a, b => b);
end architecture;
