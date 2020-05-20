#! /bin/bash

spk_fnc(){
spk=
while [ true ]; do
	echo -n "Please enter text: "  
	read spk 
#[ -z $spk ] && echo "Empty" || echo "Not Empty" | espeak -s150	
done
}
spk_fnc

name=
echo -n "Please enter name: "
read $name
[ -z "$name" ] && echo "Empty" || echo "Not Empty" | espeak -s150	
echo $name
