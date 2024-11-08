----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 08/11/2024 09:21:45 AM
-- Design Name: axi2wav
-- Module Name: axi2wav - Behavioral
-- Project Name: Blendinator
-- Target Devices: non-synth
-- Tool Versions: vivado 2024.1
-- Description: converts an audio AXI stream into a WAV file
-- 
-- Dependencies: none
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
use ieee.std_logic_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use std.textio.all;


use work.axi4_audio_pkg.all;
use work.wav_lib_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi2wav is
    generic (
        g_file_name : string := "";
        g_channel   : integer := 0
    );
    Port (
    -- inputs
    ratio : in natural range 0 to 256 := 256;
    clk_in : in STD_LOGIC;

    -- outputs
    axi_in_fwd : in t_axi4_audio_fwd;
    axi_in_bwd : out t_axi4_audio_bwd
    );
end axi2wav;

architecture Behavioral of axi2wav is

    signal ratio_ctr : natural range 0 to 256 := 0;
    signal valid     : STD_LOGIC := '0';
    signal ready     : STD_LOGIC := '0';

begin
    axi_in_bwd.TReady <= ready;
    valid <= axi_in_fwd.TValid;

    p_write : process
        file        v_wav_file   : t_wav_file;
        variable    v_wav_opened : FILE_OPEN_STATUS;
        variable    v_opened     : BOOLEAN;
        variable    v_wav_header : t_wav_header;
        variable    v_chan_offset: BOOLEAN;
    begin
        
        assert g_file_name /= ""
            report "File name is not defined"
            severity failure;
        
        file_open(v_wav_opened, v_wav_file, g_file_name, write_mode);
        assert v_wav_opened = OPEN_OK
            report "Failed to open " & g_file_name
            severity failure;
        
        v_opened := true;
        -- I hate WAV
        -- To future readers, this header is a total hack. It is because stuff was annoying and I needed to make progress
        v_wav_header := (
            TRiff_ID => 16#52494646#,
            TChunk_size => 16#00000000#, 
            TWave => 16#57415645#,
            Tfmt => 16#666d7420#,
            TSub_chunk_size => 16#10000000#,
            TAudio_Format => 16#01#,
            TNum_channels => 16#02#,
            TSample_rate => 16#00770100#,
            TByte_rate => 16#00ca0800#,
            TBlock_align => 16#0006#,
            TBits_per_sample => 16#0018#,
            TData => 16#64617461#,
            TSub_chunk_2_size => 16#0500eac3#
        );

        write_header(v_wav_file, v_wav_header);
        -- on a valid axi handshake
        while True loop
            if ready = '1' and valid = '1' then
                write_sample(v_wav_file, axi_in_fwd.TData);
                wait until rising_edge(clk_in);
            else 
                wait until rising_edge(clk_in);
            end if;
            
        end loop;
        FILE_CLOSE(v_wav_file);
        wait until rising_edge(clk_in);
        

    end process;

    p_ratio: process (clk_in)
    begin
        if rising_edge(clk_in) then
            ratio_ctr <= ratio_ctr +1;
            ready <= '0';
            if ratio_ctr <= ratio then
                ready <= '1';
            end if;
            
            if ratio_ctr = 256 then
                ratio_ctr <= 0;
            end if;
        end if;
    end process;

end Behavioral;
