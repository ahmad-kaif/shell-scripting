// Q.4) Write a C program that:
// • Creates a child process.
// • The child prints numbers from 1 to 5.
// • The parent waits for the child to finish using wait(), then prints its own message.

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>  // For wait()

int main() {
    pid_t pid;

    pid = fork(); // Create a child process

    if (pid < 0) {
        // fork() failed
        printf("Fork failed!\n");
        return 1;
    }

    else if (pid == 0) {
        // Child process
        printf("Child process (PID: %d) printing numbers:\n", getpid());
        for (int i = 1; i <= 5; i++) {
            printf("%d\n", i);
            sleep(1);  // Delay to simulate some work
        }
        printf("Child process finished.\n");
    }

    else {
        // Parent process
        wait(NULL);  // Wait for the child to finish
        printf("Parent process (PID: %d): Child has finished execution.\n", getpid());
    }

    return 0;
}
