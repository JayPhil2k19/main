#! /bin/bash

fnd_fnc(){
. clr-var.sh
file_ary=( '.bashrc' '.bash_aliases' )
echo "${#file_ary[@]}"
sleep 1
[ -f $file_ary ] && echo -e $BGr "File Found!" $NC || echo -e $BRd "File Not Found" $NC
echo "${file_ary[*]}"
}

name=( "Jason" "Luc" "Phillips" )
[ -z $name ] && echo "No Data" || echo "${name[*]}" | espeak 
