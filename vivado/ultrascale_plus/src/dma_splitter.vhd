----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/27/2024 06:07:49 PM
-- Design Name: DMA stream splitter
-- Module Name: dma_splitter - Behavioral
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

entity dma_splitter is
    generic (
        g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');
        g_chip_scope : string := "true"
    );
    Port (
        -- clock
        signal clk : in STD_LOGIC;
        signal rest: in STD_LOGIC;


        -- data inputs
        dma_valid : in STD_LOGIC;
        dma_data: in STD_LOGIC_VECTOR(128 -1 downto 0);
        dma_last: in STD_LOGIC;

        dma_ready: out STD_LOGIC;

        -- axi outputs
        axi_fwd : out t_axi4_audio_fwd;
        axi_bwd : in t_axi4_audio_bwd
     );
end dma_splitter;

architecture Behavioral of dma_splitter is

    constant g_dma_word_size : integer := 128; --plz don't change. 
    constant g_internal_fifo_width: integer := c_audio_width + c_ID_width;
    constant g_internal_fifo_depth: integer := 256;
    constant g_internal_fifo_mode : string := "fwft";
    -------------------------------------
    -- state machine
    -------------------------------------
    type t_state is (e_idle, e_data, e_wait);
    signal state : t_state := e_idle;

    signal dma_word : STD_LOGIC_VECTOR(g_dma_word_size -1 downto 0);
    signal sample : STD_LOGIC_VECTOR(c_audio_width -1 downto 0) := (others => '0');

    signal sample_counter : integer := 3;

    -------------------------------------
    -- FIFO
    -------------------------------------
    signal almost_full : STD_LOGIC;
    signal full : STD_LOGIC;
    signal din : STD_LOGIC_VECTOR(g_internal_fifo_width -1 downto 0) := (others => '0');
    signal wr_en : STD_LOGIC := '0';
    signal almost_empty : STD_LOGIC;
    signal empty : STD_LOGIC;
    signal dout : STD_LOGIC_VECTOR(g_internal_fifo_width -1 downto 0) := (others => '0');
    signal rd_en : STD_LOGIC := '0';

    -------------------------------------
    -- Chip Scope
    -------------------------------------
    attribute MARK_DEBUG : string;

    attribute MARK_DEBUG of full : signal is g_chip_scope;
    attribute MARK_DEBUG of wr_en : signal is g_chip_scope;
    attribute MARK_DEBUG of empty : signal is g_chip_scope;
    attribute MARK_DEBUG of rd_en : signal is g_chip_scope;
    attribute MARK_DEBUG of sample_counter : signal is g_chip_scope;
    attribute MARK_DEBUG of state : signal is g_chip_scope;
begin

    -- TODO: TB maken fucker

    p_input: process (clk)
    begin
        if rising_edge(clk) then
            if rest = '1' then
                state <= e_idle;
            else
                case state is
                    when e_idle =>
                        dma_ready <= '1';
                        if dma_valid = '1' then
                            dma_ready <= '0';
                            state <= e_data;
                            sample_counter <= 3;
                            dma_word <= dma_data;
                            -- wr_en <= not full;
                        end if;
                    when e_data =>
                        dma_ready <= '0';
                        -- wr_en <= '0';
                        -- this is quite the mux, if I had more time, it would have been better ¯\_(?)_/¯
                        -- check if the fifo is full
                        if full = '0' then
                            sample_counter <= sample_counter -1;
                            -- wr_en <= '1';
                            if sample_counter = 3 then
                                din <= dma_word(23 downto 0) & g_channel_offset; --this is a guess of where the first sample is 
                            elsif sample_counter = 2 then
                                din <= dma_word(47 downto 24) & g_channel_offset + 1; -- this is a guess of where the second sample is
                            elsif sample_counter = 1 then
                                din <= dma_word(87 downto 64) & g_channel_offset; --this is a guess of where the third sample is 
                            else
                                din <= dma_word(111 downto 88) & g_channel_offset + 1; -- this is a guess of where the fourth sample is
                                -- switch state
                                dma_ready <= '1';
                                state <= e_idle;
                                -- wr_en <= '0';
                            end if;
                        end if;
                    when e_wait =>
                        state <= e_idle;
                end case;
            end if;
        end if;
    end process;

    process(all)
    begin
        -- test
        if state = e_data then
            wr_en <= not full;
        else 
            wr_en <= '0';
        end if;
    end process;

    -- generic fifo 
    generic_fifo_inst: entity work.generic_fifo
     generic map(
        g_fifo_depth => g_internal_fifo_depth,
        g_fifo_width => g_internal_fifo_width,
        g_fifo_mode => g_internal_fifo_mode
    )
     port map(
        clk_in => clk,
        clk_out => clk,
        almost_full => almost_full,
        full => full,
        din => din,
        wr_en => wr_en,
        -- wr_data_count => wr_data_count,
        rst => '0',
        -- wr_rst_busy => wr_rst_busy,
        almost_empty => almost_empty,
        empty => empty,
        -- data_valid => data_valid,
        dout => dout,
        rd_en => rd_en
        -- rd_data_count => rd_data_count,
        -- rd_rst_busy => rd_rst_busy
    );
    
    p_output : process (all)
        variable data : STD_LOGIC_VECTOR(c_audio_width - 1 downto 0) := (others => '0');
        variable tid : STD_LOGIC_VECTOR(c_ID_width - 1 downto 0) := (others => '0');
    begin
        data := dout(dout'high downto c_ID_width);
        tid := dout(c_ID_width -1 downto 0);
        axi_fwd.TValid <= not empty;
        axi_fwd.TData <= data;
        axi_fwd.TID <= tid;
        rd_en <= axi_bwd.TReady;
    end process;

end Behavioral;
