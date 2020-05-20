#! /bin/bash

sys_star_fnc(){
echo "system startup time:" | espeak -s150
systemd-analyze | awk '{print $10, $11}' | espeak -s150
}

sys_up_fnc(){
ut=`uptime -p`
uptime -p | espeak -s150
echo $ut
}

sys_star_fnc
sys_up_fnc
