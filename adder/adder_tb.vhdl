--xLegende

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

--------------------------------------------------------

entity tb is				
end tb;

architecture behav of tb is

    constant n: natural := 5;

    component ADDER is
    generic(n: natural :=5);
    port(	A:	in std_logic_vector(n-1 downto 0);
        B:	in std_logic_vector(n-1 downto 0);
        carry:	out std_logic;
        sum:	out std_logic_vector(n-1 downto 0)
    );
    end component;

    signal A, B:	std_logic_vector(n-1 downto 0);
    signal carry:	std_logic;
    signal sum:		std_logic_vector(n-1 downto 0);


    begin

        U_ADDER: ADDER port map (A, B, carry, sum);
	
    process			
	
    
    begin												  
		
	-- case 1
	A <= "10111";							
	B <= "00101";
	wait for 10 ns;
		
			
	wait;
		
    end process;

end behav;

--------------------------------------------------------
