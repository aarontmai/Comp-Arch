library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_F2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F: out STD_LOGIC);
end logic_circuit_F2;

architecture bool_exp of logic_circuit_F2 is

begin
    F <= ( not(A) or B) and (A or not(B)); 
end bool_exp;
