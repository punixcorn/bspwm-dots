#!/bin/bash
CONFIG=~/.config/bspwm/alacritty/alacritty.yml
SCRIPT=~/.config/bspwm/polybar/runchafa.sh
alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG" --hold -e $SCRIPT
