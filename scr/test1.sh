#! /bin/bash

info_fnc(){
clear
echo "Software List: "
PS3='Please make selection: '
local inf_opt_ary=( "Espeak" "Variety" "Virtual Box" "CairoDock" "Back <<" )
local inf_cho=
select inf_cho in "${info_opt_ary[@]}"
do
	case $inf_cho in
	"Espeak") clear ; apt show espeak;;
	"Variety") clear ; apt show variety;;
	"Virtual Box") clear ; apt show virtualbox;;
	"cairo Dock") clear ; apt show cairo-dock;;
	"Back <<") clear ; menu_fnc;; 
	*) echo "Invalid selection" ;;
	esac
done
#return 0
}
info_fnc
