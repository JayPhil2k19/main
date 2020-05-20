#! /bin/bash

err_hnd_fnc(){
clear
        if [[ -z $say ]]; then
echo -n "No text found" | espeak -s150 5>/dev/null
        else
return 0
        fi
}

ext_fnc(){
clear
        if [[ $say == ":q" ]]; then
echo "Exit program." | espeak -s150 5>/dev/null
exit
        else
        return 0
        fi
}

main_fnc(){
clear
echo -n "Enter text: " | espeak -s150 5>/dev/null
say=()
while true; do
echo -n "Enter text: " ; read say
echo $say | espeak -s150 5>/dev/null
err_hnd_fnc
ext_fnc
done
clear
}

main_fnc
