entity tb_inout_read is
end tb_inout_read;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_read is
  signal a : std_logic;
  signal b : std_logic;
begin
  inout_read_1: entity work.inout_read
    port map (
      a => a,
      b => b);

  process
  begin
    a <= '0';
    wait for 1 ns;
    assert b = '0' severity failure;

    a <= '1';
    wait for 1 ns;
    assert b = '1' severity failure;

    wait;
  end process;
end behav;
