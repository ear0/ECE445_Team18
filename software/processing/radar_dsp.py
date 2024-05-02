import scipy.signal as signal
from scipy import interpolate
import numpy as np
import matplotlib.pyplot as plt
#import ssqueezepy
import pandas as pd
from scipy.fftpack import fft
import tftb
import pandas as pd
import skrf

csv = pd.read_csv(r"C:\Users\ellio\MPLABXProjects\pic18f56q71-cnano-adccc-differential-reading-mplab-mcc-1.0.2\Q71_diff_reading.X\adc_log.csv")
arr = [csv['data'][i] for i in range(0, len(csv['data']))]
N = len(csv['data'])
plt.plot(np.abs(np.fft.rfft(arr)))
# plt.plot(arr)
plt.show()
# plt.autoscale(enable=True, axis='both', tight=None)

# fs = 1E6
# f1 = 1E3
# f2 = 2E3
# # f, _ = tftb.generators.fmlin(256, f1/fs, f2/fs, 0.5E-3)
# f, _ = tftb.generators.fmlin(256)
# time_samples = np.arange(3,257)
# ifr = tftb.processing.inst_freq(f)[0]
# tftb.processing.plotifl(time_samples,ifr)
# fs = 1E6
# Ts = 1/fs
# f_tri = 1E3
# sample_time = 5E-7
# vsupp = 3.3
# t = np.linspace(0,sample_time, int(f_tri))
# halfway = int((len(t)-1)/2)

# freqs = [2.1E9, 2.23E9, 2.3E9, 2.35E9, 2.4E9, 2.44E9, 2.47E9, 2.5E9, 2.53E9, 2.55E9, 2.57E9]
# voltages = range(len(freqs))
# f = interpolate.interp1d(voltages, freqs)

# vnew = np.arange(0, 10, 0.05)
# freqnew = f(vnew)
# #plt.plot(voltages, freqs, 'o', vnew, freqnew, '-')
# v_t = (vsupp*signal.sawtooth(2*np.pi*f_tri*t, width = 0.5) + vsupp)/2

# freqs = [2.1E9, 2.23E9, 2.3E9, 2.35E9, 2.4E9, 2.44E9, 2.47E9, 2.5E9, 2.53E9, 2.55E9, 2.57E9]
# tx = signal.chirp(t, freqs[0], t[halfway], freqs[-1], method = 'linear')
# plt.plot(t, tx)
# plt.show()

# fs = 1E6
# T = 1E-1
# N= fs*T
# t = np.arange(0, int(fs*T))/fs
# w = signal.chirp(t, f0 = 1E3, t1 = t[int((len(t)-1)/2)],f1 = 2E3, method='linear')
# w2 = signal.chirp(t, f0 = 1.1E3, t1 = t[int((len(t)-1)/2)],f1 = 2.1E3, method='linear')
# wmix = w*w2
# plt.plot(t,wmix)
# plt.show()
# def periodic_extension(signal, numperiods):
#     extend_1 = np.append(signal, np.flip(signal))
#     for i in range(numperiods):
#         np.append(extend_1, extend_1)
#     return extend_1
# ft = np.fft.fft(wmix)
# ftfreqs = np.fft.fftfreq(n=len(wmix))
# plt.plot(ftfreqs,np.abs(ft))
# plt.show()
# print(periodic_extension(w, 10))
# noise_avg = 1
# sig = periodic_extension(w, 10)
# noise = np.random.normal(0, np.sqrt(noise_avg), len(sig))
# f, tx, Sxx = signal.spectrogram(sig, fs)
# plt.pcolormesh(tx, f, Sxx, shading='gouraud')
# plt.ylim(0, 5E3)
# plt.show()