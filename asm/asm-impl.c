#include "asm.h"
#include <string.h>
#include <stdio.h>

int64_t asm_add(int64_t a, int64_t b) {
  // TODO: implement
  int64_t result = 0;
  asm volatile(
		  "movq %[a],%[res];"
		  "addq %[b],%[res];"
		  : [res] "=r" (result)
		  : [a] "r" (a),[b]"r"(b)
	 );
  printf("%ld\n",result);
  return result;
}

int asm_popcnt(uint64_t n) {
  // TODO: implement
  return 0;
}

void *asm_memcpy(void *dest, const void *src, size_t n) {
  // TODO: implement
  return NULL;
}

int asm_setjmp(asm_jmp_buf env) {
  // TODO: implement
  return 0;
}

void asm_longjmp(asm_jmp_buf env, int val) {
  // TODO: implement
}
