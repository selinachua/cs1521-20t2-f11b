/**
 * Write a C program, print_diary.c, which prints the contents of the file 
 * $HOME/.diary to stdout
 * print contents of "/Users/selina/.diary"
 * The lecture example getenv.c shows how to get the value of an environment 
 * variable.
 * 
 * snprintf is a convenient fucntion for constructing the pathname of the 
 * diary file.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    // 1. Store "/.diary" in a string
    char *diary_string = "/.diary";
    // 2. Grab my home string 
    char *home_pathname = getenv("HOME");
    // 3. Concatenate these two strings using snprintf
    // diary_pathname = "Users/selina/.diary"
    // home_pathname + diary_string
    int diary_pathname_len = strlen(home_pathname) + strlen(diary_string) + 1;
    char diary_pathname[diary_pathname_len];
    snprintf(diary_pathname, diary_pathname_len, "%s%s", home_pathname, diary_string);

    // 4. Open my file
    FILE *fp = fopen(diary_pathname, "r");
    if (!fp) {
        perror(diary_pathname);
        return 1;
    }

    // 5. Read from my file
    int byte;
    while ((byte = fgetc(fp)) != EOF) {
        fputc(byte, stdout);
    }

    fclose(fp);

    return 0;
}