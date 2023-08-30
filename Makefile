CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic -std=gnu89
BINS=tree

all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	$(RM) $(BINS)
