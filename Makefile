CC=gcc
CFLAGS=-g -Wall -Werror -std=C89
BINS=tree

all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	$(RM) $(BINS)
