"""
Date:       April 27, 2022
version:    1.0
Author:     Shivang
---------------------------------------------
Script to read and plot the data from both TC
This Script assumes the packet(s) received by 
tcpdump from the PS contains data in following 
format:
----------------------------------------------
[W1_TC0, Data_TC0, ... 32*nofChannels], 
[W1_TC1, Data_TC1, ... 32*nofChannels],
[W2_TC0, Data_TC0, ... 32*nofChannels],
[W2_TC1, Data_TC1, ... 32*nofChannels]

Therefore, for 1 windows sent there will be 1 packets, 
containing Window_num and data from TC0 and TC1, respectively.
When 2 windows sent, there will be 4 packets and so on.
-------------------------------------------------

"""

from scapy.all import *
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.image import NonUniformImage
import pandas as pd


def bin2dec(pkt):
    """
    Converts the raw packet into numpy ndaaray
    Returns the payload data with header[55AA] & end word [33CC] subtracted
    This payload  consists of [W1, TC0data, W1, TC1data, W2, TC0data, W2, TC1data, ...]
    
    Parameter:
    ---------
    pkt: pacp file captured from the tcpdump
    ---------
    """
    raw = pkt[Raw].load
    payload= np.frombuffer(raw, dtype=np.uint16)  
    #print(payload)
    payload=np.delete(payload,[0,-1]) # at this point the content is  WindowNumber + payload
    #print(payload)
    return payload
    
    
    
def getListof_packets(pcapfile, nmbrWin):
    """
    Returns the list of packets contained by pcap file
    
    Parameters:
    -----------
    pcapfile: tcpdump output pcap file

    nmbrWin: Number of windows sent from PL to PS to PC
    -----------
       
    """
    window_num = []          # list to store window numbers of each packet in the pcap file
                             # will have repetitive number [w1, w1, w2, w2 ...] w1->TC0; w1->TC1
    list_of_pkts = []        # list to store converted packets
    for packet in pcapfile:
        packetDec = bin2dec(packet)
        window_num.append(packetDec[0])
        list_of_pkts.append(packetDec)
    return list_of_pkts
    # Check if we captured all the requiered number of packets
    #if(len(window_num) != 2*nmbrWin):
    #    print("Number of windows doesn't match number of frames in packets")
    #    return None
    #else:
    #    return list_of_pkts
    

def targetC_plot(target_data, TargetC, windows):
    """
    plot the data and returns the dataframe
    
    Parameters:
    -----------
    target_data: flatten list of data
    
    TargetC: string "TC0" or "TC1"  based on TargetC
    
    windows: windowNumbersTC0 or windowNumbersTC1 (list of window numbers for the given TC)
    """
    df = pd.DataFrame(np.transpose(target_data))
    df = df - 200.      # delete the offset added on PS side before sending to PC
    ax = df.plot(figsize = (10, 5))
    ax.set_title("{}:{}".format(TargetC, windows), fontsize = 10)
    ax.grid(linewidth = 2)
    #plt.show()
    return ax, df

def getDataFrom_TC0(list_of_pkts, nofChannels):
    """
    Returns the list of lists that contains data from each channels of TC0
    Also returns the window_numbers from TC0
    target_0, windowNumbersTC0 = getDataFrom_TC0(list_of_pkts, nofChannels)
    
    Parameters:
    -----------
    list_of_pkt:output of function "getListof_packets"
    
    nofchannel: number of channels being sent from PS to PC
    
    """
    nofTargets = 2           # Number of ASICs (TC0 & TC1)
    windowSize = 32          # Number of samples per window i.e., 32
    windowNumbersTC0 = []    # list to stor only TC0 window numbers
    data_tc0 =[]
    target_0=[[] for i in range(nofChannels)]
    for i in range(0, len(list_of_pkts), nofTargets):
        windowNumbersTC0.append(list_of_pkts[i][0]) # Taking the window number only
        raw_data = np.delete(list_of_pkts[i],0) # delete window number
        #data_tc0.append(raw_data)
        data_tc0 = raw_data[0:windowSize*nofChannels] # list of data
        data_tc0 = [data_tc0[i:i+windowSize] for i in range(0, len(data_tc0), windowSize)] # Make a nested list with channels
        # list of list containg data in each channel "k"
        for k in range(nofChannels):
            target_0[k].append(data_tc0[k])
    return target_0, windowNumbersTC0
    
    
def getDataFrom_TC1(list_of_pkts, nofChannels):
    """
    Returns the list of lists that contains data from each channels of TC1
    Also returns the window_numbers from TC1
    E.g.: target_1, windowNumbersTC1 = getDataFrom_TC1(list_of_pkts, nofChannels)
    
    Parameters:
    -----------
    list_of_pkt:output of function "getListof_packets"
    
    nofchannel: number of channels being sent from PS to PC
    
    """
    
    nofTargets = 2           # Number of ASICs (TC0 & TC1)
    windowSize = 32          # Number of samples per window i.e., 32
    windowNumbersTC1 = []    # list to stor only TC0 window numbers
    data_tc1 =[]
    target_1=[[] for i in range(nofChannels)]
    for i in range(1, len(list_of_pkts), nofTargets):
        windowNumbersTC1.append(list_of_pkts[i][0]) # Taking the window number only
        raw_data = np.delete(list_of_pkts[i],0) # delete window number
        #data_tc0.append(raw_data)
        data_tc1 = raw_data[0:windowSize*nofChannels] # list of data
        data_tc1 = [data_tc1[i:i+windowSize] for i in range(0, len(data_tc1), windowSize)] # Make a nested list with channels
        # list of list containg data in each channel "k"
        for k in range(nofChannels):
            target_1[k].append(data_tc1[k])
    return target_1, windowNumbersTC1
    
#filename = rdpcap("C:\\Users\\Yasir\\Documents\\Shivang\\pcap_files\\traffic24Apr.pcap")

def process_packet_pulseSweep2(filename, nmbrWin, nofChannels):
    """
    process the packets received from PS
    
    Parameters:
    -----------
    
    filename: tcpdump output file: traffic.pacp 
    
    nmbrWin: Number of windows sent from PL to PS to PC (HMB_roundbuffer: read_sm process)
    
    nofChannels: Number of channel sent from PS to PC
    
    """
    read_pcap = rdpcap(filename)
    
    list_of_pkts =getListof_packets(read_pcap, nmbrWin)
    #print(list_of_pkts)
    target_0, windowNumbersTC0 = getDataFrom_TC0(list_of_pkts, nofChannels)
    #print(target_0)
    target_1, windowNumbersTC1 = getDataFrom_TC1(list_of_pkts, nofChannels)
      
    # Flat list of channels 
    for l in range(nofChannels):
        target_0[l] = [item for sublist in target_0[l] for item in sublist]
        target_1[l] = [item for sublist in target_1[l] for item in sublist]
    
    print("Windows from TC0:{}".format(windowNumbersTC0))  
    print("Windows from TC1:{}".format(windowNumbersTC1)) 
    
    
    ax0, df_0 = targetC_plot(target_0, "TC_0", windowNumbersTC0)
    plt.show()
    fig0 = ax0.get_figure()
    fig0.savefig('Target0_.png')
       
    ax1, df_1 = targetC_plot(target_1, "TC_1", windowNumbersTC1)
    plt.show()
    fig1 = ax1.get_figure()
    fig1.savefig('Target1_.png')

    print("ALL PACKETS CONVERTED")

    return df_0, df_1
