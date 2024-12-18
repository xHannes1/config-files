#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias zat=zathura
alias ls='ls --color=auto'
alias lsa='ls -l --block-size=M -a'
alias lf=lfub
alias grep='grep --color=auto'
alias lb="sudo lbsprite.AppImage"
alias nvims="nvim -S s.vim"
alias lts="wine /home/caps/.wine/drive_c/users/caps/Desktop/lts.lnk > /dev/null 2>&1 &"
alias mc12="wine /home/caps/Applications/mc12/mc12_64.exe"
PS1='[\u@\h \W]\$ '
export SUDO_EDITOR=nvim
setxkbmap de
con='/home/caps/.config/i3'
m='/media/nas'
n='/media/nas/Notes'
g='/home/caps/Programming/GameDev'
#wal --theme base16-gruvbox-medium
#wal --theme random_dark
wal -q --theme base16-gruvbox-medium
wal -s -q -i $HOME/Photos/wallpaper.png
neofetch
todo -l
