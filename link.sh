here=$(realpath .)

# ln -s ./.zshrc ~/.zshrc
for f in $(find . -type f -name ".*"); do
  if [[ ! -d $f ]]; then
    s=$(realpath $f)
    d=$(basename $f)
    echo -------- $s "$HOME/$d"
    if [[ -n $1 ]]; then
      rm "$HOME/$d"
    fi
    ln -s $s "$HOME/$d"
  fi
done
echo

# .config/*
if [[ ! -d "$HOME/.config" ]]; then
  mkdir ~/.config
  echo "made .config folder"
fi

for f in ./.config/* ; do
  s=$(realpath $f)
  d=$(basename $f)
  echo -------- $s "$HOME/.config/$d"
  if [[ -n $1 ]]; then
    rm -r "$HOME/.config/$d"
  fi
  ln -s $s "$HOME/.config/$d"
done
