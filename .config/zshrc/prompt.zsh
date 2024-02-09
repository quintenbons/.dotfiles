# Custom prompt
autoload -Uz vcs_info
precmd () {
  errcode=$?
  if [ $errcode -eq 0 ]
  then
    SC="%F{green}:)%f"
  else
    SC="%F{red}:( ($errcode)%f"
  fi

  DF='[\e[0m]'
  vcs_info
  zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)

  PS1="
%F{green}%n@%m%f %F{blue}%~/%f$vcs_info_msg_0_ ${SC}
$ "
}
