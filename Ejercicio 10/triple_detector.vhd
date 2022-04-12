library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity TripleDetector is
  port(
    number: in std_logic_vector(4 downto 0);
    is_triple : out std_logic
    );
end;


architecture behave of TripleDetector is
  
  signal term_1, term_2, term_3, term_4, term_5, term_6, term_7, term_8, term_9, term_10 : std_logic;
  begin
    term_1 <= not number(4) and not number(3) and not number(2) and number(1) and number(0);
    term_2 <= not number(4) and not number(3) and number(2) and number(1) and not number(0);
    term_3 <= not number(4) and number(3) and not number(2) and not number(1) and number(0);
    term_4 <= not number(4) and number(3) and number(2) and not number(1) and not number(0);
    term_5 <= not number(4) and number(3) and number(2) and number(1) and number(0);
    term_6 <= number(4) and not number(3) and not number(2) and number(1) and not number(0);
    term_7 <= number(4) and not number(3) and number(2) and not number(1) and number(0);
    term_8 <= number(4) and number(3) and not number(2) and not number(1) and not number(0);
    term_9 <= number(4) and number(3) and not number(2) and number(1) and number(0);
    term_10 <= number(4) and number(3) and number(2) and number(1) and not number(0);
    
    is_triple <= term_1 or term_2 or term_3 or term_4 or term_5 or term_5 or term_6 or term_7 or term_8 or term_9 or term_10;

    --A continuación adjunto como comentario una resolución secuencial
    --process(number)
    --begin
    --  if (unsigned(number) mod 3) = 0 then
    --    is_triple <= '1';
    --  else
    --      is_triple <= '0';
    --  end if;
    --end process;  
end;       
