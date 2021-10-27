library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity f2_tb is
--  Port ( );
end f2_tb;

architecture tb of f2_tb is
signal A, B : std_logic;
signal F : std_logic;

begin

    UUT : entity work.logic_circuit_F2 port map (A => A, B => B, F => F);
     A <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns; 
     B <= '0', '1' after 40 ns;        

end tb;