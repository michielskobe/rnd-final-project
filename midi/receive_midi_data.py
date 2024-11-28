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
