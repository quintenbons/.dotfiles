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
    echo -------- $s "/home/bonsq/$d"
    rm "/home/bonsq/$d"
    ln -s $s "/home/bonsq/$d"
  fi
done
echo

# .config/*
if [ ! -d "/home/bonsq/.config" ]; then
  mkdir ~/.config
  echo "made .config folder"
fi

for f in ./.config/* ; do
  s=$(realpath $f)
  d=$(basename $f)
  echo -------- $s "/home/bonsq/.config/$d"
  rm -r "/home/bonsq/.config/$d"
  ln -s $s "/home/bonsq/.config/$d"
done
