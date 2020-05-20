#! /bin/bash

err_hnd_fnc(){
clear
 if [[ -z $say ]]; then
	echo -n "No text entered." | espeak -s150
else
	return 0
fi
}

ext_fnc(){
clear
 if [[ $say == "q1" ]]; then
	echo "Exit program." | espeak -s150
	exit
else
	return 0
fi
}

main_fnc(){
clear
echo -n "Enter text!" | espeak -s150
say=()
while true; do
echo -n "Enter text: " ; read $say
err_hnd_fnc
ext_fnc
echo $say | espeak -s150
done
clear
}

main_fnc
