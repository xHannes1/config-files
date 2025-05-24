#!/usr/bin/env sh

######################################################################
# @author      : caps (caps@com1)
# @file        : git-up
# @created     : Samstag Aug 17, 2024 11:29:45 CEST
#
# @description : 
######################################################################


cp -r ~/.config/nvim .
cp -r ~/.config/i3 .
cp -r ~/.config/i3blocks .
cp -r ~/.xinitrc .
cp -r ~/.bashrc .
cp -r ~/.suckless/st/config.def.h .
cp -r ~/.suckless/dmenu/config.def.h .

cp -r ~/Photos/wallpaper.jpg .

git add .
git commit -m "Update"
git push -u origin main --force
