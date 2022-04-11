--

library ieee;
use ieee.std_logic_1164.all;

entity UnificadorSimulator is
end;

architecture simulation of UnificadorSimulator is

  
  component Unificador
    port(
      binary_number : in std_logic_vector(4 downto 0);
      is_pair, is_prime, is_triple : out std_logic
    );
  end component;


  --'b' es la cadena de bits de entrada
  signal b : std_logic_vector(4 downto 0);
  signal pair_output, prime_output, triple_output : std_logic;
  begin
  uut : Unificador port map(b, pair_output, prime_output, triple_output);
  
  process
    begin
    --0
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --1
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --2
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --3
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --4
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --5
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --6
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --7
    b(4) <= '0';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --8
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --9
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --10
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --11
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --12
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --13
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --14
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --15
    b(4) <= '0';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --16
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --17
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --18
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --19
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --20
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --21
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --22
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --23
    b(4) <= '1';
    b(3) <= '0';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --24
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --25
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --26
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --27
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '0';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;

    --28
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '0';
    wait for 5 ns;

    --29
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '0';
    b(0) <= '1';
    wait for 5 ns;

    --30
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '0';
    wait for 5 ns;

    --31
    b(4) <= '1';
    b(3) <= '1';
    b(2) <= '1';
    b(1) <= '1';
    b(0) <= '1';
    wait for 5 ns;
    wait;
  end process;   
end architecture;
