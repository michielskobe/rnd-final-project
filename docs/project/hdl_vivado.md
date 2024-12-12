# Vivado 

## Block design

to be continued when finished bd is available

## Statistics of the entire design

to be continued when finished stats are available

## Design reports

to be continued when finished reports are available

## Troubles

During the synthesis and implementation of our audio pipeline, we ran into a large issue: simulation would work, but the hardware would not produce any sound. We did not have a clue what we were getting ourselves into when starting to debug this issue. Some, but not all, of the troubleshooting/debug steps we took are listed below. 

 * We first looked at the warnings Vivado gave us
    * [ ] We had one inferred latch on an irrelevant path, fixing this did not do anything for our problems
 * Adding chipscope to see where things went south
    * [ ] We lost a lot of time configuring chipscope because of buggy behaviour in Vivado 
    * [ ] Chipscope revealed that dataflow was good, but all audio samples would be set to 0
 * Since everything but the audio effects were already hardware proven from DMA testing, we removed every effect and filter one by one to see where things went wrong
    * [ ] We ended up deleting everything but the ring modulators. At this point, we got a working pipeline again
 * We had also already tested the EQ filter on the 7000 series earlier, so we knew they should have been working, so we suspected that the pre-processing (such as the channel merger) were having an effect. 
    * [ ] We removed all preprocessing and connected the EQ filter directly to the input buffer FIFO
    * [ ] This still resulted in all samples being set to 0
 * Our next theory was that some bad data was messing with the filters somehow
    * [ ] We made a module called `startup_fixer.vhd` which aims to remove the potentially messy data at startup
    * [ ] This, quite sadly, did not work
 * We lowered the clock frequency, thinking this could maybe help if Vivado miscalculated the critical path
    * [ ] This did not do the trick either
 * We were not making any progress, so we decided to simulate the implemented netlist
    * [ ] Everything seemed to work when simulating the netlist
    * [ ] There was no point in going further down this path since this did not reflect the behaviour of the netlist on hardware
 * At this point, a frustrating amount of time had passed, so we decided to go back to the 7000 series tests
    * [ ] Re-testing the original 7000-series filter bitstream showed that the filters were working
    * [ ] Since this test, a tiny change had happened in how the PS interacted with the filter
        * [ ] Crucially, this change had no effect on the functionality of the filter
    * [ ] Implementing the filters with these changes caused them to fail in hardware (even though simulation looked fine)
        * [ ] We had found a new lead to follow :)
 * Because of the results of the previous step, we looked at the changes in git
    * [ ] We concluded that the only change was in the interaction with the PS
    * [ ] This change could not have had this impact in our opinion 
 * We suspected compared implemented designs of the filters
    * [ ] The original filter inferred registers as storage medium for PS data
    * [ ] The new design inferred LUTRAM as storage medium for PS data
 * We suspected the LUTRAM as the culprit for our troubles
    * [ ] We tested our hypothesis by forcing Vivado to NOT infer LUTRAM
    * [ ] This fixed the filters in hardware
 * Gradually, we realized that all effects and filters used LUTRAM, and this was the reason why they were failing
    * [ ] After a few hours looking at [UG901](https://www.xilinx.com/support/documents/sw_manuals/xilinx2022_2/ug901-vivado-synthesis.pdf), we redesigned all effects and filters to avoid LUTRAM
* Finally, the entire pipeline was working in hardware

### Why did LUTRAM fail us

Throughout the entire experience we were constantly flabbergasted as to why everything in Vivado was telling us that the design was OK. So we have no real idea why Vivado could not manage to make a functional bitstream. We only have theories as to why, but these are irrelevant because we just can't know what the synthesis and implementation engines are doing. Luckily we stumbled upon the fact that LUTRAM was the key issue, so that we could continue making a working design.