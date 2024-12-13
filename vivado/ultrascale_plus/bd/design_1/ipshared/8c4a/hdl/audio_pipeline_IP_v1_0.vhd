library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.axi4_audio_pkg.all;

entity audio_pipeline_IP_v1_0 is
	generic (
		-- Users to add parameters here
        g_chip_scope : string := "false";
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 9
	);
	port (
		-- Users to add ports here
		--clocking
		clk_in      : in STD_LOGIC;
		clk_audio   : in STD_LOGIC;
		clk_out     : in STD_LOGIC;

		-- axi mm settings
		clk_axi_mm  : in STD_LOGIC;

		-- reset
		rst : in std_logic;

		-- monitoring of DMA engine
		dma_valid   : in STD_LOGIC;

		-- anal input
		signal s_TValid_anal : in STD_LOGIC;
		signal s_TLast_anal : in STD_LOGIC;
		signal s_TData_anal : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
		signal s_TID_anal : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
		signal s_TReady_anal : out STD_LOGIC;

		-- dma input
		signal s_TValid_dma : in STD_LOGIC;
		signal s_TLast_dma : in STD_LOGIC;
		signal s_TData_dma : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
		signal s_TID_dma : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
		signal s_TReady_dma : out STD_LOGIC;

		-- audio out
		signal s_TValid_out : out STD_LOGIC;
		signal s_TLast_out : out STD_LOGIC;
		signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
		signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
		signal s_TReady_out : in STD_LOGIC;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end audio_pipeline_IP_v1_0;

architecture arch_imp of audio_pipeline_IP_v1_0 is

	-- component declaration
	component audio_pipeline_IP_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 9;
        g_chip_scope : string := "false"
		);
		port (
			--clocking
        clk_in      : in STD_LOGIC;
        clk_audio   : in STD_LOGIC;
        clk_out     : in STD_LOGIC;

        -- axi mm settings
        clk_axi_mm  : in STD_LOGIC;

		-- reset
        rst : in std_logic;

		-- monitoring of DMA engine
        dma_valid   : in STD_LOGIC;

        -- anal input
        signal s_TValid_anal : in STD_LOGIC;
        signal s_TLast_anal : in STD_LOGIC;
        signal s_TData_anal : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_anal : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_anal : out STD_LOGIC;
        
        -- dma input
        signal s_TValid_dma : in STD_LOGIC;
        signal s_TLast_dma : in STD_LOGIC;
        signal s_TData_dma : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_dma : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_dma : out STD_LOGIC;

        -- audio out
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_out : in STD_LOGIC;

		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component audio_pipeline_IP_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
audio_pipeline_IP_v1_0_S00_AXI_inst : audio_pipeline_IP_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
        g_chip_scope => g_chip_scope
	)
	port map (
		clk_in => clk_in,
		clk_audio => clk_audio,
		clk_out => clk_out,
		clk_axi_mm => clk_axi_mm,
		rst => rst,
		dma_valid => dma_valid,
		s_TValid_anal => s_TValid_anal,
		s_TLast_anal => s_TLast_anal,
		s_TData_anal => s_TData_anal,
		s_TID_anal => s_TID_anal,
		s_TReady_anal => s_TReady_anal,
		s_TValid_dma => s_TValid_dma,
		s_TLast_dma => s_TLast_dma,
		s_TData_dma => s_TData_dma,
		s_TID_dma => s_TID_dma,
		s_TReady_dma => s_TReady_dma,
		s_TValid_out => s_TValid_out,
		s_TLast_out => s_TLast_out,
		s_TData_out => s_TData_out,
		s_TID_out => s_TID_out,
		s_TReady_out => s_TReady_out,
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
