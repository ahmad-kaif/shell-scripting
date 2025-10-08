// Q.6) Write a program where:
// • The parent terminates before the child.
// • The child sleeps for a few seconds, then prints its PPID (which should now be 1, the
// init process).


#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid = fork(); // Create child process

    if (pid < 0) {
        perror("Fork failed");
        return 1;
    }

    if (pid == 0) {
        // Child process
        printf("Child: Started. PID = %d, PPID = %d\n", getpid(), getppid());
        sleep(5); // Let parent exit first
        printf("Child: After sleep. PID = %d, PPID = %d\n", getpid(), getppid());
        // Now PPID will be 1 (init or systemd)
    } else {
        // Parent process
        printf("Parent: Exiting now. PID = %d, Child PID = %d\n", getpid(), pid);
        _exit(0); // Parent exits immediately
    }

    return 0;
}
