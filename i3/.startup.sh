#!/usr/bin/env bash

setxkbmap -option caps:swapescape
killall i3bar
killall tint2
#killall -q polybar
# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#i3status
tint2
libinput-gestures-setup start
#tint2 -c ~/.config/tint2/raven/raven-cyan.tint2rc &
#polybar -c ~/.config/polybar/config.ini bottom &
