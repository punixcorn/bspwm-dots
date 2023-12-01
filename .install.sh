#!/bin/bash
echo "installing needed packages"

sudo pacman -S rofi polybar alacritty dunst feh \
	xcb-util-cursor xsettingsd mpc mpd dmenu ncmpcpp \
	networkmanager-dmenu-git light python-gobject \
	xfce4-power-manager maim xclip xorg-xbacklight \
	viewnior conky python-pywal xgd-user-dirs --noconfirm

[ -f /bin/yay ] && yay -S cava || echo "yay not found"

echo "Moving BSPWM files over

CONFDIR="$HOME/.config/bspwm/"

[ -d $CONFDIR ] && mv $CONFDIR $HOME/.config/bspwm-backup
[ ! -d $CONFDIR ] && mkdir $CONFDIR
cp -r ** $CONFDIR


echo "moving others files over"

[ -d $(pwd)/others ] && {
	[ ! -d $HOME/.config/networkmanager-dmenu/ ] && mkdir $HOME/.config/networkmanager-dmenu
	cp -r $CONFDIR/others/config.ini $HOME/.config/networkmanager-dmenu
	[ ! -d $HOME/.local/share/fonts ] && mkdir $HOME/.local/share/fonts
	cp -r $CONFDIR/others/fonts/* $HOME/.local/share/fonts
} || echo "others folder not found"

[ -f /bin/wal ] && wal -i $CONFDIR/wallpaper.png

exit 0
