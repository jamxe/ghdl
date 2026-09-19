--  Assign inout
library ieee;
use ieee.std_logic_1164.all;

entity inout_write is
  port (
    a : inout std_logic;
    b : in std_logic
  );
end;

architecture rtl of inout_write is
begin
  a <= b;
end architecture;
