#!/bin/bash
# Program to check if a number is prime

# Check if a number is provided
if [ $# -ne 1 ]
then
    echo "Usage: $0 <number>"
    exit 1
fi

num=$1
if [ $num -lt 2 ]
then
    echo "$num is NOT a prime number"
    exit 0
fi

flag=0
for ((i=2; i*i<=num; i++))
do
    if [ $((num % i)) -eq 0 ]
    then
        flag=1
        break
    fi
done

if [ $flag -eq 0 ]
then
    echo "$num is a PRIME number"
else
    echo "$num is NOT a prime number"
fi

