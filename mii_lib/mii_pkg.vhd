--============================================================================
--!
--! \file      mii_pkg
--!
--! \project   mii_lib
--!
--! \langv     VHDL-2002
--!
--! \brief     A package defining types to be used with ports and signals
--!            connecting by a media independent interface.
--!
--! \details   -
--!
--! \bug       -
--!
--! \see       IEEE 802.3
--!
--! \copyright GPLv2
--!
--! Revision history:
--!
--! \version   0.1
--! \date      2015-06-06
--! \author    Andreas Mueller
--!
--============================================================================


library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

package mii_pkg is
    
    --!
    --! Media Independent Interface (MII).
    --! 25 MHz SDR @ 100Mbps, 2.5 MHz SDR @ 10 Mbps.
    --!
    type mii_rxi_t is record
        rx_clk : std_logic;
        rxd    : std_logic_vector(3 downto 0);
        rx_dv  : std_logic;
        rx_er  : std_logic;
        crs    : std_logic;
    end record;
    
    type mii_rxo_t is record
        empty : std_logic;
    end record;
    
    type mii_txi_t is record
        col    : std_logic;
    end record;
    
    type mii_txo_t is record
        tx_clk : std_logic;
        txd    : std_logic_vector(3 downto 0);
        tx_dv  : std_logic;
        tx_er  : std_logic;
    end record;
    
    --!
    --! Gigabit Media Independent Interface (GMII).
    --! 125 MHz SDR @ 1 Gbps.
    --!
    type gmii_rxi_t is record
        rx_clk : std_logic;
        rxd    : std_logic_vector(7 downto 0);
        rx_dv  : std_logic;
        rx_er  : std_logic;
        crs    : std_logic;
    end record;
    
    type gmii_rxo_t is record
        empty : std_logic;
    end record;
    
    type gmii_txi_t is record
        col    : std_logic;
    end record;
    
    type gmii_txo_t is record
        tx_clk : std_logic;
        txd    : std_logic_vector(7 downto 0);
        tx_dv  : std_logic;
        tx_er  : std_logic;
    end record;
    
    --!
    --! Reduced Gigabit Media Independent Interface (RGMII).
    --! 125 MHz DDR @ 1 Gbps, 25 MHz DDR @ 100 Mbps, 2.5 MHz DDR @ 10 Mbps.
    --!
    type rgmii_rxi_t is record
        rx_clk : std_logic;
        rxd    : std_logic_vector(3 downto 0);
        rx_dv  : std_logic;
        rx_er  : std_logic;
        crs    : std_logic;
    end record;
    
    type rgmii_rxo_t is record
        empty : std_logic;
    end record;
    
    type rgmii_txi_t is record
        col    : std_logic;
    end record;
    
    type rgmii_txo_t is record
        tx_clk : std_logic; -- 125 MHz DDR @ 1 Gbps.
        txd    : std_logic_vector(3 downto 0);
        tx_dv  : std_logic;
        tx_er  : std_logic;
    end record;
    
    --!
    --! Serial Gigabit Media Independent Interface (SGMII).
    --! 625 MHz DDR @ 1 Gbps.
    --!
    type sgmii_rxi_t is record
        rx_clk : std_logic;
        rxd    : std_logic;
        rx_dv  : std_logic;
        rx_er  : std_logic;
        crs    : std_logic;
    end record;
    
    type sgmii_rxo_t is record
        empty : std_logic;
    end record;
    
    type sgmii_txi_t is record
        col    : std_logic;
    end record;
    
    type sgmii_txo_t is record
        tx_clk : std_logic;
        txd    : std_logic;
        tx_dv  : std_logic;
        tx_er  : std_logic;
    end record;
    
end package mii_pkg;

package body mii_pkg is
end package body mii_pkg;
