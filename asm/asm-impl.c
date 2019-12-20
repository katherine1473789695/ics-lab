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
  //printf("%ld\n",result);
  return result;
}

int asm_popcnt(uint64_t n) {
  // TODO: implement
  uint64_t count = 0;
  while(n){
	  asm volatile(
			  "movq %[n],%%rax;"
			  "andq $1,%%rax;"
			  "addq %%rax,%[cnt];"
			  "shrq %[n];"
			  :[n]"+r"(n),[cnt]"+r"(count)
			  :"[n]"(n),"[cnt]"(count)
			  :"%rax" 
			  );
  }
  return count;
}

void *asm_memcpy(void *dest, const void *src, size_t n) {
  // TODO: implement
  printf("src: %x\n",*((int*)src));
  printf("dest: %x\n",*((int*)dest));
  for(uint64_t i = 0;i<n;i++){
	  asm volatile(
			  "movq %[dest],%%rdi;"
			  "movq %[src],%%rsi;"
			  "addq %[i],%%rdi;"
			  "addq %[i],%%rsi;"
			  "movb (%%rsi),%%al;"
			  "movb %%al,(%%rdi);"
			  :
			  :[dest]"r"(dest),[src]"r"(src),[i]"r"(i)
			  :"%rdi","%rsi","%al"
			  );
  }
  printf("the dest after: %x\n",*((int*)dest));
  return dest;
}

int asm_setjmp(asm_jmp_buf env) {
  // TODO: implement
  asm volatile(
		  "movq %%rax,(%[env]);"
		  "movq %%rbx,8(%[env]);"
		  "movq %%rcx,16(%[env]);"
		  "movq %%rdx,24(%[env]);"
		  "movq %%rsi,32(%[env]);"
		  "movq %%rdi,40(%[env]);"
		  "movq %%rsp,48(%[env]);"
		  "movq %%rbp,56(%[env]);"
		  :
		  :[env]"r"(env)
		  );
  return 0;
}

void asm_longjmp(asm_jmp_buf env, int val) {
  // TODO: implement
}
