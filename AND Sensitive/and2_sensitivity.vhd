--------------------------------------------------------------
-- A 2-input AND gate using a process with a sensitivity list.
--------------------------------------------------------------

ENTITY and2 IS
  PORT( a, b: IN bit;
        c: OUT bit);
END ENTITY and2;

ARCHITECTURE and2 OF and2 IS
BEGIN
  P1: PROCESS (a,b) IS 
  BEGIN
    c <= a AND b;
  END PROCESS P1;
END ARCHITECTURE and2;
