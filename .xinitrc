#!/usr/bin/env sh

# set wallpaper
feh --bg-fill $HOME/wallpapers/gilles-lambert-mSK5nNsAsLY-unsplash.jpg &

# update status bar 
while true; do
  NET=$(nmcli dev wifi | grep '^[*]' | awk '/*/ {print $9}') # get wifi strength
  if [ ${#NET} -eq 4 ]; then
    WIFI=$'\Uf0928 '
  elif [ ${#NET} -eq 3 ]; then
    WIFI=$'\Uf0925 '
  elif [ ${#NET} -eq 2 ]; then
    WIFI=$'\Uf0922 '
  elif [ ${#NET} -eq 1 ]; then
    WIFI=$'\Uf0921 '
  else
  	WIFI=$'\Uf092e '
  fi 
  xsetroot -name " $WIFI $(date '+%b %d %H:%M') " 
  sleep 10s
done &

# start dwm
exec dwm
