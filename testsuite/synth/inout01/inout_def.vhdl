--  Read from inout
library ieee;
use ieee.std_logic_1164.all;

entity inout_def is
  port (
    a : inout std_logic := '1'
  );
end;

architecture rtl of inout_def is
begin
end architecture;
