#!/bin/sh -e

setroot -s "$HOME"/Pictures/wall/wallhaven-k91e37.jpg

read -r cur < /sys/class/backlight/intel_backlight/brightness
bri "$cur"

exec sowm
