#include <setjmp.h>
#include <stdio.h>
jmp_buf env;
int main(){
	static long int buf[20];
	//setjmp(buf);
	int r = setjmp(env);
	longjmp(env,20);
	return 0;
}
