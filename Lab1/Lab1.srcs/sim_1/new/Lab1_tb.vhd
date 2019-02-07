LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Lab1_tb IS
END Lab1_tb;
ARCHITECTURE behavioral OF Lab1_tb IS
COMPONENT Lab1
PORT( a, b, c, d : IN STD_LOGIC;
f : OUT STD_LOGIC);
END COMPONENT;
SIGNAL a, b, c, d, f : STD_LOGIC;
BEGIN
UUT: Lab1 PORT MAP(
a => a,
b => b,
c => c,
d => d,
f => f);
-- *** Test Bench - User Defined Section ***
tb : PROCESS
BEGIN
a <= '0'; b <= '0'; c <= '0'; d <= '0';
wait for 10 ms;
a <= '0'; b <= '0'; c <= '0'; d <= '1';
wait for 10 ms;
a <= '0'; b <= '0'; c <= '1'; d <= '0';
wait for 10 ms;
a <= '0'; b <= '0'; c <= '1'; d <= '1';
wait for 10 ms;

WAIT; -- will wait forever
END PROCESS;
-- *** End Test Bench - User Defined Section ***
END behavioral;