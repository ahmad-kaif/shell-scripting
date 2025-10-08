// Q.2) Write a program that calls fork() thrice and count how many processes are created in
// total.
#include <stdio.h>
#include <unistd.h>

int main() {
    // 1 original process
    fork(); // 1st fork → 2 processes
    fork(); // 2nd fork → 4 processes
    fork(); // 3rd fork → 8 processes

    printf("Hello from process %d\n", getpid());
    return 0;
}
