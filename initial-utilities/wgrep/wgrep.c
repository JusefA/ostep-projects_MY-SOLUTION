#define _POSIX_C_SOURCE 200809L

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
    if (argc < 2) {
        printf("wgrep: searchterm [file ...]\n");
        return 1;
    }

    char *searchTerm = argv[1];

    if (argc == 2) {
        char *line = NULL;
        size_t lineSize = 0;

        while (getline(&line, &lineSize, stdin) != -1) {
            if (strstr(line, searchTerm) != NULL) {
                printf("%s", line);
            }
        }

        free(line);
        return 0;
    }

    for (int i = 2; i < argc; i++) {
        FILE *file = fopen(argv[i], "r");

        if (file == NULL) {
            printf("wgrep: cannot open file\n");
            return 1;
        }

        char *line = NULL;
        size_t lineSize = 0;

        while (getline(&line, &lineSize, file) != -1) {
            if (strstr(line, searchTerm) != NULL) {
                printf("%s", line);
            }
        }

        free(line);
        fclose(file);
    }

    return 0;
}