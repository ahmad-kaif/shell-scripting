#!/bin/bash
# Program to perform arithmetic operations based on user choice

echo "Enter first integer:"
read x
echo "Enter second integer:"
read y
echo "Enter your choice (1:Add, 2:Subtract, 3:Multiply, 4:Divide):"
read choice

case $choice in
    1)
        echo "Addition: $((x + y))"
        ;;
    2)
        echo "Subtraction: $((x - y))"
        ;;
    3)
        echo "Multiplication: $((x * y))"
        ;;
    4)
        if [ $y -ne 0 ]
        then
            echo "Division: $((x / y))"
        else
            echo "Division: Not possible (Division by zero)"
        fi
        ;;
    *)
        echo "Not a valid choice!"
        ;;
esac

