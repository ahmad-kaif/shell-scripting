# Q.3) Write a shell command to print such a record in which the employee's salary is greater
# than 70000.

# awk -F, 'if(NR>1  && $5 > 70000) print $0' input.txt

awk -F, 'NR > 1 && $5 > 70000 { print $5 }' input.txt


#  NR - to remove the header file
# awk -F, 'NR>1 && $5 > 