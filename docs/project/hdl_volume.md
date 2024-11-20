# Controlling the volume of audio in hardware

Our mixer needs to support changing the volume of all audio channels. We have made a module which can change the volume of each audio stream based on the TID attached to the AXI stream. 

## Features

 * Can run at up to 270MHz (on 7000 series)
 * Each channel volume can be controlled by PS
 * Fully AXI stream compliant 
 * Area usage: 52 LUT, 59 FF, 1DSP
 * Use of the `fixed_pkg` VHDL standard for proper fixed point number handling

## Interaction with the PS

The PS can interact with the module via 2 registers: `channel_address` and `channel_volume`. To set the volume for a particular channel, the following simple steps have to be done.

 * Select the desired channel on the `channel_address` register
 * Set the desired volume on the `channel_volume` register as an 18 bit fixed point number

This connection to the module runs on a separate clock to the audio processing. This way, we can ensure that the incoming instructions from the PS don't need to go through structures which can't handle the high speeds at which the processing can run. 

## Design considerations

We put a lot of effort into pipelining the circuit to reach the high speeds which could be needed in the mixing module. It is also just plain fun to see how far we can improve the performance of these kinds of things. We also worked around the DSP slice which was given to us, for example we changed the bit width of the channel_volume parameter to 18 because this is the maximum `BCIN` a `DSP48E1` can accept without inferring a second DSP instance.