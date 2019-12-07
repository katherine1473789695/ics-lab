#include "multimod.h"

int64_t multimod_p2(int64_t a, int64_t b, int64_t m) {
  // TODO: implement
  uint64_t na = a%m;
  uint64_t nb = b%m;
  uint64_t result=0;
  while(na){
	  if(na&1)result = (result+nb)%m;
	  nb = (nb<<1)%m;
	  na>>=1;
  }
  return result;
}
