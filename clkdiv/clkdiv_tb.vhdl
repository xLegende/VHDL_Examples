--xLegende

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb is
    end tb;

architecture behav of tb is
    component clkdiv
        port (
            clk,reset: in std_logic;
            q: out std_logic
    );
    end component;
    

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal q : std_logic;
    
    constant clk_period : time := 1 ns;
    
    begin
    
    uut: clkdiv port map (
    clk => clk,
    reset => reset,
    q => q
    );
    
    process
        begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
    end process;
    
    process
        begin
        wait for 150 ns;
            reset <= '1';
            wait for 10 ns;
            reset <= '0';
            wait;
    end process;
end behav;