#/bin/bash
killall conky
conky -c $(pwd)/config.conf &>/dev/null &
exit
