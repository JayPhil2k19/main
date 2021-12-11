#! /bin/sh
#Run services
numlockx &
ssh-add ~/.ssh/id_rsa &
eval $(ssh-agent)

mpd &

#Set background wallpaper.
screenres
setbg
#. ~/.config/scripts/screenres
#. ~/.config/scripts/setbg
picom &
conky -c ~/.config/conky/modules/system &
#Play start-up sound.
aucat -i ~/.config/sounds/startup.wav

dwmblocKs

exec dwm
