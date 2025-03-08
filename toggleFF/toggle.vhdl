--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity ToggleFF is

    port(	T:	in std_logic;
        CLK:	in std_logic;
        R:      in std_logic;
        Q:		out std_logic
    );
end ToggleFF;

architecture behav of ToggleFF is
    signal q1:std_logic;
    begin
        toggle: process(T,CLK,R)
        begin
            if(R='1') then
                q1<='0';
                Q<='0';
            elsif(rising_edge(CLK)) then
                if(T='1') then
                    Q<=NOT q1;
                    q1<=NOT q1;
                end if;
            end if;
        end process;
end behav;