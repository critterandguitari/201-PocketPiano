#!/bin/sh

echo "alsa restore" > /dev/kmsg
/usr/sbin/alsactl restore
echo "$?" > /dev/kmsg

echo "bringing up loopback network" > /dev/kmsg
ifup lo
echo "$?" > /dev/kmsg

echo "starting power button monitor" > /dev/kmsg
cd /home/root/app/hw/scripts
python3 powerbutton.py &

echo "Starting App..." > /dev/kmsg
cd /home/root/app/hw/scripts
./run.sh

