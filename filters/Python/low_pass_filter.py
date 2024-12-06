from scipy import signal
import time
import numpy as np

N = 8  # filter order

execution_times = []

for i in range(1000):
    start_time = time.time()
    
    
    wn = 3*(i+1) / (48000 / 2)  # natural frequency between 0 and 1
    sos = signal.iirfilter(N, wn, btype='lowpass', output='sos', ftype='butter')
    
    end_time = time.time()
    execution_times.append(end_time - start_time)

# Calculate statistics
average_time = np.mean(execution_times)
min_time = np.min(execution_times)
max_time = np.max(execution_times)

print(average_time*1000)
print(min_time*1000)
print(max_time*1000)
