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

    signal w_A3, w_A2, w_A1, w_A0, w_S : std_logic;

    begin
        and_gate_instance : logic_function
        port map (
            A3 => w_A3,
            A2 => w_A2,
            A1 => w_A1,
            A0 => w_A0,
            S => w_S
        );

        process begin
            -- Estimulación de las entradas
            w_A3 <= '0'; w_A2 <= '0'; w_A1 <= '0'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '0'; w_A1 <= '0'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '0'; w_A1 <= '1'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '0'; w_A1 <= '1'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '1'; w_A1 <= '0'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '1'; w_A1 <= '0'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '1'; w_A1 <= '1'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '0'; w_A2 <= '1'; w_A1 <= '1'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '0'; w_A1 <= '0'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '0'; w_A1 <= '0'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '0'; w_A1 <= '1'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '0'; w_A1 <= '1'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '1'; w_A1 <= '0'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '1'; w_A1 <= '0'; w_A0 <= '1';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '1'; w_A1 <= '1'; w_A0 <= '0';
            wait for 10 ns;
            
            w_A3 <= '1'; w_A2 <= '1'; w_A1 <= '1'; w_A0 <= '1';
            wait for 10 ns;            
            
            -- Fin de la simulación
            wait;
        end process;
end behavior;
