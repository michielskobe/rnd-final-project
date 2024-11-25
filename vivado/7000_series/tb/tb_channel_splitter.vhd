----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/22/2024 04:01:28 PM
-- Design Name: testbench channel splitter
-- Module Name: tb_channel_splitter - Behavioral
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
use ieee.fixed_pkg.all;

use std.env.stop;


library work;
use work.wav2axi;
use work.axi2wav;
use work.axi4_audio_pkg.all;
use work.channel_splitter;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_channel_splitter is
--  Port ( );
end tb_channel_splitter;

architecture Behavioral of tb_channel_splitter is
    ------------------------------------
    -- Settings
    ------------------------------------
    constant c_input_channels : integer := 4;
    constant c_output_channels: integer := 2**c_ID_width;
    constant c_internal_fifo_depth : integer := 4096; 
    constant c_internal_fifo_width : integer := c_audio_width + c_ID_width;
    constant c_internal_fifo_mode : string := "fwft";

    signal channel_enable: STD_LOGIC_VECTOR(c_output_channels -1 downto 0);

    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    signal axi_clk : STD_LOGIC := '0';
    signal axi_clk_period : time := 20 ns;

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal wav_axi_fwd_bus : t_axi4_audio_fwd_bus(c_input_channels -1 downto 0);
    signal wav_axi_bwd_bus : t_axi4_audio_bwd_bus(c_input_channels -1 downto 0);

    signal out_axi_fwd_bus : t_axi4_audio_fwd_bus(c_output_channels -1 downto 0);
    signal out_axi_bwd_bus : t_axi4_audio_bwd_bus(c_output_channels -1 downto 0);
begin


    ------------------------------------
    -- AXI streams
    ------------------------------------
    process 
    begin
        wait until rising_edge(clk);
        for i in 0 to c_output_channels -1 loop
            out_axi_bwd_bus(i).TReady <= '1';
            wait until rising_edge(clk);
        end loop;
        wait until rising_edge(clk);
        wait;
    end process; 

    process 
    begin
        wait until rising_edge(axi_clk);
        wait until rising_edge(axi_clk);
        channel_enable <= (0 => '0', others => '1');
        wait until rising_edge(axi_clk);
        wait;

    end process;

    --clock
    clk <= not clk after clk_period/2;
    axi_clk <= not axi_clk after axi_clk_period/2;

    gen_wav_axi : for i in 0 to c_input_channels -1 generate
        -- wav2axi
        i_w2a_1: entity wav2axi
        generic map(
            g_file_name => "test_piano.wav",
            g_channel => 2*i,
            g_start_del => 100 + i*50
        )
        port map(
            -- input
            ratio => 256 - i*10,
            clk_in => clk,
            
            -- output
            axi_out_fwd => wav_axi_fwd_bus(i),
            axi_out_bwd => wav_axi_bwd_bus(i)
        );
        
    end generate;


     channel_splitter_inst: entity work.channel_splitter
      generic map(
         g_input_channels => c_input_channels,
         g_output_channels => c_output_channels,
         g_internal_fifo_depth => c_internal_fifo_depth,
         g_internal_fifo_width => c_internal_fifo_width,
         g_internal_fifo_mode => c_internal_fifo_mode,
         g_chip_scope => "false" 
     )
      port map(
         clk_in => clk,
         clk_out => clk,
         channel_enable => channel_enable,
         clk_axi_mm => axi_clk,
         axi_in_fwd_bus => wav_axi_fwd_bus,
         axi_in_bwd_bus => wav_axi_bwd_bus,
         axi_out_fwd_bus => out_axi_fwd_bus,
         axi_out_bwd_bus => out_axi_bwd_bus 
     );

end Behavioral;
