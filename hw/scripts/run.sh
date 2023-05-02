#!/bin/sh

# kill it first
killall app
killall pd
rm /tmp/pd.log

# start it up
cd /home/root/app/hw
./app &

