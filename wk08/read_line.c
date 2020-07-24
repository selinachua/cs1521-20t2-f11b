#include <stdio.h>

// ./read_line text.txt

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Not the correct amount of arguments.");
        return 1;
    }

    // 1. Grab the filename from argument
    char *file_name = argv[1];

    // 2. Open the file
    FILE *fp = fopen(file_name, "r");
    // if (fp == NULL)
    if (!fp) {
        perror(file_name); // file_name: ...
        return 1;
    }

    // 3. Read from the file & print out the first line
    int ch;
    while((ch = fgetc(fp)) != '\n') {
        fprintf(stdout, "%c", ch);
        // printf("%c", ch);
        // fputc(ch, stdout);
    }

    // 4. Close the file
    fclose(fp);

    return 0;
}