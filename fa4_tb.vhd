library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa4_tb is
--  Port ( );
end fa4_tb;

architecture Behavioral of fa4_tb is
signal A,B: std_logic_vector (3 downto 0);
signal sum: std_logic_vector(4 downto 0); 

component design_1_wrapper is 
port(
    A: in std_logic_vector (3 downto 0);
    B: in std_logic_vector (3 downto 0);
   
    sum: out std_logic_vector(4 downto 0)
    );
    end component design_1_wrapper;
begin
design_1_i: design_1_wrapper
    port map( 
    A => A,
    B => B,
    sum => sum
    );
    process
        constant period: time := 10 ns;
        
        begin
        A <= "1110";
        B <= "0001"; 
        wait for period;
        
        A <= "1111";
        B <= "0001"; 
        wait for period;
        
        A <= "1010";
        B <= "0101"; 
        wait for period;
        
        A <= "1010";
        B <= "0101"; 
        wait for period;
        
        A <= "1111";
        B <= "1111"; 
        wait for period;
        end process;
 end Behavioral;
        
        