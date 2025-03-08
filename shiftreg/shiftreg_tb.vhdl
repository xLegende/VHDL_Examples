--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture behav of tb is
    component shiftreg
        port (i: in std_logic;
        clk: in std_logic;
        shift: in std_logic;
        q: out std_logic
    ) ;
    end component;
    signal i,clk,shift,q: std_logic;
    begin
        UUT: shiftreg port map(i,clk,shift,q);
        process
        begin
            clk<='0';
            wait for 5 ns;
            clk<='1';
            wait for 5 ns;
        end process;

        process
        begin
            shift<='0'; i<='1';
            wait for 25 ns;
            shift<='1';
            wait;
        end process;



end behav;