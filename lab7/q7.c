// Q.7) Write a program where:
// • The child terminates immediately.
// • The parent sleeps for a few seconds before calling wait().
// • Observe the zombie state using ps -l during sleep.


#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid < 0) {
        perror("Fork failed");
        return 1;
    }

    if (pid == 0) {
        // Child process
        printf("Child: PID = %d, PPID = %d\n", getpid(), getppid());
        printf("Child: Exiting now...\n");
        _exit(0);  // Child terminates immediately
    } 
    else {
        // Parent process
        printf("Parent: PID = %d, Child PID = %d\n", getpid(), pid);
        printf("Parent: Sleeping for 10 seconds... (check 'ps -l' now)\n");
        sleep(10);  // Parent sleeps before reaping the child
        
        // Now call wait() to remove the zombie
        wait(NULL);
        printf("Parent: Child reaped successfully.\n");
    }

    return 0;
}
