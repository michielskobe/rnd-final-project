# Building an embedded Linux system

## Creating a PetaLinux project

We started building our embedded Linux system from an official PetaLinux Board Support Package (BSP). Since there was no publicly released BSP for the Ultra96-V2 for the 2024.1 version of PetaLinux, we used the BSP for the 2023.2 version. This BSP can be downloaded from the [official Avnet Ultra96-V2 website](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/ultra96-v2/?srsltid=AfmBOootw0XqCDDNsKIG109q9VltqPq5CpBv8dUQG7ZsPMgQUcB-zR3p), go to **Reference Designs** → **PetaLinux Board Support Packages** → **Ultra96-V2 – PetaLinux 2020+ BSP (Sharepoint site)** → **2023.2** → **BSP** → **u96v2_sbc_base_2023_2.bsp**.

After we downloaded the BSP, we created a new PetaLinux project with the command `petalinux-create`. The `-t` flag specifies the type of project. In our case, we will need a PetaLinux project structure. The `-s` flag specifies that the project should be created from an existing source. This will be the BSP we just downloaded. The `--name` flag specifies the name of our project.

``` bash
petalinux-create -t project -s ~/path/to/u96v2_sbc_base_2023_2.bsp --name <project_name>
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

We changed the name of the bluez5 bitbake file **bluez5_5.65.bb** to **bluez5_5.79.bb** so that version 5.79 will be downloaded from the kernel.org website. In the include file, two lines should be added so that the neccessary files are incorporated in the installation process.

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

### Adding Pipewire and Wireplumber

To be able to support Bluetooth Audio later on in the project, we will also need Pipewire and Wireplumber. We need to execute a couple steps in order to add this to the project.

- First, we clone the [meta-openembedded GitHub-repository](https://github.com/openembedded/meta-openembedded) in the `/project-spec/`-directory.

```bash
git clone git@github.com:openembedded/meta-openembedded.git
```

- Then, we run `petalinux-config` in our terminal. We go to **Yocto Settings** → **User Layers**. Here we add a new user layer: `${PROOT}/project-spec/meta-openembedded/meta-multimedia`. This results in the following errors: 

```bash
ERROR: Found duplicated BBFILE_COLLECTIONS 'multimedia-layer', check bblayers.conf or layer.conf to fix it.
ERROR: Found duplicated BBFILE_COLLECTIONS 'multimedia-layer', check bblayers.conf or layer.conf to fix it.
```

To solve these errors, we go to `build/conf/bblayers.conf`. Here we got a duplicate entry for `meta-multimedia`, so we removed one of these entries. 

- In `/project-spec/meta-user/conf/user-rootfsconfig`, we add the following lines:

```diff
+ CONFIG_pipewire
+ CONFIG_wireplumber
```

- We run the command `petalinux-config -c rootfs` and go to **user packages**. Here we enable `pipewire` and `wireplumber` by pressing `y`.

## Building our PetaLinux project

After we made all the necessary modifications to our project, we can start to build it by running the following command:

``` bash
petalinux-build
```

This may take a while. 

## Creating the boot files

When the build is finished, we can create the boot files with the following command:

``` bash
petalinux-package --boot --fsbl images/linux/zynqmp_fsbl.elf --fpga images/linux/system.bit --pmufw images/linux/pmufw.elf --u-boot
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
