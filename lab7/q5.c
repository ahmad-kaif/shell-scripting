// Q.5) Create a program where:
// • The child executes a new program using execlp() (for example, run the ls command).
// • The parent prints a message saying "Child executed ls command".

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>  // For wait()

int main() {
    pid_t pid;

    pid = fork();  // Create a child process

    if (pid < 0) {
        // fork() failed
        printf("Fork failed!\n");
        return 1;
    }

    else if (pid == 0) {
        // Child process
        printf("Child process (PID: %d) executing 'ls' command...\n", getpid());

        // Replace current process with "ls" command
        execlp("ls", "ls", "-l", NULL);

        // If execlp() fails, the below line will run
        printf("execlp failed!\n");
    }

    else {
        // Parent process
        wait(NULL);  // Wait for the child to complete
        printf("Parent process (PID: %d): Child executed ls command.\n", getpid());
    }

    return 0;
}
