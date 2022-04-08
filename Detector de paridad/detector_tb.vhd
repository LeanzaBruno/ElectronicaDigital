library ieee;
use ieee.std_logic_1164.all;

entity Simulator is
end entity;


architecture behave of Simulator is
  --Llamada a la entidad bajo testeo
  component Detector
    port(
      a, b, par : std_logic;
      paridad : out std_logic);
  end component;

  --Declaración de señales
  signal a, b, par, paridad: std_logic;
  
  begin
    uut : Detector port map(a, b, par, paridad);
      
      process
        begin
          --Paridad Impar
          par <= '0';
          a <= '0' ; b <= '0';
          wait for 10 ns;
          a <= '0' ; b <= '1';
          wait for 10 ns;
          a <= '1' ; b <= '0';
          wait for 10 ns;
          a <= '1' ; b <= '1';
          wait for 10 ns;

          --Paridad Par
          par <= '1';
          a <= '0' ; b <= '0';
          wait for 10 ns;
          a <= '0' ; b <= '1';
          wait for 10 ns;
          a <= '1' ; b <= '0';
          wait for 10 ns;
          a <= '1' ; b <= '1';
          wait for 10 ns;        
          wait;
        end process;
end architecture;
