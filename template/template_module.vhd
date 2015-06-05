--============================================================================
--!
--! \file      <FILE_NAME>
--!
--! \project   <PROJECT_NAME>
--!
--! \langv     VHDL-2008
--!
--! \brief     <BRIEF_DESCRIPTION>.
--!
--! \details   <DETAILED_DESCRIPTION>.
--!
--! \bug       <BUGS_OR_KNOWN_ISSUES>.
--!
--! \see       <REFERENCES>
--!
--! \copyright <COPYRIGHT_OR_LICENSE>
--!
--! Revision history:
--!
--! \version   <VERSION>
--! \date      <YYYY-MM-DD>
--! \author    <AUTHOR_NAME>
--!
--============================================================================


library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;

package <PACKAGE_IDENTIFIER> is
    component <MODULE_IDENTIFIER> is
        generic (
            my_generic : integer := 0
        );
        port (
            my_port : std_logic
        );
    end component <MODULE_IDENTIFIER>;
end package <PACKAGE_IDENTIFIER>;

package body <PACKAGE_IDENTIFIER> is
end package body <PACKAGE_IDENTIFIER>;


library ieee;
    use ieee.numeric_std.all;
    use ieee.std_logic_1164.all;
library work;
    use work.<PACKAGE_IDENTIFIER>.all;

entity <MODULE_IDENTIFIER> is
    generic (
        <GENERIC_IDENTIFIER> : integer := 0
    );
    port (
        <PORT_IDENTIFIER> : std_logic
    );
begin
end entity <MODULE_IDENTIFIER>;

architecture <BEHAVIORAL|RTL|STRUCT> of <MODULE_IDENTIFIER> is
begin
end architecture <BEHAVIORAL|RTL|STRUCT>;
