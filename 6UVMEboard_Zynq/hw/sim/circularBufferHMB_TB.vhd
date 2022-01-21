----------------------------------------------------------------------------------
-- Company: IDLAB, Hawaii
-- Engineer: Salvador Ventura
-- 
-- Create Date: 05/06/2021
-- Design Name: 
-- Module Name: circularBuffer - 
-- Project Name: WATCHMAN
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;

entity circular_buffer_tb is
end circular_buffer_tb; 

architecture sim of circular_buffer_tb is

  constant clock_period : time := 8 ns;


  -- DUT signals
  signal clk : std_logic := '1';
  signal rst : std_logic := '0';
  signal trigger : std_logic := '0';
  signal delay_trigger: std_logic_vector(3 downto 0):="0001";
  signal full_fifo : std_logic := '0';
  signal sstin_cntr :  std_logic_vector(2 downto 0):="000";
  signal sstin_updateBit : std_logic_vector(2 downto 0):= "011";
  signal mode:    std_logic := '1';
  signal enable_write : std_logic;
  signal WR_RS : std_logic_vector(1 downto 0);
  signal WR_CS : std_logic_vector(5 downto 0);
  signal RD_add: std_logic_vector(8 downto 0);
  signal TriggerInfo: std_logic_vector(11 downto 0);
--  signal trigger_intl: std_logic:='0';
--  signal sstin_cntr_intl: std_logic_vector(2 downto 0):="000";
 -- signal RD_add_fifo: std_logic;
  
begin

 -- DUT : entity work.circular_buffer(circ)
  DUT : entity work.HMB_roundBufferTopTest(structure)

    port map (
      clk => clk,
      rst => rst,
      trigger => trigger,
      full_fifo => full_fifo,
      mode => mode,
      enable_write=> enable_write,
      TriggerInfo => TriggerInfo,
      RD_add => RD_add,
      WR_RS => WR_RS,
      WR_CS => WR_CS,
      delay_trigger => delay_trigger,
      sstin_updateBit => sstin_updateBit

    );

    clk <= not clk after clock_period / 2;

    PROC_SEQUENCER : process
    begin
         rst <= '0';
      
      wait for 5 * clock_period;
      rst <= '1';
      wait for 5 * clock_period;
      wait until rising_edge(clk);
     -- sstin_cntr <= "011";
      
      wait for 500 * clock_period;
    --  sstin_cntr <= "000";
      
      trigger <= '1';
      
      wait for 10 * clock_period;
  --    sstin_cntr <= "011";
      
      trigger<= '0';
      
      wait for 10 * clock_period;
           
       wait;

--      trigger <= '1';
           
--      wait for 2 * clock_period;
     
--      trigger<= '0';
 
--      wait for 2 * clock_period;

--      trigger <= '1';
                 
--      wait for 3 * clock_period;
           
--      trigger<= '0';
 
 
 ---------------------------------------

--      wait for 5 * clock_period;
      
--      full_fifo <= '1' ;
      
--      wait for 1 * clock_period;
      
--      trigger<= '1';
      
--      wait for 1 * clock_period;

--      trigger<= '0';
     
--      wait for 5 * clock_period;

--      full_fifo <= '0' ;
     
--      wait for 1 * clock_period;
     
--      trigger<= '1';
      
--      wait for 1 * clock_period;
         
--      trigger<= '0';
          
      

--      -- Start writing
--      wr_en <= '1';

--      -- Fill the FIFO
--      while full_next = '0' loop
--        wr_data <= std_logic_vector(unsigned(wr_data) + 1);
--        wait until rising_edge(clk);
--      end loop;
      
--      -- Stop writing
--      wr_en <= '0';

--      -- Empty the FIFO
--      rd_en <= '1';
--      wait until empty_next = '1';

--      wait for 10 * clock_period;
      
--      -- Stop reading
--      rd_en <= '0';
      
--      -- Start writing
--      wr_en <= '1';
      
--        -- Fill the FIFO
--          while full_next = '0' loop
--            wr_data <= std_logic_vector(unsigned(wr_data) + 2);
--            wait until rising_edge(clk);
--          end loop;
      
      
  --    finish;
    end process;

end architecture;