LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY q6_mux4_1_tb IS
END q6_mux4_1_tb;

ARCHITECTURE behavioral OF q6_mux4_1_tb IS
	-- component declaaration for the Unit Under Test (UUT)
	COMPONENT q6_mux4_1
		PORT (
			X1, X2, X3, X4, S0, S1 : IN STD_LOGIC;
			Y : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL select_vector : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	SIGNAL input_vector : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL output : STD_LOGIC := '0';

BEGIN
	--INSTANTIATE the unit under test
	uut : q6_mux4_1 PORT MAP(
		S0 => select_vector(0),
		S1 => select_vector(1),
		X1 => input_vector(3),
		X2 => input_vector(2),
		X3 => input_vector(1),
		X4 => input_vector(0),
		Y => output
	);

	--stimulus process
	stim_proc : PROCESS

	BEGIN
		FOR selector IN 0 TO 3 LOOP
			select_vector <= STD_LOGIC_VECTOR(to_unsigned(selector, 2));
			FOR index IN 0 TO 15 LOOP
			input_vector <= STD_LOGIC_VECTOR(to_unsigned(index, 4));
				WAIT FOR 40 ns;
			END LOOP;
		END LOOP;
	END PROCESS;
END behavioral;