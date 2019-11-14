#!/bin/sh -e

xwallpaper  --stretch "$HOME"/Pictures/wall/wallhaven-k91e37.jpg

read -r cur < /sys/class/backlight/radeon_bl0/brightness
bri "$cur"

compton &

exec sowm
