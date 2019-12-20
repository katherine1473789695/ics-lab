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
		  "movq %%r8,64(%[env]);"
		  "movq %%r9,72(%[env]);"
		  "movq %%r10,80(%[env]);"
		  "movq %%r11,88(%[env]);"
		  "movq %%r12,96(%[env]);"
		  "movq %%r13,104(%[env]);"
		  "movq %%r14,112(%[env]);"
		  "movq %%r15,120(%[env]);"
		  "movq (%%rsp),%%rax;"
		  "movq %%rax,128(%[env]);"
		  :
		  :[env]"D"(env)
		  );
  return 0;
}

void asm_longjmp(asm_jmp_buf env, int val) {
  // TODO: implement
  asm volatile(
		  "movq 120(%[env]),%%r15;"
		  "movq 112(%[env]),%%r14;"
		  "movq 104(%[env]),%%r13;"
		  "movq 96(%[env]),%%r12;"
		  "movq 88(%[env]),%%r11;"
		  "movq 80(%[env]),%%r10;"
		  "movq 72(%[env]),%%r9;"
		  "movq 64(%[env]),%%r8;"
		  "movq 56(%[env]),%%rbp;"
		  "movq 48(%[env]),%%rsp;"
		  "movq 40(%[env]),%%rdi;"
		  "movq 32(%[env]),%%rsi;"
		  "movq 24(%[env]),%%rdx;"
		  "movq 16(%[env]),%%rcx;"
		  "movq 8(%[env]),%%rbx;"
		  :
		  :[env]"D"(env),[val]"a"(val)
		  );
}
