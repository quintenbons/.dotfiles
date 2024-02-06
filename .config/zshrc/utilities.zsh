function cdb() {
  USAGE="Usage: cdb [-c|-g|-d|-l] [bookmark]" ;
  if  [ ! -e ~/.cd_bookmarks ] ; then
    mkdir ~/.cd_bookmarks
  fi

  case $1 in
    # create bookmark
    -c) shift
    if [ ! -f ~/.cd_bookmarks/$1 ] ; then
      echo "cd `pwd`" > ~/.cd_bookmarks/"$1" ;
    else
      echo "Bookmark already exists '$1'."
    fi
    ;;
    # delete bookmark
    -d) shift
    if [ -f ~/.cd_bookmarks/$1 ] ; then
      rm ~/.cd_bookmarks/"$1" ;
    else
      echo "Usage: $@ Bookmark" ;
    fi
    ;;
    # list bookmarks
    -l) shift
    ls ~/.cd_bookmarks/ ;
    ;;
    # goto bookmark (default)
    *) [ $1 = -g ] && shift;
    if [ -f ~/.cd_bookmarks/$1 ] ; then
      source ~/.cd_bookmarks/"$1"
    else
      echo "Bookmark not found." ;
      echo $USAGE;
    fi
    ;;
esac
}

_bookmark_complete () {
  for bookmark in ~/.cd_bookmarks/"$2"*; do
    COMPREPLY+=($(basename $bookmark))
  done
}

nvimfg () {
  if jobs | grep -q "nvim"; then
    fg nvim;
  else
    nvim $@;
  fi
}

prepmic () {
  pactl load-module module-null-sink sink_name=audiorelay-virtual-mic-sink sink_properties=device.description=Virtual-Mic-Sink;
  pactl load-module module-remap-source master=audiorelay-virtual-mic-sink.monitor source_name=audiorelay-virtual-mic-sink source_properties=device.description=Virtual-Mic;
}

stopmic () {
  systemctl --user restart pipewire pipewire-pulse;
}

vpnprofile () {
  nmcli c import type openvpn file /home/bonsq/school/vpn_ensimag.ovpn
  nmcli c modify vpn_ensimag ipv4.never-default true
  nmcli c modify vpn_ensimag vpn.user-name bonsq
}

# complete -F _bookmark_complete cdb
