#!/bin/bash
# Do this only once:
echo BT_POWER_UP > /dev/wilc_bt
echo BT_DOWNLOAD_FW > /dev/wilc_bt

stty -F /dev/ttyPS2 115200
# Initialize the device:
hciattach /dev/ttyPS2 -t 10 any 115200 noflow nosleep
sleep 1s
hciconfig hci0 up
hciconfig hci0
