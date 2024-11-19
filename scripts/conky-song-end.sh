#! /bin/sh
#while true; do
conky=`pgrep -a conky | grep ".conky_music" | awk '{print $1}'`
mpc=`mpc status | grep "playing" | awk '{print $1}'`
mpc_check(){
if [[ $mpc = "" ]]; then

	echo "mpc is off"
else
	echo "mpc is on"
. ~/conk-start.sh
fi
return 0
}

mpc_state(){
if [[ $mpc = " " ]]; then
	echo "mpc is paused"

if [[ $mpc = "playing" ]]; then
	echo "mpc is playing"
fi
fi
}
#done

#mpc_check
mpc_state
