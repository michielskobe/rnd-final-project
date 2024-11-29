----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/29/2024 10:41:42 AM
-- Design Name: Audio FIFO wrapper
-- Module Name: audio_fifo_wrapper - Behavioral
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

entity audio_fifo_wrapper is
  generic (
    g_fifo_depth : integer := 256
  );
  Port (
        -- clocking
        clk_in : in STD_LOGIC;
        clk_out: in STD_LOGIC;

        -- axi in (for output to DAC)
        signal s_TValid_in : in STD_LOGIC;
        signal s_TLast_in : in STD_LOGIC;
        signal s_TData_in : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_in : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_in : out STD_LOGIC;

        -- axi out (for input from ADC)
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_out : in STD_LOGIC
   );
    -------------------------------------
    -- Signal interface info
    -------------------------------------
    attribute X_INTERFACE_INFO : STRING;

    attribute X_INTERFACE_INFO of s_TValid_in: SIGNAL is "xilinx.com:interface:axis:1.0 audio_in TVALID";
    attribute X_INTERFACE_INFO of s_TLast_in: SIGNAL is "xilinx.com:interface:axis:1.0 audio_in TLAST";
    attribute X_INTERFACE_INFO of s_TData_in: SIGNAL is "xilinx.com:interface:axis:1.0 audio_in TDATA";
    attribute X_INTERFACE_INFO of s_TID_in: SIGNAL is "xilinx.com:interface:axis:1.0 audio_in TID";
    attribute X_INTERFACE_INFO of s_TReady_in: SIGNAL is "xilinx.com:interface:axis:1.0 audio_in TREADY";
    
    attribute X_INTERFACE_INFO of s_TValid_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TVALID";
    attribute X_INTERFACE_INFO of s_TLast_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TLAST";
    attribute X_INTERFACE_INFO of s_TData_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TDATA";
    attribute X_INTERFACE_INFO of s_TID_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TID";
    attribute X_INTERFACE_INFO of s_TReady_out: SIGNAL is "xilinx.com:interface:axis:1.0 audio_out TREADY";
end audio_fifo_wrapper;

architecture Behavioral of audio_fifo_wrapper is
    -------------------------------------
    -- AXI
    -------------------------------------
    signal axi_fwd_in : t_axi4_audio_fwd;
    signal axi_bwd_in : t_axi4_audio_bwd;
    
    signal axi_fwd_out : t_axi4_audio_fwd;
    signal axi_bwd_out : t_axi4_audio_bwd;

begin

    -------------------------------------
    -- AXI
    -------------------------------------
    s_TReady_in <= axi_bwd_in.TREADY;
    axi_fwd_in.TData <= s_TData_in;
    axi_fwd_in.TValid <= s_TValid_in;
    axi_fwd_in.TID <= s_TID_in;
    axi_fwd_in.TLast <= s_TLast_in;

    axi_bwd_out.TREADY <= s_TReady_out;
    s_TData_out <= axi_fwd_out.TData;
    s_TID_out <= axi_fwd_out.TID;
    s_TValid_out <= axi_fwd_out.TValid;
    s_TLast_out <= axi_fwd_out.TLast;

    audio_fifo_inst: entity work.audio_fifo
     generic map(
        g_fifo_depth => g_fifo_depth
    )
     port map(
        clk_in => clk_in,
        clk_out => clk_out,
        axi_in_fwd => axi_fwd_in,
        axi_in_bwd => axi_bwd_in,
        axi_out_fwd => axi_fwd_out,
        axi_out_bwd => axi_bwd_out 
    );

end Behavioral;
