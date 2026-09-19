entity tb_inout_sub2 is
end tb_inout_sub2;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_sub2 is
  signal a : std_logic;
begin
  inout_sub2_1: entity work.inout_sub2
    port map (
      a => a);

  process
  begin
    wait for 1 ns;
    assert a = 'Z' severity failure;

    wait;
  end process;
end behav;
