#include <stdio.h>

int add(int a, int b);

int main(void) {
    int num = 100;

    int sum = add(10, 20);
    
    printf("%d\n", num);
    return 0;
}

int add(int a, int b) {
    int num1 = a;
    int num2 = b;
    return num1 + num2;
}