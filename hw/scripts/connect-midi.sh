#!/bin/bash

# allow USB midi to show up
sleep 2

# unconnect everything
aconnect -x

# connect tty midi
aconnect "ttymidi:0" "Pure Data:0"
aconnect "Pure Data:1" "ttymidi:1"

# check for USB midi devices and connect 
# Use aplaymidi -l to get list of MIDI devices
output=$(aplaymidi -l)

# Count the number of lines in the output
line_count=$(echo "$output" | wc -l)

# Only attempt to connect if there are 3 or more lines
if (( line_count < 3 )); then
    echo "Not enough MIDI devices. Exiting." > /tmp/midilog
    exit 1
fi

# Parse the output to find the last MIDI port
last_port=$(echo "$output" | tail -n1 | awk '{print $1}')

# Find the Pure Data client using aconnect
pd_output=$(aconnect -l)
pure_data=$(echo "$pd_output" | grep 'client.*Pure Data' | awk -F" " '{print $2}')

# Trim the trailing ':' character
pure_data=${pure_data%:}

# Connect the last MIDI port to the Pure Data client
echo "Connecting MIDI port $last_port to Pure Data client $pure_data" > /tmp/midilog
aconnect $last_port:0 $pure_data:0

