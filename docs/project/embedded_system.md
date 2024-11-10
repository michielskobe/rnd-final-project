# Embedded Linux System

When the embedded Linux system created with PetaLinux boots for the first time, a few settings need to be adjusted. Before we can use ssh to remote access the device we need to setup an internet connection via serial communication. Attach a JTAG header with **UART to USB** functionality to the board and connect the board to a computer. Initialize a serial connection with a baudrate of **115200** on serial line `/dev/ttyUSB1` for most Linux distributions and press the startup button on the Ultra96-V2 board.

## Establish a wifi connection

When logged in via a serial connection we can establish an internet connection via wifi so we can ssh into the system. The system already contains a script to establish a wifi connection, the only thing we need to add is the information of the wifi network we want to connect to. This command can be done with the following command:

```console
blendinator:~$ wpa_passphrase your-ESSID your-passphrase | sudo tee /home/root/wpa_supplicant.conf
```

This command can be used multiple times to add more network possibilities to the configuration. After this, a wifi connection can be established by executing the wifi.sh script in the home directory of the root-user:

```console
blendinator:~$ sudo sh /home/root/wifi.sh
```

We encountered some errors from the wilc-driver after executing this script. However, the internet connection seems to work fine even after this errors so they can be ignored. From now on every time the system starts, an internet connection to one of the configured networks in `wpa_supplicant.conf` will be established and ssh can be used.

## Initialize Bluetooth Audio

### Enable the WirePlumber and PipeWire services

By default, the embedded system created with PetaLinux will use PulseAudio as its audio server. To provide better Bluetooth Audio stability and performance, we will use the newer PipeWire and Wireplumber packages. This can be done with the following steps:

- First, we need to disable some packages in the config files of pipewire and wireplumber. When changes are made to the default configuration of PipeWire, it is required to copy the configuration files from `/usr/share/pipewire/` to `/etc/pipewire/`:

```console
blendinator:~$ cd /etc
blendinator:/etc$ sudo mkdir pipewire
blendinator:/etc$ sudo cp /usr/share/pipewire/pipewire.conf /etc/pipewire/
blendinator:/etc$ sudo cp /usr/share/pipewire/pipewire-pulse.conf /etc/pipewire/
```

- After this, we need to disable the modules `libpipewire-module-portal`, `libpipewire-module-jackdbus-detect` and `libpipewire-module-rt` since they are needed for the PipeWire GUI portal and will prevent PipeWire from starting up. The modules can be disabled by commenting out the lines of each module in `/etc/pipewire/pipewire.conf`:

- Lastly, we need to enable and start the PipeWire and Wireplumber processes:

```console
blendinator:~$ systemctl --user enable pipewire
blendinator:~$ systemctl --user enable pipewire-pulse
blendinator:~$ systemctl --user enable wireplumber
blendinator:~$ systemctl --user start pipewire
blendinator:~$ systemctl --user start pipewire-pulse
blendinator:~$ systemctl --user start wireplumber
```

From now on, the PipeWire and Wireplumber processes are started automatically each time the system boots. We can see the current audio server configuration of the system and verify that PipeWire is working correctly with the `pactl info` command:

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

This shows that the current audio server is managed by PipeWire.

### Adjusting Bluetooth configuration

For the Blendinator to be recognized by other devices via Bluetooth correctly, we need to change the class of our Bluetooth controller. For this project, we have chosen that the controller will act as a audio sink, specifically an audio mixer. This means that our device will have **class 0x240418** in hexadecimal. We can set this class by editing the `/etc/bluetooth/main.conf` file:

```diff
- # Class = 0x000001
+ Class = 0x240418
```

After this change in configuration, we need to restart the Bluetooth service with `sudo systemctl restart bluetooth` for this change to take effect. It is however advised to reboot the whole system after going through the steps in this documentation.
