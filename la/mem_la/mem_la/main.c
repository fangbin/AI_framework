//
//  main.c
//  mem_la
//
//  Created by Eric Binder on 06/07/2017.
//  Copyright © 2017 FB. All rights reserved.
//

#include <stdio.h>
#include "lamalloc.h"
  //#include "lamalloc.c"
  //#include "la_refine.h"

int main (void) {
  man_t man = minit(1000);
  void* p1 = malloc(man, 20);
  malloc(man, 20);
  void* p2 = malloc(man, 20);
  malloc(man, 20);
  mfree(man, p1);
  mfree(man, p2);
  return 0;
}

 
