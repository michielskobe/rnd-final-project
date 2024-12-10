----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Wout Lyen
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/05/2024 12:17:40 PM
-- Design Name: Wrapper for audio pipeline
-- Module Name: audio_pipeline_wrapper - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.MATH_REAL.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;
use work.mixer_settings_pkg.all;
use work.generic_fifo;
use ieee.fixed_pkg.all;
use work.axi4_mm_filter_pkg.all;

entity audio_pipeline_wrapper is
    generic (
        g_chip_scope : string := "false"
    );
    Port (
        --clocking
        clk_in      : in STD_LOGIC;
        clk_audio   : in STD_LOGIC;
        clk_out     : in STD_LOGIC;

        -- axi mm settings
        clk_axi_mm  : in STD_LOGIC;
        master_volume: in STD_LOGIC_VECTOR(18 - 1 downto 0);
        channel_volume_select: in STD_LOGIC_VECTOR (c_ID_width - 1 downto 0);
        channel_volume_value: in STD_LOGIC_VECTOR(18 - 1 downto 0);

        rst : in std_logic;

        vivado_is_zo_tof_ugh : in std_logic;
        -- monitoring of DMA engine
        dma_valid   : in STD_LOGIC;

        -- anal input
        signal s_TValid_anal : in STD_LOGIC;
        signal s_TLast_anal : in STD_LOGIC;
        signal s_TData_anal : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_anal : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_anal : out STD_LOGIC;
        
        -- dma input
        signal s_TValid_dma : in STD_LOGIC;
        signal s_TLast_dma : in STD_LOGIC;
        signal s_TData_dma : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_dma : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_dma : out STD_LOGIC;

        -- audio out
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_out : in STD_LOGIC
    );
end audio_pipeline_wrapper;

architecture Behavioral of audio_pipeline_wrapper is

    signal anal_fwd : t_axi4_audio_fwd;
    signal anal_bwd : t_axi4_audio_bwd;

    signal dma_fwd : t_axi4_audio_fwd;
    signal dma_bwd : t_axi4_audio_bwd;

    signal audio_out_fwd : t_axi4_audio_fwd;
    signal audio_out_bwd : t_axi4_audio_bwd;

    signal FIXME : STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
begin

    anal_fwd.TVALID <= s_TValid_anal;
    dma_fwd.TVALID <= s_TValid_dma;
    s_TValid_out <= audio_out_fwd.TValid;

    anal_fwd.Tlast <= s_Tlast_anal;
    dma_fwd.Tlast <= s_Tlast_dma;
    s_Tlast_out <= audio_out_fwd.Tlast;

    anal_fwd.Tdata <= s_Tdata_anal;
    dma_fwd.Tdata <= s_Tdata_dma;
    s_Tdata_out <= audio_out_fwd.Tdata;

    anal_fwd.Tid <= s_Tid_anal;
    dma_fwd.Tid <= s_Tid_dma;
    s_Tid_out <= audio_out_fwd.Tid;

    s_TReady_anal <= anal_bwd.TReady;
    s_TReady_dma <= dma_bwd.TReady;
    audio_out_bwd.TREADY <= s_TReady_out;

    process (clk_axi_mm)
    begin
        if rising_edge(clk_axi_mm) then
            FIXME <= FIXME +1;
        end if;
    end process;

    audio_pipeline_inst: entity work.audio_pipeline
     generic map(
        g_chip_scope => g_chip_scope
    )
     port map(
        clk_in => clk_in,
        clk_audio => clk_audio,
        clk_out => clk_out,
        rst => rst,
        clk_axi_mm => clk_axi_mm,
        master_volume => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
        channel_volume_select => FIXME,
        channel_volume_value => STD_LOGIC_VECTOR(to_unsigned(1, 18)),
        axi_in_mm_band_low_1 => axi4_mm_filter_inactive,
        axi_in_mm_band_low_2=> axi4_mm_filter_inactive,
        axi_in_mm_band_high_1=> axi4_mm_filter_inactive,
        axi_in_mm_band_high_2=> axi4_mm_filter_inactive,
        axi_in_mm_low_1=> axi4_mm_filter_inactive,
        axi_in_mm_low_2=> axi4_mm_filter_inactive,
        axi_in_mm_high_1=> axi4_mm_filter_inactive,
        axi_in_mm_high_2=> axi4_mm_filter_inactive,
        axi_in_mm_low_pass=> axi4_mm_filter_inactive,
        axi_in_mm_high_pass_1=> axi4_mm_filter_inactive,
        axi_in_mm_high_pass_2=> axi4_mm_filter_inactive,
        axi_in_mm_echo => axi4_mm_echo_inactive,
        axi_in_mm_ring_mod_anal => axi4_mm_ring_mod_inactive,
        axi_in_mm_ring_mod_dma => axi4_mm_ring_mod_inactive,
        axi_in_mm_saturation => axi4_mm_saturation_inactive,
        axi_in_mm_volume_reduction => axi4_mm_volume_inactive,
        axi_in_mm_band_volume => axi4_mm_band_volume_inactive,
        dma_valid => dma_valid,
        anal_fwd => anal_fwd,
        anal_bwd => anal_bwd,
        dma_fwd => dma_fwd,
        dma_bwd => dma_bwd,
        audio_out_fwd => audio_out_fwd,
        audio_out_bwd => audio_out_bwd
    );

end Behavioral;
