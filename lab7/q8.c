// Q.8) Write a program to create a child process. The parent process passes two integer
// numbers as arguments to the child process. The child process add the numbers and prints the
// result.

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    pid_t pid = fork();  // create child

    if (pid < 0) {
        perror("Fork failed");
        return 1;
    }

    if (pid == 0) {
        // Child process: executes a new program to add numbers
        printf("Child: Executing add program...\n");
        execl("./add", "add", "5", "7", NULL); 
        // replace with your program name or path, arguments are "5" and "7"
        perror("execl failed"); // only runs if execl fails
    } 
    else {
        // Parent process
        printf("Parent: Created child with PID = %d\n", pid);
    }

    return 0;
}
