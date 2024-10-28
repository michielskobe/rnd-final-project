# Bluetooth

We initially encountered some problems to get the Bluetooth up and running. We found an [issue](https://github.com/Avnet/Ultra96-PYNQ/issues/52) in the Avnet Ultra-PYNQ GitHub repository that had a similar problem and were able to use the proposed solution to get the Bluetooth to work. We wrote the following shell script to achieve this:

```bash
#!/bin/bash
echo BT_POWER_UP > /dev/wilc_bt
echo BT_DOWNLOAD_FW > /dev/wilc_bt

stty -F /dev/ttyPS2 115200

hciattach /dev/ttyPS2 -t 10 any 115200 noflow nosleep
sleep 1s
hciconfig hci0 up
hciconfig hci0
```

With this script, the bluetooth firmware for the ATWILC3000 chip is downloaded and installed. After this, we can check if the bluetooth service is working:

```console
blendinator:~$ bluetoothctl
hci0 new_settings: powered bondable le secure-conn 
[bluetooth]# Agent registered
[bluetooth]# [CHG] Controller F8:F0:05:C3:34:27 Pairable: yes
[bluetooth]# 
```

This shows that a bluetooth controller with MAC-address F8:F0:05:C3:34:27 is found. If needed, some extra information about the current state of the controller can be retrieved:

```console
[bluetooth]# show
Controller F8:F0:05:C3:34:27 (public)
	Manufacturer: 0x0013 (19)
	Version: 0x06 (6)
	Name: u96v2-sbc-base-2023-2
	Alias: u96v2-sbc-base-2023-2
	Class: 0x00000000 (0)
	Powered: yes
	PowerState: on
	Discoverable: no
	DiscoverableTimeout: 0x000000b4 (180)
	Pairable: yes
	UUID: Handsfree                 (0000111e-0000-1000-8000-00805f9b34fb)
	UUID: Generic Attribute Profile (00001801-0000-1000-8000-00805f9b34fb)
	UUID: Generic Access Profile    (00001800-0000-1000-8000-00805f9b34fb)
	UUID: PnP Information           (00001200-0000-1000-8000-00805f9b34fb)
	UUID: A/V Remote Control Target (0000110c-0000-1000-8000-00805f9b34fb)
	UUID: A/V Remote Control        (0000110e-0000-1000-8000-00805f9b34fb)
	UUID: Device Information        (0000180a-0000-1000-8000-00805f9b34fb)
	Modalias: usb:v1D6Bp0246d054E
	Discovering: no
	Roles: central
	Roles: peripheral
Advertising Features:
	ActiveInstances: 0x00 (0)
	SupportedInstances: 0x05 (5)
	SupportedIncludes: tx-power
	SupportedIncludes: appearance
	SupportedIncludes: local-name
	SupportedCapabilities.MaxAdvLen: 0x1f (31)
	SupportedCapabilities.MaxScnRspLen: 0x1f (31)
```

This shows that the controller is powered on and pairable, but not yet discoverable. To make the controller discoverable for devices we need to run one more command in the bluetooth console:

```console
[bluetooth]# discoverable on 
[bluetooth]# hci0 new_settings: powered connectable bondable le secure-conn 
[bluetooth]# hci0 new_settings: powered connectable discoverable bondable le secure-conn 
[bluetooth]# Changing discoverable on succeeded
[bluetooth]# [CHG] Controller F8:F0:05:C3:34:27 Discoverable: yes
```

Now, the controller is visible to all bluetooth devices nearby. The controller can also scan for nearby devices itself with the 'scan on' command:

```console
[bluetooth]# scan on
[bluetooth]# SetDiscoveryFilter success
[bluetooth]# Discovery started
[bluetooth]# [CHG] Controller F8:F0:05:C3:34:27 Discovering: yes
[bluetooth]# [NEW] Device 6D:19:AC:25:B0:96 6D-19-AC-25-B0-96
[bluetooth]# [NEW] Device B2:5C:DA:FA:97:9F B2-5C-DA-FA-97-9F
[bluetooth]# [NEW] Device 4B:C8:F8:8E:2C:6C 4B-C8-F8-8E-2C-6C
...
```