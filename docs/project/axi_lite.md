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

## Testing our custom kernel driver

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


## AXI Lite Memory Mapped registers

Our audio pipeline has 94 registers to control the various filters and audio effects. All these registers are 32 bit. Some of the filters and audio effect modules need a `strobe` to ensure that the data will be correctly stored in the filters and audio effects. When the strobe is active, all the data of the different registers that belong to the filter or audio effect will be loaded in the filter or audio effect at the same time. So, it is important to first load all the registers with valid data before enabling the strobe.

Some modules have a `channel_address` register. This has to be loaded with the address of the source you want to control. Evey source has two addresses, one for the left channel and one for the right channel. In our current configuration, channel address 0 and 1 belong to the left and right channel of the analog source and channel address 2 and 3 belong to the left and right channel of the DMA source.  

### volume

The `channel_value` register controls the volume of all the the input signals before they enter the audio pipeline. The value has to be between 0 and 1 V/V.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format  |
| :-------------------- | :----------   | :-------------------------------------------------------------    | :----------   | :------------------  |
| channel_value         | 0xA0050000    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg0      | sfixed(0 downto -23) |


### band_volume

* The `channel_value` register controls the gain of the band shelf. The value has to be between 0.05 and 2 V/V.
* The `channel_address` register has to be loaded with the address for which the `channel_value` belongs.


| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| channel_value         | 0xA0050004    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg1      | sfixed(1 downto -23)          |
| channel_address       | 0xA0050008    | Integer                                                           | slv_reg2      | std_logic_vector(1 downto 0)  |
| strobe                | 0xA005000C    | Boolean                                                           | slv_reg3      | std_logic                     |


### biquad_tdm

* The `b0`, `b1`, `b2`, `a1` and `a2` registers are for the coëfficients of the biquad filter. The value has to be between 0 and 8.
* The `channel_address` register has to be loaded with the address for which the `b0`, `b1`, `b2`, `a1` and `a2` belongs.

Because we have an 8th order band shelf filter, 4th order low shelf filter, 4th order high shelf filter, 2nd order low pass filter and 4th order high pass filter, we need 4, 2, 2, 1 and 2 biquad filters respectively to make these filters.


#### Band Shelf Low 1

These are the registers for the first (of the 2) Low Shelf filters needed to make the Band Shelf. (If you have no idea how to make the band shelf filter or the filters/audio effects in general, please check the `Filters/MATLAB` and `Filters/HDL` documentation)

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA0050010    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg4      | sfixed(3 downto -23)          |
| b1                    | 0xA0050014    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg5      | sfixed(3 downto -23)          |
| b2                    | 0xA0050018    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg6      | sfixed(3 downto -23)          |
| a1                    | 0xA005001C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg7      | sfixed(3 downto -23)          |
| a2                    | 0xA0050020    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg8      | sfixed(3 downto -23)          |
| channel_address       | 0xA0050024    | Integer                                                           | slv_reg9      | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050028    | Boolean                                                           | slv_reg10     | std_logic                     |

#### Band Shelf Low 2

These are the registers for the second (of the 2) Low Shelf filters needed to make the Band Shelf.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA005002C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg11     | sfixed(3 downto -23)          |
| b1                    | 0xA0050030    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg12     | sfixed(3 downto -23)          |
| b2                    | 0xA0050034    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg13     | sfixed(3 downto -23)          |
| a1                    | 0xA0050038    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg14     | sfixed(3 downto -23)          |
| a2                    | 0xA005003C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg15     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050040    | Integer                                                           | slv_reg16     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050044    | Boolean                                                           | slv_reg17     | std_logic                     |

#### Band Shelf High 1

These are the registers for the first (of the 2) High Shelf filters needed to make the Band Shelf.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA0050048    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg18     | sfixed(3 downto -23)          |
| b1                    | 0xA005004C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg19     | sfixed(3 downto -23)          |
| b2                    | 0xA0050050    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg20     | sfixed(3 downto -23)          |
| a1                    | 0xA0050054    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg21     | sfixed(3 downto -23)          |
| a2                    | 0xA0050058    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg22     | sfixed(3 downto -23)          |
| channel_address       | 0xA005005C    | Integer                                                           | slv_reg23     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050060    | Boolean                                                           | slv_reg24     | std_logic                     |

#### Band Shelf High 2

These are the registers for the second (of the 2) High Shelf filters needed to make the Band Shelf.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA0050064    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg25     | sfixed(3 downto -23)          |
| b1                    | 0xA0050068    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg26     | sfixed(3 downto -23)          |
| b2                    | 0xA005006C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg27     | sfixed(3 downto -23)          |
| a1                    | 0xA0050070    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg28     | sfixed(3 downto -23)          |
| a2                    | 0xA0050074    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg29     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050078    | Integer                                                           | slv_reg30     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA005007C    | Boolean                                                           | slv_reg31     | std_logic                     |

#### Low Shelf 1

These are the registers for the first (of the 2) Low Shelf filters. 

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA0050080    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg32     | sfixed(3 downto -23)          |
| b1                    | 0xA0050084    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg33     | sfixed(3 downto -23)          |
| b2                    | 0xA0050088    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg34     | sfixed(3 downto -23)          |
| a1                    | 0xA005008C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg35     | sfixed(3 downto -23)          |
| a2                    | 0xA0050090    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg36     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050094    | Integer                                                           | slv_reg37     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050098    | Boolean                                                           | slv_reg38     | std_logic                     |

#### Low Shelf 2

These are the registers for the second (of the 2) Low Shelf filters.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA005009C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg39     | sfixed(3 downto -23)          |
| b1                    | 0xA00500A0    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg40     | sfixed(3 downto -23)          |
| b2                    | 0xA00500A4    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg41     | sfixed(3 downto -23)          |
| a1                    | 0xA00500A8    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg42     | sfixed(3 downto -23)          |
| a2                    | 0xA00500AC    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg43     | sfixed(3 downto -23)          |
| channel_address       | 0xA00500B0    | Integer                                                           | slv_reg44     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA00500B4    | Boolean                                                           | slv_reg45     | std_logic                     |

#### High Shelf 1

These are the registers for the first (of the 2) High Shelf filters. 

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA00500B8    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg46     | sfixed(3 downto -23)          |
| b1                    | 0xA00500BC    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg47     | sfixed(3 downto -23)          |
| b2                    | 0xA00500C0    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg48     | sfixed(3 downto -23)          |
| a1                    | 0xA00500C4    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg49     | sfixed(3 downto -23)          |
| a2                    | 0xA00500C8    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg50     | sfixed(3 downto -23)          |
| channel_address       | 0xA00500CC    | Integer                                                           | slv_reg51     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA00500D0    | Boolean                                                           | slv_reg52     | std_logic                     |

#### High Shelf 2

These are the registers for the second (of the 2) High Shelf filters.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA00500D4    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg53     | sfixed(3 downto -23)          |
| b1                    | 0xA00500D8    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg54     | sfixed(3 downto -23)          |
| b2                    | 0xA00500DC    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg55     | sfixed(3 downto -23)          |
| a1                    | 0xA00500E0    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg56     | sfixed(3 downto -23)          |
| a2                    | 0xA00500E4    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg57     | sfixed(3 downto -23)          |
| channel_address       | 0xA00500E8    | Integer                                                           | slv_reg58     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA00500EC    | Boolean                                                           | slv_reg59     | std_logic                     |

#### Low Pass

These are the registers for the Low Pass filter. 

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA00500F0    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg60     | sfixed(3 downto -23)          |
| b1                    | 0xA00500F4    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg61     | sfixed(3 downto -23)          |
| b2                    | 0xA00500F8    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg62     | sfixed(3 downto -23)          |
| a1                    | 0xA00500FC    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg63     | sfixed(3 downto -23)          |
| a2                    | 0xA0050100    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg64     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050104    | Integer                                                           | slv_reg65     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050108    | Boolean                                                           | slv_reg66     | std_logic                     |

#### High Pass 1

These are the registers for the first (of the 2) High Pass filters. 

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA005010C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg67     | sfixed(3 downto -23)          |
| b1                    | 0xA0050110    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg68     | sfixed(3 downto -23)          |
| b2                    | 0xA0050114    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg69     | sfixed(3 downto -23)          |
| a1                    | 0xA0050118    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg70     | sfixed(3 downto -23)          |
| a2                    | 0xA005011C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg71     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050120    | Integer                                                           | slv_reg72     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050124    | Boolean                                                           | slv_reg73     | std_logic                     |

#### High Pass 2

These are the registers for the second (of the 2) High Pass filters.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| b0                    | 0xA0050128    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg74     | sfixed(3 downto -23)          |
| b1                    | 0xA005012C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg75     | sfixed(3 downto -23)          |
| b2                    | 0xA0050130    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg76     | sfixed(3 downto -23)          |
| a1                    | 0xA0050134    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg77     | sfixed(3 downto -23)          |
| a2                    | 0xA0050138    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg78     | sfixed(3 downto -23)          |
| channel_address       | 0xA005013C    | Integer                                                           | slv_reg79     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050140    | Boolean                                                           | slv_reg80     | std_logic                     |


### echo_tdm

* The `channel_value` register controls the amount of echo. The value has to be between 0 and 0.8.
* The `channel_address` register has to be loaded with the address for which the `channel_value` belongs.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| channel_value         | 0xA0050144    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg81     | sfixed(0 downto -23)          |
| channel_address       | 0xA0050148    | Integer                                                           | slv_reg82     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA005014C    | Boolean                                                           | slv_reg83     | std_logic                     |


### saturation_tdm

* The `channel_value` register controls the amount of saturation. The value has to be between 1 and 8 V/V.
* The `channel_address` register has to be loaded with the address for which the `channel_value` belongs.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| channel_value         | 0xA0050150    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg84     | sfixed(3 downto -23)          |
| channel_address       | 0xA0050154    | Integer                                                           | slv_reg85     | std_logic_vector(1 downto 0)  |
| strobe                | 0xA0050158    | Boolean                                                           | slv_reg86     | std_logic                     |


### ring_modulator

* The `on_off` register turns the ring_modulator on or off. The value has to be 0 or 1.
* The `phase_inc` register controls the speed of the effect.

In our audio pipeline, there are two ring_modulator modules, one for the analog source and one for the DMA source.

#### Analog Source

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| on_off                | 0xA005015C    | Boolean                                                           | slv_reg87     | std_logic                     |
| phase_inc             | 0xA0050160    | Integer                                                           | slv_reg88     | integer                       |

#### DMA Source

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| on_off                | 0xA0050164    | Boolean                                                           | slv_reg89     | std_logic                     |
| phase_inc             | 0xA0050168    | Integer                                                           | slv_reg90     | integer                       |


### Master Volume

* The `master_volume` register controls volume of the ouput. The value has to be between 0 and 4 V/V.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| master_volume         | 0xA005016C    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg91     | std_logic_vector(17 downto 0) |


### Channel Volume

* The `channel_volume_select` register has to be loaded with the address for which the `channel_volume_value` belongs.
* The `channel_volume_value` register controls volume of a channel. The value has to be between 0 and 4 V/V.

| Name                  | PS Addr       | PS Numerical Format                                               | PL Addr       | PL Numerical Format           |
| :-------------------- | :------------ | :---------------------------------------------------------------- | :------------ | :---------------------------- |
| channel_volume_select | 0xA0050170    | Integer                                                           | slv_reg92     | std_logic_vector(1 downto 0)  |
| channel_volume_value  | 0xA0050174    | Signed Fixed-Point (8 integer digits and 23 fractional digits)    | slv_reg93     | std_logic_vector(17 downto 0) |
| channel_volume_strobe | 0xA0050178    | Boolean                                                           | slv_reg94     | std_logic                     |
