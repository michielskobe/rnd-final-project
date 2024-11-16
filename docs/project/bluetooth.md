# Bluetooth

Note: before interacting with a bluetooth controller, it is advised to update the Linux Bluetooth stack bluez5 to the latest version for the best performance and stability. The version used when writing this documentation was **bluez 5.79**. Some of the console snippets could differ when using another bluez5 version.

## Bluetooth with the integrated WILC chip

### Initialize the device

We initially encountered some problems to get bluetooth up and running. We found an [issue](https://github.com/Avnet/Ultra96-PYNQ/issues/52) in the Avnet Ultra-PYNQ GitHub repository where a similar problem was described and were able to use the proposed solution to get bluetooth to work. We took the following shell script from the mentioned GitHub URL to achieve this:

```bash
#!/bin/bash
echo BT_POWER_UP > /dev/wilc_bt
echo BT_DOWNLOAD_FW > /dev/wilc_bt

stty -F /dev/ttyPS1 115200
sleep 1s

hciattach /dev/ttyPS1 -t 10 any 115200 noflow nosleep
sleep 2s
hciconfig hci0 up
hciconfig hci0
```

We added a few more delays in the script so the WILC3000 chip has time to start up. Without this delays, the chip would return error codes indicating it could not start successfully.
After executing this script, the firmware is downloaded and a new hci device (the bluetooth controller) is up and running.

A major **disadvantage** to this is that the script must be executed every time the system boots in order to interact with the integrated bluetooth chip.

### Interacting with the controller

After the firmware is downloaded and loaded, the `bluetoothd`-process in Linux is automatically started. This means we can open a bluetooth command prompt with the `bluetoothctl` command and check the current state of the controller we just initialized:

```console
blendinator:~$ bluetoothctl
hci0 new_settings: powered bondable le secure-conn 
[bluetooth]# Agent registered
[bluetooth]# [CHG] Controller F8:F0:05:C3:34:27 Pairable: yes
[bluetooth]# 
```

This shows that a bluetooth controller with MAC-address F8:F0:05:C3:34:27 is found and the controller is in the pairable state. The bluetooth command prompt will be used later on in this documentation.

### Notes about the WILC chip

In our project, we will not use the integrated ATWILC3000 chip for Bluetooth connections. The chip supports Bluetooth 5.0, but only the Low Energy (LE)-variant. This means that audio streaming with the A2DP protocol is not supported since it is one of the features of native Bluetooth.[^1]

However, this controller could still be used for other types of connections. This includes MIDI over Bluetooth, controling the mixer via Bluetooth, and so on.

## Bluetooth with the TP-Link UB500

### Installing the firmware

To support audio streaming via Bluetooth to the Ultra96-V2, we will use the **TP-Link UB500** Bluetooth USB dongle which contains a **Realtek rtl8761bu chipset**. When inserting the dongle in the board it is immediately recognized by the system via the `lsusb` command, but the neccessary firmware is not yet installed. The firmware files for the rtl8761bu chipset can be found on the internet or on every Linux distribution with kernel 5.8+. We uploaded the neccessary firmware files to the GitLab repository of this project.

To install the firmware, the two `.bin` firmware files need to be copied to `/lib/firmware/rtl_bt/`. The firmware will be loaded whenever the USB dongle is inserted. 
If the installation was succesful, a new hci device on the USB bus should appear in `hciconfig`:

```console
blendinator:~$ hciconfig
hci0:	Type: Primary  Bus: USB
	BD Address: E8:48:B8:C8:20:00  ACL MTU: 1021:6  SCO MTU: 255:12
	UP RUNNING PSCAN ISCAN 
	RX bytes:4611 acl:0 sco:0 events:346 errors:0
	TX bytes:26607 acl:0 sco:0 commands:330 errors:0
```

The advantage of this dongle is that the firmware only needed to be downloaded and installed once. Once the files are installed, the device will automatically be initialized on startup.

### The bluetooth console

Now that the firmware is installed, we can open a bluetooth console to interact with the TP-Link UB500 Bluetooth dongle. Before opening the console, we will do a quick check with Bluez-alsa to check which A2DP profiles, also known as Bluetooth codecs, are supported. Each profile will be registered with the bluetooth agent as *MediaEndpoint*. To check which profiles are currently supported, we run the `bluealsa-cli status` command:

*To be continued*


[^1]: When writing this documentation, the latest variant of bluetooth is Bluetooth 5.4. It is worth mentioning that from Bluetooth 5.2 onwards, audio streaming is supported in Bluetooth Low Energy. The feature is called "LE Audio" and uses the LC3 codec for streaming audio. This codec is very promising as it has a good trade-off between bandwidth and quality, such that no existing software codec such as LDAC can match it. Another nice feature of LE Audio is "Auracast": it is from now on possible to stream to an unlimited number of audio sinks with LE Audio. More information about LE Audio could be found on the [Official Bluetooth website](https://www.bluetooth.com/learn-about-bluetooth/feature-enhancements/le-audio/).
  In this project we will stick with Bluetooth 5.0 and native Bluetooth Audio because the LE Audio variant is not yet widely used and supported.



