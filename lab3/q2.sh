#!/bin/bash
# Program to perform operations on two decimal numbers using bc

# Check if two arguments are provided
if [ $# -ne 2 ]
then
    echo "Usage: $0 <num1> <num2> not provided"
    exit 1
fi

a=$1
b=$2

# Using bc for floating point arithmetic
add=$(echo "$a + $b" | bc)
sub=$(echo "$a - $b" | bc)
mul=$(echo "$a * $b" | bc)

if [ "$(echo "$b != 0" | bc)" -eq 1 ]; then
    div=$(echo "scale=2; $a / $b" | bc)
    echo "Division: $div"
else
    echo "Division: Not possible (Division by zero)"
fi

# Display results
echo "Addition: $add"
echo "Subtraction: $sub"
echo "Multiplication: $mul"

