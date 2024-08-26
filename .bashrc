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
PS1='[\u@\h \W]\$ '
setxkbmap de
con='/home/caps/.config/i3'
m='/media/nas'
wal -q -n -i /home/caps/Photos/wallpaper.png
#wal --theme random_dark
neofetch
