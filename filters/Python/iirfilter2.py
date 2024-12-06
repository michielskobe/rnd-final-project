import numpy as np
from scipy import signal
import matplotlib.pyplot as plt

N = 8 # filter order
wn = 16000/(48000/2) # natural frequency between 0 and 1

# compute the filter coefficients
b,a = signal.iirfilter(N, wn, btype='highpass', ftype='butter')

# calculate frequency diagram
w, h = signal.freqz(b,a)

# plot frequency diagram
plt.plot(w/np.pi, 20 * np.log10(abs(h)))

# drawing a point on wn,-3dB
plt.plot(wn,-3, 'o')

# text on the point created
plt.text(wn,-3,f'  -3dB @{wn} pi', horizontalalignment='left')

#plot title
plt.title(f'High pass filter for wn = {wn} pi')
plt.xlabel("pi rad/sample")
plt.ylabel("dB")

# plot grid
plt.grid(which = "major", linewidth = 1)
plt.grid(which = "minor", linewidth = 0.2)
plt.minorticks_on()
plt.show()

sos = signal.iirfilter(N, wn, btype='highpass', output = 'sos', ftype='butter')
print(sos)

