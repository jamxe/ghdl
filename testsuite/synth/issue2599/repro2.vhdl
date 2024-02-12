library ieee;
use ieee.numeric_std.all;

entity repro2 is
end;

architecture behav of repro2 is
begin
  process
    variable res : unsigned(15 downto 0);
  begin
    res := resize(to_unsigned(0, 1), +16);
    wait;
  end process;
end behav;
