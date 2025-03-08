--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture behav of tb is

    component ToggleFF
        port(	T:	in std_logic;
        CLK:	in std_logic;
        R:      in std_logic;
        Q:		out std_logic
    );
    end component;

    signal T,CLK,R,Q:std_logic;

    begin
        UUT: ToggleFF port map(T,CLK,R,Q);
        process
            begin
                R<='0';
                wait for 20 ns;
                R<='1';
                wait for 10 ns;
                R<='0';
                wait for 500 ns;
        end process;
        process
            begin
                CLK<='0';
                wait for 10 ns;
                CLK<='1';
                wait for 10 ns;
        end process;
        logic:process
            begin
                T<='0';
                wait for 23 ns;
                T<='1';
                wait for 104 ns;
                T<='0';
                wait for 27 ns;
                T<='1';
                wait for 13 ns;
                T<='0';

        end process;

end behav;