library ieee;
use ieee.std_logic_1164.all;

entity inout_sub2_sub is
  port (
    a : inout std_logic := 'Z'
  );
end;

architecture rtl of inout_sub2_sub is
begin
end architecture;

library ieee;
use ieee.std_logic_1164.all;

entity inout_sub2 is
  port (
    a : inout std_logic := 'X'
  );
end;

architecture rtl of inout_sub2 is
begin
  inst: entity work.inout_sub2_sub port map (a => a);
end architecture;
