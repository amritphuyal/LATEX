LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY andnot IS PORT (
	i1, i2 : IN STD_LOGIC;
	o1 : OUT STD_LOGIC
);
END andnot;

ARCHITECTURE dataflow OF andnot IS
BEGIN
	o1 <= NOT i1 AND i2;
END dataflow;