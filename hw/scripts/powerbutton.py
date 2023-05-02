import subprocess
import os
import time

def run_cmd(cmd) :
    ret = False
    try:
        ret = subprocess.check_output(['bash', '-c', cmd], close_fds=True)
    except: 
        pass
    return ret

cmd = "cat /proc/interrupts | grep powerkey |  awk '{ print $2 }'"

while True :	
    res = int(run_cmd(cmd))
    if res != 0 :
        os.system("sh /home/root/shutdown.sh")
        exit()
	
    time.sleep(1)
