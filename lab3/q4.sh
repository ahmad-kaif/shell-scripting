#!/bin/bash
# Program to find the largest of three numbers

if [ $# -ne 3 ]
then
    echo "Usage: $0 <num1> <num2> <num3>"
    exit 1
fi

a=$1
b=$2
c=$3

if [ $a -ge $b ] && [ $a -ge $c ]
then
    echo "Largest number: $a"
elif [ $b -ge $a ] && [ $b -ge $c ]
then
    echo "Largest number: $b"
else
    echo "Largest number: $c"
fi

