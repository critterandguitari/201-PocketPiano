#!/bin/sh

# kill it first
killall app
killall pd
rm /tmp/pd.log

# cpu
echo performance > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor

# start it up
cd /home/root/app/hw
./app &

