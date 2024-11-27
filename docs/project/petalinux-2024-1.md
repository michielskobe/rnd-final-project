# Building an embedded Linux system using PetaLinux 2024.1

During the development of our embedded Linux system, we initially used PetaLinux 2024.1. However, later in the project, we encountered a critical issue where we were unable to access AXI devices using the `devmem` tool.

After encountering this issue, we identified related reports on the Adaptive SoC & FPGA Support Embedded Linux forums:
- [Forum thread 1](https://adaptivesupport.amd.com/s/feed/0D54U00008cZFTFSA4?language=en_US)
- [Forum thread 2](https://adaptivesupport.amd.com/s/question/0D54U00008hyWeeSAE/devmem-access-to-axi-devices-and-bram-work-on-petalinux-20201-but-not-20241-ultrascale?language=en_US)

The problem was traced back to a kernel issue in PetaLinux 2024.1, which impacted access to AXI devices via memory-mapped I/O (`devmem`). This behavior was not observed in earlier versions of PetaLinux, such as 2023.2.

To continue development without further delays, we reverted to PetaLinux 2023.2, which resolved the `devmem` issue and restored reliable access to AXI devices.

For completeness and academic purposes, we have documented our progress with PetaLinux 2024.1.

## Creating a PetaLinux project

We started building our embedded Linux system from an official PetaLinux Board Support Package (BSP). Since there was no publicly released BSP for the Ultra96-V2 for the 2024.1 version of PetaLinux, we used the BSP for the 2023.2 version. This BSP can be downloaded from the [official Avnet Ultra96-V2 website](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/ultra96-v2/?srsltid=AfmBOootw0XqCDDNsKIG109q9VltqPq5CpBv8dUQG7ZsPMgQUcB-zR3p), go to **Reference Designs** → **PetaLinux Board Support Packages** → **Ultra96-V2 – PetaLinux 2020+ BSP (Sharepoint site)** → **2023.2** → **BSP** → **u96v2_sbc_base_2023_2.bsp**.

After we downloaded the BSP, we created a new PetaLinux project with the command `petalinux-create project`. The `-s` flag specifies that the project should be created from an existing source. This will be the BSP we just downloaded. The `--name` flag specifies the name of our project.

``` bash
petalinux-create project -s ~/path/to/u96v2_sbc_base_2023_2.bsp --name <project_name>
```

## Modifying our PetaLinux project

After the PetaLinux project is created, we can directly build the system image by running the command `petalinux-build`. Before we execute this command, we first needed to make some changes in order to get a working build.

### Adding our custom XSA

First of all, we want to add our custom XSA-file to the project. We do this with `petalinux-config`:

``` bash
petalinux-config --get-hw-description ~/path/to/xsa
```

### Removing redundant u-boot patch

We removed a patch in `/project-spec/meta-avnet/recipes-bsp/u-boot/u-boot-xlnx_%.bbappend`. The reason for this is that the changes this patch was attempting to make were already made and the line numbers between the source file and the patch did not match. We can therefore safely remove this patch.
```diff
- SRC_URI += "file://0001-usb-dwc3-Fix-remove-function-if-no-ulpi_reset-gpio.patch \ 
-            "
```

### Upgrading WILC kernel drivers

We created `/project-spec/meta-avnet/recipes-modules/wilc/wilc_16.3.bb`, which is a copy of `wilc_16.1.1.bb` with some adaptations. These adaptations update the kernel drivers for the WILC chip to version 16.3 which supports Linux kernel version 6.6.

```diff
- SRC_URI = "git://github.com/linux4sam/linux-at91.git;protocol=http;branch=${BRANCH};subpath=drivers/net/wireless/microchip/wilc1000 \ 
-           file://0001-ultra96-modifications-16.1.patch \ 
-           "
+ SRC_URI = "git://github.com/linux4sam/linux-at91.git;protocol=http;branch=$ {BRANCH};subpath=drivers/net/wireless/microchip/wilc1000 \ 
+          file://0001-ultra96-modifications-16.3.patch \ 
+           "

- # Tag: linux4microchip-2023.04 
+ # Tag: linux4microchip-2024.10-rc3 

- SRCREV = "3f619ddf943b04c6f34f276a65f183a881a7c9c5" 
+ SRCREV = "4b6e171642a4167dbbb572d5101681f0b2e75772" 

- BRANCH = "linux-6.1-mchp"
+ BRANCH = "linux-6.6-mchp" 
```
The updated SRCREV for the Linux4Microchip 2024.10 release candidate 3 can be found by running the following git command in the [linux-at91 GitHub-repository](https://github.com/linux4sam/linux-at91):
```bash
git log -1 --pretty=%H linux4microchip-2024.10-rc3
```

We also added a patch file for `wilc_16.3.bb`. We tried to generate this patch by running the following command:
``` bash
git diff 3f619ddf943b04c6f34f276a65f183a881a7c9c5 4b6e171642a4167dbbb572d5101681f0b2e75772 -- drivers/net/wireless/microchip/wilc1000 > ~/path/to/petalinux/project/project-spec/meta-avnet/recipes-modules/wilc/files/0001-ultra96-modifications-16.3.patch
```
This turned out to be unsuccessful and we ended up using a [patch](https://gitlab.kuleuven.be/groep-t/courses/rndembed/2425/team-e/-/blob/fc166c653e7d07ab2270e85d3484d8db5c27b601/petalinux/0001-ultra96-modifications-16.3.patch) based on the patch for version 16.1.1, provided to us by Yuri Cauwerts. The patch file is placed in the folder `/project-spec/meta-avnet/recipes-modules/wilc/files/`.

### Upgrading WILC3000 firmware

We created `/project-spec/meta-avnet/recipes-bsp/wilc3000-fw/wilc3000-fw_16.3.bb`, which is a copy of `wilc3000-fw_16.1.1.bb` with some adaptations. These adaptations update the wilc3000 firmware to version 16.3.

```diff
- # Tag: wilc_linux_16_1_1
+ # Tag: wilc_linux_16_3

- SRCREV = "ab40db5d41f4c9cd9b74a922d7f781bb07f0610b" 
+ SRCREV = "7cbf0cdf1aabc4da48802d5f2d3d5525304af61d" 
```
The updated SRCREV for the WILC Linux 16.3 release can be found by running the following git command in the [linux4wilc/firmware GitHub-repository](https://github.com/linux4wilc/firmware):
```bash
git log -1 --pretty=%H wilc_linux_16_3
```

### Upgrading Bluez5

We changed the name of the bluez5 bitbake file **bluez5_5.65.bb** to **bluez5_5.79.bb** so that version 5.79 will be downloaded from the kernel.org website. In the include file, two lines should be added so that the neccessary files are incorporated in the installation process. The following code snippet can be found at line 112 in this file.

```diff
    FILES:${PN} += " \
        ${libdir}/bluetooth/plugins/*.so \
        ${systemd_unitdir}/ ${datadir}/dbus-1 \
        ${libdir}/cups \
+       /usr/lib/systemd/user/mpris-proxy.service \
+       /usr/lib/systemd/user/dbus-org.bluez.obex.service \
    "
```

Also the checksum of the bluez5 archive file should be changed in **bluez5_5.79.bb**:

```diff
- SRC_URI[sha256sum] = "2565a4d48354b576e6ad92e25b54ed66808296581c8abb80587051f9993d96d4"
+ SRC_URI[sha256sum] = "4164a5303a9f71c70f48c03ff60be34231b568d93a9ad5e79928d34e6aa0ea8a"

```
The files related to bluez5 can be found in `/components/yocto/layers/poky/meta/recipes-connectivity/bluez5`.

### Adding libfreeaptx

In our project, we will support HD audio streaming over Bluetooth which can be achieved with the **aptX-HD codec**. We need to install an extra library to add support for this codec later on.
The library **libfreeaptx** is an open-source implementation of the aptX-HD codec and is required by the next package bluez-alsa to support aptX-HD. We created a custom bitbake file to build and include the library in our PetaLinux project. The bitbake file can be found in the [bitbake folder on the GitLab repository of this project](https://gitlab.kuleuven.be/groep-t/courses/rndembed/2425/team-e/-/blob/6cc487f8a0df3c43cc798d3384942d8c4a22fc63/bitbake/libfreeaptx.bb).

To install the library in our project, we created the folder `libfreeaptx` in `components/yocto/layers/meta-openembedded/meta-multimedia/recipes-multimedia/` and placed the bitbake file in it.

### Adding Bluez-Alsa

We will use the package Bluez-alsa to route audio from a Bluetooth device to an ALSA sink. The bitbake file for bluez-alsa already exists in `components/yocto/layers/meta-openembedded/meta-multimedia/recipes-multimedia/bluealsa`, but we will upgrade it to a higher version for more support. A newer version can be found in the [meta-openembedded repository](https://github.com/openembedded/meta-openembedded) at `meta-multimedia/recipes-multimedia/bluealsa/`.

After copying the newer bitbake file to the project, we changed a few things in the file to support some extra Bluetooth codecs:

```diff
-   DEPENDS += "alsa-lib bluez5 dbus glib-2.0-native python3-packaging-native sbc"
+   DEPENDS += "alsa-lib bluez5 dbus glib-2.0-native python3-packaging-native sbc libfreeaptx libopus"

    EXTRA_OECONF = "\
-       --disable-aptx \
+       --enable-debug \
+       --enable-systemd \
+       --enable-a2dpconf \
+       --enable-cli \
+       --enable-midi \
+       --enable-opus \
+       --enable-aptx \
+       --enable-aptx-hd \
+       --with-libfreeaptx \
        --disable-lc3plus \
        --disable-ldac \
-       --disable-manpages \

- SYSTEMD_BLUEALSA_ARGS ?= "-p a2dp-source -p a2dp-sink"
+ SYSTEMD_BLUEALSA_ARGS ?= "--codec=aptX --codec=aptX-HD --codec=Opus -p a2dp-sink"
```

In the [meta-openembedded repository](https://github.com/openembedded/meta-openembedded), there is also a patch file for the bitbake file. We will add this to `components/yocto/layers/meta-openembedded/meta-multimedia/recipes-multimedia/bluealsa/files`. With these changes, 2 extra Bluetooth codecs are now supported: **aptX-HD** and **Opus**. The systemd service will start at boot with this codecs enabled by default. For now, the device will only act as a Bluetooth audio sink, meaning audio can be received but not sent over Bluetooth on our system.

To include the bluealsa (= bluez-alsa) package in the build, we need to add the following line to the `user-rootfsconfig` file in `project-spec/meta-user/conf/`:

```diff
+ CONFIG_bluealsa
```

After this, run `petalinux-config -c rootfs` again and select **bluealsa** in **user packages**.

### Adding a Wifi network

For ease, we ensured that the `wpa_supplicant.conf` file contained a network configuration before the first boot so that the Ultra96-V2 will automatically connect to the network and there's no need for a JTAG UART-to-USB header anymore. This can be done by editing the `wpa_supplicant-wlan0.conf` file in `/components/yocto/layers/meta-petalinux/recipes-connectivity/ultra96-wlan0-config/ultra96-wlan0-config/`. We added the following network configuration:

```diff 
    ctrl_interface=/var/run/wpa_supplicant
    ctrl_interface_group=0
    update_config=1

+   network={
+       ssid="UltraHotspot"
+       #psk="Petalinux"
+       psk=e40db57c89bfdf4a7a5d1e4e0ede7c1ad54c4b5decf373cc57f28753ac424e77
+   }
```

The system will now connect to the network with SSID `UltraHotspot` at boot and it will be possible to use ssh as remote console.

### Changing the hostname

Lastly, we changed the hostname of the system from **u96v2-sbc-base-2023-2** to **blendinator** to fit our project. This can be done by running `petalinux-config` again and changing the 'Host Name' in `Firmware Version Configuration`.

From now on, we can connect to the system by starting a connection to `blendinator.local`. 

## Building our PetaLinux project

After we made all the necessary modifications to our project, we can start to build it by running the following command:

``` bash
petalinux-build
```

This may take a couple of hours. 

## Creating the boot files

When the build is finished, we can create the boot files with the following command:

``` bash
petalinux-package boot --fsbl images/linux/zynqmp_fsbl.elf --fpga images/linux/system.bit --pmufw images/linux/pmufw.elf --u-boot
```

If some bootfiles were created earlier, the `--force` option could be used to overwrite the old files.
Lastly, we can create a .wic-image file which we can easily flash to a SD card:

``` bash 
petalinux-package wic --images-dir images/linux/ --bootfiles "boot.scr,Image,system.dtb"
```

The .wic file can be flashed with any disk utility tool. When doing so, 2 partitions will be created on the SD card: the BOOT and root partition. 
After flashing, the files **image.ub** and **BOOT.BIN** need to be copied to the BOOT partition.
On most Linux distributions, this can be done with the following commands:

``` bash
cp BOOT.BIN /mount-point-for-BOOT-partition/
cp image.ub /mount-point-for-BOOT-partition/
```

Where the mount point for the BOOT partition can be e.g. /media/user/BOOT/.
