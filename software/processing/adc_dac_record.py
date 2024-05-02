import wave
import pyaudio
import sys
import matplotlib.pyplot as plt
from scipy.io import wavfile
import numpy as np
import scipy.signal as sig


fs = 44100  # Record at 44100 samples per second
bitwidth = 32
sampFreq, sound = wavfile.read(r'wah.wav')
sound = sound / 2.0**bitwidth
length_in_s = sound.shape[0] / sampFreq
time = np.arange(sound.shape[0]) / sound.shape[0] * length_in_s

signal = sound[:,0]
N = signal.size
win_size = 100
samp_factor = 4
win = sig.windows.hann(win_size)
sft = sig.ShortTimeFFT(win, hop=10, fs=sampFreq, mfft=win_size*samp_factor, scale_to='magnitude')
sx = sft.stft(signal)
plt.imshow(sx)
plt.show()
# fft_spectrum = np.fft.rfft(signal)
# freq = np.fft.rfftfreq(signal.size, d=1./sampFreq)
# fft_spectrum_abs = np.abs(fft_spectrum)

# numtaps = 109
# cutoff = sampFreq/8
# filt = sig.firwin(numtaps, cutoff, fs=sampFreq)
# post_filt = sig.lfilter(filt, 1.0, signal)
# fftpostfilt = np.fft.rfft(post_filt)
# freqpostfilt = np.fft.rfftfreq(post_filt.size, d=1./sampFreq)
# mag_postfilt = np.abs(fftpostfilt)
# f, t, Sxx = sig.spectrogram(post_filt, sampFreq)
# plt.pcolormesh(t, f, Sxx, shading='gouraud')
# plt.ylabel('Frequency [Hz]')
# plt.xlabel('Time [sec]')
# plt.show()

# fig, axs = plt.subplots(3)
# axs[0].plot(freq, fft_spectrum_abs)
# axs[1].plot(freqpostfilt,mag_postfilt)
# plt.show()

def inst_freq(x, fs):
    hx = sig.hilbert(x)
    inst_phase = np.unwrap(np.angle(hx))
    inst_freq =  (np.diff(inst_phase) / (2.0*np.pi) * fs)
    return inst_freq
