/*  axi-lite.c - The simplest kernel module.

* Copyright (C) 2013-2022 Xilinx, Inc
* Copyright (c) 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*   Changes made by Kobe Michiels

*/
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>

#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Kobe Michiels");
MODULE_DESCRIPTION
    ("axi-lite - loadable module template generated by petalinux-create -t modules");

#define DRIVER_NAME "axi-lite"

struct axi_lite_local {
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
};

/* AXI-Lite Read/Write Functions */
static inline void axi_lite_write(struct axi_lite_local *lp, u32 val, u32 offset) {
    iowrite32(val, lp->base_addr + offset);
}

static inline u32 axi_lite_read(struct axi_lite_local *lp, u32 offset) {
    return ioread32(lp->base_addr + offset);
}

/* Probe Function */
static int axi_lite_probe(struct platform_device *pdev)
{
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct axi_lite_local *lp = NULL;
	
	dev_info(dev, "Probing AXI-Lite\n");
	
	/* Get iospace (memory resource) for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "axi-lite: No memory resource found\n");
		return -ENODEV;
	}
	/* Allocate memory for local data */
	lp = devm_kzalloc(dev, sizeof(struct axi_lite_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "axi-lite: Failed to allocate memory for local data\n");
		return -ENOMEM;
	}
	dev_set_drvdata(dev, lp);
	
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;

	/* Remap memory */
	lp->base_addr = devm_ioremap_resource(dev, r_mem);
	if (IS_ERR(lp->base_addr)) {
		dev_err(dev, "axi-lite: Failed to remap memory resource\n");
		return PTR_ERR(lp->base_addr);
	}

	dev_info(dev,"axi-lite at 0x%08x mapped to 0x%08x\n",
		(unsigned int __force)lp->mem_start,
		(unsigned int __force)lp->base_addr);
	return 0;
}

/* Remove Function */
static int axi_lite_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
    	dev_info(dev, "AXI-Lite device removed\n");
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id axi_lite_of_match[] = {
	{ .compatible = "blendinator,axi-lite-1.0", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, axi_lite_of_match);
#else
# define axi_lite_of_match
#endif

/* Platform Driver */
static struct platform_driver axi_lite_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= axi_lite_of_match,
	},
	.probe		= axi_lite_probe,
	.remove		= axi_lite_remove,
};

module_platform_driver(axi_lite_driver)