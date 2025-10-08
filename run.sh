#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: ./run.sh <filename.c | filename.cpp | filename.sh>"
    exit 1
fi

file=$1

# Detect file type
if [[ $file == *.c ]]; then
    compiler="gcc"
    echo "Compiling C file..."
    $compiler "$file" -o output

    if [ $? -eq 0 ]; then
        echo "Compilation successful. Running program..."
        ./output
        rm -f output  # Optional cleanup
    else
        echo "Compilation failed!"
    fi

elif [[ $file == *.cpp ]]; then
    compiler="g++"
    echo "Compiling C++ file..."
    $compiler "$file" -o output

    if [ $? -eq 0 ]; then
        echo "Compilation successful. Running program..."
        ./output
        rm -f output  # Optional cleanup
    else
        echo "Compilation failed!"
    fi

elif [[ $file == *.sh ]]; then
    echo "Running Shell script..."
    bash "$file"

else
    echo "Unsupported file type! Please provide a .c, .cpp, or .sh file."
    exit 1
fi
