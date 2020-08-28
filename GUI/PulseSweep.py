from functools import partial
from threading import Thread, Timer
import time
import sys
import socket
import optparse
import random
#import binary2text as b2t
import numpy as np
#from watchman_nogui import Watchman_main_window
import matplotlib.pyplot as plt
from waveform_gen_33600 import wave_gen
import os
import targetc as targetc
from pulseGen import pulseGen
import pandas as pd
from plot_delays_max import plot_pulse
#from plotPulse import plot_pulse
#tc = targetc.targetc()
pg = pulseGen()
#time.sleep(10)
#def softTrigger():
#    wave_gen().softTrigger()
#
#def pulseSweepInit(channel, nmbrPedestals):
#    wave_gen().Output1(out=False)
#    regID = 99
#    tc.send_command(8,regID,channel) # channel number
#    time.sleep(1)
#    tc.send_command(9,100,1) # Pedestals
#
#def pulseInit(width):
#            
#    time.sleep(2)
#    wave_gen().pulseWidth(width)
#   # time.sleep(2)
#   # wave_gen().volt(ampl)
#    #wave_gen().Query()
#        
#def pulseAmpl(ampl):
#    wave_gen().volt(ampl)
#    time.sleep(1)
#
#
#def windows(nmbrWindows,firstWindow, totalWindows):
#    regID = 151
#    regValue = 4
#    tc.send_command(8,regID,firstWindow) # first window
#    time.sleep(1)
#    regID = 152
#    tc.send_command(8, regID, nmbrWindows) # nmbrWindows
#    time.sleep(1)
#    regID = 98
#    tc.send_command(8,regID,totalWindows) # total windows
#    time.sleep(1)
#
#def setFreq(frequency):
#    print("{:.9f}".format(frequency))
#    wave_gen().Freq(frequency)
#    time.sleep(1)
##setFreq(1e3)
##wave_gen().query()
#setFreq(1e7)
nmbrWindows = 1
firstWindow= 0
totalWindows = 16
nmbrPedestals = 100
channel = 2
width = 3e-9
ampl = 1e-1 
isel = 2300

pg.isel(isel)
time.sleep(1)
pg.windows(nmbrWindows,firstWindow,totalWindows)
pg.pulseSweepInit(channel,nmbrPedestals)
pg.pulseInit(width)
time.sleep(10)
wave_gen().Output1(out=True)
time.sleep(1)

amplitudes=np.arange(1e-3, 3.5,100e-3) #For dynamic range, charge, cfd, etc
#amplitudes=np.arange(20, 200,50) #For dynamic range, charge, cfd, etc
#wave_gen().ncyc(3)
time.sleep(1)
pg.pulseAmpl(ampl)
time.sleep(1)
wave_gen().Query()
#amplitudes = np.arange(2100,2650,50)
#amplitudes= np.arange(0.1,0.2 ,1)
#amplitudes=list(range(2100,2900,20))
rango = list((range(10,11,1)))  # number of steps in delay values for the waveformigenerator For dynamic range, charge, cfd, etc
for item in amplitudes:
    print("Amp=",item)
    pg.pulseAmpl(item)
#    wave_gen().loadHz(item)
    time.sleep(1)

    #repeticiones = list( range(0,5,1)   )
    #rango = list(range(0,128,1)) # for pulse sweep
        
    for i in rango:
       wave_gen().trigDelay(i*.000000001)
       time.sleep(0.3)
       print("Pos=",i)
      # pg.softTrigger()
       pg.getWindows()
      # tc.send_command(7,0,0) # get windows
       time.sleep(0.3)
    
wave_gen().Output1(out=False)
print("end")

#plot_pulse(fileToSave,10,1)
#plt.show()
