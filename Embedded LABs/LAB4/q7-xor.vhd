LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY q7_xor IS PORT (
	i1, i2 : IN STD_LOGIC;
	o1 : OUT STD_LOGIC
);
END q7_xor;

ARCHITECTURE dataflow OF q7_xor IS
BEGIN
	o1 <= i1 XOR i2;
END dataflow;