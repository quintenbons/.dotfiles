alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias tree="tree -C"

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

alias xclip="xclip -sel clip"

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

alias bacd="bacalhau describe"

alias rs="source ~/.zshrc"

alias cld="ollama launch claude --config --model qwen3-coder:30b"

