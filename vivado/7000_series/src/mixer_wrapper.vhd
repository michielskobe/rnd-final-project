----------------------------------------------------------------------------------
-- company: kul - rnd embed - beats n bytes
-- engineer: robbe decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/02/2024 04:36:42 PM
-- Design Name: Mixer wrapper
-- Module Name: mixer_wrapper - Behavioral
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
-- The pipeline works like this:
-- input is 4 channel audio
-- gets split up into four mono channels by channel splitter
-- each channel gets buffered in an audio fifo
-- channel 0 and 2 get put into mapper 1 (anal left + dma left => output left)
-- channel 1 and 3 get put into mapper 1 (anal right + dma right => output right)
-- (optional) output left and output right get buffered in fifo's again
-- out left + out right get merged into one stream
-- this stream becomes the output of the module after volume normalization
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.MATH_REAL.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;
use work.generic_fifo;
use ieee.fixed_pkg.all;

entity mixer_wrapper is
    generic (
        g_chip_scope : string := "false"
    );
    port(
        -- clocking
        clk: in STD_LOGIC;

        -- settings
        axi_mm_clk: in std_logic;
        dma_valid: in std_logic;

        -- audio in
        axi_in_fwd: in t_axi4_audio_fwd;
        axi_in_bwd: out t_axi4_audio_bwd;

        -- audio out
        axi_out_fwd: out t_axi4_audio_fwd;
        axi_out_bwd: in t_axi4_audio_bwd
    );
end mixer_wrapper;

architecture Behavioral of mixer_wrapper is
    ------------------------------------
    -- Settings
    ------------------------------------
    constant c_splitter_fifo_depth : integer := 16;
    constant c_channel_fifo_depth : integer := 1024;
    constant c_merger_fifo_depth: integer := 32;
    ------------------------------------
    -- dma ctrl
    ------------------------------------
    signal dma_valid_sync_1 : std_logic := '0';
    signal dma_valid_sync_2 : std_logic := '0';
    signal dma_valid_sync_3 : std_logic := '0';

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal splitter_input_fwd : t_axi4_audio_fwd_bus(0 downto 0);
    signal splitter_input_bwd : t_axi4_audio_bwd_bus(0 downto 0);

    signal splitter_output_fwd : t_axi4_audio_fwd_bus(2**c_ID_width -1 downto 0);
    signal splitter_output_bwd : t_axi4_audio_bwd_bus(2**c_ID_width -1 downto 0);

    signal channel_fifo_output_fwd : t_axi4_audio_fwd_bus(2**c_ID_width -1 downto 0);
    signal channel_fifo_output_bwd : t_axi4_audio_bwd_bus(2**c_ID_width -1 downto 0);

    signal mapperleft_out_fwd: t_axi4_audio_fwd_bus(0 downto 0);
    signal mapperleft_out_bwd: t_axi4_audio_bwd_bus(0 downto 0);
    signal mapperright_out_fwd: t_axi4_audio_fwd_bus(0 downto 0);
    signal mapperright_out_bwd: t_axi4_audio_bwd_bus(0 downto 0);

    signal merger_out_fwd : t_axi4_audio_fwd;
    signal merger_out_bwd : t_axi4_audio_bwd;

    signal dma_valid_prev : STD_LOGIC := '0';
    signal empty_dma : std_logic := '0';
    signal channel_enable : STD_LOGIC_VECTOR(2**c_ID_width -1 downto 0) := (0=> '1', 1 => '1', others => '0');
    signal dma_enable : STD_LOGIC := '0';

    signal volume :sfixed(18 -1 downto 0) := to_sfixed(1, 17, 0);
    signal channel_address: STD_LOGIC_VECTOR(c_ID_width -1 downto 0) := (others => '0');

begin
    -- TODO: channel enable + dma enable uitzoeken
    -- TODO: Audio normalizatie uitzoeken

    ------------------------------------
    -- dma ctrl
    ------------------------------------
    process (axi_mm_clk)
    begin
        if rising_edge(axi_mm_clk) then
            dma_valid_sync_1 <= dma_valid;
        end if;
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            dma_valid_sync_2 <= dma_valid_sync_1;
            dma_valid_sync_3 <= dma_valid_sync_2;
        end if;
    end process;

    p_dma_ctrl: process (clk)
    begin
        if rising_edge(clk) then
            dma_valid_prev <= dma_valid_sync_3;
            
            -- rising edge of valid dma transfer
            if dma_valid_prev = '0' and dma_valid_sync_3 = '1' then
                dma_enable <= '1';
                channel_enable <= (others => '1');
                volume <= to_sfixed(0.7, 17, 0);
            end if;
            
            -- falling edge of valid dma transfer
            if dma_valid_prev = '1' and dma_valid_sync_3 = '0' then
                empty_dma <= '1';
                channel_enable <= (0=> '1', 1 => '1', others => '0');
            end if;

            if empty_dma = '1' then
                -- wait until the dma channel fifo's are empty
                if channel_fifo_output_fwd(2).TValid = '0' and channel_fifo_output_fwd(3).TValid = '0' then
                    dma_enable <= '0';
                    volume <= to_sfixed(1, 17, 0);
                    empty_dma <= '0';
                end if;
            end if;
        end if;
    end process;

    p_normalization: process (axi_mm_clk)
    begin
        if rising_edge(axi_mm_clk) then
            channel_address <= channel_address +1;
        end if;
    end process;

    ------------------------------------
    -- Channel splitter
    ------------------------------------
    splitter_input_fwd(0) <= axi_in_fwd;
    axi_in_bwd <= splitter_input_bwd(0);

    channel_splitter_inst: entity work.channel_splitter
     generic map(
        g_input_channels => 1,
        g_output_channels => 2**c_ID_width,
        g_internal_fifo_depth => c_splitter_fifo_depth,
        g_chip_scope => g_chip_scope
    )
     port map(
        clk_in => clk,
        clk_out => clk,
        channel_enable => channel_enable,
        clk_axi_mm => axi_mm_clk,
        axi_in_fwd_bus => splitter_input_fwd,
        axi_in_bwd_bus => splitter_input_bwd,
        axi_out_fwd_bus => splitter_output_fwd,
        axi_out_bwd_bus => splitter_output_bwd 
    );


    ------------------------------------
    -- Channel FIFO's
    ------------------------------------
    gen_axi_fifo : for i in 0 to 2**c_ID_width -1 generate
        audio_fifo_inst: entity work.audio_fifo
         generic map(
            g_fifo_depth => c_channel_fifo_depth
        )
         port map(
            clk_in => clk,
            clk_out => clk,
            axi_in_fwd => splitter_output_fwd(i),
            axi_in_bwd => splitter_output_bwd(i),
            axi_out_fwd => channel_fifo_output_fwd(i),
            axi_out_bwd => channel_fifo_output_bwd(i)
        );
    end generate;

    ------------------------------------
    -- Channel Mapping
    ------------------------------------
    b_mapping : block 
        signal mapperleft_in_fwd: t_axi4_audio_fwd_bus(1 downto 0);
        signal mapperleft_in_bwd: t_axi4_audio_bwd_bus(1 downto 0);

        signal mapperright_in_fwd: t_axi4_audio_fwd_bus(1 downto 0);
        signal mapperright_in_bwd: t_axi4_audio_bwd_bus(1 downto 0);
    begin
        -- reshuffle axi bus
        mapperleft_in_fwd(0) <= channel_fifo_output_fwd(0);
        mapperleft_in_fwd(1) <= channel_fifo_output_fwd(2);

        channel_fifo_output_bwd(0) <= mapperleft_in_bwd(0);
        channel_fifo_output_bwd(2) <= mapperleft_in_bwd(1);

        mapperright_in_fwd(0) <= channel_fifo_output_fwd(1);
        mapperright_in_fwd(1) <= channel_fifo_output_fwd(3);

        channel_fifo_output_bwd(1) <= mapperright_in_bwd(0);
        channel_fifo_output_bwd(3) <= mapperright_in_bwd(1);

        channelleft_mapper_inst: entity work.channel_mapper
        generic map(
            g_input_channels => 2,
            g_output_channels => 1,
            g_output_tid => 0
        )
        port map(
            clk => clk,
            dma_enable => dma_enable,
            clk_axi_mm => axi_mm_clk,
            axi_in_fwd_bus => mapperleft_in_fwd,
            axi_in_bwd_bus => mapperleft_in_bwd,
            axi_out_fwd_bus => mapperleft_out_fwd,
            axi_out_bwd_bus => mapperleft_out_bwd 
        );

        channelright_mapper_inst: entity work.channel_mapper
        generic map(
            g_input_channels => 2,
            g_output_channels => 1,
            g_output_tid => 1
        )
        port map(
            clk => clk,
            dma_enable => dma_enable,
            clk_axi_mm => axi_mm_clk,
            axi_in_fwd_bus => mapperright_in_fwd,
            axi_in_bwd_bus => mapperright_in_bwd,
            axi_out_fwd_bus => mapperright_out_fwd,
            axi_out_bwd_bus => mapperright_out_bwd 
        );
        
    end block;

    ------------------------------------
    -- Channel Merging
    ------------------------------------
    b_merging : block 
        signal pre_merger_fwd : t_axi4_audio_fwd_bus(1 downto 0);
        signal pre_merger_bwd : t_axi4_audio_bwd_bus(1 downto 0);
    begin
        pre_merger_fwd(0) <= mapperleft_out_fwd(0);
        pre_merger_fwd(1) <= mapperright_out_fwd(0);
        mapperleft_out_bwd(0) <= pre_merger_bwd(0);
        mapperright_out_bwd(0) <= pre_merger_bwd(1);

        channel_merger_inst: entity work.channel_merger
         generic map(
            g_input_channels => 2,
            g_internal_fifo_depth => c_merger_fifo_depth,
            g_chip_scope => g_chip_scope
        )
         port map(
            clk_in => clk,
            clk_out => clk,
            channel_enable => channel_enable,
            clk_axi_mm => axi_mm_clk,
            axi_in_fwd_bus => pre_merger_fwd,
            axi_in_bwd_bus => pre_merger_bwd,
            axi_out_fwd => merger_out_fwd,
            axi_out_bwd => merger_out_bwd 
        );

    end block;

    ------------------------------------
    -- Audio normalization
    ------------------------------------
    volume_ctrl_inst: entity work.volume_ctrl
     generic map(
        g_chip_scope => g_chip_scope
    )
     port map(
        clk => clk,
        axi_clk => axi_mm_clk,
        channel_address => channel_address,
        channel_volume => to_slv(volume),
        axi_in_fwd => merger_out_fwd,
        axi_in_bwd => merger_out_bwd,
        axi_out_fwd => axi_out_fwd,
        axi_out_bwd => axi_out_bwd
    );
end Behavioral;
