--xLegende

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clkdiv is
  port (
    clk,reset: in std_logic;
    q: out std_logic
  ) ;
end clkdiv;

architecture behav of clkdiv is

    signal cnt: integer:=1;
    signal temp: std_logic:='0';

    begin
        process(clk,reset)
            begin

                if reset='1' then
                    cnt<=1;
                    temp<='0';
                elsif rising_edge(clk) then
                    cnt<=cnt+1;
                    if (cnt=33) then
                        temp<=NOT temp;
                        cnt<=1;
                    end if;
                end if;
                q<=temp;

        end process;
end behav;