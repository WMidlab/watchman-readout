library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity 2TC_DataDecoder is
 port(
     address: 	in	std_logic_vector(4 downto 0);
     dataOut :		out std_logic_vector(31 downto 0);
     
     A_dataIN_0 :		in std_logic_vector(31 downto 0);
     A_dataIN_1 :		in std_logic_vector(31 downto 0);
     A_dataIN_2 :		in std_logic_vector(31 downto 0);
     A_dataIN_3 :		in std_logic_vector(31 downto 0);
     A_dataIN_4 :		in std_logic_vector(31 downto 0);
     A_dataIN_5 :		in std_logic_vector(31 downto 0);
     A_dataIN_6 :		in std_logic_vector(31 downto 0);
     A_dataIN_7 :		in std_logic_vector(31 downto 0);
     A_dataIN_8 :		in std_logic_vector(31 downto 0);
     A_dataIN_9 :		in std_logic_vector(31 downto 0);
     A_dataIN_10 :	in std_logic_vector(31 downto 0);
     A_dataIN_11 :	in std_logic_vector(31 downto 0);
     A_dataIN_12 :	in std_logic_vector(31 downto 0);
     A_dataIN_13 :	in std_logic_vector(31 downto 0);
     A_dataIN_14 :	in std_logic_vector(31 downto 0);
     A_dataIN_15 :	in std_logic_vector(31 downto 0)
    
     B_dataIN_0 :		in std_logic_vector(31 downto 0);
     B_dataIN_1 :		in std_logic_vector(31 downto 0);
     B_dataIN_2 :		in std_logic_vector(31 downto 0);
     B_dataIN_3 :		in std_logic_vector(31 downto 0);
     B_dataIN_4 :		in std_logic_vector(31 downto 0);
     B_dataIN_5 :		in std_logic_vector(31 downto 0);
     B_dataIN_6 :		in std_logic_vector(31 downto 0);
     B_dataIN_7 :		in std_logic_vector(31 downto 0);
     B_dataIN_8 :		in std_logic_vector(31 downto 0);
     B_dataIN_9 :		in std_logic_vector(31 downto 0);
     B_dataIN_10 :	in std_logic_vector(31 downto 0);
     B_dataIN_11 :	in std_logic_vector(31 downto 0);
     B_dataIN_12 :	in std_logic_vector(31 downto 0);
     B_dataIN_13 :	in std_logic_vector(31 downto 0);
     B_dataIN_14 :	in std_logic_vector(31 downto 0);
     B_dataIN_15 :	in std_logic_vector(31 downto 0)
     
     
     
    
  );
end DataDecoder;

architecture bhv of 2TC_DataDecoder is
begin

dataOut <=      A_dataIN_0   when address = "00000" else
	        A_dataIN_1   when address = "00001" else
	        A_dataIN_2   when address = "00010" else
	        A_dataIN_3   when address = "00011" else
	        A_dataIN_4   when address = "00100" else
	        A_dataIN_5   when address = "00101" else
	        A_dataIN_6   when address = "00110" else
	        A_dataIN_7   when address = "00111" else
	        A_dataIN_8   when address = "01000" else
	        A_dataIN_9   when address = "01001" else
	        A_dataIN_10  when address = "01010" else
	        A_dataIN_11  when address = "01011" else
	        A_dataIN_12  when address = "01100" else
	        A_dataIN_13  when address = "01101" else
	        A_dataIN_14  when address = "01110" else
	        A_dataIN_15  when address = "01111" else
	


		B_dataIN_0   when address = "10000" else
                B_dataIN_1   when address = "10001" else
                B_dataIN_2   when address = "10010" else
                B_dataIN_3   when address = "10011" else
                B_dataIN_4   when address = "10100" else
                B_dataIN_5   when address = "10101" else
                B_dataIN_6   when address = "10110" else
                B_dataIN_7   when address = "10111" else
                B_dataIN_8   when address = "11000" else
                B_dataIN_9   when address = "11001" else
                B_dataIN_10  when address = "11010" else
                B_dataIN_11  when address = "11011" else
                B_dataIN_12  when address = "11100" else
                B_dataIN_13  when address = "11101" else
                B_dataIN_14  when address = "11110" else
                B_dataIN_15  when address = "11111" else


	
	
	
	
		(others => '0');
end bhv;
