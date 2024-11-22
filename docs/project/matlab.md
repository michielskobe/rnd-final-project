# MATLAB

In our digital mixer, we want to utilize various types of filters to control parameters such as the volume of specific frequency bands or to cut off part of the frequency spectrum. To create these filters, we used MATLAB, Simulink and the HDL Coder from MATLAB to generate VHDL code as a foundation for further development.

## Low & High Pass Filter

As mentioned in the introduction to this chapter, we want to able to cut off part of the frequency spectrum from the input sources of our digital mixer. To achieve this, we will employ both low-pass and high-pass filters.

In Simulink, we designed an 8th order low-pass & high-pass filter by using a Cascade of four Direct Form 2 Digital Biquad Filters.

* Top view of the low-pass Filter
<img src="/img/low_pass_filter.png"/>

* Direct Form 2 Digital Biquad Filter
<img src="/img/direct_form_2_digital_biquad_filter.png"/>

The Simulink files for the low-pass & high-pass Filters can be found in the Git Repo.

We are using a Python library called [SciPy](https://docs.scipy.org/doc/scipy/index.html) to generate the coëfficients for these filters. To be able to work with SciPy, we need to install the following package:
```bash
pip3 install scipy
```

This is the script to get the coëfficients for the low-pass filter:
```python
from scipy import signal
from scipy.signal import sos2tf

N = 8 # filter order
wn = 3000/(48000/2) # natural frequency between 0 and 1
sos = signal.iirfilter(N, wn, btype='lowpass', output = 'sos', ftype='butter')

print(sos)
```
You can use the same code for generating the coëfficients for the high-pass filter by changing **btype** to **highpass**.

To estimate the time required to generate these coefficients, we created a simple script that generates coefficients for a thousand low-pass filters with varying cut-off frequencies.

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

Here are the results obtained from running the script:
 * Average execution time: 0.88 milliseconds
 * Minimum execution time: 0.74 milliseconds
 * Maximum execution time: 1.78 milliseconds


## Shelving Filters

Our goal is to control the gain of the low, mid, and high-frequency ranges of the input sources. To achieve this, we aim to design a filter capable of amplifying or attenuating the gain in the low (<200 Hz), mid (200 Hz to <2 kHz), and high (≥2 kHz) frequency bands. The filter type we've selected for this purpose is the shelving filter. Shelving filters are particularly well-suited for this task, as they allow for precise gain adjustments within a specific frequency band while leaving the rest of the frequency spectrum unaffected.

We have reviewed several research papers on designing these filters digitally and have selected [this](https://www.eurasip.org/Proceedings/Eusipco/Eusipco2006/papers/1568980789.pdf) particular paper as our primary source of information.

### MATLAB Simulations
To be continued ...