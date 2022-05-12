import subprocess
import time
from datetime import datetime
import sys
from pulse_analysis import *
from pulse_analysis2 import *
#from test_analysis import *

capture_file_name=sys.argv[1]
totalWindows=sys.argv[2]
nofChannels=16
# Get packets
time.sleep(5)
#sudo tcpdump -ni enx0050b67c1322  udp port 8  -w capture_file_name -c 1
#capture_file_name =getPacketsTrigMode(nofPackets)
# When the transmission finish, process the packets

#dfTarget0, dfTarget1=process_packet_pulseSweep(capture_file_name,totalWindows,nofChannels)
#dfTarget0 =process_packet_pulseSweep(capture_file_name,totalWindows,nofChannels)

#for processing 32 channels at once (make changes in cmd_and_getData_trogMode script as well) (test_analysis.py)
#dfTarget0 =process_32packet_pulseSweep(capture_file_name,totalWindows,nofChannels)

# process data from both TCs (pulse_analysis2.py)
dfTarget0, dfTarget1= process_packet_pulseSweep2(capture_file_name,totalWindows,nofChannels)
