#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Original process → PID: %d | PPID: %d\n", getpid(), getppid());

    // First fork
    fork();
    printf("After 1st fork → PID: %d | PPID: %d\n", getpid(), getppid());

    // Second fork
    fork();
    printf("After 2nd fork → PID: %d | PPID: %d\n", getpid(), getppid());

    // Third fork
    fork();
    printf("After 3rd fork → PID: %d | PPID: %d\n", getpid(), getppid());

    return 0;
}
