library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_function is
    Port (
        A3 : in  STD_LOGIC;
        A2 : in  STD_LOGIC;
        A1 : in  STD_LOGIC;
        A0 : in  STD_LOGIC;
        S  : out STD_LOGIC
    );
end logic_function;

architecture Behavioral of logic_function is
begin
    S <= ((not A3) and (not A2) and (not A1) and A0) or
         ((not A3) and A2 and (not A1) and (not A0));
end Behavioral;
