#!/bin/sh

setroot -s "$HOME"/Pictures/Wallpapers/wallhaven-k91e37.jpg

read -r CBRI < /sys/class/backlight/radeon_bl0/brightness
bri "$CBRI"

exec sowm
