/**
 * Interface for testing the malloc of L. Aldridge
 */

#include "lamalloc.h"

/* Internals needed by dump */
typedef struct hdr {
  struct hdr *ptr;
  unsigned int size;
} HEADER;
extern HEADER _heapstart;
extern HEADER _heapend;
extern HEADER* frhd;

/* ADDED: Dumping allocator internals */
void mdump(int);

/* ADDED: Mapping of some features */
#define BLOCK_MIN_SIZE \
	2
#define mstatus(man,l) \
	mdump(l)
#define mclear(man) ;
	

