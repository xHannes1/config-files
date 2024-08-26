#!/usr/bin/env sh

######################################################################
# @author      : caps (caps@com1)
# @file        : git-down
# @created     : Montag Aug 26, 2024 14:16:10 CEST
#
# @description : 
######################################################################

git clone https://github.com/xHannes1/config-files.git
mv -f config-files/.[!.]* .
mv -f config-files/* .

rm -rf ~/.config/nvim
rm -rf ~/.config/i3
rm -rf ~/.config/i3blocks
rm -rf ~/.config/lf
rm -rf ~/.config/dirs
rm -rf ~/.config/picom
rm -rf ~/.xinitrc
rm -rf ~/.bashrc

mv -f nvim ~/.config
mv -f i3 ~/.config
mv -f i3blocks ~/.config
mv -f lf ~/.config
mv -f dirs ~/.config
mv -f picom ~/.config
mv -f .bashrc ~/
mv -f .xinitrc ~/
rm -rf config-files
