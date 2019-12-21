#include "perf.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void dummy() {
}

void print_hello() {
  printf("hello\n");
}

void print_error() {
  printf("invalid subject!\n");
  exit(1);
}

void simple_loop() {
  for (volatile int i = 0; i < 1000000; i++) ;
}

void multimod_p1() {
  int64_t a,b,m;
  // TODO: implement
  if(a>m)a = a%m;
  if(b>m)b = b%m;
  int64_t multi = ((long double)a)*b/m;
  int64_t result =a*b-multi*m;
  while(result<0)result+=m;
  while(result>=m)result-=m;

  //return result;
}

void multimod_p2() {
  // TODO: implement
  int64_t a,b,m;
  uint64_t na = a%m;
  uint64_t nb = b%m;
  uint64_t result=0;
  while(na){
	  if(na&1)result = (result+nb)%m;
	  nb = (nb<<1)%m;
	  na>>=1;
  }
  //return result;
}

void multimod_p3() {
  int64_t a,b,m;
  int64_t t = (a * b - (int64_t)((double)a * b / m) * m) % m;
  t=( t < 0 ? t + m : t);
}
