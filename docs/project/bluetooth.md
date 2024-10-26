# Bluetooth

We initially encountered some problems to get the Bluetooth up and running. We found an [issue](https://github.com/Avnet/Ultra96-PYNQ/issues/52) in the Avnet Ultra-PYNQ GitHub repository that had a similar problem and were able to use the proposed solution to get the Bluetooth to work. We wrote the following shell script to achieve this:

```bash
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
```
