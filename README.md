# bspwm config

- Installation
  move everything to `~/.config/bspwm/`

### dependencies

> apps

```shell
rofi
polybar
alacritty
dunst
picom # jhinaburg picom
feh
wal
dmenu
networkmanager
networkmanager-dmenu-git
python-gobject
xfce4-power-manager
maim
xclip
```

> fonts

```shell
Iosevka
JetBrains Mono Nerd Fonts
Siji
Terminus
waffle
```

# networkmanager-dmenu

- move `~/.config/bspwm/others/config.ini` to `~/.config/networkmanager-dmenu/config.ini`
- edit /usr/bin/networkmanager_dmenu change expanduser() to

```py
CONF.read(expanduser("~/.config/networkmanager-dmenu/config.ini"))
```

# others

- other config like dunst and xsettings are located
