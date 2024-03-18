#!/bin/bash

# start patch and connect midi
cd /sdcard/pd
pd -nogui -rt -audiobuf 5 -path lib -alsamidi -mididev 1 mother.pd &

