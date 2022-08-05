----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:49 06/07/2022 
-- Design Name: 
-- Module Name:    FourBitAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FourBitAdder is
	Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
		b : in STD_LOGIC_VECTOR (3 downto 0);
		Cin : in STD_LOGIC;
		SUM : out STD_LOGIC_VECTOR (3 downto 0);
		Cout : out STD_LOGIC);
end FourBitAdder;
 
architecture Behavioral of FourBitAdder is
 
component FullAdder
	Port ( a : in STD_LOGIC;
		b : in STD_LOGIC;
		Cin : in STD_LOGIC;
		SUM : out STD_LOGIC;
		Cout : out STD_LOGIC);
end component;
 

signal c1,c2,c3: STD_LOGIC;
 
begin
FA1: FullAdder port map( a(0), b(0), Cin, SUM(0), c1);
FA2: FullAdder port map( a(1), b(1), c1, SUM(1), c2);
FA3: FullAdder port map( a(2), b(2), c2, SUM(2), c3);
FA4: FullAdder port map( a(3), b(3), c3, SUM(3), Cout);
 
end Behavioral;


