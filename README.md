# Bspwm Dots

![img](./.images/img1.png)

![img2](./.images/img2.png)

### SETUP

- **Installation** : \
  move everything to `~/.config/bspwm/`

#### DEPS

> apps

```shell
rofi
polybar
alacritty
dunst
picom # jhonaburg picom
feh
wal
mpc
dmenu
light
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

> **Other setups**

- move `~/.config/bspwm/others/config.ini` to `~/.config/networkmanager-dmenu/config.ini`
- edit `/usr/bin/networkmanager_dmenu` change expanduser() to

```py
CONF.read(expanduser("~/.config/networkmanager-dmenu/config.ini"))
```

## USEFUL KEYBINDS

- **Keywords**
  > W = Windows key \
  > C = Ctrl \
  > A = Alt \
  > T = Tab \
  > S = Shift \
  > R = Enter \

#### WINDOW MANAGEMENT

| key                    | function                          |
| ---------------------- | --------------------------------- |
| W + h,j,k,l            | Move focus { left,down,up,right } |
| W + up,down,left,right | Move focus { left,down,up,right } |
| W + S + j,k            | { grow , shrink } focused window  |
| W + 1 -> 9             | Move to workspace 1 -> 9          |

#### APPS

| key           | Application            |
| ------------- | ---------------------- |
| W + R         | terminal ( alacritty ) |
| W + S + R     | floatting terminal     |
| W + w         | Firefox                |
| W + S + w     | Firefox                |
| W + S + z     | Discord                |
| W + S + a     | Telegram               |
| W + n         | Rofi Network manaager  |
| W + d         | Rofi app menu          |
| W + shift + d | Rofi app menu 2        |
