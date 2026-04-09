#!/usr/bin/env bash
session=$(tmux list-sessions -F '#S' | fzf --prompt="switch to: " --height=40% --reverse)
[ -n "$session" ] && tmux switch-client -t "$session"
