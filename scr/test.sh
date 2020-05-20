#! /bin/bash

who_usr_fnc(){
#global declare -a TXT=("Hello Jason")
	if [ $(whoami) != 'root' ]; then
	echo "Must be root $0"
	#exit 1;
	fi
}

for ((i=1; i<=7; i++))
	do
	echo $i":" "${TXT[*]}"
	done
for ((c=30; c<=37; c++))
	do
	echo -e "${TXT[*]}"
	done
echo -e "\e[1;35m" "Fuck"
