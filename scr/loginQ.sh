#! /bin/bash
ans=
echo "Would you like to launch Ranger File Manger(y/n)?"
read $ans
if [ $ans  == "y" && "Y"  ]; then
	ranger
else
	exit;
fi

