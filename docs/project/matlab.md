# MATLAB

In our digital mixer, we want to utilize various types of filters to control parameters such as the volume of specific frequency bands or to cut off part of the frequency spectrum. To create these filters, we used MATLAB, Simulink and the HDL Coder from MATLAB to generate VHDL code as a foundation for further development.

## Low & High Pass Filter

In Simulink, we designed an 8th order low pass filter by using a Cascade of four Direct Form 2 Digital Biquad Filters.

* Top view of the Low Pass Filter
<img src="/img/low_pass_filter.png"/>

* Direct Form 2 Digital Biquad Filter
<img src="/img/low_pass_filter.png"/>

The Simulink file for the Low & High Pass Filter can be found in the Git Repo.

We are using a Python library called [SciPy](https://docs.scipy.org/doc/scipy/index.html) to generate the coëfficients. To be able to work with SciPy, we need to install the following package:
```bash
pip3 install scipy
```

This is the script to get the coëfficients for the Low Pass filter:
```python
from scipy import signal
from scipy.signal import sos2tf

N = 8 # filter order
wn = 3000/(48000/2) # natural frequency between 0 and 1
sos = signal.iirfilter(N, wn, btype='lowpass', output = 'sos', ftype='butter')

print(sos)
```
You can use the same code for generating the coëfficients for the High Pass filter by changing **btype** to **highpass**.

To have an indication how low it takes to get these coëfficients, we made this simple scipts that generates coëfficients for a thousand lowpass filters with different cut-off frequencies.

```python
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
```

These were the results after running previous script:
- Average execution time: 1.03 milliseconds
- Minimum execution time: 0.78 milliseconds
- Maximum execution time: 1.89 milliseconds
