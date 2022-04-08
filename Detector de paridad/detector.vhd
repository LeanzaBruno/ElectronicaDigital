library ieee;
use ieee.std_logic_1164.all;

--Es un simple detector de paridad par con 2 bits
entity detector is
  port(
    i_0, i_1 : in std_logic;
    output : out std_logic);
end;


architecture detector_arch of detector is
  --declaraciones
  begin
    output <= (i_0 and not i_1) or (not i_0 and i_1);
end;
