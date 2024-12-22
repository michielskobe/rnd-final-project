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

### Notes about the TP-Link UB500

When we reverted the PetaLinux project to version 2023.2, the Linux kernel version also downgraded to version 6.1 instead of version 6.6. It came to our attention that loading the firmware at boot for the TP-Link UB500 will always fail with `error code -2 (file not found)` for now. A temporary workaround is just plugging the USB dongle in when the system is fully started.

## The Bluetooth console

Now that the firmware is installed, we can open a Bluetooth console to interact with the TP-Link UB500 Bluetooth dongle.

*To be continued...*

## Bluetooth Audio Interfaces

### PipeWire and Wireplumber as Bluetooth Audio Sink

By default, the embedded system created with PetaLinux will use PulseAudio as its audio server. To provide better Bluetooth Audio stability and performance, we tried to use the newer PipeWire and Wireplumber packages. We executed the following steps:

- First, we needed to disable some modules in the config files of pipewire and wireplumber. When changes are made to the default configuration of PipeWire, it is required to copy the configuration files from `/usr/share/pipewire/` to `/etc/pipewire/`:

```console
blendinator:~$ cd /etc
blendinator:/etc$ sudo mkdir pipewire
blendinator:/etc$ sudo cp /usr/share/pipewire/pipewire.conf /etc/pipewire/
blendinator:/etc$ sudo cp /usr/share/pipewire/pipewire-pulse.conf /etc/pipewire/
```

- After this, we needed to disable the modules `libpipewire-module-portal`, `libpipewire-module-jackdbus-detect` and `libpipewire-module-rt` since they are required for the PipeWire GUI portal and will prevent PipeWire from starting up since there is no GUI at this moment. The modules can be disabled by commenting out the lines of each module in `/etc/pipewire/pipewire.conf`:

- Lastly, we need to enable and start the PipeWire and Wireplumber processes:

```console
blendinator:~$ systemctl --user enable pipewire
blendinator:~$ systemctl --user enable pipewire-pulse
blendinator:~$ systemctl --user enable wireplumber
blendinator:~$ systemctl --user start pipewire
blendinator:~$ systemctl --user start pipewire-pulse
blendinator:~$ systemctl --user start wireplumber
```

From now on, the PipeWire and Wireplumber processes are started automatically each time the system boots. We can see the current audio server configuration of the system and verify that PipeWire is working with the `pactl info` command:

```console
blendinator:~$ pactl info
Server String: /run/user/1000/pulse/native
Library Protocol Version: 35
Server Protocol Version: 35
Is Local: yes
Client Index: 54
Tile Size: 65472
User Name: petalinux
Host Name: u96v2-sbc-base-2023-2
Server Name: PulseAudio (on PipeWire 1.2.6)
Server Version: 15.0.0
Default Sample Specification: float32le 2ch 48000Hz
Default Channel Map: front-left,front-right
Default Sink: alsa_output.platform-fd4a0000.display_zynqmp-dp-snd-card.stereo-fallback
Default Source: alsa_output.platform-fd4a0000.display_zynqmp-dp-snd-card.stereo-fallback.monitor
Cookie: f432:aa01
```

This shows that the current audio server on the system is managed by PipeWire. However, when installing PipeWire and Wireplumber within PetaLinux, it is configured to be executed systemwide. This means that the processes need to run as root instead of one of the system users, so that wireplumber will start up the profile *main-systemwide*. This enables PipeWire and Wireplumber to keep running, even when no user is logged in, which is of great importance in our system.

### Notes about PipeWire and Wireplumber

It is important to note that PipeWire and Wireplumber are audio servers. This means that they manage all audiostreams on the system, including the one from Bluetooth. Initially, we chose for PipeWire and Wireplumber to enable support for Bluetooth Audio on the system because Wireplumber already contains the neccessary A2DP decoder libraries and features to support Bluetooth Audio.

However, when using PipeWire as audio server, we noticed that the DBus communication between PipeWire/Wireplumber and Bluez couldn't take place. We saw the following messages with `journalctl -xe`: 

```console
wireplumber[773]: wp-internal-comp-loader: Loading profile 'main-systemwide'
wireplumber[773]: listen(): Address already in use
wireplumber[773]: RegisterProfile() failed: org.bluez.Error.NotPermitted
```

This was problematic since Wireplumber couldn't inform bluez about its audio source or sink support so whenever a device is connected over Bluetooth, media streaming would be blocked. After a long search, the issue seem to be with the package `ofono` which is enabled and running by default on the system. Ofono seems to interfere with some features of Wireplumber so that it couldn't register any A2DP profile with Bluez. 

Even though we could disable ofono and try Wireplumber again, we decided to continue the project with another package that acts as middleware between an audio application and a Bluetooth device. PipeWire and Wireplumber are audio servers that have a vast amount of features which are not needed for the project and increase the load on the system. It turns out that bluez-alsa is a better fit for our project and will enable us to have even more control over the Bluetooth Audio interface we're going to implement.

### BlueZ-ALSA as Bluetooth Audio Sink

BlueZ-ALSA (also known as BlueALSA) is a rebirth of the direct integration of BlueZ and ALSA, which has been removed since bluez5 in favor of 3rd party applications like PipeWire. BlueALSA provides very detailed documentation, from the build of the application to the configuration of the A2DP profiles. The documentation can be found in the [GitHub repository](https://github.com/arkq/bluez-alsa/wiki).

First, we will do a quick check with BlueALSA to check which A2DP profiles, also known as Bluetooth codecs, are supported. Each profile/codec will be registered with the Bluetooth agent as a *MediaEndpoint*. To check which profiles are currently supported, we run the `bluealsa-cli status` command:

*To be continued*


[^1]: When writing this documentation, the latest variant of bluetooth is Bluetooth 5.4. It is worth mentioning that from Bluetooth 5.2 onwards, audio streaming is supported in Bluetooth Low Energy. The feature is called "LE Audio" and uses the LC3 codec for streaming audio. This codec is very promising as it has a good trade-off between bandwidth and quality, such that no existing software codec such as LDAC can match it. Another nice feature of LE Audio is "Auracast": it is from now on possible to stream to an unlimited number of audio sinks with LE Audio. More information about LE Audio could be found on the [Official Bluetooth website](https://www.bluetooth.com/learn-about-bluetooth/feature-enhancements/le-audio/).
  In this project we will stick with Bluetooth 5.0 and native Bluetooth Audio because the LE Audio variant is not yet widely used and supported.