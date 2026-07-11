CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -Wconversion -Og -g

TARGET = test_bits
OBJECTS = bits.o test_bits.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

bits.o: bits.c bits.h
	$(CC) $(CFLAGS) -c bits.c

test_bits.o: test_bits.c bits.h
	$(CC) $(CFLAGS) -c test_bits.c

test: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)

.PHONY: all test clean