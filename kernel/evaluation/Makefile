########################################################################
# MakeFile for benchmarks
########################################################################

CC := riscv64-unknown-elf-gcc
OBJDUMP := riscv64-unknown-elf-objdump
CFLAGS := -O0 -std=gnu11 -Wall -specs=htif_nano.specs

OBJECTS = vvadd_main

all: $(OBJECTS)

$(OBJECTS): %: %.c
	$(CC) $(CFLAGS) -march=rv64gc -DSIZE=32 -o $@.riscv $< trap.c
	$(OBJDUMP) -d -M no-aliases $@.riscv > $@.dump
	
.PHONY: clean
clean:
	rm -f -- *.riscv *.o *.dump

.SUFFIXES: # Disable built-in suffix rules
