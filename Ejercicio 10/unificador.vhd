--Esta unidad hace uso de los 3 submodulos de deteccion
--1) el detector par
--2) el detector de triples
--3) el detector de números primos

library ieee;
use ieee.std_logic_1164.all;

entity Unificador is
  port(
    binary_number : in std_logic_vector(4 downto 0);
    is_pair, is_prime, is_triple : out std_logic
    );
end;


architecture behavior of Unificador is

  component PairDetector
    port(
      b : in std_logic_vector(4 downto 0);
      is_pair : out std_logic
      );  
  end component;

  component PrimeDetector
    port(
      b : in std_logic_vector(4 downto 0);
      is_prime : out std_logic
      );
  end component;

  component TripleDetector
    port(
      b : in std_logic_vector(4 downto 0);
      is_triple : out std_logic
      );
  end component;

  signal pair_out, prime_out, triple_out : std_logic;
  
  begin
    pair_detector : PairDetector port map(binary_number, pair_out);
    prime_detector : PrimeDetector port map(binary_number, prime_out);
    triple_detector : TripleDetector port map(binary_number, triple_out);
end; 
