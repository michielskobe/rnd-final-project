----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/08/2024 05:03:10 PM
-- Design Name: I2S transmitter
-- Module Name: I2S_trans - RTL
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
use IEEE.NUMERIC_STD.ALL;
use ieee.MATH_REAL.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2S_trans is
    generic (
        g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');
        g_clock_div_sclk : integer := 4;
        g_clock_div_lrclk : integer := 64;
        g_chip_scope : string := "False"
    );
    Port (
        -- clock
        signal m_clk : in STD_LOGIC;
        signal m_rst : in STD_LOGIC;

        -- clock outputs
        signal mclk : out STD_LOGIC;
        signal lrclk: out STD_LOGIC;
        signal sclk : out STD_LOGIC;

        -- data outputs
        signal data_out : out STD_LOGIC;

        -- axi inputs
        axi_in_fwd : in t_axi4_audio_fwd;
        axi_in_bwd : out t_axi4_audio_bwd
     );
end I2S_trans;

architecture RTL of I2S_trans is
    -------------------------------------
    -- Clock generation
    -------------------------------------
    signal serial_counter : natural := 0;
    signal lr_counter : natural := 0;

    signal i_lrclk : STD_LOGIC := '0';
    signal i_sclk : STD_LOGIC := '0';
    -------------------------------------
    -- Shift register
    -------------------------------------
    signal start : STD_LOGIC := '0';
    signal busy : STD_LOGIC := '0';
    signal offset : STD_LOGIC_VECTOR( integer(ceil(log2(real(c_audio_width)))) -1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(c_audio_width , integer(ceil(log2(real(c_audio_width))))));
    signal l_sample : STD_LOGIC_VECTOR(c_audio_width -1 downto 0) := (others => '0');
    signal r_sample : STD_LOGIC_VECTOR(c_audio_width -1 downto 0) := (others => '0');

    signal l_sent : STD_LOGIC := '0';
    signal r_sent : STD_LOGIC := '0';
    -------------------------------------
    -- state machine
    -------------------------------------
    type t_state is (e_idle, e_data, e_wait);
    signal state : t_state := e_idle;
    signal sample : STD_LOGIC_VECTOR(c_audio_width -1 downto 0) := (others => '0');
    signal l_buffr : STD_LOGIC := '0';
    signal r_buffr : STD_LOGIC := '0';

    -------------------------------------
    -- Chip Scope
    -------------------------------------
    attribute MARK_DEBUG : string;

    attribute MARK_DEBUG of start : signal is g_chip_scope;
    attribute MARK_DEBUG of busy : signal is g_chip_scope;
    attribute MARK_DEBUG of offset : signal is g_chip_scope;
    attribute MARK_DEBUG of l_sent : signal is g_chip_scope;
    attribute MARK_DEBUG of r_sent : signal is g_chip_scope;
    attribute MARK_DEBUG of state : signal is g_chip_scope;


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
        if serial_counter >= g_clock_div_sclk/2 then
            i_sclk <= '0';
        end if;
    
        if lr_counter >= g_clock_div_lrclk/2 then 
            i_lrclk <= '0';
        end if;
    end process;

    lrclk <= i_lrclk;
    sclk <= i_sclk;

    -------------------------------------
    -- state machine
    -------------------------------------
    process(m_clk) is
    begin
        if rising_edge(m_clk) then
            if m_rst = '1' then
                state <= e_idle;
            else
                if l_sent = '1' then 
                    l_buffr <= '0';
                end if;

                if r_sent = '1' then
                    r_buffr <= '0';
                end if;

                case state is
                    when e_idle =>
                        axi_in_bwd.TReady <= '1';
                        if axi_in_fwd.TValid = '1' then
                            sample <= axi_in_fwd.TData;
                            state <= e_data;
                            axi_in_bwd.TReady <= '0';
                        end if;

                    when e_data => 
                        axi_in_bwd.TReady <= '0';
                        if busy = '0' then
                            if axi_in_fwd.TID = g_channel_offset then
                                l_sample <= sample;
                                l_buffr <= '1';
                            elsif axi_in_fwd.TID = g_channel_offset + 1 then 
                                r_sample <= sample;
                                r_buffr <= '1';
                            end if;
                            state <= e_wait;
                        end if;
                    
                    when e_wait =>
                        axi_in_bwd.TReady <= '0';
                        if r_buffr = '0' or l_buffr = '0' then
                            state <= e_idle;
                            axi_in_bwd.TReady <= '1';
                        end if;
                end case;
            end if;
        end if;
    end process;

    -------------------------------------
    -- Shift register
    -------------------------------------
    process (m_clk)
    begin
        if rising_edge(m_clk) then
            start <= '0';
            if lr_counter = 1 or lr_counter = g_clock_div_lrclk/2 +1 then
                start <= '1';
            end if; 
        end if;
    end process;

    process (m_clk)
    begin
        if rising_edge(m_clk) then
            if serial_counter >= g_clock_div_sclk -1 then
                busy <= '0';
                data_out <= '0';
                l_sent <= '0';
                r_sent <= '0';
                if start = '1' or busy = '1' then
                    busy <= '1';
                    offset <= offset - 1;
                    if i_lrclk = '0' then
                        data_out <= l_sample(to_integer(unsigned(offset -1)));
                    else
                        data_out <= r_sample(to_integer(unsigned(offset -1)));
                    end if;
                    if offset = 1 then
                        offset <= STD_LOGIC_VECTOR(to_unsigned(c_audio_width, integer(ceil(log2(real(c_audio_width))))));
                        if i_lrclk = '0' then
                            l_sent <= '1';
                        else
                            r_sent <= '1';
                        end if;
                        busy <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;
end RTL;
