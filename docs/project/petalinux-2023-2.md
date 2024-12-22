# Building an embedded Linux system using PetaLinux 2023.2

Most of the steps we executed while using PetaLinux 2024.1 are still applicable when transitioning to PetaLinux 2023.2. The primary difference is that some commands in PetaLinux 2023.2 were deprecated in 2024.1, so we needed to revert to the older versions of those commands.

## Creating a PetaLinux project

We again began with the 2023.2 BSP version for the Ultra96v2. The `petalinux-create`command has an extra `-t`flag to indicate the type of the project:

``` bash
petalinux-create -t project -s ~/path/to/u96v2_sbc_base_2023_2.bsp --name <project_name>
```

## Modifying our PetaLinux project

After the PetaLinux project is created, we first make some modifications before we start building our project.

### Adding our custom XSA

First of all, we want to add our custom XSA-file to the project. We do this with `petalinux-config`:

``` bash
petalinux-config --get-hw-description ~/path/to/xsa
```
### Upgrading Bluez5

We upgraded BlueZ5 to version 5.79. The steps required to complete this upgrade are documented [here](petalinux-2024-1.md#upgrading-bluez5).

### Adding libfreeaptx

In our project, we will support HD audio streaming over Bluetooth, which can be achieved using the aptX-HD codec. To enable this support, we need to install an additional library. The libfreeaptx library is an open-source implementation of the aptX-HD codec and is required by the bluez-alsa package to support aptX-HD. The steps we followed to install this library are documented [here](petalinux-2024-1.md#adding-libfreeaptx).

### Adding Bluez-Alsa

We will use the bluez-alsa package to route audio from a Bluetooth device to an ALSA sink. The steps to add this package are documented [here](petalinux-2024-1.md#adding-bluez-alsa).

### Adding a Wifi network

For convenience, we ensured that the wpa_supplicant.conf file contained a network configuration before the first boot, allowing the Ultra96-V2 to automatically connect to the network. This eliminates the need for a JTAG UART-to-USB header. The steps to configure this are documented [here](petalinux-2024-1.md#adding-a-wifi-network).

### Changing the hostname

Furthermore, we changed the system's hostname from u96v2-sbc-base-2023-2 to blendinator to align with our project. The steps to perform this change are documented [here](petalinux-2024-1.md#changing-the-hostname).

### Adding support for MIDI

In this project, we will work with MIDI inputs. To be able to do this. We need to enable some Device Drivers. We do this by running the following command:

``` bash
petalinux-config -c kernel
```

We navigate to **Device Drivers** → **Sound cart support** → **Advanced Linux Sound Architecture** and enable `Sequencer support`.

Next, we run the following command:

``` bash
petalinux-config -c rootfs
```

In the grahpical interface, we navigate to **Filesystem Packages** → **console** → **utils** → **alsa-utils** and enable `alsa-utils` and `alsa-utils-midi`.

## Adding ALSA plugins for Bluetooth Audio

On top of the already enabled `alsa-utils`, we will also enable `alsa-plugins` so that we get access to extra features like the ALSA resampler. We will need this later on to resample Bluetooth audio from 44.1 kHz to 48 kHz.

We run again the following command:

``` bash
petalinux-config -c rootfs
```

In the grahpical interface, we navigate to **Filesystem Packages** → **multimedia** → **alsa-plugins** and enable `alsa-plugins`.

## Building our PetaLinux project

After we made all the necessary modifications to our project, we can start to build it by running the following command:

``` bash
petalinux-build
```

This may again take a couple of hours. 

## Creating the boot files

When the build is finished, we can create the boot files like we did [earlier](petalinux-2024-1.md#creating-the-boot-files).

The command to create the boot files is slightly different in PetaLinux 2023.2:

``` bash
petalinux-package --boot --fsbl images/linux/zynqmp_fsbl.elf --fpga images/linux/system.bit --pmufw images/linux/pmufw.elf --u-boot

```

The command to create a wic-image file is also slightly different:

``` bash 
petalinux-package --wic --images-dir images/linux/ --bootfiles "boot.scr,Image,system.dtb"
```

## Booting the system

We can insert the SD card into our Ultra96v2 and power on the system. If everything goes smoothly, the system will boot, and we’ll need to log in using the username petalinux and a password of our choosing. To avoid any confusion, it may be a good idea to set the password to match the username.