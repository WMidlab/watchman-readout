from scapy.all import *
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.image import NonUniformImage
import pandas as pd
num_channels =1

def process_32packet_pulseSweep(filename,nmbrWin, nofChannels):
    nofTargets=2 # number of digitizers
    windowSize=32 #number of samples per window
    nofSamplesPerPacket= nofTargets*windowSize*num_channels
    window_numbers=[]
    payload =[]
    targets_data=[[] for i in range(nofTargets)]
    target_0=[[] for i in range(nofChannels)]
    scapy_cap = rdpcap(filename)
    # Reading only 2 windows from TC
    raw1 = scapy_cap[Raw][0].load + scapy_cap[Raw][1].load
    payload1 = np.frombuffer(raw1, dtype=np.uint16)
    payload1 = np.delete(payload1, [0,-1])
    raw2 = scapy_cap[Raw][2].load + scapy_cap[Raw][3].load
    payload2 = np.frombuffer(raw2, dtype=np.uint16)
    payload2 = np.delete(payload2, [0,-1])

    window_numbers.append(payload1[0])
    payload1= np.delete(payload1, 0)
    window_numbers.append(payload2[0])
    payload2= np.delete(payload2, 0)

    #payload = payload1 + payload2

    for j in range(nofTargets):
        targets_data[j] = payload1[j*windowSize*nofChannels:windowSize*nofChannels*(j+1)]
        targets_data[j] = [targets_data[j][i:i+windowSize] for i in range(0, len(targets_data[j]), windowSize)]

    for k in range(nofChannels):
        target_0[k].append(targets_data[0][k])

    for j in range(nofTargets):
        targets_data[j] = payload2[j*windowSize*nofChannels:windowSize*nofChannels*(j+1)]
        targets_data[j] = [targets_data[j][i:i+windowSize] for i in range(0, len(targets_data[j]), windowSize)]
    
    for k in range(nofChannels):
        target_0[k].append(targets_data[0][k])

    for l in range(nofChannels):
       target_0[l] = [item for sublist in target_0[l] for item in sublist]

    print(window_numbers)
    df_0=pd.DataFrame(np.transpose(target_0))
    #df_1=pd.DataFrame(np.transpose(target_1))
    print(targets_data[0])
    #print(targets_data[1])

    df_0 = df_0-200.
    
    ax0=df_0.plot(figsize = (20, 20))
    #ax0.set_ylim(-2000,2000)
    ax0.set_title("{}".format(window_numbers), fontsize=15)
    ax0.grid(linewidth=2)
    #ax0.set_xlim(127,(32*totalWindows)-1)
    plt.show()
    fig0 = ax0.get_figure()
    fig0.savefig('Test.png')




