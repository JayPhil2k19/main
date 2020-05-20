#! /bin/bash


while true; do
cd ~/Pictures/wallpapers-master/
f_bg=`find -maxdepth 5 -type f  | shuf -n 1`
feh --bg-scale $f_bg
wal -i $f_bg
xrd 2>/dev/null
sleep 1h
done





