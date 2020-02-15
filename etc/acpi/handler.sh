#!/bin/sh
#
# ACPI event handler.

export DISPLAY=:0
export PATH=$PATH:/home/mono/.local/bin

case "$1" in
    button/micmute)
        amixer sset Capture toggle
    ;;

    button/mute)
        amixer sset Master toggle
    ;;

    button/screenlock)
        su -c slock mono &
    ;;

    button/volumedown)
        amixer sset Master 5%-
    ;;

    button/volumeup)
        amixer sset Master 5%+
    ;;

    video/brightnessdown)
        bri 10 -
    ;;

    video/brightnessup)
        bri 10 +
    ;;

    *)
        exit
    ;;
esac
