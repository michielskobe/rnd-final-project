# Convert MIDI signals to the AXI Memory-Mapped Interface

## Receiving the MIDI signals in Python

To receive the MIDI signals, we use [python-rtmidi](https://pypi.org/project/python-rtmidi/). This is a Python library for working with realtime MIDI input and output. 

To be able to work with python-rtmidi, we need to install the following package:
```bash
python3 -m pip install python-rtmidi
```

The following Python code was written to receive the MIDI messages:

```python
import rtmidi
import time

input_port_name = 'Your MIDI Device Name'  # Replace with your actual MIDI device name
filename = "Your Message Destination File Name"  # Replace with the name of the file where messages will be logged

def write_midi_input_to_file(message):
    '''Function to write the received MIDI message to a given file'''
    try:
        with open(filename, "a") as file:
            file.write(message + "\n")
    except Exception as e:
        print(f"Error writing to file: {e}")

def listen_to_midi_input(port_name):
    '''Function to open a MIDI input port and listen for messages'''
    try:
        # Initialize the MIDI input
        midi_in = rtmidi.MidiIn()

        # List available ports and find the port index for the given name
        available_ports = midi_in.get_ports()
        print(f"Available MIDI ports: {available_ports}")

        if port_name in available_ports:
            port_index = available_ports.index(port_name)
            midi_in.open_port(port_index)
            print(f"Listening to MIDI input on: {port_name}")

            # Callback function for incoming messages
            def midi_callback(message, data):
                msg = message[0]  # The MIDI message
                msg_bin = ' '.join(f"{byte:#010b}" for byte in msg)  # Convert to binary string
                print(f"MIDI Message: {msg}")
                print(f"Binary MIDI Message: {msg_bin}")
                write_midi_input_to_file(f"{msg_bin}")

            # Set the callback function to process incoming messages
            midi_in.set_callback(midi_callback)

            # Keep the program running to listen for MIDI messages
            while True:
                time.sleep(1)

        else:
            print(f"Port '{port_name}' not found. Available ports: {available_ports}")

    except KeyboardInterrupt:
        print("Stopped listening.")
    except Exception as e:
        print(f"Error opening MIDI port or processing message: {e}")

# Start listening to the specified MIDI input port
listen_to_midi_input(input_port_name)
```

This Python script monitors the specified port, converting all incoming MIDI messages into their binary equivalents and writing them to a designated file. MIDI signals consist of 3 bytes of data. To view all available MIDI input ports, you can execute the following Python code:

```python
import rtmidi

# Create an input MIDI stream
midi_in = rtmidi.MidiIn()

# List available input ports
available_ports = midi_in.get_ports()
print("Available MIDI input ports:")
for port in available_ports:
    print(f" - {port}")
```

## Writing the MIDI signals to the AXI Lite in C

The following C code reads the MIDI data received via the python-rtmidi library from the selected destination file. It converts the strings into 32-bit words and stores them in the mapped AXI Lite memory. For each MIDI signal, the memory offset is incremented by 4 bytes. When executing the code, the filename of the destination file must be provided as a parameter.

``` c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <time.h>

#define AXI_BASE_ADDR 0xA0040000    // AXI base address
#define AXI_START_OFFSET 0x00       // Starting offset 
#define AXI_OFFSET_SIZE 0x04       //  Offset size 
#define MMAP_SIZE 0x10000           // Size of memory to map (64KB in this case)

void* axi_base_addr = NULL; // Will be initialized via mmap

// Function to parse a binary string (e.g., "0b10010000") into a uint8_t
uint8_t parse_binary(const char *binary_str) {
    return (uint8_t)strtol(binary_str + 2, NULL, 2);  // Skip "0b" prefix
}

// Function to process a single line of the input
int process_line(const char *line, uint32_t *data_out) {
    char bin1[16], bin2[16], bin3[16];

    // Parse the three binary values from the line
    if (sscanf(line, "%15s %15s %15s", bin1, bin2, bin3) != 3) {
        fprintf(stderr, "Error parsing line: %s\n", line);
        return -1;
    }

    // Convert binary strings to integers
    uint8_t byte1 = parse_binary(bin1);
    uint8_t byte2 = parse_binary(bin2);
    uint8_t byte3 = parse_binary(bin3);

    // Combine into a single 32-bit word
    *data_out = (byte1 << 16) | (byte2 << 8) | byte3;

    return 0;
}

// Function to write to AXI-Lite memory
void axi_lite_write(volatile uint32_t *base_addr, uint32_t val, uint32_t offset) {
    if (offset % AXI_OFFSET_SIZE != 0) {
        fprintf(stderr, "Error: Offset 0x%08x is not 4-byte aligned\n", offset);
        return;
    }

    // Perform write to the mapped memory
    base_addr[offset / AXI_OFFSET_SIZE] = val;

    // Read back to verify
    uint32_t read_back = base_addr[offset / AXI_OFFSET_SIZE];
    printf("AXI Write: Offset=0x%08x Value=0x%08x (Read Back=0x%08x)\n", offset, val, read_back);
}

// Function to process the file
void process_file(const char *filename) {
    FILE *file = fopen(filename, "r+");
    FILE *temp_file = tmpfile();
    char line[128];
    uint32_t data;
    uint32_t offset = AXI_START_OFFSET;

    if (!file || !temp_file) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    while (fgets(line, sizeof(line), file)) {
        // Remove newline characters
        line[strcspn(line, "\r\n")] = 0;

        if (process_line(line, &data) == 0) {
            // Write the 32-bit packed data to AXI memory
            axi_lite_write((volatile uint32_t *)axi_base_addr, data, offset);
            offset += AXI_OFFSET_SIZE;  // Increment offset
        } else {
            // Copy invalid or unprocessed lines to temp file
            fprintf(temp_file, "%s\n", line);
        }
    }

    // Replace original file with temporary file contents
    rewind(temp_file);
    freopen(filename, "w", file);
    while (fgets(line, sizeof(line), temp_file)) {
        fprintf(file, "%s", line);
    }

    fclose(file);
    fclose(temp_file);
}

// Main function
int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return EXIT_FAILURE;
    }

    const char *filename = argv[1];

    // Open /dev/mem to map the physical address into user space
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd == -1) {
        perror("Error opening /dev/mem");
        return EXIT_FAILURE;
    }

    // Map AXI memory to user space (using mmap)
    axi_base_addr = mmap(NULL, MMAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, AXI_BASE_ADDR);
    if (axi_base_addr == MAP_FAILED) {
        perror("Error mapping AXI memory");
        close(mem_fd);
        return EXIT_FAILURE;
    }

    // Process the file and write to AXI memory
    process_file(filename);

    // Clean up and close /dev/mem
    if (munmap(axi_base_addr, MMAP_SIZE) == -1) {
        perror("Error unmapping memory");
    }
    close(mem_fd);

    return EXIT_SUCCESS;
}
```
## Testing the code

To quickly test the functionality of the Python and C code, I connected my Samsung mobile phone to the Ultra96v2 and in **Settings** → **Developper options** → **Default USB configuration**, I set the default USB configuration to MIDI so I can use my device to send MIDI signals. I used a simple *MIDI Keyboard*-application to generate the MIDI signals.

```bash
blendinator:~$  python receive_midi_data.py 
Available MIDI ports: ['SAMSUNG_Android:SAMSUNG_Android MIDI 1 20:0']
Listening to MIDI input on: SAMSUNG_Android:SAMSUNG_Android MIDI 1 20:0
MIDI Message: [144, 48, 64]
Binary MIDI Message: 0b10010000 0b00110000 0b01000000
MIDI Message: [128, 48, 64]
Binary MIDI Message: 0b10000000 0b00110000 0b01000000
MIDI Message: [144, 54, 64]
Binary MIDI Message: 0b10010000 0b00110110 0b01000000
MIDI Message: [128, 54, 64]
Binary MIDI Message: 0b10000000 0b00110110 0b01000000
```
When inspecting the contents of `MIDI-messages.txt`, we can confirm that the data appears as expected.

```bash
blendinator:~$ cat MIDI-messages.txt 
0b10010000 0b00110000 0b01000000
0b10000000 0b00110000 0b01000000
0b10010000 0b00110110 0b01000000
0b10000000 0b00110110 0b01000000
```
We can now read the data from the file and store it in our AXI Lite memory space.
```bash
blendinator:~$ sudo ./axi_write_lite MIDI-messages.txt 
Password: 
AXI Write: Offset=0x00000000 Value=0x00903040 (Read Back=0x00903040)
AXI Write: Offset=0x00000004 Value=0x00803040 (Read Back=0x00803040)
AXI Write: Offset=0x00000008 Value=0x00903640 (Read Back=0x00903640)
AXI Write: Offset=0x0000000c Value=0x00803640 (Read Back=0x00803640)
```
We can use devmem to inspect the contents of the AXI Lite memory addresses and verify if they match the expected MIDI signals. This is indeed the case. 
```bash
blendinator:~$ sudo devmem 0xa0040000 32
0x00903040
blendinator:~$ sudo devmem 0xa0040004 32
0x00803040
blendinator:~$ sudo devmem 0xa0040008 32
0x00903640
blendinator:~$ sudo devmem 0xa004000c 32
0x00803640
```
