library ieee;
use ieee.std_logic_1164.all;

entity PrimeDetector is
  port(
    number: in std_logic_vector(4 downto 0);
    is_prime : out std_logic
    );
end;


architecture behave of PrimeDetector is

  --number(0)n el mismo caso que en el de detector par elijo usar señales auxiliares
  --para ayudar en la legibilidad de la expresion y que sea más fácil analizar
  --la función en la simulación
  signal term_1, term_2, term_3, term_4, term_5, term_6, term_7 : std_logic;
  begin
    term_1 <= not number(4) and not number(3) and not number(2) and number(1) and not number(0);
    term_2 <= not number(4) and not number(3) and number(2) and not number(1) and number(0);
    term_3 <= not number(4) and number(3) and not number(2) and number(1) and number(0);
    term_4 <= number(4) and not number(3) and not number(2) and not number(1) and number(0);
    term_5 <= not number(3) and number(1) and number(0);
    term_6 <= number(3) and number(2) and not number(1) and number(0);
    term_7 <= number(4) and number(3) and number(2) and number(1) and number(0);
      
    is_prime <= term_1 or term_2 or term_3 or term_4 or term_5 or term_6 or term_7;
end;       
