----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 05:51:00 PM
-- Design Name: 
-- Module Name: clock_div - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_div is
    Port( signal clock_in : in std_logic;
          signal clock_out : out std_logic);
end clock_div;

architecture Behavioral of clock_div is
signal count : std_logic_vector(25 downto 0) := (others => '0');

begin

process(clock_in)
    begin
        if rising_edge(clock_in) then
            count <= std_logic_vector(unsigned(count)+1);
            if count = "11101110011010110010100000" then
                clock_out <= '1';
                count <= (others => '0');
            else
                clock_out <= '0';
            end if;
        end if;
 end process;
                
            





end Behavioral;
