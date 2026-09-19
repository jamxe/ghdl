--  Read from inout
library ieee;
use ieee.std_logic_1164.all;

entity inout_def0 is
  port (
    a : inout std_logic := '0'
  );
end;

architecture rtl of inout_def0 is
begin
end architecture;
