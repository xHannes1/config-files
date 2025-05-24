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
cp -r ~/.config/dirs .
cp -r ~/.xinitrc .
cp -r ~/.bashrc .

git add .
git commit -m "Update"
git push -u origin main --force
