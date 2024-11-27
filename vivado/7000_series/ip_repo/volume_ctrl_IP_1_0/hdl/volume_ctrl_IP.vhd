library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.axi4_audio_pkg.all;

entity volume_ctrl_IP is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI_volume
		C_S00_AXI_volume_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_volume_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

        -- axi in 
        signal s_TValid_in : in STD_LOGIC;
        signal s_TLast_in : in STD_LOGIC;
        signal s_TData_in : in STD_LOGIC_VECTOR(24 -1 downto 0);
        signal s_TID_in : in STD_LOGIC_VECTOR(4 -1 downto 0);
        signal s_TReady_in : out STD_LOGIC;

        -- axi out 
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(24 -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(4 -1 downto 0);
        signal s_TReady_out : in STD_LOGIC;

		signal clk: in STD_LOGIC;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI_volume
		s00_axi_volume_aclk	: in std_logic;
		s00_axi_volume_aresetn	: in std_logic;
		s00_axi_volume_awaddr	: in std_logic_vector(C_S00_AXI_volume_ADDR_WIDTH-1 downto 0);
		s00_axi_volume_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_volume_awvalid	: in std_logic;
		s00_axi_volume_awready	: out std_logic;
		s00_axi_volume_wdata	: in std_logic_vector(C_S00_AXI_volume_DATA_WIDTH-1 downto 0);
		s00_axi_volume_wstrb	: in std_logic_vector((C_S00_AXI_volume_DATA_WIDTH/8)-1 downto 0);
		s00_axi_volume_wvalid	: in std_logic;
		s00_axi_volume_wready	: out std_logic;
		s00_axi_volume_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_volume_bvalid	: out std_logic;
		s00_axi_volume_bready	: in std_logic;
		s00_axi_volume_araddr	: in std_logic_vector(C_S00_AXI_volume_ADDR_WIDTH-1 downto 0);
		s00_axi_volume_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_volume_arvalid	: in std_logic;
		s00_axi_volume_arready	: out std_logic;
		s00_axi_volume_rdata	: out std_logic_vector(C_S00_AXI_volume_DATA_WIDTH-1 downto 0);
		s00_axi_volume_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_volume_rvalid	: out std_logic;
		s00_axi_volume_rready	: in std_logic
	);
end volume_ctrl_IP;

architecture arch_imp of volume_ctrl_IP is

	-- component declaration
	component volume_ctrl_IP_slave_lite_v1_0_S00_AXI_volume is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
        -- axi in 
        signal s_TValid_in : in STD_LOGIC;
        signal s_TLast_in : in STD_LOGIC;
        signal s_TData_in : in STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_in : in STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_in : out STD_LOGIC;

        -- axi out 
        signal s_TValid_out : out STD_LOGIC;
        signal s_TLast_out : out STD_LOGIC;
        signal s_TData_out : out STD_LOGIC_VECTOR(c_audio_width -1 downto 0);
        signal s_TID_out : out STD_LOGIC_VECTOR(c_ID_width -1 downto 0);
        signal s_TReady_out : in STD_LOGIC;
		clk : in STD_LOGIC;
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
	end component volume_ctrl_IP_slave_lite_v1_0_S00_AXI_volume;

begin

-- Instantiation of Axi Bus Interface S00_AXI_volume
volume_ctrl_IP_slave_lite_v1_0_S00_AXI_volume_inst : volume_ctrl_IP_slave_lite_v1_0_S00_AXI_volume
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_volume_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_volume_ADDR_WIDTH
	)
	port map (
		s_TData_in => s_TData_in,
		s_TData_out => s_TData_out,
		s_TValid_in => s_TValid_in,
		s_TValid_out => s_TValid_out,
		s_TReady_in => s_TReady_in,
		s_TReady_out => s_TReady_out,
		s_TID_in => s_TID_in,
		s_TID_out => s_TID_out,
		s_TLast_in => s_TLast_in,
		s_TLast_out => s_TLast_out,
		clk => clk,
		S_AXI_ACLK	=> s00_axi_volume_aclk,
		S_AXI_ARESETN	=> s00_axi_volume_aresetn,
		S_AXI_AWADDR	=> s00_axi_volume_awaddr,
		S_AXI_AWPROT	=> s00_axi_volume_awprot,
		S_AXI_AWVALID	=> s00_axi_volume_awvalid,
		S_AXI_AWREADY	=> s00_axi_volume_awready,
		S_AXI_WDATA	=> s00_axi_volume_wdata,
		S_AXI_WSTRB	=> s00_axi_volume_wstrb,
		S_AXI_WVALID	=> s00_axi_volume_wvalid,
		S_AXI_WREADY	=> s00_axi_volume_wready,
		S_AXI_BRESP	=> s00_axi_volume_bresp,
		S_AXI_BVALID	=> s00_axi_volume_bvalid,
		S_AXI_BREADY	=> s00_axi_volume_bready,
		S_AXI_ARADDR	=> s00_axi_volume_araddr,
		S_AXI_ARPROT	=> s00_axi_volume_arprot,
		S_AXI_ARVALID	=> s00_axi_volume_arvalid,
		S_AXI_ARREADY	=> s00_axi_volume_arready,
		S_AXI_RDATA	=> s00_axi_volume_rdata,
		S_AXI_RRESP	=> s00_axi_volume_rresp,
		S_AXI_RVALID	=> s00_axi_volume_rvalid,
		S_AXI_RREADY	=> s00_axi_volume_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
