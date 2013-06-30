#!/bin/sh

#
# Executed by startx
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#
# Xmodmap
#

if [ -s ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

#
# Merge resources
#
xrdb -merge ~/.Xresources
exec startxfce4
