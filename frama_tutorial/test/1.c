#include <stdlib.h>

int test() {
  int x, y = 2, z = 3;

  if (y >= 2) {
    x = rand();
    z = x / (x - 1);
  } else {
    x = 1;
    z = x / (x - 1);
  }
  return z;
}