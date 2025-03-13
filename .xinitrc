#!/usr/bin/env sh

# Set wallpaper
$HOME/.fehbg &

# Set and update status bar 
while true; do
	# get wifi strength
	NET=$(nmcli dev wifi | grep '^[*]' | awk '/*/ {print $9}')
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

# Enable window decorations
picom &

# start dwm
exec dwm
