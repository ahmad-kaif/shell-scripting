# Q.7) Write a shell command to print the square of each number that lies in the range 1 to 100.

awk 'BEGIN { for(i=1;i<=100;i++) print i*i }'
