// Recursive Function
// a[] = &a[0]
int max(int a[], int length) {
    int first_element = a[0];
    if (length == 1) {
        return first_element;
    } else {
        // find max value in rest of array
        int max_so_far = max(&a[1], length - 1);
        if (first_element > max_so_far) {
            max_so_far = first_element;
        }
        return max_so_far;
    }
}

4! = 4 * 3 * 2 * 1
   = 4 * 3!
   = 4 * 3 * 2!
   = 4 * 3 * 2 * 1!

factorial(4) = 4 * factorial(3)

int factorial(int num) {
    if (num == 1) {
        return 1;
    }
    return num * factorial(num - 1);
}
