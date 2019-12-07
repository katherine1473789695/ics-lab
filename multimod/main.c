#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include "multimod.h"
#include <time.h>

clock_t start, stop;
double duration;

static struct option long_option[] = {
  { "i", required_argument, NULL, 'i' },
  { NULL, 0, NULL, '\0'},
};

multimod_t multimod_tab[] = {
  multimod_p1,
  multimod_p2,
  multimod_p3,
};

int main(int argc, char *argv[]) {
  //int64_t a = 0, b = 0, m = 1;
  multimod_t func = NULL;

  while (1) {
    int idx;
    int c = getopt_long(argc, argv, "i:", long_option, &idx);
    if (c == -1) {
      break;
    } if (c == 'i') {
      int i = atoi(optarg);
      if (1 <= i && i <= LENGTH(multimod_tab)) {
        func = multimod_tab[i - 1];
      }
    }
  }

  if (!func) {
    fprintf(stderr, "Usage: lab1 -i 1|2|3 a b m\n");
    exit(1);
  }

  //a = strtoll(argv[optind], NULL, 10);
  //b = strtoll(argv[optind + 1], NULL, 10);
  //m = strtoll(argv[optind + 2], NULL, 10);

  int64_t a,b,m,result;
  int64_t count=0;
  FILE *f = fopen("test","r");
  start = clock();
  for(int i=0;i<1000000;i++){
	  fscanf(f,"%ld %ld %ld %ld",&a,&b,&m,&result);
	  int64_t ret = func(a,b,m);
	  if(ret == result){
		  count++;
		  printf("%ld %ld %ld\n",a,b,m);
	  }
	  //else{
		  //printf("%ld %ld\n",ret,result);
	  //}
  }
  stop = clock();
  duration = (double)(stop-start)/CLOCKS_PER_SEC;
  printf("the time is %lf sec\n",duration);
  printf("the passed number is:%ld\n",count);

  //int64_t ret = func(2, 3, 5);
  //printf("%ld\n", ret);
}
