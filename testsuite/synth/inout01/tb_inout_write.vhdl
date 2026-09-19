entity tb_inout_write is
end tb_inout_write;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_inout_write is
  signal a : std_logic;
  signal b : std_logic;
begin
  inout_write_1: entity work.inout_write
    port map (
      a => a,
      b => b);

  process
  begin
    b <= '0';
    wait for 1 ns;
    assert a = '0' severity failure;

    b <= '1';
    wait for 1 ns;
    assert a = '1' severity failure;

    wait;
  end process;
end behav;
