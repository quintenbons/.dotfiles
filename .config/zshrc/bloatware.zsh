# rust
source "$HOME/.cargo/env"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go (fuck go)
export PATH=$PATH:/usr/local/go/bin

# Load Angular CLI autocompletion.
source <(ng completion script)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/bonsq/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/bonsq/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/bonsq/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/bonsq/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# asdf
if [ -d $HOME/.asdf ]; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi
