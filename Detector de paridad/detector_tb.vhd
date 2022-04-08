library ieee;
use ieee.std_logic_1164.all;

entity simulator is
end entity;


architecture arch_simulator of simulator is
  --Llamada a la entidad bajo testeo
  component detector
    port(
      i_0, i_1 : in std_logic;
      output : out std_logic
    );
  end component;

  --Declaración de señales
  signal i_0, i_1, output : std_logic;
  
  begin
    uut : detector port map(i_0, i_1, output);

    process
      begin
        i_0 <= '0'; i_1 <= '0';
        wait for 10 ns;
        i_0 <= '0'; i_1 <= '1';
        wait for 10 ns;
        i_0 <= '1'; i_1 <= '0';
        wait for 10 ns;
        i_0 <= '1'; i_1 <= '1';
        wait for 5 ns;
        wait;
        end process;
end architecture;
