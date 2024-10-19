----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 10/10/2024 06:16:45 PM
-- Design Name: wav2axi
-- Module Name: wav2axi - Behavioral
-- Project Name: Blendinator
-- Target Devices: non-synth
-- Tool Versions: vivado 2024.1
-- Description: converts a wav file into an axi stream
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

entity wav2axi is
    generic (
        g_file_name : string := "";
        g_channel   : integer := 0
    );
    Port (
    -- inputs
    ratio : in natural range 0 to 256 := 256;
    clk_in : in STD_LOGIC;

    -- outputs
    axi_out_fwd : out t_axi4_audio_fwd;
    axi_out_bwd : in t_axi4_audio_bwd
    );
end wav2axi;

architecture Behavioral of wav2axi is


begin

    p_read : process 
        file        v_wav_file   : t_wav_file;
        variable    v_wav_opened : FILE_OPEN_STATUS;
        variable    v_opened     : BOOLEAN;
        variable    v_wav_header : t_wav_header;
    begin

        assert g_file_name /= ""
            report "File name is not defined"
            severity failure;
        
        file_open(v_wav_opened, v_wav_file, g_file_name, read_mode);
        assert v_wav_opened = OPEN_OK
            report "Failed to open " & g_file_name
            severity failure;
        
        v_opened := true;

        open_wav(v_wav_file, v_wav_header);
    end process;

end Behavioral;
