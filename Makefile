CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c ./tests/8-main.c 8-binary_tree_postorder.c 0-binary_tree_node.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 8-post

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
