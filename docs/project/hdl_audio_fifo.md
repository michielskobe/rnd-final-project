# Audio FIFO

Since FIFO's are a useful tool in a lot of situations, we decided to make one. We also wanted to be able to use them to change clock domains, so they would definitely have a use if we made them. 

## Features

 * 2 clock domains for CDC
 * Fully AXI stream compliant
 * Relatively small footprint
 * FWFT support
 * configurable FIFO depth

## Notes

We essentially made a VHDL wrapper for an XPM AXIS FIFO which fits nicely into our structures. We did this to make life a little easier since we don't have to implement a CDC FIFO from scratch.