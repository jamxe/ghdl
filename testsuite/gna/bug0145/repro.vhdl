library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity repro is
end;

architecture arch of repro is
  type conv_rec is record
    r : real;
    v : integer;
  end record;

  type conv_arr is array(natural range <>) of conv_rec;
  constant conv : conv_arr := (
    (0.0, 0),
    (1.0, 1),
    (2.0, 2),
    (3.0, 3),
    (4.0, 4),
    (5.0, 5),
    (1.1, 1),
    (1.2, 1),
    (1.1, 1),
    (1.2, 1),
    (2.2, 2),
    (4.0, 4),
--    (4.5, 5),
    (4.25, 4),
    (4.125, 4),
    (4.1, 4),
    (4.2, 4)
    );
begin
  dotrans : process
    variable v : integer;
    variable r : real;
  begin
    for i in conv'range loop
      r := conv (i).r;
      v := integer (r);
      report "Handling " & real'image(r) & ", " & integer'image(v) & " as int";
      assert v = conv (i).v report "bad result" severity failure;
      wait for 1 ns;
    end loop;
    wait;
  end process;
end arch;

