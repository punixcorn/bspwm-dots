!#/bin/bash
display=$1
DIR="$HOME/.config/bspwm/polybar/"
MONITOR=HDMI1 polybar -c $DIR/config.ini &
disown
