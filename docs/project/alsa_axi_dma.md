# ALSA AXI DMA module

## Vivado

On the PL side of things, we first had to add the DMA IP provided by Xilinx. This module takes care of communication to the DRAM and provides us with an AXI data stream. The size of a DMA word on this stream is 128 bit, in which 4 24 bit samples are stored. We made a small arbiter which is responsible for taking in the DMA word, and splitting it into an AXI audio stream. 

### Limitations

Due to some time limitations, we do not take advantage of the full throughput of the DMA stream. This is due to some time limitations and suboptimal planning on the PL side, since we did not know what it would take to process the DMA stream. 

### Schematic

<img src="/img/dma_splitter.png"/>

