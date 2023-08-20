#/bin/bash
pgrep -U 1000 -x conky | xargs kill -9
conky -c ~/.config/bspwm/conky/config.conf &
conky -c ~/.config/bspwm/conky/activate-windows.conf &
exit
