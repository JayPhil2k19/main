#!/bin/sh
# Gives a dmenu prompt to search DuckDuckGo.
# Without input, will open DuckDuckGo.com.
# URLs will be directly handed to the browser.
# Anything else, it search it.
#browser=${BROWSER:-firefox}
shutdown=`systemctl poweroff`
reboot=`systemctl reboot`
pgrep -x dmenu && exit

choice=$(echo "Menu:" | dmenu -i -p  "(S)hutdown (R)estart (L)ogoff" -fn 'NotMonoRegular:bold:pixelsize=18') || exit 1

if [ "$choice" = "S"  ]; then
    $shutdown

	if [ "$choice" = "R" ]; then
	$reboot
	if [ "$choice" = "S" ]; then

