----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/15/2024 04:42:50 PM
-- Design Name: I2S clock generation 
-- Module Name: I2S_clock_gen - Behavioral
-- Project Name: Blendinator
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2S_clock_gen is
    generic (
        -- g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');
        g_clock_div_sclk : integer := 4;
        g_clock_div_lrclk : integer := 64;
        g_chip_scope: string := "True"
    );
  Port ( 
    m_clk: in std_logic;

    mclk : out std_logic;
    sclk : out std_logic;
    lrclk: out std_logic
  );
end I2S_clock_gen;

architecture Behavioral of I2S_clock_gen is

    signal serial_counter : natural := 0;
    signal lr_counter : natural := 0;
    signal i_lrclk : STD_LOGIC := '0';
    signal i_sclk : STD_LOGIC := '0';
    -------------------------------------
    -- Chip Scope
    -------------------------------------
    attribute MARK_DEBUG : string;

    attribute MARK_DEBUG of i_lrclk : signal is g_chip_scope;
    attribute MARK_DEBUG of i_sclk : signal is g_chip_scope;

begin

    -------------------------------------
    -- Clock generation
    -------------------------------------
    process (m_clk)
    begin
        if rising_edge(m_clk) then
            
            serial_counter <= serial_counter +1;

            if serial_counter >= g_clock_div_sclk - 1 then
                serial_counter <= 0; lr_counter <= lr_counter +1;
                if lr_counter >= g_clock_div_lrclk - 1 then 
                    lr_counter <= 0;
                end if;
            end if;

        end if;

    end process;

    process (all)
    begin
        mclk <= m_clk;
        i_sclk <= '1';
        i_lrclk <= '1';
        if serial_counter >= g_clock_div_sclk/2 -1 then
            i_sclk <= '0';
        end if;
    
        if lr_counter >= g_clock_div_lrclk/2 -1 then 
            i_lrclk <= '0';
        end if;
    end process;

    lrclk <= i_lrclk;
    sclk <= i_sclk;

end Behavioral;
