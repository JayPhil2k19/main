#!/bin/sh

# ~/.config/xmenu/xmenu/xmenu.sh
# MUST use printf, NOT heredoc

printf 'Applications:\n'
printf '\tIMG:%s/.icons/firefox.png\tSearch\tdmenu_run\n' "$HOME"
printf '\tIMG:%s/.icons/firefox.png\tFirefox\tfirefox\n' "$HOME"
printf '\tIMG:%s/.icons/brave.png\tBrave\tbrave\n' "$HOME"
printf '\tIMG:%s/.icons/gimp.png\tGIMP\tgimp\n' "$HOME"
printf '\tIMG:%s/.icons/file.png\tRanger\tst -e ranger\n' "$HOME"
printf '\tIMG:%s/.icons/file.png\tVirtualbox\tvirtualbox\n' "$HOME"

printf 'Terminal:\n'
printf '\tIMG:%s/.icons/terminal.jpeg\tst\tst\n' "$HOME"
printf '\tIMG:%s/.icons/terminal.jpeg\turxvt\turxvt\n' "$HOME"
printf '\tIMG:%s/.icons/terminal.jpeg\txterm\txterm\n' "$HOME"

printf 'Settings:\n'
printf '\tIMG:%s/.icons/settings.png\tdwm\tst -e vim %s/dwm/config.def.h\n' "$HOME" "$HOME"
printf '\tIMG:%s/.icons/settings.png\tdmenu\tst -e vim %s/dmenu/config.def.h\n' "$HOME" "$HOME"
printf '\tIMG:%s/.icons/settings.png\tst\tst -e vim %s/st/config.h\n' "$HOME" "$HOME"
printf '\tIMG:%s/.icons/settings.png\txmenu\tst -e vim %s/xmenu/xmenu/xmenu.sh\n' "$HOME" "$HOME"

printf 'Wallpaper:\n'
printf '\tIMG:%s/.icons/wallpaper.jpeg\tChange Wallpaper\tfeh --bg-scale %s/Pictures/Wallpapers/*\n' "$HOME" "$HOME"

printf 'Music:\n'
printf '\tIMG:%s/.icons/music.jpeg\tPlay\tmpc play\n' "$HOME"
printf '\tIMG:%s/.icons/music.jpeg\tPause\tmpc toggle\n' "$HOME"
printf '\tIMG:%s/.icons/music.jpeg\tStop\tmpc stop\n' "$HOME"
printf '\tIMG:%s/.icons/music.jpeg\tPrev\tmpc prev\n' "$HOME"
printf '\tIMG:%s/.icons/music.jpeg\tNext\tmpc next\n' "$HOME"
