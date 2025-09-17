#!/bin/bash

echo "enter a number"
read n
if [[ $n -ge 0 ]]; then
    echo "Number $n, is positive"
else 
    echo "Number $n is negative"
fi

