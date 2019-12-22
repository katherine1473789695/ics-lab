#include "common.h"
#include <inttypes.h>

void mem_read(uintptr_t block_num, uint8_t *buf);
void mem_write(uintptr_t block_num, const uint8_t *buf);

static uint64_t cycle_cnt = 0;

void cycle_increase(int n) { cycle_cnt += n; }

// TODO: implement the following functions

typedef struct{
  bool valid;
  bool dirty;
  uint64_t tag;
  uint8_t data[BLOCK_SIZE];
}Line;
//a cache line 

typedef struct{
  Line* lines;
}Set;

typedef struct{
  Set* sets;
  int set_number;//the set numbers in a cache
  int line_number;//the line number of each set
}Cache;

Cache *caches;

uint32_t read_four(int setnum,int linnum,uintptr_t addr){
  uint32_t mask = mask_with_len(BLOCK_WIDTH);
  uint32_t offset = addr&mask;
  uint32_t first = caches->sets[setnum].lines[linnum].data[offset];
  uint32_t second = caches->sets[setnum].lines[linnum].data[offset+1];
  uint32_t third = caches->sets[setnum].lines[linnum].data[offset+2];
  uint32_t fourth = caches->sets[setnum].lines[linnum].data[offset+3];
  return (fourth<<24)|(third<<16)|(second<<8)|first;
}

void write_four(int setnum,int linnum,uintptr_t addr,uint32_t data,uint32_t wmask){
  uint32_t mask = mask_with_len(BLOCK_WIDTH);
  uint32_t offset = addr & mask; 
  data = data & wmask;
  caches->sets[setnum].lines[linnum].data[offset+3] &= ((~wmask)>>24);
  caches->sets[setnum].lines[linnum].data[offset+3] |= (data>>24);
  caches->sets[setnum].lines[linnum].data[offset+2] &= (((~wmask)<<8)>>24);
  caches->sets[setnum].lines[linnum].data[offset+2] |= ((data<<8)>>24);
  caches->sets[setnum].lines[linnum].data[offset+1] &= (((~wmask)<<16)>>24);
  caches->sets[setnum].lines[linnum].data[offset+1] |= ((data<<16)>>24);
  caches->sets[setnum].lines[linnum].data[offset] &= (((~wmask)<<24)>>24);
  caches->sets[setnum].lines[linnum].data[offset] |= ((data<<24)>>24);
}

uint32_t cache_read(uintptr_t addr) {

  return 0;
}

void cache_write(uintptr_t addr, uint32_t data, uint32_t wmask) {
}

void init_cache(int total_size_width, int associativity_width) {
  caches = (Cache*)malloc(sizeof(Cache));
  caches->line_number = 1<<associativity_width;//line number of each set
  caches->set_number = exp2(total_size_width-BLOCK_SIZE-associativity_width);
  //set number in a cache
  caches->sets = (Set*)malloc(caches->set_number*sizeof(Set));
  //creat new sets
  
  //initialize new lines in sets
  for(int i = 0;i<caches->set_number;i++){
    caches->sets[i].lines = (Line*)malloc(caches->line_number*sizeof(Line));
    //initialize a new line
    for(int j=0;j<caches->line_number;j++){
      caches->sets[i].lines[j].valid = 0;
      caches->sets[i].lines[j].tag = 0;
    }
  }
}


void display_statistic(void) {
}
