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
PS1='[\u@\h \W]\$ '
export SUDO_EDITOR=nvim
setxkbmap de
con='/home/caps/.config/i3'
m='/media/nas'
n='/media/nas/Notes'
wal --theme base16-gruvbox-medium
#wal --theme random_dark
neofetch
