#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: ./add num1 num2\n");
        return 1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int sum = a + b;

    printf("Child: Sum of %d and %d is %d\n", a, b, sum);

    return 0;
}
