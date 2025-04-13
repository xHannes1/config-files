#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
eval "$(dircolors -b ~/.dircolors)"
alias zat=zathura
alias ls='ls --color=auto'
alias lsa='ls -l --block-size=M -a'
alias grep='grep --color=auto'
alias lb="sudo lbsprite.AppImage"
alias nvims="nvim -S s.vim"
alias lts="wine /home/caps/.wine/drive_c/users/caps/Desktop/lts.lnk > /dev/null 2>&1 &"
alias mc12="wine /home/caps/Applications/mc12/mc12_64.exe"
PS1='\[\e[0;37m\][\[\e[0;32m\]\u\[\e[0;37m\]@\[\e[0;36m\]\h \[\e[0;34m\]\w\[\e[0;37m\]]\$ '

lf () {
    tmpfile="$HOME/.lf_last_dir"
    command lf "$@"
    if [ -f "$tmpfile" ]; then
        dir=$(cat "$tmpfile")
        rm -f "$tmpfile"
        cd "$dir"
    fi
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


export SUDO_EDITOR=nvim
setxkbmap de
con='/home/caps/.config/i3'
m='/media/nas'
n='/media/nas/Notes'
p='/home/caps/Programming'
g='/home/caps/Programming/GameDev'
d='/media/nas/Documents/Obsidian'
wal -q --theme base16-gruvbox-medium
#wal -q --cols16 --theme base16-gruvbox-medium
wal -n -s -q -i $HOME/Photos/wallpaper.jpg
#wal -n -s --cols16 -q -i $HOME/Photos/wallpaper.jpg
feh --bg-scale Photos/wallpaper.jpg
neofetch
