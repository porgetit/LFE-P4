library ieee;
use ieee.std_logic_1164.all;

entity logic_function is
    port (
        A3 : in std_logic;
        A2 : in std_logic;
        A1 : in std_logic;
        A0 : in std_logic;
        S : out std_logic
    );
end logic_function;

architecture behavior of logic_function is
    begin
        S <= (A3 or A2 or A1 or A0) and 
        (A3 or A2 or (not A1) or A0) and 
        (A3 or A2 or (not A1) or (not A0)) and 
        (A3 or (not A2) or A1 or (not A0)) and 
        (A3 or (not A2) or (not A1) or A0) and 
        (A3 or (not A2) or (not A1) or (not A0)) and 
        ((not A3) or A2 or A1 or A0) and 
        ((not A3) or A2 or A1 or (not A0)) and 
        ((not A3) or A2 or (not A1) or A0) and 
        ((not A3) or A2 or (not A1) or (not A0)) and 
        ((not A3) or (not A2) or A1 or A0) and 
        ((not A3) or (not A2) or A1 or (not A0));
end behavior;