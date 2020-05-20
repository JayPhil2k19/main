#! /bin/bash

ext_fnc(){
clear
if [[ $say == "q!" ]]; then
echo -n "Exit Program." | espeak -s150 
	clear
       exit
fi
	return 0
}

chk_er_fnc(){
if [[ -z $say ]]; then
	echo -n "No text found!" | espeak -s150
	else
clear
	return 0
fi
}

main_fnc(){
clear
echo "Enter text" | espeak -s150 
say=() 
while true; do
echo -n "Enter text: " ; read say
echo $say | espeak -s150
#Running error checking
chk_er_fnc
#Exit function
ext_fnc
done
clear
}

main_fnc
