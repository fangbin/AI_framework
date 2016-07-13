/*
 * Produced by Programming ARTS
 * 8/18/88
 * Programmers: Les Aldridge, Travis I. Seay
 */
#include <unistd.h>
#include <stdio.h>
#define HEAPSIZE 0xFF50

//#define NULL (void *)0

typedef struct hdr {
  struct hdr *ptr;
  unsigned int size;
}HEADER;

/*
 * Defined in the linker file. _heapstart is the first byte allocated to the
 * heap; _heapend is the last.
 */

//static HEADER _heapstart = {0, 0};
static HEADER _heapstart = {0, 0};
//static HEADER _heapend = {(struct hdr *)0xFFFFFF50, 0};
static HEADER _heapend = {0, 0};

void    warm_boot(char *str) //;
{
  printf ("%s\n", str);
}

//static HEADER *frhd;
HEADER *frhd;
static short memleft;           /* memory left */

void
//free(char *ap)
laFree(void *ap)
{

  /*
   * Return memory to free list. Where possible, make contiguous blocks of
   * free memory. (Assumes that 0 is not a valid address for allocation.
   * Also, i_alloc() must be called prior to using either free() or malloc();
   * otherwise, the free list will be null.)
   */

  HEADER *nxt, *prev, *f;
  f = (HEADER *) ap - 1;        /* Point to header of block being returned. */
  memleft += f->size;

  /* frhd is never null unless i_alloc() wasn't called to initialize package. */

  if (frhd > f) {

    /* Free-space head is higher up in memory than returnee. */

    nxt = frhd;                 /* old head */
    frhd = f;                   /* new head */
    prev = f + f->size;         /* right after new head */


    if (prev == nxt) {          /* Old and new are contiguous. */
      f->size += nxt->size;
      f->ptr = nxt->ptr;        /* Form one block. */
    } else
      f->ptr = nxt;
    return;
  }
  /*
   * Otherwise, current free-space head is lower in memory. Walk down
   * free-space list looking for the block being returned. If the next
   * pointer points past the block, make a new entry and link it. If next
   * pointer plus its size points to the block, form one contiguous block.
   */
  for (prev = NULL, nxt = frhd; nxt && nxt < f; prev = nxt, nxt = nxt->ptr) {
    if (nxt + nxt->size == f) {
      nxt->size += f->size;     /* They're contiguous. */
      f = nxt + nxt->size;      /* Form one block. */
      if (f == nxt->ptr) {

        /*
         * The new, larger block is contiguous to the next free block, so
         * form a larger block.There's no need to continue this checking
         * since if the block following this free one were free, the two
         * would already have been combined.
         */

        nxt->size += f->size;
        nxt->ptr = f->ptr;
      }
      return;
    }
  }

  /*
   * The address of the block being returned is greater than one in the free
   * queue (nxt) or the end of the queue was reached. If at end, just link to
   * the end of the queue. Therefore, nxt is null or points to a block higher
   * up in memory than the one being returned.
   */

  prev->ptr = f;                /* link to queue */
  prev = f + f->size;           /* right after space to free */
  if (prev == nxt) {            /* 'f' and 'nxt' are contiguous. */
    f->size += nxt->size;
    f->ptr = nxt->ptr;          /* Form a larger, contiguous block. */
  } else
    f->ptr = nxt;
  return;
}

//char   *
void*
//malloc(int nbytes)
laAlloc(int nbytes)
{                               /* bytes to allocate */
  HEADER *nxt, *prev;
  int     nunits;
  nunits = (nbytes + sizeof(HEADER) - 1) / sizeof(HEADER) + 1;

  /*
   * Change that divide to a shift (for speed) only if the compiler doesn't
   * do it for you, you don't require portability, and you know that
   * sizeof(HEADER) is a power of two. Allocate the space requested plus
   * space for the header of the block. Search the free-space queue for a
   * block that's large enough. If block is larger than needed, break into
   * two pieces and allocate the portion higher up in memory. Otherwise, just
   * allocate the entire block.
   */

  for (prev = NULL, nxt = frhd; nxt; prev = nxt, nxt = nxt->ptr) {
    if (nxt->size >= nunits) {  /* big enough */
      if (nxt->size > nunits) {
        nxt->size -= nunits;    /* Allocate tell end. */
        nxt += nxt->size;
        nxt->size = nunits;     /* nxt now == pointer to be alloc'd. */
      } else {
        if (prev == NULL)
          frhd = nxt->ptr;
        else
          prev->ptr = nxt->ptr;
      }
      memleft -= nunits;

      /* Return a pointer past the header to the actual space requested. */

      return ((char *)(nxt + 1));
    }
  }

  /*
   * This function that explains what catastrophe befell us before resetting
   * the system.
   */

  warm_boot("Allocation Failed!");
  return (NULL);
}

void
//i_alloc(void)
laInit(void)
{
  /* Initialize the allocator. */
  // use sbrk to allocate memory region
  _heapstart.ptr = (HEADER*) sbrk(HEAPSIZE);
  _heapend.ptr = (HEADER*) sbrk(0);

  //frhd = &_heapstart;           /* Initialize the allocator. */
  frhd = _heapstart.ptr;
  frhd->ptr = NULL;
  //frhd->size = ((char *)&_heapend - (char *)&_heapstart) / sizeof(HEADER);
  frhd->size = ((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER);
  memleft = frhd->size;         /* initial size in four-byte units */

}
