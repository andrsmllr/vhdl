--============================================================================
--!
--! \file      type_additions_pkg
--!
--! \project   type_additions_lib
--!
--! \langv     VHDL-2002
--!
--! \brief     General and frequently used types and conversion functions.
--!
--! \details   -
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
--! \date      2015-06-01
--! \author    Andreas Mueller
--!
--============================================================================

library ieee;
    use ieee.math_real.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

package type_additions_pkg is
    
    -- Phyiscal types.
    
    type frequency_t is range integer'low to integer'high
    units
        Hz;
        kHz = 1000 Hz;
        MHz = 1000 KHz;
        GHz = 1000 MHz;
        THz = 1000 GHz;
    end units frequency_t;
    
    type bit_rate_t is range integer'low to integer'high
    units
        bps;
        kbps = 1000 bps;
        Mbps = 1000 Kbps;
        Gbps = 1000 Mbps;
        Tbps = 1000 Gbps;
    end units bit_rate_t;
    
    type baud_rate_t is range integer'low to integer'high
    units
        Baud;
        kBaud = 1000 Baud;
        MBaud = 1000 KBaud;
        GBaud = 1000 MBaud;
        TBaud = 1000 GBaud;
    end units baud_rate_t;
    
    -- Note: The word 'bit' is already used as a predefined VHDL type.
    --       Thus 'Byte' is used as the smallest unit of memory.
    type memory_t is range integer'low to integer'high
    units
        Byte;
        KiB = 1024 Byte;
        MiB = 1024 KiB;
        GiB = 1024 MiB;
        TiB = 1024 GiB;
    end units memory_t;
    
    -- Scalar and vector types.
    
    type byte_order_t is (LITTLE_ENDIAN, BIG_ENDIAN);
    
    subtype nibble_t is std_logic_vector(3 downto 0);
    subtype byte_t is std_logic_vector(7 downto 0);
    subtype octet_t is std_logic_vector(7 downto 0);
    
    type nibble_vector_t is array (integer range<>) of nibble_t;
    type byte_vector_t is array (integer range<>) of byte_t;
    type octet_vector_t is array (integer range<>) of octet_t;
    
    -- Functions.
    
    -- Multiplication functions for new physical types.
    function "*"(left: frequency_t; right: time) return integer;
    function "*"(left: time; right: frequency_t) return integer;
    function "*"(left: bit_rate_t; right: time) return memory_t;
    function "*"(left: time; right: bit_rate_t) return memory_t;
    function "*"(left: memory_t; right: frequency_t) return bit_rate_t;
    function "*"(left: frequency_t; right: memory_t) return bit_rate_t;
    
end package type_additions_pkg;

package body type_additions_pkg is

    function "*"(left: frequency_t; right: time)
    return integer is
    begin
        return left * right;
    end function "*";
    
    function "*"(left: time; right: frequency_t)
    return integer is
    begin
        return left * right;
    end function "*";
    
    function "*"(left: bit_rate_t; right: time)
    return memory_t is
    begin
        return left * right /8;
    end function "*";
    
    function "*"(left: time; right: bit_rate_t)
    return memory_t is
    begin
        return left * right / 8;
    end function "*";
    
    function "*"(left: memory_t; right: frequency_t)
    return bit_rate_t is
    begin
        return left * right * 8;
    end function "*";
    
    function "*"(left: frequency_t; right: memory_t)
    return bit_rate_t is
    begin
        return left * right * 8;
    end function "*";

end package body type_additions_pkg;
