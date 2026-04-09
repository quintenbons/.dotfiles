here=$(realpath .)

if [ -z $1 ]; then
  echo $1
  echo "This script is unsafe. Read it before using it."
  echo "Usage: $0 ok"
  exit
fi

# ln -s ./.zshrc ~/.zshrc
for f in $(find . -type f -name ".*"); do
  if [ ! -d $f ]; then
    s=$(realpath $f)
    d=$(basename $f)
    echo -------- $s "$HOME/$d"
    rm "$HOME/$d"
    ln -s $s "$HOME/$d"
  fi
done
echo

# .config/*
if [ ! -d "$HOME/.config" ]; then
  mkdir ~/.config
  echo "made .config folder"
fi

for f in ./.config/* ; do
  s=$(realpath $f)
  d=$(basename $f)
  echo -------- $s "$HOME/.config/$d"
  rm -r "$HOME/.config/$d"
  ln -s $s "$HOME/.config/$d"
done

# .local/scripts/*
if [ ! -d "$HOME/.local/scripts" ]; then
  mkdir -p ~/.local/scripts
  echo "made .local/scripts folder"
fi

for f in ./.local/scripts/* ; do
  s=$(realpath $f)
  d=$(basename $f)
  echo -------- $s "$HOME/.local/scripts/$d"
  rm -f "$HOME/.local/scripts/$d"
  ln -s $s "$HOME/.local/scripts/$d"
done
