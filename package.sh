if [[ -z $1 ]]; then
  echo $1
  echo "This script is unsafe. Read it before using it."
  echo "Usage: sudo $0 ok"
  exit
fi

# pacman
pacman -S $(grep -vE "^\s*#" ./.packlist/notes.txt | tr "\n" " ")
