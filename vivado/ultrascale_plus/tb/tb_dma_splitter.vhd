----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2024 11:53:19 AM
-- Design Name: 
-- Module Name: tb_dma_splitter - Behavioral
-- Project Name: 
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

use std.env.stop;


library work;
use work.dma_splitter;
use work.axi4_audio_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_dma_splitter is
--  Port ( );
end tb_dma_splitter;

architecture Behavioral of tb_dma_splitter is
    ------------------------------------
    -- Clock
    ------------------------------------
    signal clk : STD_LOGIC := '0';
    signal clk_period : time := 10 ns;

    ------------------------------------
    -- AXI streams
    ------------------------------------
    signal axi_fwd : t_axi4_audio_fwd;
    signal axi_bwd : t_axi4_audio_bwd := (TReady => '0');
    signal rest : STD_LOGIC := '0';

    signal dma_valid : STD_LOGIC := '0';
    signal dma_ready : STD_LOGIC;
    signal dma_data : STD_LOGIC_VECTOR(128 -1 downto 0) := (23 downto 0 => '1', 47 downto 24 => '0', 87 downto 64 => '1' ,others => '0');
    signal dma_last : STD_LOGIC := '0';

begin
    --clock
    clk <= not clk after clk_period/2;

    process
    begin
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        dma_valid <= '1';
    end process;

    process 
    begin
        for i in 0 to 1024 loop
            wait until rising_edge(clk);
        end loop;
            axi_bwd.TReady <= '1';
            wait until rising_edge(clk);
            axi_bwd.TReady <= '0';
            wait until rising_edge(clk);
            dma_data <= dma_data +1;
            wait until rising_edge(clk);

    end process;

    dma_splitter_inst: entity work.dma_splitter
     generic map(
        g_channel_offset => (0 => '0', 1 => '1', others => '0'),
        g_chip_scope => "false"
    )
     port map(
        clk => clk,
        rest => rest,
        dma_valid => dma_valid,
        dma_data => dma_data,
        dma_last => dma_last,
        dma_ready => dma_ready,
        axi_fwd => axi_fwd,
        axi_bwd => axi_bwd
    );
end Behavioral;
