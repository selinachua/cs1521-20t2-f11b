#include <stdio.h>

int main(void) {
    for (int x = 24; x < 42; x += 3) {
        printf("%d\n",x);
    }
}

int main(void) {
    int x = 24;         // 1
    while (x < 42) {    // 2
        printf...       // 3
        x += 3;         // 4
                        // 5
    }
}
