# Some of these commands are already done when launching i3
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

##########################
# PERSONAL CONFIGURATION #
##########################
# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bonsq/.zshrc'
autoload -Uz compinit
compinit # builtin commands

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Default terminal
export TERMINAL=alacritty
export TERM=xterm-256color

# Vim
bindkey -v
export EDITOR=nvim
export VISUAL=nvim

# ssh agent
eval $(ssh-agent) > /dev/null 2> /dev/null
# ssh-add # comment to stop asking for passphrase each time

# Personal configuration files
for cnf in $HOME/.config/zshrc/* ; do
    source $cnf;
done;

# MOTD
# neofetch

# nvm
# source /usr/share/nvm/init-nvm.sh
