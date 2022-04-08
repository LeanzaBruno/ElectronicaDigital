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
  signal miniterm_1, miniterm_2, miniterm_3, miniterm_4 : std_logic;
  
  begin
    miniterm_1 <= par and (not A) and B;
    miniterm_2 <= par and A and (not B);
    miniterm_3 <= (not par) and (not A) and (not b);
    miniterm_4 <= (not par) and A and B;
    paridad <= miniterm_1 or miniterm_2 or miniterm_3 or miniterm_4;
end;
