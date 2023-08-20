#!/bin/bash 
echo "installing packages"

sudo pacman -S rofi polybar alacritty dunst feh \
xcb-util-cursor xsettingsd mpc mpd dmenu ncmpcpp \
networkmanager-dmenu-git light python-gobject \
xfce4-power-manager maim xclip xorg-xbacklight \
viewnior conky python-pywal xgd-user-dirs --noconfirm

[ -f /bin/yay ] && yay -S cava || echo "yay not found"

echo "moving files over"

[ -d $(pwd)/others ] && { 
	mkdir $HOME/.config/networkmanager-dmenu;
	cp -r $(pwd)/others/config.ini $HOME/.config/networkmanager-dmenu;
	mkdir $HOME/.local/share/fonts;
	cp -r $(pwd)/others/fonts/* $HOME/.local/share/fonts;
	} || echo "others folder not found"

	[ -f /bin/wal ] &&  wal -i $(pwd)/wallpaper/wallpaper.png

exit 0
