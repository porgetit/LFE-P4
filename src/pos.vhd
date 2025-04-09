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

signal o, p, q, r, s1, t, u, v, w, x, y, z : std_logic;
    begin
    
    o <= (A3 or A2 or A1 or A0);
    p <= (A3 or A2 or (not A1) or A0);
    q <= (A3 or A2 or (not A1) or (not A0));
    r <= (A3 or (not A2) or A1 or (not A0));
    s1 <= (A3 or (not A2) or (not A1) or A0);
    t <= (A3 or (not A2) or (not A1) or (not A0));
    u <= ((not A3) or A2 or A1 or A0);
    v <= ((not A3) or A2 or A1 or (not A0));
    w <= ((not A3) or A2 or (not A1) or A0);
    x <= ((not A3) or A2 or (not A1) or (not A0));
    y <= ((not A3) or (not A2) or A1 or A0);
    z <= ((not A3) or (not A2) or A1 or (not A0));
    S <= o and p and q and r and s1 and t and u and v and w and x and y and z;
end behavior;
