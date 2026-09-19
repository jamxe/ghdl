entity tb_inout_def is
end tb_inout_def;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_def is
  signal a : std_logic;
begin
  inout_def_1: entity work.inout_def
    port map (
      a => a);

  process
  begin
    wait for 1 ns;
    assert a = '1' severity failure;

    wait;
  end process;
end behav;
