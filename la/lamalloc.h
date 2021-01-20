/**
 * Interface for the malloc of L. Aldridge
 */

/* Implemented functions */
void  laInit(void);
void  laFree(void*);
void* laAlloc(int);

/* Mapping to the general interface */
#define man_t \
        void*
#define hty_size \
        8
#define minit(asz) \
	(laInit(), NULL)
#define malloc(man,sz) \
	(void*) laAlloc(sz)
#define mfree(man,ptr) \
	(laFree((void*) ptr), 1)

