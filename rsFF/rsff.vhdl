--xLegende

library ieee;
use ieee.std_logic_1164.all;

entity rsff is
    port(
      s,r,g: in std_logic;
      q,nq: out std_logic
    );
  end rsff;
  
  architecture behav of rsff is
  
      signal q0,nq0,r0,s0: std_logic;
  begin
      r0<=r and g;
      s0<=s and g;
  
      q0<=r0 nor nq0;
      nq0<=s0 nor q0;
      nq<=nq0;
      q<=q0;
  
  end behav;