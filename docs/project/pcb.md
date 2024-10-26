# Designing a PCB to extend the Ultra96-V2 boards to our needs

This section outlines the design process and requirements for the PCB's needed to make the Blendinator. 

## Why are we designing a PCB?

We want to be able to input and output analog audio. Unfortunately, there are no facilities present on the Ultra96-V2 to enable this functionality. Normally, we would connect an external module which could do this for us, but due to the lack of a PMOD and the low speed expansion connector having a pitch of 2.00mm, we decided to design an IO expansion PCB. 

The idea is to connect the Ultra board to one or more PYNQ-Z2 boards in order to utilize their audio circuitry. We will do this using ribbon cables between the devices in order to ensure a good and stable connection. While we're at it, we would like to make a design which is a bit more generic than what we need. This way, people who use the Ultra board in the future can utilize our designs without being locked into the same use case as us. 

## General overview

<img src="/img/rnd_pcb_overview.png"/>

As stated before, we are going to connect the Ultra to multiple PYNQ boards for analog audio capabilities. To do this we will use a 22 pin ribbon cable (IDC). 

## What are the requirements?

For the Ultra expansion board we want the following requirements met:

 * Ensure input protection for the delicate FPGA pins
 * Provide a solid, and flexible way to connect multiple PYNQ-Z2 boards
 * Expand all low speed header pins to a set usable 2.54mm pitch pinheaders
 * Make sure the board is not specifically designed for this use case
 * Ensure interoperability between the PYNQ-Z2 and Ultra

For the PYNQ expansion board we want the following requirements met:

 * Make use of the Arduino header so that the PMOD and Raspberry headers are still usable
 * Ensure interoperability between the PYNQ-Z2 and Ultra
 * Add scope point to be able to measure what's going on

We also want to be able to communicate at high speeds. For our particular case, we need 25MHz speeds, but higher speeds would be nice for the sake of making a generally usable board. 

## Revision A

### Ultra expansion board

<img src="/img/ultra_revA.png"/>

Some notes:
 * Every unprotected FPGA input pin has an RCR T-filter (10 Ohm and 1nF)
 * Every new output has a 2.54mm pitch for easy connections
 * The IDC connectors have evenly divided I/O from the FPGA
    * 5 general I/O
    * 2 MIO
    * 2 Ultra inputs (clk capable)
    * I2C interface
 * Extra I/O has been routed out to separate pinheaders
    * SPI
    * Extra MIO
    * Power/Reset
 * Power filtering on 5V using ferite beads

### PYNQ expansion board

<img src="/img/pynq_revA.png"/>

some notes:
 * Very simple
 * Added scope points between IDC and headers

## Revision B

### What went wrong with revA

When designing revision A, no thought was given to the voltage levels at which the FPGA I/O could run. Due to the layout of the respective boards, the Ultra and PYNQ have to use 1V8 and 3V3 I/O. 

### Solution

We decided to implement a fix on the PYNQ side of things because it is the simplest PCB to change. We implemented the following changes:

 * Adding a PMOD connector for standalone operation without PYNQ board
 * Adding bidirectional level shifters to fix the voltage level incompatibility


<img src="/img/pynq_revB_front.png"/>
<img src="/img/pynq_revB_back.png"/>