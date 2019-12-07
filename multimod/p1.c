#include "multimod.h"

int64_t multimod_p1(int64_t a, int64_t b, int64_t m) {
  // TODO: implement
  //int64_t multi = ((long double)a)*b/m;
  //int64_t result =a*b-multi*m;
  //while(result<0)result+=m;
  //while(result>=m)result-=m;
  int64_t result=0;
  if(a<b){
	  for(int i=0;i<a;i++){
		  int64_t temp = b%m;
		  result+=temp;
		  result = result%m;
	  }
  }else{
	  for(int i=0;i<b;i++){
		  int64_t temp = a%m;
		  result+=temp;
		  result = result%m;
	  }
  }

  return result;
}
