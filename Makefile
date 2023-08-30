CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c 5-binary_tree_is_root.c 6-binary_tree_preorder.c ./tests/6-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 6-pre

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
