#include "multimod.h"

int64_t multimod_p1(int64_t a, int64_t b, int64_t m) {
  // TODO: implement
  int64_t multi = ((long double)a)*b/m;
  int64_t result =a*b-multi*m;
  result=(result+m)%m;
  return result;
}
