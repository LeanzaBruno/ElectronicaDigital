library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity PairDetector is
  port(
    number: in std_logic_vector(4 downto 0);
    is_pair : out std_logic
    );
end;

architecture behave of PairDetector is
  
  --La función lógica de par es
  --par = !b4*b1*!b0 + !b4*b2*!b0 + !b4*!b3*b2*!b0 + b4 * !b0    (1)
  --Por simplicidad elijo (1)
  --Los señales siguientes representan cada uno de los términos de la suma de
  --(1).

  signal term_1, term_2, term_3, term_4 : std_logic;
  
  begin
    term_1 <= number(4) and not number(3) and not number(2) and not number(1) and not number(0);
    term_2 <= number(3) and not number(2) and not number(1) and not number(0);
    term_3 <= number(2) and not number(1) and not number(0);
    term_4 <= number(1) and not number(0);
      
    is_pair <= term_1 or term_2 or term_3 or term_4;

    --A continuación adjunto como comentario una resolución secuencial
    --process(number)
    --begin
    --  if (unsigned(number) mod 2) = 0 then
    --    is_pair <= '1';
    --  else
    --      is_pair <= '0';
    --  end if;
    --end process;  
end architecture;
   
