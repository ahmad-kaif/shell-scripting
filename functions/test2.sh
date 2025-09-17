# #!/bin/bash
# echo "Bash program to print all files with .sh in current directory"

# for file in *.sh;
# do
#     if [[ -f $file ]]; then
#         echo $file
#     fi
# done
    

# echo "enter P"
# read p
# echo "enter R"
# read r
# echo "enter T"
# read t


# amount=$(echo "$p * (1+$r/100)^$t" | bc -l)
# ci=$(echo "$amount -$p"| bc -l)

# si=$(echo "($p*$r*$t)/100" | bc -l)
# echo "SI : $si"
# echo "Amount : $amount"
# echo "CI : $ci"



for file in *.c; do
    if [[ -f $file ]]; then
        echo $file
    fi
done
