/*
 * Test of the memory manager
 */

#include <stdio.h>
#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>
#include "lamalloc.h"
#include "latst.h"

/************* Test inits ****************/

/*
 * Values and variables used in tests 
 */
#define MMAN_CAPACITY  203
#define MMAN_ACAPACITY 204

man_t man = NULL;
void *dmin = NULL;
void *dmax = NULL;

/* Test Suite setup and cleanup functions: */

int
init_suite_mman (void)
{
  man = minit (MMAN_CAPACITY);
  return 0;
}

int
clean_suite_mman (void)
{
  mclear (man);
  man = NULL;
  return 0;
}

/************* Test case functions ****************/

/**
 * @brief Tests for @code minit
 */
void
test_minit (void)
{
  mstatus (man,2);
}

/**
 * @brief Tests for @code malloc
 */
void
test_malloc_nom (void)
{
  size_t sz = MMAN_CAPACITY + sizeof (int);
  dmin = malloc(man, sz);
  CU_ASSERT_EQUAL (dmin, NULL);
  mstatus (man,1);

  /*
   * if request of less than BLOCK_MIN_SIZE,
   * then BLOCK_MIN_SIZE allocated
   */
  sz = 2;
  dmin = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmin, NULL);
  mstatus (man,1);

  /*
   * blocks take some capacity, so now capacity less than 
   * aligned(MMAN_CAPACITY) - BLOCK_MIN_SIZE
   */
  sz = MMAN_CAPACITY - BLOCK_MIN_SIZE;
  dmax = malloc (man, sz);
  CU_ASSERT_EQUAL (dmax, NULL);
  mstatus (man,1);

  /*
   * blocks take some capacity, so now 
   *  = MMAN_ACAPACITY - BLOCK_MIN_SIZE - 2 * hty_size
   */
  sz = MMAN_ACAPACITY - BLOCK_MIN_SIZE - 2 * hty_size;
  dmax = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmax, NULL);
  mstatus (man,1);

}

/**
 * @brief Tests for @code manager_free
 */
void
test_mfree_nom (void)
{
  /*
   * Test simple deallocation
   */
  int r = mfree (man, dmin);
  CU_ASSERT_EQUAL (r,1);
  mstatus (man,1);

  size_t sz = BLOCK_MIN_SIZE - 1;
  dmin = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmin, NULL);
  mstatus (man, 1);

  /*
   * Test err deallocation
   */
  dmin++;
  r = mfree (man, dmin);
  CU_ASSERT_EQUAL (r,0);
  mstatus (man,1);

  /*
   * Test big block deallocation
   */
  r = mfree (man, dmax);
  CU_ASSERT_EQUAL (r,1);
  mstatus (man,1);

  sz = BLOCK_MIN_SIZE - 1;
  void *dmin1 = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmin1, NULL);
  mstatus (man,1);

  /*
   * Test merging
   */
  sz = BLOCK_MIN_SIZE - 1;
  void *dmin2 = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmin2, NULL);
  mstatus (man,1);

  r = mfree (man, dmin1);
  CU_ASSERT_TRUE (r);
  mstatus (man,1);

  r = mfree (man, dmin2);        // merging of blocks at left and right
  CU_ASSERT_TRUE (r);
  mstatus (man,1);

  sz = MMAN_ACAPACITY - BLOCK_MIN_SIZE - 2 * hty_size;
  dmax = malloc (man, sz);
  CU_ASSERT_NOT_EQUAL (dmax, NULL);
  mstatus (man,1);
}

/************* Test Runner Code goes here **************/
int
test_mman_suite (void)
{
  /* add a suite to the registry */
  CU_pSuite suite_mman = CU_add_suite ("test suite for mmanager",
                                       init_suite_mman, clean_suite_mman);
  if (NULL == suite_mman)
    {
      CU_cleanup_registry ();
      return CU_get_error ();
    }

  /* add the tests to the suite */
  if ((NULL ==
       CU_add_test (suite_mman, "minit nominal", test_minit))
      || (NULL ==
          CU_add_test (suite_mman, "malloc nominal",
                       test_malloc_nom))
      || (NULL ==
          CU_add_test (suite_mman, "mfree nominal",
                       test_mfree_nom)))
    {
      CU_cleanup_registry ();
      return CU_get_error ();
    }
  return 0;
}

/************* Functional Test Code **************/
/**
 * Dump allocator features
 */
void
mdump(int l)
{
  HEADER* p = NULL;
  int i = 5;

  printf("LA malloc: dump level %d\n", l);
  if (l >= 0) {
    printf("\tH start:      %lx\n", (unsigned long) _heapstart.ptr);
    printf("\tH limit:      %lx\n", (unsigned long) _heapend.ptr);
    printf("\tsizeof(Hty):  %lu\n", sizeof(HEADER));
    printf("\tsizeof(Hty*): %lu\n", sizeof(HEADER*));
  }

  if (l >= 1) {
    // expose the free list 
    printf("\tfree-list: \n");
    for (p = frhd;
	 p != NULL && i >= 0;) {
      printf("\t\t%lx (%d*%lu),\n", (unsigned long)p, p->size, sizeof(HEADER));
      p = p->ptr;
      i--;
    }
  }

  if (l >= 2) {
    // expose the chunk list 
    printf("\tchunk list: \n");
    for (p = _heapstart.ptr, i = 5;
	 p != _heapend.ptr && i >= 0;) {
      printf("\t\t%lx (%d*%lu),\n", (unsigned long)p, p->size, sizeof(HEADER));
      p = p + p->size; // beacause size is in units of HEADER
      i--;
    }
  }

  return;
}

void
tstfun(void) {
    
    man = minit(MMAX_CAPACITY);
    mdump(1);
    
    void *b1 = malloc(man,100);
    mdump(1);
    
    void *b2 = malloc(man,100);
    mdump(1);
    
    mfree(man,b1);
    mdump(1);
    
    mfree(man,b2);
    mdump(2);

}

/************* Entry point **************/
int
main (void)
{
  int ret = 0;
  /* initialize the CUnit test registry */
  if (CUE_SUCCESS != CU_initialize_registry ())
    return CU_get_error ();

  /* add a suite to the registry */
  if (1 == test_mman_suite ())
    return CU_get_error ();

  /* Run all tests using the basic interface */
  CU_basic_set_mode (CU_BRM_VERBOSE);
  CU_basic_run_tests ();
  printf ("\n");
  CU_basic_show_failures (CU_get_failure_list ());
  printf ("\n\n");

  /* Clean up registry and return */
  CU_cleanup_registry ();
  ret = CU_get_error ();

  /* functional test */
  tstfun();

  return ret;
}
