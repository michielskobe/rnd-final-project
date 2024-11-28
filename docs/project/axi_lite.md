# AXI Lite Memory Mapped Interface

## AXI IP in Vivado

In order to work with an AXI Lite device, we created a new AXI IP in Vivado.

In our Vivado project, we selected **Tools** → **Create and Package New IP** → **Next** → **Create a new AXI4 peripheral** → **Next**.

In the Peripheral Details tab we can give the peripheral an appropriate name, description and location. After this, we click **Next** again. 

On the next page, we can configure the AXI bus interface. In our project we will work with an AXI Lite with a Data Width of 32 bits in Slave mode. Hence, we will stick with the default values.

Lastly, we click **Finish**, after selecting **Edit IP**. We go to the **Packaging Steps** of our IP and select `Package for IPI` and `Ignore Freq_Hz` in the **Compatibility**-tab. After this, we Re-Package the IP and add it do our block design. Here we connect it's clock and reset to those of the Processor System Reset and connect the Slave to the AXI Interconnect. Now the bitstream can be generated and the XSA can be exported to use in our PetaLinux project.

## Custom Kernel Driver for AXI Lite

### Creating the User Module

To enable the kernel to communicate with the AXI Lite device connected to the system, we developed a custom kernel driver for the AXI Lite interface. This driver provides seamless access to the device via the kernel.

We created the custom user module using the `petalinux-create` command within our PetaLinux project environment:

```bash
petalinux-create -t modules \--name axi-lite \--enable
```

This command generates a new module located at:
`/project-spec/meta-user/recipes-modules/axi-lite`

This directory contains a template for a PetaLinux kernel module, including the following files:

- `axi-lite.bb` – BitBake recipe for building the module.
- `axi-lite.c` – The C source file for the driver.
- `Makefile` – Build instructions for the kernel module.

### Customizing the Driver

We made significant modifications to the `axi-lite.c` template to tailor it to our requirements:

- **Interrupts Removal:** Interrupt handling was removed from the module as it was not required for our use case.

- **AXI Lite Probe and Remove Functions:**
    - The `axi_lite_probe` function was rewritten to handle device initialization specifically for our AXI Lite interface.
    - The `axi_lite_remove` function was updated to manage proper cleanup when the device is removed.

- **AXI Lite Read and Write Functions:** We added custom functions to handle reading from and writing to the AXI Lite interface. These functions enable direct interaction with the device memory space.

- **Updating the Device Compatibility:** We modified the `.compatible` property in the `static struct of_device_id axi_lite_of_match[]` array. This ensures that our custom driver is correctly associated with the device during kernel initialization.  Additionally, the corresponding compatible property needs to be updated in the device tree.

The updated version of the `axi-lite.c` template can be found [on our Gitlab repository](https://gitlab.kuleuven.be/groep-t/courses/rndembed/2425/team-e/-/blob/dc3bfc9545764c0c609129f23d57835e42d775bb/axi-lite-kernel-driver/files/axi-lite.c), together with the other driver files.

### Updating the Device Tree

We added the custom compatible property to the device tree by modifying the `system-user.dtsi` file located at
`/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi`.

This file allows us to overwrite the compatible property defined in the default device tree at `/images/linux/system.dts`. `system.dts`is not directly available in `/images/linux/`, but can be created by executing `dtc -I dtb -O dts -o system.dts system.dtb`from terminal.

We will add the following snippet to `system-user.dtsi`:

```dts
amba_pl@0 {
    axi_lite@a0040000 {
        compatible = "kobe-michiels,axi-lite-1.0";
        status = "okay";
    };
};
```

### Adding our module to the build

Before building the module, run the following command to access the menuconfig interface for the root filesystem:

```bash
petalinux-config -c rootfs
```
In the menuconfig interface, navigate to the `User Packages` submenu, ensure that the axi-lite module is enabled and save and exit the configuration menu. We will first build the kernel to ensure all dependencies are resolved and then build the AXI Lite module. We do this by executing the following commands:

```bash
petalinux-build -c kernel
petalinux-build -c axi-lite 
```
To update the target filesystem and bootable images with the compiled module, rebuild the root filesystem and the bootable images:

```bash
petalinux-build -c rootfs
```

To make sure we correctly compiled the module, installed it to the target filesystem host copy and updated the bootable images, we can run the following command again:

```bash
petalinux-build
```
We can now create the boot files and the wic-image and flash it to our SD card so we are able to boot the system. 

### Testing our custom kernel driver

After booting our system, we can test the functionality of our newly created driver. 
The driver will be directly loaded into the kernel during the boot process. We can verify this by running `lsmod`:

```bash
blendinator:~$ lsmod
Module                  Size  Used by
iptable_nat            16384  0
nf_nat                 36864  1 iptable_nat
iptable_filter         16384  0
wilc_sdio              98304  0
cfg80211              360448  1 wilc_sdio
zocl                  196608  0
axi_lite               16384  0
uio_pdrv_genirq        16384  0
nfsd                  114688  1
```

When we run a `grep`on `dmesg`, we can also verify that we succesfully probed:


```bash
blendinator:~$ dmesg | grep "axi-lite"
[    9.240845] axi-lite a0040000.axi_lite: Probing AXI-Lite
[    9.240908] axi-lite a0040000.axi_lite: axi-lite at 0xa0040000 mapped to 0x09b60000
```

Furthermore, we can also take a look at `iomem`. If we run `sudo cat /proc/iomem`, we can see the AXI Lite with an adress space from 0xa0040000 to 0xa004ffff, just like we expected:

```bash
blendinator:~$ sudo cat /proc/iomem
Password:
00000000-3ecfffff : System RAM
...
a0030000-a003ffff : a0030000.dma dma@a0030000
a0040000-a004ffff : a0040000.axi_lite axi_lite@a0040000
fd0b0000-fd0bffff : fd0b0000.perf-monitor perf-monitor@fd0b0000
...
ffaf0000-ffaf0fff : ffaf0000.dma-controller dma-controller@ffaf0000
```
If we unload the driver by running `rmmod`, the AXI Lite will be removed from `iomem`:

```bash
blendinator:~$ sudo rmmod /lib/modules/6.1.30-xilinx-v2023.2/extra/axi-lite.ko
Password:

blendinator:~$ sudo cat /proc/iomem
Password:
00000000-3ecfffff : System RAM
...
a0030000-a003ffff : a0030000.dma dma@a0030000
fd0b0000-fd0bffff : fd0b0000.perf-monitor perf-monitor@fd0b0000
...
ffaf0000-ffaf0fff : ffaf0000.dma-controller dma-controller@ffaf0000
```
The driver can be reloaded into the kernel by running `insmod`:

```bash
blendinator:~$ sudo insmod /lib/modules/6.1.30-xilinx-v2023.2/extra/axi-lite.ko
Password:
```


