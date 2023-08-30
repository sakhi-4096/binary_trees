CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89

SOURCES = binary_tree_print.c ./tests/0-main.c 0-binary_tree_node.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = 0-node

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
