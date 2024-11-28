import rtmidi

# Create an input MIDI stream
midi_in = rtmidi.MidiIn()

# List available input ports
available_ports = midi_in.get_ports()
print("Available MIDI input ports:")
for port in available_ports:
    print(f" - {port}")