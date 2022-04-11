library ieee;
use ieee.std_logic_1164.all;

entity PairDetector is
  port(
    b : in std_logic_vector(4 downto 0);
    is_pair : out std_logic
    );
end;

architecture behave of PairDetector is
  
  --La función lógica de par es
  --par = !b4*b1*!b0 + !b4*b2*!b0 + !b4*!b3*b2*!b0 + b4 * !b0    (1)
  --    = !b0 * (!b4*b1 + !b4*b2 + !b4*!b3*b2 + b4)              (2)
  --
  --Por simplicidad elijo (1)
  --Los señales siguientes representan cada uno de los términos de la suma de
  --(1) para una mejor lectura al debuggear.

  signal term_1, term_2, term_3, term_4 : std_logic;
  
  begin
    term_1 <= b(4) and not b(3) and not b(2) and not b(1) and not b(0);
    term_2 <= b(3) and not b(2) and not b(1) and not b(0);
    term_3 <= b(2) and not b(1) and not b(0);
    term_4 <= b(1) and not b(0);
      
    is_pair <= term_1 or term_2 or term_3 or term_4;
end architecture;
   
