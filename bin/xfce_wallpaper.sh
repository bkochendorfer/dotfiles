#!/bin/bash

#
# change background every 15 m.
# start script in xinitrc
#

IMGDIR=$HOME/backgrounds

while [ 1 ]; do
  BG="$(find $IMGDIR -type f | shuf -n 1)"
  xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "$BG"
  sleep 15m
done
