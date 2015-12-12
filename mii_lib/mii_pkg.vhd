--============================================================================
--!
--! \file      mii_pkg
--!
--! \project   mii_lib
--!
--! \langv     VHDL-2002
--!
--! \brief     A package defining types to be used with ports and signals
--!            connected to a media independent interface.
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
    --! Management Data Input/Output (MDIO) Serial Management Interface (SMI).
    --!
    type mdio_ot is record
        mdio_mdc : std_logic; --! Management data clock.
    end record;
    
    type mdio_iot is record
        mdio_mdc : std_logic; --! Management data input/output.
    end record;
    
    --!
    --! Media Independent Interface (MII).
    --! 100 Mbps @ 25 MHz SDR.
    --! 10 Mbps @ 2.5 MHz SDR.
    --!
    type mii_it is record
        -- MII receive.
        rx_clk : std_logic; --! Receive clock, supplied by PHY.
        rxd    : std_logic_vector(3 downto 0); --! Receive data.
        rx_dv  : std_logic; --! Receive data valid.
        rx_er  : std_logic; --! Receive error.
        -- MII transmit.
        tx_clk : std_logic; --! Transmit clock., supplied by PHY.
        crs    : std_logic; --! Carrier sense.
        col    : std_logic; --! Collision detect.
    end record;
    
    type mii_ot is record
        -- MII transmit.
        txd    : std_logic_vector(3 downto 0); --! Transmit data.
        tx_en  : std_logic; --! Transmit enable.
        tx_er  : std_logic; --! Transmit error, optional.
    end record;
    
    --!
    --! Reduced Media Independent Interface (RMII).
    --! 100Mbps @ 50 MHz SDR.
    --! 10 Mbps @ 50 MHz SDR.
    --!
    type rmii_it is record
        -- RMII receive.
        rxd    : std_logic_vector(1 downto 0); --! Receive data.
        crs_dv : std_logic; --! Carrier sense / receive data valid multiplexed together.
        rx_er  : std_logic; --! Receive error.
    end record;
    
    type rmii_ot is record
        -- RMII transmit.
        ref_clk : std_logic; --! Reference clock, for both RX and TX.
        txd     : std_logic_vector(1 downto 0); --! Transmit data.
        tx_en   : std_logic; --! Transmit enable.
    end record;
    
    --!
    --! Gigabit Media Independent Interface (GMII).
    --! 1 Gbps @ 125 MHz SDR.
    --! 100 Mbps @ 25 MHz SDR.
    --! 10 Mbps @ 2.5 MHz SDR.
    --! Backwards compatible with the MII.
    --!
    type gmii_it is record
        -- GMII receive.
        rxclk : std_logic; --! Receive clock.
        rxd   : std_logic_vector(7 downto 0); --! Receive data.
        rxdv  : std_logic; --! Receive data valid.
        rxer  : std_logic; --! Receive error.
        cs    : std_logic; --! Carrier sense.
        col   : std_logic; --! Collision detect.
    end record;
    
    type gmii_ot is record
        gtxclk : std_logic; --! Gigabit transmit clock.
        txclk  : std_logic; --! Transmit clock, for 10/100 Mbps, supplied by PHY.
        txd    : std_logic_vector(7 downto 0); --! Transmit data.
        txen   : std_logic; --! Transmit data valid.
        txer   : std_logic; --! Transmit error.
    end record;
    
    --!
    --! Reduced Gigabit Media Independent Interface (RGMII).
    --! 1 Gbps @ 125 MHz DDR.
    --! 100 Mbps @ 25 MHz SDR.
    --! 10 Mbps @ 2.5 MHz SDR.
    --!
    type rgmii_it is record
        -- RGMII receive.
        rxc : std_logic; --! Receive clock.
        rxd : std_logic_vector(3 downto 0); --! Receive data.
        --! Receive control:
        --! Receive data valid on rising edge of rx_clk.
        --! Receive data valid XOR receive error on falling edge of rx_clk.
        rx_ctl : std_logic;
    end record;
    
    type rgmii_ot is record
        -- RGMII transmit.
        txc : std_logic; --! Transmit clock.
        txd : std_logic_vector(3 downto 0); --! Transmit data.
        --! Transmit control:
        --! Receive data valid on rising edge of rx_clk.
        --! Receive data valid XOR receive error on falling edge of rx_clk.
        tx_ctl : std_logic;
    end record;
    
    --!
    --! Serial Gigabit Media Independent Interface (SGMII).
    --! 1 Gbps / 100 Mbps / 10 Mbps @ 625 MHz DDR.
    --!
    type sgmii_it is record
        rxclk : std_logic; --! Receive clock, realized by LVDS pair.
        rx    : std_logic; --! Receive data, realized by LVDS pair.
    end record;
    
    type sgmii_ot is record
        txclk : std_logic; --! Transmit clock, realized by LVDS pair.
        tx    : std_logic; --! Transmit data, realized by LVDS pair.
    end record;
    
end package mii_pkg;

package body mii_pkg is
end package body mii_pkg;
