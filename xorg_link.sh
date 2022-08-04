if [[ -z $1 ]]; then
  echo $1
  echo "This script is unsafe and uses priviledge. Read it before using it."
  echo "Usage: sudo $0 ok"
  exit
fi

# dconf
echo -------- Entering unsafe part of the script
echo -------- dconf
s=$(realpath ".xorg.conf.d/")
rm -r "/usr/share/X11/xorg.conf.d"
ln -s $s "/usr/share/X11/xorg.conf.d"
