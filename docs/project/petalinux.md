# Building an embedded Linux system

We started building our embedded Linux system from an official PetaLinux Board Support Package (BSP). Since there was no publicly released BSP for the Ultra96-V2 for the 2024.1 version of PetaLinux, we used the BSP for the 2023.2 version. This BSP can be downloaded from the [official Avnet Ultra96-V2 website](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/ultra96-v2/?srsltid=AfmBOootw0XqCDDNsKIG109q9VltqPq5CpBv8dUQG7ZsPMgQUcB-zR3p), go to **Reference Designs** → **PetaLinux Board Support Packages** → **Ultra96-V2 – PetaLinux 2020+ BSP (Sharepoint site)** → **2023.2** → **BSP** → **u96v2_sbc_base_2023_2.bsp**.

After we downloaded the BSP, we created a new PetaLinux project with the command `petalinux-create`. The `-t` flag specifies the type of project. In our case, we will need a PetaLinux project structure. The `-s` flag specifies that the project should be created from an existing source. This will be the BSP we just downloaded. The `--name` flag specifies the name of our project.

``` bash
petalinux-create -t project -s ~/path/to/u96v2_sbc_base_2023_2.bsp --name <project_name>
```

After the PetaLinux project is created, we can directly build the system image by running the command `petalinux-build`. Before we execute this command, we first needed to make some changes in the following files in order to get a working build:

- We removed a patch in `/project-spec/meta-avnet/recipes-bsp/u-boot/u-boot-xlnx_%.bbappend`. The reason for this is that the changes this patch was attempting to make were already made and the line numbers between the source file and the patch did not match. We can therefore safely remove this patch.
```diff
- SRC_URI += "file://0001-usb-dwc3-Fix-remove-function-if-no-ulpi_reset-gpio.patch \ 
-            "
```

- We also created `/project-spec/meta-avnet/recipes-modules/wilc/wilc_16.3.bb`, which is a copy of `wilc_16.1.1.bb` with some adaptations. These adaptations update the Linux kernel to version 6.6 and the WILC firmware to 16.3.
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

- Thirdly, we also added a patch file for `wilc_16.3.bb`. We tried to generate this patch by running the following command:
``` bash
git diff 3f619ddf943b04c6f34f276a65f183a881a7c9c5 4b6e171642a4167dbbb572d5101681f0b2e75772 -- drivers/net/wireless/microchip/wilc1000 > ~/path/to/petalinux/project/project-spec/meta-avnet/recipes-modules/wilc/files/0001-ultra96-modifications-16.3.patch
```
This turned out to be unsuccessful and we ended up using a [patch](https://gitlab.kuleuven.be/groep-t/courses/rndembed/2425/team-e/-/blob/fc166c653e7d07ab2270e85d3484d8db5c27b601/petalinux/0001-ultra96-modifications-16.3.patch) based on the patch for version 16.1.1, provided to us by Yuri Cauwerts. The patch file is placed in the folder `/project-spec/meta-avnet/recipes-modules/wilc/files/`.
