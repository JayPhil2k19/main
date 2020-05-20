#! /bin/bash

touch test0.log

varA="aliases"
varB="="
dat_ary=( )
for(( i=0; i<=2; i++ )) do
echo "Please enter 3 items: "
read dat_ary
echo $varA $varB":"$dat_ary
done 
