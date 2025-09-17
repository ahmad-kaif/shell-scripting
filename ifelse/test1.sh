#!/bin/bash
echo "Enter a num 1: "
read a
echo "Enter num 2: "
read b
if [[ $a -eq $b ]]; then
    echo "$a is = to $b"
elif [[ $a -gt $b ]]; then
    echo "$a is greater than $b"
else 
    echo "$a is less than $b"
fi
