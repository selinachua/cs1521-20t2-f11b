#include <stdio.h>

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Not the correct amount of arguments.");
        return 1;
    }

    char *file_name = argv[1];
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror(file_name); 
        return 1;
    }
    int ch;
    while((ch = fgetc(stdin)) != '\n') {
        fprintf(fp, "%c", ch);
    }
    fclose(fp);

    return 0;
}