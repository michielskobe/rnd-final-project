----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/13/2024 09:41:00 PM
-- Design Name: I2S wrapper 
-- Module Name: I2S_wrapper - Behavioral
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
use work.audio_fifo;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2S_wrapper is
    generic (
        -- g_channel_offset : STD_LOGIC_VECTOR(c_ID_width-1 downto 0) := (others => '0');
        g_clock_div_sclk : integer := 4;
        g_clock_div_lrclk : integer := 64;
        g_chip_scope: string := "True"
    );
    Port (
        -- clock
        signal m_clk : in STD_LOGIC;
        signal m_rst : in STD_LOGIC;

        -- clock outputs
        signal mclk_r : out STD_LOGIC;
        signal lrclk_r: out STD_LOGIC;
        signal sclk_r : out STD_LOGIC;

        signal mclk_t : out STD_LOGIC;
        signal lrclk_t: out STD_LOGIC;
        signal sclk_t : out STD_LOGIC;

        -- data 
        signal data_in : in STD_LOGIC;
        signal data_out : out STD_LOGIC;
        
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

    -- ATTRIBUTE X_INTERFACE_INFO of m_clk: SIGNAL is "xilinx.com:signal:clock:1.0 m_clk CLK";

    -- attribute X_INTERFACE_PARAMETER : STRING;
    -- attribute X_INTERFACE_PARAMETER of s_TValid_in : signal is "FREQ_HZ 12285012";
    -- attribute X_INTERFACE_PARAMETER of s_TLast_in : signal is "FREQ_HZ 12285012";
    -- attribute X_INTERFACE_PARAMETER of s_TData_in : signal is "FREQ_HZ 12285012";
    -- attribute X_INTERFACE_PARAMETER of s_TID_in : signal is "FREQ_HZ 12285012";
    -- attribute X_INTERFACE_PARAMETER of s_TReady_in : signal is "FREQ_HZ 12285012";

    -- attribute X_INTERFACE_PARAMETER of s_TValid_out : signal is "CLK_DOMAIN m_clk";
    -- attribute X_INTERFACE_PARAMETER of s_TLast_out : signal is "CLK_DOMAIN m_clk";
    -- attribute X_INTERFACE_PARAMETER of s_TData_out : signal is "CLK_DOMAIN m_clk";
    -- attribute X_INTERFACE_PARAMETER of s_TID_out : signal is "CLK_DOMAIN m_clk";
    -- attribute X_INTERFACE_PARAMETER of s_TReady_out : signal is "CLK_DOMAIN /clk_wiz_0_clk_out1";

    -- ATTRIBUTE X_INTERFACE_PARAMETER of m_clk: SIGNAL is "ASSOCIATED_BUSIF audio_in:audio_out, FREQ_HZ 12285012";
        

end I2S_wrapper;

architecture Behavioral of I2S_wrapper is
    -------------------------------------
    -- Settings
    -------------------------------------
    signal g_channel_offset : STD_LOGIC_VECTOR(c_ID_width -1 downto 0) := (others => '0');

    -------------------------------------
    -- AXI
    -------------------------------------
    signal axi_fwd_in : t_axi4_audio_fwd;
    signal axi_bwd_in : t_axi4_audio_bwd;
    
    signal trans_fwd_in : t_axi4_audio_fwd;
    signal trans_bwd_in : t_axi4_audio_bwd;

    signal axi_fwd_out : t_axi4_audio_fwd;
    signal axi_bwd_out : t_axi4_audio_bwd;


    -------------------------------------
    -- clocking
    -------------------------------------
    signal mclk_r_i : STD_LOGIC;
    signal lrclk_r_i : STD_LOGIC;
    signal sclk_r_i : STD_LOGIC;
    signal mclk_r_i_2 : STD_LOGIC;
    signal lrclk_r_i_2 : STD_LOGIC;
    signal sclk_r_i_2 : STD_LOGIC;

    -------------------------------------
    -- data
    -------------------------------------
    signal do_i : STD_LOGIC;
    signal di_i : STD_LOGIC;

    -------------------------------------
    -- Chip Scope
    -------------------------------------
    attribute MARK_DEBUG : string;

    -- axi
    attribute MARK_DEBUG of axi_fwd_in : signal is g_chip_scope;
    attribute MARK_DEBUG of axi_bwd_in : signal is g_chip_scope;
    attribute MARK_DEBUG of axi_fwd_out : signal is g_chip_scope;
    attribute MARK_DEBUG of axi_bwd_out : signal is g_chip_scope;

    -- clocking
    attribute MARK_DEBUG of mclk_r_i : signal is g_chip_scope;
    attribute MARK_DEBUG of sclk_r_i : signal is g_chip_scope;
    attribute MARK_DEBUG of lrclk_r_i : signal is g_chip_scope;
    
    -- data
    attribute MARK_DEBUG of do_i : signal is g_chip_scope;
    attribute MARK_DEBUG of di_i : signal is g_chip_scope;


begin


    -------------------------------------
    -- clocking
    -------------------------------------
    I2S_clock_gen_inst: entity work.I2S_clock_gen
     generic map(
        g_clock_div_sclk => g_clock_div_sclk,
        g_clock_div_lrclk => g_clock_div_lrclk,
        g_chip_scope => g_chip_scope
    )
     port map(
        m_clk => m_clk,
        mclk => mclk_r_i,
        sclk => sclk_r_i,
        lrclk => lrclk_r_i
    );

    mclk_r <= mclk_r_i;
    lrclk_r <= lrclk_r_i;
    sclk_r <= sclk_r_i;

    -- delay the sclk and lrclk with one mclk for transmitter to play nicer with physical hardware
    process (m_clk)
    begin
        if rising_edge(m_clk) then
            lrclk_r_i_2 <= lrclk_r_i;
            sclk_r_i_2 <= sclk_r_i;
        end if;
    end process;

    mclk_t <= mclk_r_i;
    lrclk_t <= lrclk_r_i_2;
    sclk_t <= sclk_r_i_2;

    di_i <= data_in;
    data_out <= do_i;

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
         g_fifo_depth => 16
     )
      port map(
        clk_in => m_clk,
        clk_out => m_clk,
        axi_in_fwd => axi_fwd_in,
        axi_in_bwd => axi_bwd_in,
        axi_out_fwd => trans_fwd_in,
        axi_out_bwd => trans_bwd_in
     );

    -------------------------------------
    -- I2S mod
    -------------------------------------
    I2S_rec_inst: entity work.I2S_rec
     generic map(
        g_channel_offset => g_channel_offset,
        g_clock_div_sclk => g_clock_div_sclk,
        g_clock_div_lrclk => g_clock_div_lrclk
    )
     port map(
        m_clk => m_clk,
        m_rst => m_rst,
        mclk => open,
        lrclk => open,
        sclk => open,
        data_in => di_i,
        axi_out_fwd => axi_fwd_out,
        axi_out_bwd => axi_bwd_out
    );

    I2S_trans_inst: entity work.I2S_trans
     generic map(
        g_channel_offset => g_channel_offset,
        g_clock_div_sclk => g_clock_div_sclk,
        g_clock_div_lrclk => g_clock_div_lrclk,
        g_chip_scope => g_chip_scope
    )
     port map(
        m_clk => m_clk,
        m_rst => m_rst,
        mclk => open,
        lrclk => open,
        sclk => open,
        data_out => do_i,
        axi_in_fwd => trans_fwd_in,
        axi_in_bwd => trans_bwd_in
    );

end Behavioral;
