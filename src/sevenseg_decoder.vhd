----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 08:54:23 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;
architecture test_bench of sevenseg_decoder_tb is
    component sevenseg_decoder is 
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component sevenseg_decoder; 
    signal w_sw : STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');
    signal w_seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
begin
    sevenseg_decoder_inst : sevenseg_decoder PORT MAP (
        i_Hex => w_sw(3 downto 0),
        o_seg_n => w_seg(6 downto 0)
    );
    test_process : process 
    begin
         w_sw <= x"0"; wait for 10 ns;
         assert  w_seg = "1000000" report "Error on 0" SEVERITY FAILURE; 
         w_sw <= x"1"; wait for 10 ns;
         assert  w_seg = "1111001" report "Error on 1" SEVERITY FAILURE;
         w_sw <= x"2"; wait for 10 ns;
         assert  w_seg = "0100100" report "Error on 2" SEVERITY FAILURE;
         w_sw <= x"3"; wait for 10 ns;
         assert  w_seg = "0110000" report "Error on 3" SEVERITY FAILURE;
         w_sw <= x"4"; wait for 10 ns;
         assert  w_seg = "0011001" report "Error on 4" SEVERITY FAILURE;
         w_sw <= x"5"; wait for 10 ns;
         assert  w_seg = "0010010" report "Error on 5" SEVERITY FAILURE;
         w_sw <= x"6"; wait for 10 ns;
         assert  w_seg = "0000010" report "Error on 6" SEVERITY FAILURE;
         w_sw <= x"7"; wait for 10 ns;
         assert  w_seg = "1111000" report "Error on 7" SEVERITY FAILURE;
         w_sw <= x"8"; wait for 10 ns;
         assert  w_seg = "0000000" report "Error on 8" SEVERITY FAILURE;
         w_sw <= x"9"; wait for 10 ns;
         assert  w_seg = "0011000" report "Error on 9" SEVERITY FAILURE;
         w_sw <= x"A"; wait for 10 ns;
         assert  w_seg = "0001000" report "Error on A" SEVERITY FAILURE;
         w_sw <= x"B"; wait for 10 ns;
         assert  w_seg = "0000011" report "Error on B" SEVERITY FAILURE;
         w_sw <= x"C"; wait for 10 ns;
         assert  w_seg = "0100111" report "Error on C" SEVERITY FAILURE;
         w_sw <= x"D"; wait for 10 ns;
         assert  w_seg = "0100001" report "Error on D" SEVERITY FAILURE;
         w_sw <= x"E"; wait for 10 ns;
         assert  w_seg = "0000110" report "Error on E" SEVERITY FAILURE;
         w_sw <= x"F"; wait for 10 ns;
         assert  w_seg = "0001110" report "Error on F" SEVERITY FAILURE;
         wait;

    end process test_process;

end test_bench;