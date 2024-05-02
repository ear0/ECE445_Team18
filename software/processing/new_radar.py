import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import ShortTimeFFT
from scipy.signal.windows import gaussian
from scipy.io import wavfile

bitwidth = 15
sampFreq, sound = wavfile.read(r'wah2.wav')
sound = sound / 2.0**bitwidth
length_in_s = sound.shape[0] / sampFreq
time = np.arange(sound.shape[0]) / sound.shape[0] * length_in_s
signal = sound[:,0]

num_samp = signal.size

fft_spectrum = np.fft.rfft(signal)
freq = np.fft.rfftfreq(signal.size, d=1./sampFreq)

max_indices =  lambda N : np.argsort(np.abs(fft_spectrum))[::-1][:N]
max_freqs = [freq[int(i)] for i in max_indices(7)]

sweep_f = 1000
sweep_t = 1/sweep_f
sweep_hm_t = sweep_t/2
sweep_B = 200E6
c = 3E8

def range_calc(T, B, fr):
    return c*T*fr/(2*B)

ranges = [range_calc(sweep_hm_t, sweep_B, i) for i in max_freqs]
print(ranges)

T_x, N = 1/sampFreq, signal.size  # 20 Hz sampling rate for 50 s signal
t_x = np.arange(N) * T_x  # time indexes for signal

g_std = 8  # standard deviation for Gaussian window in samples
w = gaussian(50, std=g_std, sym=True)  # symmetric Gaussian window
SFT = ShortTimeFFT(w, hop=10, fs=1/T_x, mfft=200, scale_to='magnitude')
Sx = SFT.stft(signal)  # perform the STFT

ranges = np.array([range_calc(sweep_hm_t, sweep_B, i) for i in SFT.f])

sft_extent = SFT.extent(N)

fig1, ax1 = plt.subplots(figsize=(6., 4.))  # enlarge plot a bit
t_lo, t_hi = SFT.extent(N)[:2]  # time range of plot
ax1.set_title(rf"STFT ({SFT.m_num*SFT.T:g}$\,s$ Gaussian window, " +
              rf"$\sigma_t={g_std*SFT.T}\,$s)")
ax1.set(xlabel=f"Time $t$ in seconds ({SFT.p_num(N)} slices, " +
               rf"$\Delta t = {SFT.delta_t:g}\,$s)",
        ylabel=f"Freq. $f$ in Hz ({SFT.f_pts} bins, " +
               rf"$\Delta f = {SFT.delta_f:g}\,$Hz)",
        xlim=(t_lo, t_hi))

im1 = ax1.imshow(abs(Sx), origin='lower', aspect='auto',
                 extent=(SFT.t(N)[0], SFT.t(N)[-1], ranges[0], ranges[-1]), cmap='viridis')
fig1.tight_layout()
plt.show()

# fig1, ax1 = plt.subplots(figsize=(6., 4.))  # enlarge plot a bit
# t_lo, t_hi = SFT.extent(N)[:2]  # time range of plot
# ax1.set_title(rf"STFT ({SFT.m_num*SFT.T:g}$\,s$ Gaussian window, " +
#               rf"$\sigma_t={g_std*SFT.T}\,$s)")
# ax1.set(xlabel=f"Time $t$ in seconds ({SFT.p_num(N)} slices, " +
#                rf"$\Delta t = {SFT.delta_t:g}\,$s)",
#         ylabel=f"Freq. $f$ in Hz ({SFT.f_pts} bins, " +
#                rf"$\Delta f = {SFT.delta_f:g}\,$Hz)",
#         xlim=(t_lo, t_hi))

# im1 = ax1.imshow(abs(Sx), origin='lower', aspect='auto',
#                  extent=SFT.extent(N), cmap='viridis')
# fig1.tight_layout()
# plt.show()