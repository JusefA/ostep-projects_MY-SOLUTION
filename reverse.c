#define _POSIX_C_SOURCE 200809L

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

typedef struct Node {
    char *line;
    struct Node *next;
} Node;

static void free_list(Node *head)
{
    while (head != NULL) {
        Node *next = head->next;

        free(head->line);
        free(head);

        head = next;
    }
}

static void close_files(FILE *input, FILE *output)
{
    if (output != stdout) {
        fclose(output);
    }

    if (input != stdin) {
        fclose(input);
    }
}

int main(int argc, char *argv[])
{
    FILE *input = stdin;
    FILE *output = stdout;
    Node *head = NULL;

    char *line = NULL;
    size_t capacity = 0;

    if (argc > 3) {
        fprintf(stderr, "usage: reverse <input> <output>\n");
        exit(1);
    }

    if (argc >= 2) {
        input = fopen(argv[1], "r");

        if (input == NULL) {
            fprintf(stderr, "reverse: cannot open file '%s'\n", argv[1]);
            exit(1);
        }
    }

    if (argc == 3) {
        int same_file = 0;

        if (strcmp(argv[1], argv[2]) == 0) {
            same_file = 1;
        } else {
            struct stat input_info;
            struct stat output_info;

            if (fstat(fileno(input), &input_info) == 0 &&
                stat(argv[2], &output_info) == 0 &&
                input_info.st_dev == output_info.st_dev &&
                input_info.st_ino == output_info.st_ino) {
                same_file = 1;
            }
        }

        if (same_file) {
            fprintf(stderr, "reverse: input and output file must differ\n");
            fclose(input);
            exit(1);
        }

        output = fopen(argv[2], "w");

        if (output == NULL) {
            fprintf(stderr, "reverse: cannot open file '%s'\n", argv[2]);
            fclose(input);
            exit(1);
        }
    }

    while (getline(&line, &capacity, input) != -1) {
        Node *new_node = malloc(sizeof(Node));

        if (new_node == NULL) {
            fprintf(stderr, "malloc failed\n");

            free(line);
            free_list(head);
            close_files(input, output);

            exit(1);
        }

        new_node->line = line;
        new_node->next = head;
        head = new_node;

        line = NULL;
        capacity = 0;
    }

    free(line);

    for (Node *current = head; current != NULL; current = current->next) {
        fprintf(output, "%s", current->line);
    }

    free_list(head);
    close_files(input, output);

    return 0;
}
