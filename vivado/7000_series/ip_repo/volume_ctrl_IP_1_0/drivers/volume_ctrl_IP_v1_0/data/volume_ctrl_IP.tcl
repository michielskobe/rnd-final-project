

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "volume_ctrl_IP" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_volume_BASEADDR" "C_S00_AXI_volume_HIGHADDR"
}
