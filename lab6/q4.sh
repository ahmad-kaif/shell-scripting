# Q.4) Write a shell command to print the line number of the record in which employee ‘Bob’s
# information is given.

awk 'NR==3' input.txt
