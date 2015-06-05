--============================================================================
--!
--! \file      ethernet_pkg
--!
--! \project   ethernet_lib
--!
--! \langv     VHDL-2002
--!
--! \brief     A collection of constants, functions and procedures to help in
--!            working with IEEE 802.3 Ethernet.
--!
--! \details   -
--!
--! \bug       -
--!
--! \see       http://standards.ieee.org/about/get/802/802.3.html
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

package ethernet_pkg is
    
    -- Constants related to Ethernet frame/packet dimensions.
    constant ETH_MIN_FRAME_LEN : integer := 64;
    constant ETH_MAX_FRAME_LEN : integer := 1522;
    constant ETH_MIN_PACKET_LEN : integer := 72;
    constant ETH_MAX_PACKET_LEN : integer := 1530;
    
    -- Constants related to the fields in an Ethernet frame/packet.
    constant ETH_PREAMBLE_LEN : integer := 7;
    constant ETH_SFD_LEN : integer := 1; --! Ethernet start frame delimiter.
    constant ETH_MAC_DST_ADDR_LEN : integer := 6;
    constant ETH_MAC_SRC_ADDR_LEN : integer := 6;
    constant ETH_MAC_802_1Q_TAG_LEN : integer := 4; --! VLAN tag.
    constant ETH_ETHERTYPE_LEN : integer := 2;
    constant ETH_MIN_PAYLOAD_LEN : integer := 46;
    constant ETH_MAX_PAYLOAD_LEN : integer := 1500;
    constant ETH_CRC_LEN : integer := 4;
    constant ETH_IPG : integer := 12; --! Ethernet inter packet gap.
    
    -- Constants related to other Ethernet related values.
    constant ETH_MAC_ADDR_LEN : integer := 6;
    constant ETH_SFD_BYTE : octet_t := X"5D"; --! Ethernet start frame delimiter.
    constant ETH_PREAMBLE_BYTE : octet_t := X"55";
    constant ETH_ETHERTYPE_IPV4 : octet_vector_t(0 to 1) := X"0800";
    constant ETH_ETHERTYPE_ARP : octet_vector_t(0 to 1) := X"0806"; --! Address resolution protocol.
    constant ETH_ETHERTYPE_WOL : octet_vector_t(0 to 1) := X"0842"; --! Wake on LAN.
    constant ETH_ETHERTYPE_802_1Q : octet_vector_t(0 to 1) := X"8100";
    constant ETH_ETHERTYPE_IPV6 : octet_vector_t(0 to 1) := X"86DD";
    constant ETH_ETHERTYPE_MPLS_UC : octet_vector_t(0 to 1) := X"8847";
    constant ETH_ETHERTYPE_MPLS_MC : octet_vector_t(0 to 1) := X"8848";
    constant ETH_ETHERTYPE_LLDP : octet_vector_t(0 to 1) := X"88CC";
    constant ETH_CRC_POLYNOMIAL : std_logic_vector(31 downto 0) := X"82608EDB"; --! Most significant coefficient at MSB.
    constant ETH_CRC_RESIDUE : std_logic_vector(31 downto 0) := X"C704DD7B";
    
end package ethernet_pkg;

package body ethernet_pkg is
end package body ethernet_pkg;
