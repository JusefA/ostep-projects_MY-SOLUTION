#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    if (argc == 1) {
        return 0;
    }

    for (int i = 1; i < argc; i++) {
        FILE *file = fopen(argv[i], "r");

        if (file == NULL) {
            printf("wcat: cannot open file\n");
            return 1;
        }

        int c;

        while ((c = fgetc(file)) != EOF) {
            putchar(c);
        }

        fclose(file);
    }

    return 0;
}