--============================================================================
--!
--! \file      type_additions_tb
--!
--! \project   type_additions
--!
--! \langv     VHDL-2002
--!
--! \brief     Testbench for the type_additions package.
--!
--! \details   Testing expected behavior of types, conversion functions etc.
--!
--! \bug       -
--!
--! \see       -
--!
--! \copyright GPLv2
--!
--! Revision history:
--!
--! \version   0.1
--! \date      2015-06-02
--! \author    Andreas Mueller
--!
--============================================================================


library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;
library std;
    use std.textio.all;
library work;
    use work.type_additions_pkg.all;

entity type_additions_tb is
end entity type_additions_tb;

architecture tb of type_additions_tb is
    
    -- Create some signals of different types to use as conversion targets.
    signal freq_1 : frequency_t := 100 kHz;
    signal freq_2 : frequency_t := 2 GHz;
    signal bitrate_1 : bit_rate_t := 16000 bps;
    signal bitrate_2 : bit_rate_t := 25 Mbps;
    signal baudrate_1 : baud_rate_t := 100 KBaud;
    signal baudrate_2 : baud_rate_t := 27500 Baud;
    signal time_1 : time := 10 us;
    signal time_2 : time := 7 ns;
    signal integer_1 : integer;
    signal integer_2 : integer;
    
begin
    
    p_testbench: process
    begin
        integer_1 <= freq_1 * time_1;
        integer_1 <= freq_2 * time_2;
        wait for 10 ns;
        
        -- End of testbench.
        assert FALSE
        report "Simulation complete."
        severity FAILURE;
    end process p_testbench;
    
end architecture tb;
