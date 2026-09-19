entity tb_inout_sub1 is
end tb_inout_sub1;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_sub1 is
  signal a, b : std_logic;
begin
  inout_sub1_1: entity work.inout_sub1
    port map (
      a => a, b => b);

  process
  begin
    b <= '1';
    wait for 1 ns;
    assert a = '1' severity failure;

    b <= '0';
    wait for 1 ns;
    assert a = '0' severity failure;

    wait;
  end process;
end behav;
