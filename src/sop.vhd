library ieee;
use ieee.std_logic_1164.all;

entity logic_function is
    port (
        A3 : in std_logic;
        A2 : in std_logic;
        A1 : in std_logic;
        A0 : in std_logic;
        S  : out std_logic
    );
end logic_function;

architecture behavior of logic_function is

signal w, y, x, z : std_logic;

begin
    
w <= ((not A3) and (not A2) and (not A1) and A0);
x <= ((not A3) and A2 and (not A1) and (not A0));
y <= (A3 and A2 and A1 and (not A0));
z <= (A3 and A2 and A1 and A0);
S <= w or x or y or z;
        
end behavior;
