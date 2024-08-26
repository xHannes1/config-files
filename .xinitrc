#!/bin/sh

feh --bg-scale /home/caps/Photos/wallpaper.png &
#xgifwallpaper -s FILL /home/caps/Documents/chill.gif &
picom  -b --config ~/.config/picom/picom.conf &
spotify-launcher &
exec i3
