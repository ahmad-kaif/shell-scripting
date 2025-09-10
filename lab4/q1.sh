#  Q.1) Write a Shell Script to arrange the elements of the array number = {9, 4, 7, 6, 2, 5, 3} in
# ascending order.

numbers=(9 4 7 6 2 5 3)
n=${#numbers[@]}


# Bubble sort
for((i=0;i<n;i++))
do
    for((j=i+1;j<n;j++))
    do  
        if [ ${numbers[i]} -gt ${numbers[j]} ]
        then
            temp=${numbers[i]}
            numbers[i]=${numbers[j]}
            numbers[j]=$temp
        fi
    done
done


echo "Array in ascending order: ${numbers[@]}"
