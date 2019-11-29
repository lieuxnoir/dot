#!/bin/sh -e

xwallpaper --stretch "$HOME"/Pictures/wall/wallhaven-k91e37.jpg

read -r cur < /sys/class/backlight/intel_backlight/brightness
bri "$cur"

compton -b

exec sowm
