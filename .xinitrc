#!/bin/sh

#feh --bg-scale /home/caps/Photos/wallpaper.png &
feh --bg-scale /home/caps/Photos/wallpaper.jpg &
#xgifwallpaper -s FILL /home/caps/Documents/chill.gif &
picom  -b --config ~/.config/picom/picom.conf &
wal -q --theme base16-gruvbox-medium
wal -s -q -i $HOME/Photos/wallpaper.png
#spotify-launcher &
setxkbmap de
exec i3
