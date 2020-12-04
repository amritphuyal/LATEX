LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY q2 IS PORT (
	X3, X2, X1, X0 : IN STD_LOGIC;
	Y3, Y2, Y1, Y0 : OUT STD_LOGIC
);
END q2;

ARCHITECTURE behavorial OF q2 IS

BEGIN
	example : PROCESS (X3, X2, X1, X0)

	BEGIN
		Y3 <= X3;
		Y2 <= X2 XOR X3;
		Y1 <= X1 XOR X2;
		Y0 <= X0 XOR X1;
	END PROCESS example;

END behavorial;