#!/usr/bin/env bash

# Author: Joel Riekemann
# Date: 2019-05-29
# Description: Customization script for wal
# Usage: Put wallpaper in /usr/share/wallpapers/16by9/ and /usr/wallpapers/16by10/ respectively, depending on its aspect ratio.
# TODO: Add support for choosing random wallpaper.

# Configuration
## Wallpaper options:
##          "landscape"
#           "blueMountain"
image_name="neonTrees"
extension="png"

# Get count of connected monitors
connected_monitors=$(xrandr | grep " connected" | wc -l)

# If count of connected monitors is greater than 1, set wallpaper from folder /usr/share/wallpapers/16by9/, else set wallpaper from folder /usr/share/wallpapers/16by10/
if [ $connected_monitors -gt 1 ]; then
    path_to_wallpaper="/usr/share/wallpapers/16by9/$image_name.$extension"
    (wal -i $path_to_wallpaper) > /dev/null 2>&1
    (variety --set=$path_to_wallpaper &) > /dev/null 2>&1
else
    path_to_wallpaper="/usr/share/wallpapers/16by10/$image_name.$extension"
    (wal -i $path_to_wallpaper) > /dev/null 2>&1
    (variety --set=$path_to_wallpaper &) > /dev/null 2>&1
fi

# TODO: Find use for this
# path_to_last_image=$(< $HOME/.config/wal/wal) 
