# Convert MIDI signals to AXI Memory-Mapped Interface

## Receiving the MIDI signals in Python

To receive the MIDI signals, we use [Mido](https://mido.readthedocs.io/en/stable/index.html). This is a Python library for working with MIDI 1.0 ports, messages and files. 

To be able to work with Mido, we need to install the following packages:
```bash
python3 -m pip install mido
python3 -m pip install python-rtmidi
```

We wrote the following Python code to receive the MIDI messages:

```python
import mido

input_port_name = 'Your MIDI Device Name'
filename = "Your Message Destination File Name"

def write_midi_input_to_file(message):
    '''Function to write the received MIDI message to a given file'''
    file = open(filename, "a")
    file.write(message + "\n")
    file.flush()
    file.close()

def listen_to_midi_input(port_name):
    '''Function to open a MIDI input port and listen for messages'''
    try:
        with mido.open_input(port_name) as inport:
            print(f"Listening to MIDI input on: {port_name}")
            for msg in inport:
                print(f"MIDI Message: {msg}")
                msg_bin = ""
                for byte in msg.bytes():  # Convert received MIDI messages to bytes and print
                    msg_bin += f"{byte:#010b} "  # Display each byte in binary format
                print(f"Binary MIDI Message: {msg_bin}")
                write_midi_input_to_file(msg_bin)
    except KeyboardInterrupt:
        print("Stopped listening.")

# Start listening to the specified MIDI input port
listen_to_midi_input(input_port_name)
```

This Python code listens to the desired port. It will convert all the MIDI messages to their binary equivalent and write them to a desired file. To list all the available MIDI input ports, you can run the following Python code:

```python
import mido

print("Available MIDI input ports:")
for port_name in mido.get_input_names():
    print(f" - {port_name}")
```

