if [ -z $1 ]; then
  echo "This script is unsafe. Read it before using it."
  echo "Usage: sudo $0 ok"
  exit 1
fi

# pacman
if command -v pacman >/dev/null 2>&1; then
  pacman -S $(grep -vE "^\s*#" ./.packlist/notes.txt | tr "\n" " ")
fi

# apt
if command -v apt >/dev/null 2>&1; then
  cat ./.packlist/apt.txt
  sudo apt install $(grep -vE "^\s*#" ./.packlist/apt.txt | tr "\n" " ")
  # nvm
  PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'
fi
