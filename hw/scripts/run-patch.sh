
# start patch and connect midi
cd /sdcard/pd
pd -nogui -rt -audiobuf 5 -path lib -alsamidi -mididev 1 mother.pd &

# wait a sec, then connect midi
sleep 1
aconnect "ttymidi:0" "Pure Data:0"
aconnect "Pure Data:1" "ttymidi:1"

