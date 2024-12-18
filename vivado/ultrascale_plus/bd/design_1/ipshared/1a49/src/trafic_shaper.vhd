----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/05/2024 11:09:18 AM
-- Design Name: Trafic shaper
-- Module Name: trafic_shaper - Behavioral
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
use work.mixer_settings_pkg.all;
use work.generic_fifo;
use ieee.fixed_pkg.all;

entity trafic_shaper is
    Port (
        --clocking
        clk      : in STD_LOGIC;

        -- Anal input
        anal_fwd: in t_axi4_audio_fwd;
        anal_bwd: out t_axi4_audio_bwd;

        -- DMA input
        dma_fwd: in t_axi4_audio_fwd;
        dma_bwd: out t_axi4_audio_bwd;

        -- Anal out
        anal_out_fwd: out t_axi4_audio_fwd;
        anal_out_bwd: in t_axi4_audio_bwd;

        -- DMA out
        dma_out_fwd: out t_axi4_audio_fwd;
        dma_out_bwd: in t_axi4_audio_bwd

    );
end trafic_shaper;

architecture Behavioral of trafic_shaper is

begin

    anal_out_fwd <= anal_fwd;
    anal_bwd <= anal_out_bwd;

    p_arbiter: process (all)
    begin
        if anal_fwd.TVALID = '1' and anal_bwd.TReady = '1' then
            dma_out_fwd <= dma_fwd;
            dma_bwd <= dma_out_bwd;
        else
            dma_out_fwd <= audio_fwd_inactive;
            dma_bwd.TReady <= '0';
        end if;
    end process;

end Behavioral;
