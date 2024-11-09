# Embedded Linux System

## First startup

When the embedded Linux system created with PetaLinux boots for the first time, a few settings need to be adjusted. Before we can use ssh to remote access the device we need to setup an internet connection via serial communication. Attach a JTAG header with **UART to USB** functionality to the board and connect the board to a computer. Initialize a serial connection with a baudrate of **115200** on serial line `/dev/ttyUSB1` for most Linux distributions and press the startup button on the Ultra96-V2 board.

### Establish a wifi connection

When logged in via a serial connection we can establish an internet connection via wifi so we can ssh into the system. The system already contains a script to establish a wifi connection, the only thing we need to add is the information of the wifi network we want to connect to. This command can be done with the following command:

```console
blendinator:~$ wpa_passphrase your-ESSID your-passphrase | sudo tee /home/root/wpa_supplicant.conf
```

This command can be used multiple times to add more network possibilities to the configuration. After this, a wifi connection can be established by executing the wifi.sh script in the home directory of the root-user:

```console
blendinator:~$ sudo sh /home/root/wifi.sh
```

We encountered some errors from the wilc-driver after executing this script. However, the internet connection seems to work fine even after this errors so they can be ignored. From now on every time the system starts, an internet connection to one of the configured networks in `wpa_supplicant.conf` will be established and ssh can be used.

### Enable PipeWire and Wireplumber

