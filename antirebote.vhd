LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY antirebote IS
PORT(
 clk: IN STD_LOGIC;
 clock_enable: IN STD_LOGIC;
 D: IN STD_LOGIC;
 Q: OUT STD_LOGIC:='0'
);
END ENTITY;

ARCHITECTURE Behavioral OF antirebote IS
BEGIN
PROCESS(clk)
BEGIN
 IF(RISING_EDGE(clk)) THEN
  IF(clock_enable='1') THEN
   Q <= D;
  END IF;
 END IF;
END PROCESS;
END ARCHITECTURE;