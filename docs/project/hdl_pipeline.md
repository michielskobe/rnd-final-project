# General overview of the audio pipeline

What follows is a general overview of the workings of our audio pipeline in FPGA. 

## Schematic: 

<img src="/img/audio_pipeline.png"/>


## Notes:

### Traffic shaper:

The traffic shaper is a simple module which ensures the DMA engine does not flood the pipeline with data. Due to the buffered nature of DMA, it is capable of delivering thousands of sample at a time, while the analog datapath can only provide one sample at a time. 

### Startup mitigator

It is possible to receive malformed samples from the ADC when it is starting up (for example while it is still inferring clock speeds). We don't want these samples to pass through the filter arrays. The reason why we want this, is because we are dealing with IIR filters, which make use of feedback. This feedback can get messed up by bad data. Although it probably would not be an issue for us, we still decided to air on the safe side and filter out the first thousand samples to ensure stable operation. 