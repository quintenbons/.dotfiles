#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
alias ls='ls --color=auto'
export PS1="\n\e[1;32m\u@\h \e[1;34m\w\e[m\n$ "

# Aliases
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias tree="tree -C"

# some more ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# shell
alias c="chmod +rwx"
alias rs="source ~/.zshrc"

# connectivity
alias sshHome="ssh bonsq@$PCFIXE"

# clipboard
alias xclip="xclip -sel clip"

# Vim
alias v=nvimfg
alias vi=nvim
alias vim=nvim
alias vmaps="nvim ~/.config/nvim/"
alias vzsh="nvim ~/.config/zshrc/"

# Xppen
alias xppen="/usr/lib/pentablet/pentablet"

# time
alias synctime="sudo ntpd -qg ; sudo hwclock --systohc && echo 'Success'"

# mirrors
alias mirrors="sudo reflector --verbose -l 50 --sort rate --save /etc/pacman.d/mirrorlist"

# VPN
alias startvpn="sudo openvpn $HOME/Documents/school/vpn_ensimag.ovpn"
alias startother="sudo openvpn $HOME/Documents/school/vpn_ensimag_etu.ovpn"

# java
alias jc="javac -d ./bin -sourcepath ./src -classpath ./bin"
alias jr="java -classpath ./bin"

# keys
alias keyreset="setxkbmap -layout us -option"
alias keyalt="setxkbmap -layout us -option compose:ralt"
alias keyswap="setxkbmap -option caps:swapescape"
alias keyrate="xset r rate 200 30"
alias keyall="keyreset && keyalt && keyrate"
alias kp="keyall;keyswap;"
alias ka="keyall"

alias drun="docker run -it --rm"
alias drunn="docker run -it --rm --name"

alias sudo="sudo "

# bacalhau
alias bacd="bacalhau describe"

# github
alias gitgud="git log --all --graph --oneline"

# STARKLI_ENV_PATH="$HOME/.starkli/"
# if [ -d "$STARKLI_ENV_PATH" ]; then
#   source "$STARKLI_ENV_PATH/env"
# fi;
