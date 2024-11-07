# Simulation of the PL

The blendinator contains a lot of complex elements which handle the processing of sound. These can be quite tricky to get right, especially if we are going to mix together multiple audio streams at once. To know we are on the right track, we ofcourse have to test in some way or another if the code works as expected. We could do this by generating a test patern in simulation, but that would lead to a very limited understanding of what is going on. Complex operations such as an equalizer or reverb can not be properly tested by applying a simple tone. Another way to do this is implement our HDL in hardware, but this costs a lot of time and is more difficult to debug. Because of these reasons, it was decided that we would write a framework to load audio files into simulation. 

## WAV sound

We decided to load WAV sound files into the simulation because they don't use any special encoding and just store raw 24 bit audio samples. We first made a library to read the header and samples called `wav_lib_pkg`. This is some VHDL which is capable of reading and validating a WAV file. 
!!! info

    At this moment, the lib can only read stereo 96kHz 24bit WAV files. 

### WAV2AXI

To actually implement the library in a usefull way, we needed an entity to generate an AXI stream. This gave rise to `wav2axi.vhd`. It is capable of the following things:

* Loading arbitrary WAV files supported by `wav_lib_pkg` 
* Support for our axi4-streaming audio implementation
* Generating the right TID for the stereo channels with a base offset
* Support for generating front-pressure to test downstream AXI compliance
