import numpy as np
from scipy import signal
from scipy.signal import sos2tf
import matplotlib.pyplot as plt

'''
b, a = signal.iirfilter(17, [2*np.pi*50, 2*np.pi*200], rs=60,
                        btype='band', analog=True, ftype='cheby2')
w, h = signal.freqs(b, a, 1000)
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.semilogx(w / (2*np.pi), 20 * np.log10(np.maximum(abs(h), 1e-5)))
ax.set_title('Chebyshev Type II bandpass frequency response')
ax.set_xlabel('Frequency [Hz]')
ax.set_ylabel('Amplitude [dB]')
ax.axis((10, 1000, -100, 10))
ax.grid(which='both', axis='both')
plt.show()
'''

N = 2 # filter order
wn = 23000/(48000/2) # natural frequency between 0 and 1

# compute the filter coefficients
b,a = signal.iirfilter(N, wn, btype='lowpass', ftype='butter')

# calculate frequency diagram
w, h = signal.freqz(b,a)

# plot frequency diagram
plt.plot(w/np.pi, 20 * np.log10(abs(h)))

# drawing a point on wn,-3dB
plt.plot(wn,-3, 'o')

# text on the point created
plt.text(wn,-3,f'  -3dB @{wn} pi', horizontalalignment='left')

#plot title
plt.title(f'Low pass filter for wn = {wn} pi')
plt.xlabel("pi rad/sample")
plt.ylabel("dB")

# plot grid
plt.grid(which = "major", linewidth = 1)
plt.grid(which = "minor", linewidth = 0.2)
plt.minorticks_on()
plt.show()

sos = signal.iirfilter(N, wn, btype='lowpass', output = 'sos', ftype='butter')
print(sos)

