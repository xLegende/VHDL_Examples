--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity shiftreg is
  port (i: in std_logic;
        clk: in std_logic;
        shift: in std_logic;
        q: out std_logic
  ) ;
end shiftreg;

architecture behav of shiftreg is
    signal s: std_logic_vector(3 downto 0):="0000";
    begin
        process(i, clk, shift, s)
        begin
            if(rising_edge(clk)) then
                if (shift='1') then
                    s<=i&s(3 downto 1);
                end if;
            end if;
        end process;
        q<=s(0);
    end behav;