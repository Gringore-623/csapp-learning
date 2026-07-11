CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -Og -g

TARGET = test_machine
OBJECTS = machine.o test_machine.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

machine.o: machine.c machine.h
	$(CC) $(CFLAGS) -c machine.c

test_machine.o: test_machine.c machine.h
	$(CC) $(CFLAGS) -c test_machine.c

test: $(TARGET)
	./$(TARGET)

assembly:
	$(CC) -std=c11 -Og -S -masm=intel machine.c -o machine-Og.s
	$(CC) -std=c11 -O0 -S -masm=intel machine.c -o machine-O0.s
	$(CC) -std=c11 -O2 -S -masm=intel machine.c -o machine-O2.s

disassemble: $(TARGET)
	objdump -d -Mintel $(TARGET) > test_machine.asm

clean:
	rm -f $(TARGET) $(OBJECTS)
	rm -f machine-O0.s machine-Og.s machine-O2.s
	rm -f test_machine.asm

.PHONY: all test assembly disassemble clean