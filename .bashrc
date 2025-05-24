#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
wal -q --theme base16-gruvbox-medium
wal -n -s -q -i $HOME/Photos/wallpaper.jpg
alias zat=zathura
alias ls='ls --color=auto'
alias lsa='ls -l --block-size=M -a'
alias grep='grep --color=auto'
alias lb="sudo lbsprite.AppImage"
alias nvims="nvim -S s.vim"
alias lts="wine /home/caps/.wine/drive_c/users/caps/Desktop/lts.lnk > /dev/null 2>&1 &"
alias mc12="wine /home/caps/Applications/mc12/mc12_64.exe"
PS1='\[\e[0;37m\][\[\e[0;32m\]\u\[\e[0;37m\]@\[\e[0;36m\]\h \[\e[0;34m\]\w\[\e[0;37m\]]\$ '

function y() {
	thunar "$(pwd)"
}


export SUDO_EDITOR=nvim
export EDITOR=nvim
export VISUAL=nvim

neofetch


