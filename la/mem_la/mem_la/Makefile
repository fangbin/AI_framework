# Makefile

objects = main.o lamalloc.o

files = main.c lamalloc.c lamalloc.h

dmala: $(objects)
	gcc -o $(objects)

main.o: $(files)

lamalloc.o: lamalloc.c lamalloc.h


.PHONY: clean
clean:
	rm dmala $(objects)
