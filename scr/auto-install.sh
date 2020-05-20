#! /bin/bash

#Menu Interface
menu_fnc(){
echo "System Setup Utility!"
PS3='Please make selection: '
local men_opt_ary=( "Install Software" "Information" "Exit")
local men_cho=
select men_cho in "${men_opt_ary[@]}"
do
	case $men_cho in
	"Install Software") install_fnc;;
	"Information") info_fnc;;
	"Exit") exit;;
	*) echo "Invalid choice" ;;
	esac
done
clear
return 0
}

#Setup Functions
install_fnc(){
clear
echo "Select software to install: "
PS3='Please make selection: '
local ins_opt_ary=( "Espeak" "Variety" "Virtual Box" "CarioDock" "Back <<" )
local ins_cho=
select ins_cho in "${ins_opt_ary[@]}"
do  
sudo ls > /dev/null
	case $ins_cho in
	"Espeak") clear ; apt show espeak | more ; echo "Install?";;
	"Variety") clear ; apt show variety | more;;
	"Virtual Box") clear ; apt show virtualbox | more;;
	"Cairo Dock") clear ; apt show cairo-dock | more;;
	"Back <<") clear ; menu_fnc;;
	*) echo "Invalid selection." ;; 
	esac
done
return 0
}

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
menu_fnc


