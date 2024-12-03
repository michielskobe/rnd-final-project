create_clock -period 4.000 -name test_proc_clk -waveform {0.000 2.000} [get_ports {clk_in clk_out clk clk_audio}]
create_clock -period 10.000 -name test_proc_clk -waveform {0.000 5.000} [get_ports {clk_axi_mm}]
