#! /bin/sh

/usr/local/bin/oscsend localhost 4000 /quitpd i 1
sleep .15
killall pd
/usr/local/bin/oscsend localhost 4001 /poweroff i 1

exit 0
