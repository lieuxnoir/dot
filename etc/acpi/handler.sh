#!/bin/sh
#
# ACPI event handler.

case "$1" in
    button/micmute)
        amixer sset Capture toggle
    ;;

    button/mute)
        amixer sset Master toggle
    ;;

    button/screenlock)
        export DISPLAY=:0
        su -c slock lieu &
    ;;

    button/volumedown)
        amixer sset Master 5%-
    ;;

    button/volumeup)
        amixer sset Master 5%+
    ;;

    video/brightnessdown)
        /home/lieu/.local/bin/bri 10 -
    ;;

    video/brightnessup)
        /home/lieu/.local/bin/bri 10 +
    ;;

    *)
        exit
    ;;
esac
