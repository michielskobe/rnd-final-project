----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 12/08/2024 04:57:36 PM
-- Design Name: Startup fixer
-- Module Name: startup_fixer - Behavioral
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
use work.axi4_mm_filter_pkg.all;


entity startup_fixer is
    generic (
        g_startup_delay : integer := 100
    );
    port (
        -- clocking
        clk : in STD_LOGIC;

        -- axi
        src_fwd : in t_axi4_audio_fwd;
        src_bwd : out t_axi4_audio_bwd;
        
        sink_fwd : out t_axi4_audio_fwd := audio_fwd_inactive;
        sink_bwd : in t_axi4_audio_bwd

    );
end startup_fixer;

architecture Behavioral of startup_fixer is

    signal startup_ctr: integer range 0 to g_startup_delay := 0;

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if src_fwd.TValid = '1' and sink_bwd.TReady = '1' then
                startup_ctr <= startup_ctr + 1;
                if startup_ctr >= g_startup_delay -1 then
                    startup_ctr <= startup_ctr;
                end if;
            end if;
        end if;
    end process;

    process (all)
    begin
        src_bwd <= sink_bwd;
        sink_fwd.TValid <= src_fwd.TValid;
        sink_fwd.TLast <= src_fwd.TLast;
        sink_fwd.TID <= src_fwd.TID;
        if startup_ctr >= g_startup_delay -1 then
            sink_fwd.TData <= src_fwd.TData;
        else
            sink_fwd.TData <= (others => '0');
        end if;
    end process;

end Behavioral;
