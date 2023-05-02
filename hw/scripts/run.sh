#!/bin/sh

# kill it first
killall main
killall pd
rm /tmp/pd.log

# start it up
cd /home/root/hw
./main &

