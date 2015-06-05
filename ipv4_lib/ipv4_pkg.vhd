--============================================================================
--!
--! \file      ipv4_pkg
--!
--! \project   ipv4_lib
--!
--! \langv     VHDL-2002
--!
--! \brief     A collection of constants, functions and procedures to help in
--!            working with IPv4.
--!
--! \details   -
--!
--! \bug       -
--!
--! \see       http://tools.ietf.org/html/rfc791
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
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

library work;
    use work.type_additions_pkg.all;

package ipv4_pkg is
    
    -- Constants related to the IPv4 packet dimensions.
    constant IPV4_MIN_PACKET_LEN : integer := 20;
    constant IPV4_MAX_PACKET_LEN : integer := 65535;
    constant IPV4_MIN_REASSEMBLE_LEN : integer := 576;
    
    -- Constants related to the IPv4 header and header fields.
    constant IPV4_HDR_MIN_LEN : integer := 20;
    constant IPV4_HDR_MAX_LEN : integer := 60;
    constant IPV4_HDR_VERSION : nibble_t := X"4";
    
    -- Constants related to other IPv4 related values.
    constant IPV4_ADDR_LEN : integer := 4;
    
end package ipv4_pkg;

package body ipv4_pkg is
end package body ipv4_pkg;
