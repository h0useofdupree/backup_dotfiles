#!/usr/bin/env bash
autorandr docked &
setxkbmap de &
picom &
huepywal -r -l -m 2&>/dev/null &
nm-applet &
pasystray &
kdeconnect-cli -l &
