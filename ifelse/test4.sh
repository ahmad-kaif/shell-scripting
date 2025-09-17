#!/bin/bash

echo "1.Add 2.Subtract 3.Multiply 4.Divide"
echo "Enter choice" 
read ch;
echo "enter two numbers"
read a b

if (( ch == 1 )); then
    echo "Addition is : $((a+b))"
elif (( ch == 2 )); then
    echo "Subtraction is : $((a-b))"
elif (( ch == 3 )); then
    echo "Multiply is : $((a*b))"
elif (( ch == 4 )); then
    echo "division is : $((a/b))"
else
    echo "Wrong choice"
fi