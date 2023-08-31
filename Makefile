CC = gcc
CFLAGS = -g -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c ./tests/18-main.c 18-binary_tree_uncle.c 0-binary_tree_node.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 17-sibling

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
