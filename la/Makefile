# Makefile
#


#---------------------------------------
# Flags
#---------------------------------------

#DEBUG=_debug

CC=gcc 
CFLAG_DEBUG=-g
CFLAG_TEST=-fprofile-arcs -ftest-coverage
CFLAGS=-Wall $(CFLAG_DEBUG) $(CFLAG_TEST) 

ICFLAGS=-I.

LDFLAGS= 

#---------------------------------------
# Files
#---------------------------------------

CCINC = lamalloc.h latst.h

CCSRC = lamalloc.c latst.c

#---------------------------------------
# Rules
#---------------------------------------

SHARED_LIBS = -lcunit

all: utest

utest: lamalloc.o latst.o
	$(CC) $(CFLAGS) -o $@ $^ \
	$(LDFLAGS) \
	$(SHARED_LIBS)

run: lamain.o
	$(CC) $(CFLAGS) -o $@ $^ \
	$(LDFLAGS)

clean:
	rm -f *.o *~ *.gc*
	
distclean: clean
	rm -f run utest

indent: $(CCINC) $(CCSRC) 
	indent -nut $^

#---------------------------------------
# IMPLICIT RULES AND DEPENDENCIES
#---------------------------------------

.SUFFIXES: .c .h .a .o .so .cc

%.o: %.c $(CCINC) $(DEPS)
	$(CC) $(CFLAGS) $(ICFLAGS) -c -o $@ $<

%_debug.o: %.c $(CCINC) $(DEPS)
	$(CC) $(CFLAGS_DEBUG) $(ICFLAGS) -c -o $@ $<


