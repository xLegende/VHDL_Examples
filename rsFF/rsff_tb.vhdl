--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture behav of tb is
    component rsff
    port(
        s,r,g: in std_logic;
        q,nq: out std_logic
    );
    end component;

    signal s,r,g,q,nq:std_logic;

begin
    UUT: rsff port map(s,r,g,q,nq);
    process
        begin
            g<='0'; r<='0'; s<='0';
            wait for 10 ns;
            g<='1';
            wait for 20 ns;
            r<='1';
            wait for 5 ns;
            r<='0';
            wait for 10 ns;
            s<='1'; 
            wait for 5 ns; 
            s<='0';
            wait for 10 ns;

        wait;

    end process;
end behav; 