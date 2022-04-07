library ieee;
use ieee.std_logic_1164.all;


entity codificador is
  port(
    p0, p1, p2, p3, p4, p5, p6, p7, p8, p9 : in std_logic,
    bits : out std_logic_vector(3 downto 0)
    );
end entity;



architecture arch_codificador of codificador is
begin
  b(3) <= not(p0 or p1 or p2 or p3 or p4 or p5 or p6 or p7) and (p8 and not p9 or not p8 and p9);
  
  b(2) <= not(p0 or p1 or p2 or p3 or p6 or p9) and ( (p4 and not p5 and not p6 and not p7) or (not p4 and p5 and not p6 and not p7) or (not p4 and not p5 and p6 and not p7) or (not p4 and not p5 and not p6 and p7) );
  
  b(1) <= not(p0 or p1 or p4 or p5 or p8 or p9) and ( (p2 and not p3 and not p6 and not p7) or (not p2 and p3 and not p6 and not p7) or (not p2 and not p3 and p6 and not p7) or (not p2 and not p3 and not p6 and p7));
  
  b(0) <= not(p0 or p2 or p4 or p6 or p8) and ( (p1 and not p3 and not p5 and not p7 and not p9) or (not p1 and p3 and not p5 and not p7 and not p9) or (not p1 and not p3 and p5 and not p7 and not p9) or (not p1 and not p3 and not p5 and p7 and not p9) or (not p1 and not p3 and not p5 and not p7 and p9));
  
end architecture
