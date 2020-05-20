#!/bin/bash

# Store command output in an array so each word is a separate array item.    
list=($(echo $'red\ngreen\nblue'))
my_var=blue

for ((i = 0; i < ${#list}; i++)); do
    if [[ ${list[$i]} = $my_var ]]; then
        echo "found at index $i"
        break
    fi
done

if ((i == ${#list})); then
    echo "not found"
fi
