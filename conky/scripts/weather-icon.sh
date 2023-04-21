#!/bin/bash

theme=$1
weather_code=$2
cp -r ~/.config/bspwm/conky/imgs/${weather_code}.png ~/.cache/weather-icon.png

exit
