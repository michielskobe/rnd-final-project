----------------------------------------------------------------------------------
-- Company: KUL - rnd embed - Beats N Bytes
-- Engineer: Robbe Decapmaker <debber@dcpm.be>
-- 
-- Create Date: 11/20/2024 09:18:55 PM
-- Design Name: Audio fifo
-- Module Name: audio_fifo - Behavioral
-- Project Name: Blendinator
-- Target Devices: Only Xilinx devices are supported due to XPM 
-- Tool Versions: Vivado 2024.1
-- Description: 
-- 
-- Dependencies: XPM
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
use ieee.fixed_pkg.all;

Library xpm;
use xpm.vcomponents.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity audio_fifo is
  generic (
    g_fifo_depth : integer := 16
  );
  Port (
        -- clocking
        clk_in : in STD_LOGIC;
        clk_out: in STD_LOGIC;

        -- axi inputs
        axi_in_fwd : in t_axi4_audio_fwd;
        axi_in_bwd : out t_axi4_audio_bwd;

        -- axi outputs
        axi_out_fwd : out t_axi4_audio_fwd;
        axi_out_bwd : in t_axi4_audio_bwd
   );
end audio_fifo;

architecture Behavioral of audio_fifo is

begin

    xpm_fifo_axis_inst : xpm_fifo_axis
   generic map (
      CASCADE_HEIGHT => 0,             -- DECIMAL
      CDC_SYNC_STAGES => 2,            -- DECIMAL
      CLOCKING_MODE => "independent_clock", -- String
      ECC_MODE => "no_ecc",            -- String
      -- EN_SIM_ASSERT_ERR => "warning",  -- String
      FIFO_DEPTH => g_fifo_depth,              -- DECIMAL
      FIFO_MEMORY_TYPE => "auto",      -- String
      PACKET_FIFO => "false",          -- String
      PROG_EMPTY_THRESH => 5,         -- DECIMAL
      PROG_FULL_THRESH => g_fifo_depth -5,          -- DECIMAL
      RD_DATA_COUNT_WIDTH => integer(ceil(log2(real(g_fifo_depth)))) +1,        -- DECIMAL
      RELATED_CLOCKS => 0,             -- DECIMAL
      SIM_ASSERT_CHK => 1,             -- DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      TDATA_WIDTH => c_audio_width,               -- DECIMAL
      TDEST_WIDTH => 1,                -- DECIMAL
      TID_WIDTH => c_ID_width,                  -- DECIMAL
      TUSER_WIDTH => 1,                -- DECIMAL
      USE_ADV_FEATURES => "1000",      -- String
      WR_DATA_COUNT_WIDTH => integer(ceil(log2(real(g_fifo_depth)))) +1         -- DECIMAL
   )
   port map (
    --   almost_empty_axis => almost_empty_axis,   -- 1-bit output: Almost Empty : When asserted, this signal
                                                -- indicates that only one more read can be performed before
                                                -- the FIFO goes to empty.

    --   almost_full_axis => almost_full_axis,     -- 1-bit output: Almost Full: When asserted, this signal
                                                -- indicates that only one more write can be performed before
                                                -- the FIFO is full.

    --   dbiterr_axis => dbiterr_axis,             -- 1-bit output: Double Bit Error- Indicates that the ECC
                                                -- decoder detected a double-bit error and data in the FIFO
                                                -- core is corrupted.

      s_axis_tdata => axi_in_fwd.TData,             -- TDATA_WIDTH-bit output: TDATA: The primary payload that is
                                                -- used to provide the data that is passing across the
                                                -- interface. The width of the data payload is an integer
                                                -- number of bytes.

    --   m_axis_tdest => m_axis_tdest,             -- TDEST_WIDTH-bit output: TDEST: Provides routing information
                                                -- for the data stream.

      s_axis_tid => axi_in_fwd.TID,                 -- TID_WIDTH-bit output: TID: The data stream identifier that
                                                -- indicates different streams of data.

    --   m_axis_tkeep => m_axis_tkeep,             -- TDATA_WIDTH/8-bit output: TKEEP: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as part of the data stream. Associated
                                                -- bytes that have the TKEEP byte qualifier deasserted are null
                                                -- bytes and can be removed from the data stream. For a 64-bit
                                                -- DATA, bit 0 corresponds to the least significant byte on
                                                -- DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: KEEP[0] = 1b, DATA[7:0] is not a NULL byte
                                                -- KEEP[7] = 0b, DATA[63:56] is a NULL byte

      s_axis_tlast => axi_in_fwd.TLast,             -- 1-bit output: TLAST: Indicates the boundary of a packet.
    --   m_axis_tstrb => m_axis_tstrb,             -- TDATA_WIDTH/8-bit output: TSTRB: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as a data byte or a position byte. For a
                                                -- 64-bit DATA, bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: STROBE[0] = 1b, DATA[7:0] is valid STROBE[7] =
                                                -- 0b, DATA[63:56] is not valid

    --   m_axis_tuser => m_axis_tuser,             -- TUSER_WIDTH-bit output: TUSER: The user-defined sideband
                                                -- information that can be transmitted alongside the data
                                                -- stream.

      s_axis_tvalid => axi_in_fwd.TValid,           -- 1-bit output: TVALID: Indicates that the master is driving a
                                                -- valid transfer. A transfer takes place when both TVALID and
                                                -- TREADY are asserted

    --   prog_empty_axis => prog_empty_axis,       -- 1-bit output: Programmable Empty- This signal is asserted
                                                -- when the number of words in the FIFO is less than or equal
                                                -- to the programmable empty threshold value. It is de-asserted
                                                -- when the number of words in the FIFO exceeds the
                                                -- programmable empty threshold value.

    --   prog_full_axis => prog_full_axis,         -- 1-bit output: Programmable Full: This signal is asserted
                                                -- when the number of words in the FIFO is greater than or
                                                -- equal to the programmable full threshold value. It is
                                                -- de-asserted when the number of words in the FIFO is less
                                                -- than the programmable full threshold value.

    --   rd_data_count_axis => rd_data_count_axis, -- RD_DATA_COUNT_WIDTH-bit output: Read Data Count- This bus
                                                -- indicates the number of words available for reading in the
                                                -- FIFO.

      m_axis_tready => axi_out_bwd.TReady,           -- 1-bit output: TREADY: Indicates that the slave can accept a
                                                -- transfer in the current cycle.

    --   sbiterr_axis => sbiterr_axis,             -- 1-bit output: Single Bit Error- Indicates that the ECC
                                                -- decoder detected and fixed a single-bit error.

    --   wr_data_count_axis => wr_data_count_axis, -- WR_DATA_COUNT_WIDTH-bit output: Write Data Count: This bus
                                                -- indicates the number of words written into the FIFO.

      injectdbiterr_axis => '0', -- 1-bit input: Double Bit Error Injection- Injects a double
                                                -- bit error if the ECC feature is used.

      injectsbiterr_axis => '0', -- 1-bit input: Single Bit Error Injection- Injects a single
                                                -- bit error if the ECC feature is used.

      s_aclk => clk_in,                         -- 1-bit input: Master Interface Clock: All signals on master
                                                -- interface are sampled on the rising edge of this clock.

      s_axis_tready => axi_in_bwd.TReady,           -- 1-bit input: TREADY: Indicates that the slave can accept a
                                                -- transfer in the current cycle.

      m_aclk => clk_out,                         -- 1-bit input: Slave Interface Clock: All signals on slave
                                                -- interface are sampled on the rising edge of this clock.

      s_aresetn => '1',                   -- 1-bit input: Active low asynchronous reset.
      m_axis_tdata => axi_out_fwd.TDATA,             -- TDATA_WIDTH-bit input: TDATA: The primary payload that is
                                                -- used to provide the data that is passing across the
                                                -- interface. The width of the data payload is an integer
                                                -- number of bytes.

      s_axis_tdest => (others => '0'),             -- TDEST_WIDTH-bit input: TDEST: Provides routing information
                                                -- for the data stream.

      m_axis_tid => axi_out_fwd.TID,                 -- TID_WIDTH-bit input: TID: The data stream identifier that
                                                -- indicates different streams of data.

      s_axis_tkeep => (others => '1'),             -- TDATA_WIDTH/8-bit input: TKEEP: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as part of the data stream. Associated
                                                -- bytes that have the TKEEP byte qualifier deasserted are null
                                                -- bytes and can be removed from the data stream. For a 64-bit
                                                -- DATA, bit 0 corresponds to the least significant byte on
                                                -- DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: KEEP[0] = 1b, DATA[7:0] is not a NULL byte
                                                -- KEEP[7] = 0b, DATA[63:56] is a NULL byte

      m_axis_tlast => axi_out_fwd.TLast,             -- 1-bit input: TLAST: Indicates the boundary of a packet.
      s_axis_tstrb => (others => '0'),             -- TDATA_WIDTH/8-bit input: TSTRB: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as a data byte or a position byte. For a
                                                -- 64-bit DATA, bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: STROBE[0] = 1b, DATA[7:0] is valid STROBE[7] =
                                                -- 0b, DATA[63:56] is not valid

      s_axis_tuser => (others => '0'),             -- TUSER_WIDTH-bit input: TUSER: The user-defined sideband
                                                -- information that can be transmitted alongside the data
                                                -- stream.

      m_axis_tvalid => axi_out_fwd.TValid            -- 1-bit input: TVALID: Indicates that the master is driving a
                                                -- valid transfer. A transfer takes place when both TVALID and
                                                -- TREADY are asserted

   );

end Behavioral;
