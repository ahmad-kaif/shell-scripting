#!/bin/bash

# prime(){
#     n=$1
#     for((i=2;i<n;i++));
#     do
#         if (( n%i == 0));then
#             echo "$n is not prime" 
#             return
#         fi
#     done

#     echo "$n is a prime number"

# }
# echo "enter a number"
# read n
# prime $n


fibo(){
    n=$1

    a=0
    b=1
    echo "$a $b"
    for((i=3;i<=n;i++))
    do
        sum=$((a+b))
        echo "$sum"
        a=$b
        b=$sum
    done
}

fibo 7
