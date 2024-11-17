----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 10/12/2024 02:24:40 PM
-- Design Name: wav library package
-- Module Name: wav_lib_pkg - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.axi4_audio_pkg.all;

package wav_lib_pkg is

    type t_wav_file is file of character;
    subtype t_wav_byte is natural range 0 to 255;
    subtype t_wav_short is natural range 0 to 65535;
    subtype t_wav_long is natural range 0 to integer'high;
    subtype t_sample is natural range 0 to 2**24-1;

    -- described in : http://soundfile.sapp.org/doc/WaveFormat/
    type t_wav_header is record
        TRiff_ID : t_wav_long; -- literal RIFF
        TChunk_size : t_wav_long;
        TWave : t_wav_long; -- literal WAVE
        Tfmt : t_wav_long; -- literal fmt 
        TSub_chunk_size : t_wav_long;
        TAudio_Format : t_wav_short;
        TNum_channels : t_wav_short;
        TSample_rate : t_wav_long;
        TByte_rate : t_wav_long;
        TBlock_align : t_wav_short;
        TBits_per_sample : t_wav_short;
        TData : t_wav_long; -- literal data
        TSub_chunk_2_size : t_wav_long;
    end record t_wav_header;
    
    procedure open_wav (file f : t_wav_file; header : out t_wav_header); 
    impure function read_byte(file f : t_wav_file) return t_wav_byte;
    impure function read_short(file f : t_wav_file) return t_wav_short;
    impure function read_long(file f : t_wav_file) return t_wav_long;
    impure function read_short_l(file f : t_wav_file) return t_wav_short;
    impure function read_long_l(file f : t_wav_file) return t_wav_long;
    impure function read_data_sample(file f : t_wav_file) return STD_LOGIC_VECTOR;

    procedure write_header(file f: t_wav_file; header : in t_wav_header);
    procedure write_byte(file f: t_wav_file; byte: in t_wav_byte);
    procedure write_short(file f: t_wav_file; short: in t_wav_short);
    procedure write_long(file f: t_wav_file; long: in t_wav_long);
    procedure write_sample(file f: t_wav_file; sample: in STD_LOGIC_VECTOR);

end package wav_lib_pkg;

package body wav_lib_pkg is

    
    impure function read_byte(file f : t_wav_file) return t_wav_byte is
        variable v_char : character;
    begin
        assert(not ENDFILE(f)) SEVERITY failure;
        read(f, v_char);
        return t_wav_byte'val(character'pos(v_char));
    end;

    impure function read_short(file f : t_wav_file) return t_wav_short is
        variable v_char : natural;
        variable v1 : natural;
        variable v2 : natural;
    begin
        v1 := read_byte(f);
        v2 := read_byte(f);
        v_char := v2 + v1*256;
        return v_char;
    end;

    impure function read_long(file f : t_wav_file) return t_wav_long is
        variable v_char : natural;
        variable v1 : natural;
        variable v2 : natural;
    begin
        v1 := read_short(f);
        v2 := read_short(f);
        v_char := v2 + v1 *256*256;
        return v_char;
    end;

    impure function read_short_l(file f : t_wav_file) return t_wav_short is
        variable v_char : natural;
        variable v1 : natural;
        variable v2 : natural;
    begin
        v1 := read_byte(f);
        v2 := read_byte(f);
        v_char := v1 + v2*256;
        return v_char;
    end;

    impure function read_long_l(file f : t_wav_file) return t_wav_long is
        variable v_char : natural;
        variable v1 : natural;
        variable v2 : natural;
    begin
        v1 := read_short(f);
        v2 := read_short(f);
        v_char := v1 + v2 *256*256;
        return v_char;
    end;

    impure function read_data_sample(file f : t_wav_file) return STD_LOGIC_VECTOR is
        variable v_char : STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        variable v1 : natural;
        variable v2 : natural;
        variable v3 : natural;
    begin
        v1 := read_byte(f);
        v2 := read_byte(f);
        v3 := read_byte(f);
        v_char := STD_LOGIC_VECTOR(to_unsigned(v1 + v2*256 + v3*256*256, c_audio_width));
        return v_char;
    end;

    procedure open_wav (file f : t_wav_file; header : out t_wav_header) is
        variable v_this : t_wav_header;
    begin
        v_this.TRiff_ID := read_long(f);
        v_this.TChunk_size := read_long_l(f);
        v_this.TWave := read_long(f);
        v_this.Tfmt := read_long(f);
        v_this.TSub_chunk_size := read_long_l(f);
        v_this.TAudio_Format := read_short_l(f);
        v_this.TNum_channels := read_short_l(f);
        v_this.TSample_rate := read_long_l(f);
        v_this.TByte_rate := read_long_l(f);
        v_this.TBlock_align := read_short_l(f);
        v_this.TBits_per_sample := read_short_l(f);
        v_this.TData := read_long(f);
        v_this.TSub_chunk_2_size := read_long_l(f);
        
        -- check if riff id = RIFF
        assert v_this.TRiff_ID = 16#52494646#
            report "Unsupported file format -- only RIFF format is supported"
            severity failure;

        -- check if the word WAVE is present
        assert v_this.TWave = 16#57415645#
            report "Unsupported file format -- WAVE is not present in header"
            severity failure;

        -- check if data subchunk is present
        assert v_this.TData = 16#64617461#
            report "Unsupported file format -- data subchunk is missing or invalid"
            severity failure;
        
        -- check for PCM coding
        assert v_this.TAudio_Format = 16#0001#
            report "Unsupported file format -- Only PCM coding is supported"
            severity failure;

        -- check for bits per sample
        assert v_this.TBits_per_sample = 16#0018#
            report "Unsupported file format -- Only 24 bit audio is supported"
            severity failure;
        
        -- check for channels
        assert v_this.TNum_channels = 16#0002#
            report "Unsupported file format -- Only 2 channel audio is supported"
            severity failure;

        -- check for sample freq
        -- NOTE: I don't know why, but this hex does not correspond to 96000.
        assert v_this.TSample_rate = 16#1000077#
            report "Unsupported file format -- Only 96kHz audio is supported"
            severity failure;

        header := v_this;
    end procedure;

    
    procedure write_byte(file f: t_wav_file; byte: in t_wav_byte) is
    begin 
        write(f,character'val(t_wav_byte'pos(byte)));
    end write_byte;

    procedure write_short(file f: t_wav_file; short: in t_wav_short) is
        variable v_char : t_wav_byte;
        variable v_char_2 : t_wav_byte;
        variable v_tmp : t_wav_short;
    begin
        v_tmp := short;
        v_char := v_tmp mod 256;
        v_tmp := (v_tmp - v_char)/256;
        v_char_2 := v_tmp mod 256;
        write_byte(f, v_char);
        write_byte(f, v_char_2);
    end write_short;

    procedure write_long(file f: t_wav_file; long: in t_wav_long) is
        variable v_char : t_wav_byte;
        variable v_char_2 : t_wav_byte;
        variable v_char_3 : t_wav_byte;
        variable v_char_4 : t_wav_byte;
        variable v_tmp : t_wav_long;
    begin
        v_tmp := long;
        v_char := v_tmp mod 256;
        v_tmp := (v_tmp - v_char)/256;
        v_char_2 := v_tmp mod 256;
        v_tmp := (v_tmp - v_char_2)/256;
        v_char_3 := v_tmp mod 256;
        v_tmp := (v_tmp - v_char_3)/256;
        v_char_4 := v_tmp mod 256;
        write_byte(f, v_char_4);
        write_byte(f, v_char_3);
        write_byte(f, v_char_2);
        write_byte(f, v_char);
    end write_long;

    procedure write_sample(file f: t_wav_file; sample: in STD_LOGIC_VECTOR) is
        variable v_char : t_wav_byte;
        variable v_char_2 : t_wav_byte;
        variable v_char_3 : t_wav_byte;
        variable v_tmp : t_sample;
    begin
        v_tmp := ieee.NUMERIC_STD.TO_INTEGER(ieee.NUMERIC_STD.unsigned(sample));
        v_char := ieee.NUMERIC_STD.TO_INTEGER(ieee.NUMERIC_STD.unsigned(sample(23 downto 16)));
        v_char_2 := ieee.NUMERIC_STD.TO_INTEGER(ieee.NUMERIC_STD.unsigned(sample(15 downto 8)));
        v_char_3 := ieee.NUMERIC_STD.TO_INTEGER(ieee.NUMERIC_STD.unsigned(sample(7 downto 0)));
        -- v_char := v_tmp mod 256;
        -- v_tmp := (v_tmp - v_char)/256;
        -- v_char_2 := v_tmp mod 256;
        -- v_tmp := (v_tmp - v_char_2)/256;
        -- v_char_3 := v_tmp mod 256;
        write_byte(f, v_char_3);
        write_byte(f, v_char_2);
        write_byte(f, v_char);
    end write_sample;


    procedure write_header(file f: t_wav_file; header : in t_wav_header) is 
    begin
        -- To future readers, this header is a total hack. It is because stuff was annoying and I needed to make progress
        write_long(f, header.TRiff_ID);
        -- write_long(f, header.TChunk_size);
        write_short(f, 16#C40E#);
        write_short(f, 16#00A5#); -- I hate WAV
        write_long(f, header.TWave);
        write_long(f, header.Tfmt);
        write_long(f, header.TSub_chunk_size);
        write_short(f, header.TAudio_Format);
        write_short(f, header.TNum_channels);
        write_long(f, header.TSample_rate);
        write_long(f, header.TByte_rate);
        write_short(f, header.TBlock_align);
        write_short(f, header.TBits_per_sample);
        write_long(f, header.TData);
        -- write_long(f, header.TSub_chunk_2_size);
        write_short(f, 16#c3ea#);
        write_short(f, 16#00a5#); -- I hate WAV

    end write_header;

end package body wav_lib_pkg;

