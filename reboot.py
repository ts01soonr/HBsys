import sys
import telnetlib
import os
import time
HOST = "localhost"
port = 8888
pn = len(sys.argv)
if pn > 1 :
   port = int(sys.argv[1])
tn = telnetlib.Telnet()
tn.open(HOST,port)
tn.read_until("Connection successful")
tn.write("stop\n")
tn.sock.close()
time.sleep(3)
os.system("osascript -e 'tell application \"System Events\" to restart'")

