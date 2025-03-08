--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture behaviour of tb is
constant n: natural :=2;

component Comp
    port(	A:	in std_logic_vector(n-1 downto 0);
        B:	in std_logic_vector(n-1 downto 0);
        less:		out std_logic;
        equal:		out std_logic;
        greater:	out std_logic
    );
end component;

signal A,B: std_logic_vector(n-1 downto 0);
signal less,equal,greater: std_logic;

begin
    UUT: Comp port map (A,B,less,equal,greater);
    process
        begin
            A<="11";
            B<="00";
            wait for 10 ns;

            A<="11";
            B<="11";
            wait for 10 ns;

            A<="00";
            B<="11";
            wait for 10 ns;

        wait;

    end process;


end behaviour;



