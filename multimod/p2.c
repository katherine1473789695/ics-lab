#include "multimod.h"

int64_t multimod_p2(int64_t a, int64_t b, int64_t m) {
  // TODO: implement
  int64_t result=0;
  while(a){
	  if(a&1)result = (result+b)%m;
	  b = (b<<1)%m;
	  a>>=1;
  }
  return result;
}
