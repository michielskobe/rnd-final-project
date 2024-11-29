----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/29/2024 10:23:15 AM
-- Design Name: DMA splitter wrapper
-- Module Name: dma_splitter_wrapper - Behavioral
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

entity dma_splitter_wrapper is
    generic (
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

        -- axi out (for input from ADC)
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_out : in STD_LOGIC
     );
    attribute X_INTERFACE_INFO : STRING;

    attribute X_INTERFACE_INFO of dma_valid : SIGNAL is "xilinx.com:interface:axis:1.0 dma TVALID";
    attribute X_INTERFACE_INFO of dma_data : SIGNAL is "xilinx.com:interface:axis:1.0 dma TDATA";
    attribute X_INTERFACE_INFO of dma_last : SIGNAL is "xilinx.com:interface:axis:1.0 dma TLAST";
    attribute X_INTERFACE_INFO of dma_ready : SIGNAL is "xilinx.com:interface:axis:1.0 dma TREADY";


    attribute X_INTERFACE_INFO of s_TValid_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TVALID";
    attribute X_INTERFACE_INFO of s_TLast_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TLAST";
    attribute X_INTERFACE_INFO of s_TData_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TDATA";
    attribute X_INTERFACE_INFO of s_TID_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TID";
    attribute X_INTERFACE_INFO of s_TReady_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TREADY";
end dma_splitter_wrapper;

architecture Behavioral of dma_splitter_wrapper is

    signal axi_fwd_out : t_axi4_audio_fwd;
    signal axi_bwd_out : t_axi4_audio_bwd;

    signal g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');

begin

    axi_bwd_out.TREADY <= s_TReady_out;
    s_TData_out <= axi_fwd_out.TData;
    s_TID_out <= axi_fwd_out.TID;
    s_TValid_out <= axi_fwd_out.TValid;
    s_TLast_out <= axi_fwd_out.TLast;
    dma_splitter_inst: entity work.dma_splitter

     generic map(
        g_channel_offset => g_channel_offset,
        g_chip_scope => g_chip_scope
    )
     port map(
        clk => clk,
        rest => rest,
        dma_valid => dma_valid,
        dma_data => dma_data,
        dma_last => dma_last,
        dma_ready => dma_ready,
        axi_fwd => axi_fwd_out,
        axi_bwd => axi_bwd_out
    );

end Behavioral;
