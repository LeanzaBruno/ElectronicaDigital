library ieee;
use ieee.std_logic_1164.all;

--es un detector de paridad de 2 bits. Puede detectar paridad par e impar.
--par = 1 -> paridad par ; par = 0 -> paridad impar.
entity Detector is
  port(
    a, b, par : std_logic;
    paridad : out std_logic);
end;


architecture behave of Detector is
  --declaraciones
  begin
    paridad <= ( par and (not A) and B ) or ( par and A and (not B) ) or ( (not par) and (not A) and (not b) ) or ( (not par) and A and B );
end;
