#! /bin/bash

#Color normal
CLR_BK='\e[0;30m' #Black
CLR_RD='\e[0;31m' #Red
CLR_GR='\e[0;32m' #Green
CLR_YL='\e[0;33m' #Yellow
CLR_BL='\e[0;34m' #Blue
CLR_PR='\e[0;35m' #Purple
CLR_CY='\e[0;36m' #Cyan
CLR_WH='\e[0;37m' #White
CLR_NC='\e[0;0m' #No Color

#Color Bold
BBk='\e[1;30m' #Black
BRd='\e[1;31m' #Red
BGr='\e[1;32m' #Green
BYl='\e[1;33m' #Yellow
BBl='\e[1;34m' #Blue
BPr='\e[1;35m' #purple
BCy='\e[1;36m' #Cyan
BWh='\e[1;37m' #White

#echo -e $CLR_RD "Testing..." $CLR_BL"1...2...3"
#echo -e $BRd "Testing..." $BBl "1...2...3"

for (( i=30; i>=37; i++ ))
do
echo "Hello $i Jason"
done

