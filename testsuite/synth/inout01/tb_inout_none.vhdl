entity tb_inout_none is
end;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_none is
  signal a : std_logic;
begin
  inout_def_1: entity work.inout_none
    port map (
      a => a);

  process
  begin
    wait for 1 ns;
    assert a = 'U' or a = 'X' severity failure;

    wait;
  end process;
end behav;
