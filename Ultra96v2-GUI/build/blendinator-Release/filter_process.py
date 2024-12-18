import sys
from scipy import signal

def calculate_filter(type, order, frequency):
    wn = frequency/(48000/2) # natural frequency between 0 and 1
    sos = signal.iirfilter(order, wn, btype=type, output = 'sos', ftype='butter')
    print(sos, flush=True)

def main():
    while True:
        user_input = sys.stdin.readline().strip()
        if user_input == "exit":
            break
    
        try:
            type, order, frequency = user_input.split(' ')
            frequency = int(frequency)
            order = int(order)
            if type not in ['lowpass', 'highpass']:
                raise ValueError("Invalid filter type")
            calculate_filter(type, order, frequency)
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    main()

