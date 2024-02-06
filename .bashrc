#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
source /usr/share/nvm/init-nvm.sh

STARKLI_ENV_PATH="$HOME/.starkli/"
if [ -d "$STARKLI_ENV_PATH" ]; then
  source "$STARKLI_ENV_PATH/env"
fi;
