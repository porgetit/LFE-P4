library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_logic_function is
-- Un testbench no requiere puertos
end tb_logic_function;

architecture Behavioral of tb_logic_function is

    -- Señales para conectar la unidad bajo prueba (UUT)
    signal A3, A2, A1, A0, S : STD_LOGIC;
    
begin

    -- Instanciación del componente a probar
    UUT: entity work.logic_function
    port map (
        A3 => A3,
        A2 => A2,
        A1 => A1,
        A0 => A0,
        S  => S
    );
    
    -- Proceso para generar estímulos
    stim_proc: process
    begin
        -- Caso 1: Primer término
        -- A3=0, A2=0, A1=0, A0=1  => S debe ser '1'
        A3 <= '0'; A2 <= '0'; A1 <= '0'; A0 <= '1';
        wait for 10 ns;
        
        -- Caso 2: Segundo término
        -- A3=0, A2=1, A1=0, A0=0  => S debe ser '1'
        A3 <= '0'; A2 <= '1'; A1 <= '0'; A0 <= '0';
        wait for 10 ns;
        
        -- Caso 3: Entrada que no activa ninguna condición (S = '0')
        A3 <= '0'; A2 <= '0'; A1 <= '0'; A0 <= '0';
        wait for 10 ns;
        
        -- Caso 4: Otro ejemplo aleatorio (S debe ser '0')
        A3 <= '1'; A2 <= '0'; A1 <= '0'; A0 <= '1';
        wait for 10 ns;
        
        -- Caso 5: Combinación no válida para S = '1'
        A3 <= '0'; A2 <= '1'; A1 <= '1'; A0 <= '0';
        wait for 10 ns;
        
        -- Fin de la simulación
        wait;
    end process;

end Behavioral;
