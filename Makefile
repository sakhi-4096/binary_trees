CC = gcc
CFLAGS = -g -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c 11-binary_tree_size.c ./tests/11-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 11-size

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
