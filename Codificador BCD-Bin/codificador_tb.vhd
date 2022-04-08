library ieee;
use ieee.std_logic_1164.all;


entity simulator is
end;

architecture simulation of simulator is

  --Entidad a poner a prueba
  component codificador
    port(
      p0, p1, p2, p3, p4, p5, p6, p7, p8, p9 : in std_logic,
      bits : out std_logic_vector(3 downto 0)
    );
  end;

  --Señales para el mapeo
  signal p0, p1, p2, p3, p4, p5, p6, p7, p8, p9 : std_logic;
  signal bits : std_logic_vector(3 downto 0);
  
  --Acá comienza la simulación
  begin
    uud : codificador port map(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, bits);
    
    process
      begin

        --Número 0
        p0 <= '1'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 1
        p0 <= '0'; p1 <= '1'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 2
        p0 <= '0'; p1 <= '0'; p2 <= '1'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10

        --Número 3
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '1'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 4
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '1'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 5
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '1'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 6
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '1'; p7 <= '0'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 7
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '1'; p8 <= '0'; p9 <= '0';
        wait for 10 ns;

        --Número 8
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '1'; p9 <= '0';
        wait for 10 ns;

        --Número 9
        p0 <= '0'; p1 <= '0'; p2 <= '0'; p3 <= '0'; p4 <= '0'; p5 <= '0'; p6 <= '0'; p7 <= '0'; p8 <= '0'; p9 <= '1';
        wait for 10 ns;
        
        wait;
      end;
end;
