# Q.5) Write a shell command to print all records with their corresponding line number.

awk '{print NR, $0}' input.txt

