#!/bin/sh
# Gives a dmenu prompt to search DuckDuckGo.
# Without input, will open DuckDuckGo.com.
# URLs will be directly handed to the browser.
# Anything else, it search it.

temp(){
browser=${BROWSER:-firefox}

pgrep -x dmenu && exit

choice=$(echo "Help Me!!!i" -i -p  "Menu:" -fn 'NotMonoRegular:bold:pixelsize=18') || exit 1

if [ "$choice" = "🦆"  ]; then
    $browser "https://duckduckgo.com"
else
    if echo "$choice" | grep "^(http:\/\/|https:\/\/)?[a-zA-Z0-9]+\.[a-zA-Z]+(/)?.*$"; then
        $browser "$choice"
    else
        $browser "https://duckduckgo.com/?q=$choice&t=ffab&atb=v1-1"
    fi
fi
}
options=$(echo "(S)Hutdown" "(R)eboot" "(L)ogoff" )
arr=($options)

choices=( "${options}"  dmenu -i -p ':>' )

