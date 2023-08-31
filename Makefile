CC = gcc
CFLAGS = -g -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c 16-binary_tree_is_perfect.c ./tests/16-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 16-perfect

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
