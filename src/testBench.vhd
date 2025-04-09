library ieee;
use ieee.std_logic_1164.all;

entity logic_function_tb is
end logic_function_tb;

architecture behavior of logic_function_tb is

    component logic_function is
        port (
            A3 : in std_logic;
            A2 : in std_logic;
            A1 : in std_logic;
            A0 : in std_logic;
            S  : out std_logic
        );
    end component logic_function;

    signal w, x, y, z, s : std_logic;

    begin
    
    logic_funcion_inst : logic_function
        port map (
            A3 => w,
            A2 => x,
            A1 => y,
            A0 => z,
            S => s
        );

        process begin
            -- Estimulación de las entradas
            w <= '0'; x <= '0'; y <= '0'; z <= '0';
            wait for 10 ns;
            
            w <= '0'; x <= '0'; y <= '0'; z <= '1';
            wait for 10 ns;
            
            w <= '0'; x <= '0'; y <= '1'; z <= '0';
            wait for 10 ns;
            
            w <= '0'; x <= '0'; y <= '1'; z <= '1';
            wait for 10 ns;
            
            w <= '0'; x <= '1'; y <= '0'; z <= '0';
            wait for 10 ns;
            
            w <= '0'; x <= '1'; y <= '0'; z <= '1';
            wait for 10 ns;
            
            w <= '0'; x <= '1'; y <= '1'; z <= '0';
            wait for 10 ns;
            
            w <= '0'; x <= '1'; y <= '1'; z <= '1';
            wait for 10 ns;
            
            w <= '1'; x <= '0'; y <= '0'; z <= '0';
            wait for 10 ns;
            
            w <= '1'; x <= '0'; y <= '0'; z <= '1';
            wait for 10 ns;
            
            w <= '1'; x <= '0'; y <= '1'; z <= '0';
            wait for 10 ns;
            
            w <= '1'; x <= '0'; y <= '1'; z <= '1';
            wait for 10 ns;
            
            w <= '1'; x <= '1'; y <= '0'; z <= '0';
            wait for 10 ns;
            
            w <= '1'; x <= '1'; y <= '0'; z <= '1';
            wait for 10 ns;
            
            w <= '1'; x <= '1'; y <= '1'; z <= '0';
            wait for 10 ns;
            
            w <= '1'; x <= '1'; y <= '1'; z <= '1';
            wait for 10 ns;            
            
            -- Fin de la simulación
            wait;
        end process;
end behavior;
