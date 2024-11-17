----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/13/2024 12:09:11 PM
-- Design Name: 
-- Module Name: I2S_rec - Behavioral
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

entity I2S_rec is
    generic (
        g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');
        g_clock_div_sclk : integer := 4;
        g_clock_div_lrclk : integer := 64
    );
    Port (
        -- clock
        signal m_clk : in STD_LOGIC;
        signal m_rst : in STD_LOGIC;

        -- clock inputs
        signal mclk : out STD_LOGIC;
        signal lrclk: out STD_LOGIC;
        signal sclk : out STD_LOGIC;

        -- data inputs 
        signal data_in : in STD_LOGIC;

        -- axi outputs
        axi_out_fwd : out t_axi4_audio_fwd;
        axi_out_bwd : in t_axi4_audio_bwd
     );
end I2S_rec;

architecture Behavioral of I2S_rec is
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
    signal l_sent_prev : STD_LOGIC := '0';
    signal r_sent : STD_LOGIC := '0';

    signal is_l_sample : STD_LOGIC := '0';

    -------------------------------------
    -- synchronizer
    -------------------------------------
    signal sync_1 : STD_LOGIC := '0';
    signal sync_2 : STD_LOGIC := '0';

    -------------------------------------
    -- AXI
    -------------------------------------
    type t_state is (e_idle, e_data, e_wait);
    signal state : t_state := e_idle;
    signal sample : STD_LOGIC_VECTOR(c_audio_width -1 downto 0) := (others => '0');
    signal l_buffr : STD_LOGIC := '0';
    signal r_buffr : STD_LOGIC := '0';
    signal l_used : STD_LOGIC := '0';

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

    -------------------------------------
    -- state machine
    -------------------------------------
    process(m_clk) is
    begin
        if rising_edge(m_clk) then
            if m_rst = '1' then
                state <= e_idle;
            else
                l_sent_prev <= l_sent;
                if l_sent = '1' and l_sent_prev = '0' then --rising edge of l_sent
                    l_buffr <= '1';
                end if;

                case state is
                    when e_idle =>
                        axi_out_fwd.TValid <= '0';
                        if l_buffr = '1' then 
                            axi_out_fwd.TValid <= '1';
                            state <= e_data;
                            l_buffr <= '0'; -- buffered sample has been used
                            axi_out_fwd.TData <= l_sample;
                            if is_l_sample = '1' then 
                                axi_out_fwd.TID <= g_channel_offset;
                            else
                                axi_out_fwd.TID <= g_channel_offset + 1;
                            end if;
                        end if;
                    when e_data => 
                        axi_out_fwd.TValid <= '1';
                        l_buffr <= '0'; -- buffered sample has been used
                        if axi_out_bwd.TReady = '1' then
                            axi_out_fwd.TValid <= '0';
                            state <= e_wait;
                        end if;
                    when e_wait =>
                        axi_out_fwd.TValid <= '0';
                        state <= e_idle;

                end case;
            end if;
        end if;
    end process;



    -------------------------------------
    -- Shift register
    -------------------------------------
    -- synchronizer
    process (m_clk)
    begin
        if rising_edge(m_clk) then
            sync_1 <= data_in;
            sync_2 <= sync_1;
        end if;
    end process;

    process (m_clk)
    begin
        if rising_edge(m_clk) then
            start <= '0';
            if lr_counter = 1 or lr_counter = g_clock_div_lrclk/2 +1  then
                start <= '1';
            end if; 
        end if;
    end process;

    process (m_clk)
    begin
        if rising_edge(m_clk) then
        if serial_counter >= g_clock_div_sclk -1 then
            busy <= '0';
            l_sent <= '0';
            r_sent <= '0';
            -- shift captured sample into buffer register
            if r_sent = '1' then 
                l_sample <= r_sample;
                is_l_sample <= i_lrclk;
                l_sent <= '1';
            end if;
            if start = '1' or busy = '1' then
                busy <= '1';
                offset <= offset - 1;
                r_sample(to_integer(unsigned(offset -1 ))) <= data_in;
                if offset = 1 then
                    offset <= STD_LOGIC_VECTOR(to_unsigned(c_audio_width, integer(ceil(log2(real(c_audio_width))))));
                    r_sent <= '1';
                    busy <= '0';
                end if;
            end if;
        end if;
        end if;
    end process;
end Behavioral;
