CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c ./tests/7-main.c 7-binary_tree_inorder.c 0-binary_tree_node.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 7-in

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
