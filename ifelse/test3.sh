#!/bin/bash

echo "Enter a number: "
read n

if (( n % 2 == 0 )); then
    echo "Number $n is even"
else 
    echo "Number $n is odd"
fi
