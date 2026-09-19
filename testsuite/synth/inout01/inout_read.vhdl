--  Read from inout
library ieee;
use ieee.std_logic_1164.all;

entity inout_read is
  port (
    a : inout std_logic := 'Z';
    b : out std_logic
  );
end;

architecture rtl of inout_read is
begin
  b <= a;
end architecture;
