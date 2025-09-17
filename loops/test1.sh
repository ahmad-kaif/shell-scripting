# #!/bin/bash

# for((i=0 ; i<=5 ; i++)); do
#     echo "$i"
# done
# # 0
# # 1
# # 2
# # 3
# # 4
# # 5


# for i in {1..5}; do
#     echo $i
# done
# # 1
# # 2
# # 3
# # 4
# # 5

# for i in apple banana mango; do
#     echo $i
# done
# # apple
# # banana
# # mango


# arr=("mon" "tuesday" "wednesday")

# for i in ${arr[@]}; do
#     echo $i
# done


# bubble sort
# nums=(7 3 2 9 1)
# n=${#nums[@]}

# for((i=0; i<n; i++)); 
# do
#     for((j=i+1; j<n ; j++));
#     do
#         if (( nums[i] > nums[j] )); then
#             temp=${nums[j]}
#             nums[j]=${nums[i]}
#             nums[i]=$temp
#         fi
#     done
# done

# echo "Sorted arr is: ${nums[@]}"



# rev a number
# echo " give me a number"
# read n
# ans=0
# while((n>0));
# do
#     rem=$((n%10))
#     ans=$((ans*10+rem))
#     n=$((n/10))
# done

# echo "Rev num is $ans"



i=0
while (( i != 5 ));
do 
    if (( i == 5 )); then
        echo "5 occurred"
        break
    fi
    echo $i
    i=$((i+1))
done

