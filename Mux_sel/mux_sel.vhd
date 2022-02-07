-------------------------------------------------------------------
-- A mux using selective concurrent signal assignment statements.
-------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY mux IS
  PORT( a,b,c,d: IN std_logic_vector(3 DOWNTO 0);
        s: IN std_logic_vector(1 DOWNTO 0);
        x: OUT std_logic_vector(3 DOWNTO 0));
END ENTITY mux;

ARCHITECTURE rtl OF mux IS BEGIN 
  WITH s SELECT
    x <= a          WHEN "00",
         b          WHEN "01",
         c          WHEN "10",
         d          WHEN "11",
         "----"     WHEN OTHERS;
END ARCHITECTURE rtl;