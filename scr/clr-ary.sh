#! /bin/bash

colors[0]="RED"
colors[1]="Green"
colors[2]="Blue"

directions[0]="North"
directions[1]="South"
directions[2]="East"
directions[3]="West"

zzz(){
arr=$1
x='${$#arr[@]}'
eval max=$x
idx=0

while [ $idx -lt $max ]
do
v='${arr[$idx]}'
eval max=$v
echo ""$idx - $val""
(($idx=idx+1))
done
}

zzz colors
echo
zzz directions
