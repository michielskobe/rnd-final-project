# HDL mixer

To mix channels together, we of course need a mixing module. This is our attempt to do this. 

## Schematic: 

<img src="/img/mixer_schematic_V1.png"/>

## Features

Due to a lack of time, we did not implement the full mixer, but rather an application specific version because this made development and testing faster. 

 * Can run at about 250 MHz
 * Mix left dma and analog together
 * Mix right dma and analog together
 * Merge the mixed streams into one
 * Use of the `fixed_pkg` VHDL standard for proper fixed point number handling
 * Fully AXI stream compliant
 * Volume normalization when mixing dma and analog
 * Bypass when there is no DMA present
 * Area usage: 738 LUT, 1220 FF, 4 BRAM, 1 DSP 