#include <stdio.h>

int main(int argc, char *argv[])
{
    if (argc < 2) {
        printf("wzip: file1 [file2 ...]\n");
        return 1;
    }

    int previous = EOF;
    int count = 0;

    for (int i = 1; i < argc; i++) {

        FILE *file = fopen(argv[i], "r");

        if (file == NULL) {
            printf("wzip: cannot open file\n");
            return 1;
        }

        int current;

        while ((current = fgetc(file)) != EOF) {

            if (previous == EOF) {
                previous = current;
                count = 1;
            }
            else if (current == previous) {
                count++;
            }
            else {
                fwrite(&count, sizeof(int), 1, stdout);
                fwrite(&previous, sizeof(char), 1, stdout);

                previous = current;
                count = 1;
            }
        }

        fclose(file);
    }

    if (previous != EOF) {
        fwrite(&count, sizeof(int), 1, stdout);
        fwrite(&previous, sizeof(char), 1, stdout);
    }

    return 0;
}