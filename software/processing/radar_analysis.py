import numpy as np
import matplotlib.pyplot as pyplot
import pandas as pd

pt_dbm = 20
lna_nf_db = 0.7
lna_gain_db = 19.6
mixer_nf_db = 10
mixer_conv_loss = -10
ant_gain_dbi = 6
opamp_nf_db = 15
if_gain = 20
gnd_rcs_db_hh = [20.1,16.7,7.2,1.7,-3,-8.1,-11.3]
gnd_rcs_db_vv = [19.7,16.2,7.2,1.0,-3.1,-8.1,-11.7]
freqs = np.linspace(2.25E9,2.5E9)
wavelengths = (3E8)/freqs
db2lin = lambda x : 10**(x/10)
dbm2lin = lambda x : (1E-3)*10**(x/10)


f = db2lin(lna_nf_db) + db2lin(mixer_nf_db)/db2lin(lna_gain_db) + db2lin(opamp_nf_db)/(db2lin(lna_gain_db)*db2lin(mixer_conv_loss))
nf = 10*np.log10(f)
#print(nf)
sweep_ts = 10E-3
sweep_bw = 1/sweep_ts
k = 1.38E-23
T = 290
rf_noise_floor = k*T*sweep_bw*f

def rmax(pt_dbm, g, l, sigma_db):
    return ((dbm2lin(pt_dbm)*db2lin(sigma_db)*(dbm2lin(g)**2)*(l**2))/(rf_noise_floor*(4*np.pi)**3))**(1/4)

r_hh = []
r_vv = []

for l in wavelengths:
    #print("l_hh: ", l)
    for sigma_db in gnd_rcs_db_hh:
        #print("l_hh, sigma_hh: ", l, db2lin(sigma_db))
        r_hh.append(rmax(pt_dbm, ant_gain_dbi, l, sigma_db))
        #print("range_hh: ", rmax(pt_dbm, ant_gain_dbi, l, sigma_db))

for l in wavelengths:
    #print("l_vv: ", l)
    for sigma_db in gnd_rcs_db_vv:
        #print("l_vv, sigma_vv: ", l, db2lin(sigma_db))
        r_vv.append(rmax(pt_dbm, ant_gain_dbi, l, sigma_db))
        #print("range_vv: ", rmax(pt_dbm, ant_gain_dbi, l, sigma_db))        
print("max range hh: ", np.max(r_hh))
print("min range hh: ", np.min(r_hh))
print("max range vv: ", np.max(r_vv))
print("min range vv: ", np.min(r_vv))
print("system nf: ", nf)