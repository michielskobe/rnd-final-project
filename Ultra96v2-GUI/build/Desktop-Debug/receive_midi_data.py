import rtmidi
import time

# port_name = 'SAMSUNG_Android:SAMSUNG_Android MIDI 1 24:0'  # Replace with your actual MIDI device name
port_name = 'Reloop BeatMix:Reloop BeatMix MIDI 1 16:0'

def main():
    try:
        # Initialize the MIDI input
        midi_in = rtmidi.MidiIn()

        # List available ports and find the port index for the given name
        available_ports = midi_in.get_ports()

        if port_name in available_ports:
            port_index = available_ports.index(port_name)
            midi_in.open_port(port_index)
            # Callback function for incoming messages
            def midi_callback(message, data):
                print(f"{message[0]}", flush=True)

            # Set the callback function to process incoming messages
            midi_in.set_callback(midi_callback)

            # Keep the program running to listen for MIDI messages
            while True:
                time.sleep(0.01)
        else:
            print(f"Port '{port_name}' not found. Available ports: {available_ports}")
    except KeyboardInterrupt:
        print("Stopped listening.")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
