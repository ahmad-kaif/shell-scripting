#!/bin/bash
# Program to perform addition, subtraction, multiplication and division on two integers

# Taking input from the user
echo "Enter first integer:"
read a
echo "Enter second integer:"
read b

# Performing operations
add=$((a + b))
sub=$((a - b))
mul=$((a * b))

# Handling division by zero
if [ $b -ne 0 ]
then
    div=$((a / b))
    echo "Division: $div"
else
    echo "Division: Not possible (Division by zero)"
fi

# Displaying results
echo "Addition: $add"
echo "Subtraction: $sub"
echo "Multiplication: $mul"

