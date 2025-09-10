#!/bin/bash

factorial() {
    num=$1
    fact=1
    for ((i=1; i<=num; i++))
    do
        fact=$((fact * i))
    done
    echo $fact   # return result via echo
}

# Main program
echo "Enter a number:"
read n

result=$(factorial $n)  # capture function output
echo "Factorial of $n is: $result"
