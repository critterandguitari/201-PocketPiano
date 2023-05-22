#!/bin/sh

# kill it first
killall app
killall pd
killall ttymidi
rm /tmp/pd.log

# cpu
echo performance > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor

# start up ttymidi
cd /home/root/app/hw/scripts
./ttymidi -s /dev/ttymxc1 &

# start it up
cd /home/root/app/hw
./app &

