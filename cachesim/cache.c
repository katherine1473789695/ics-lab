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
  int width_of_setnum;
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
  int setnum = (addr&((1<<(caches->width_of_setnum+BLOCK_WIDTH))-1))>>BLOCK_WIDTH;
  uint32_t tag = addr>>(caches->width_of_setnum+BLOCK_WIDTH);
  for(int i=0;i<caches->line_number;i++){
    if(caches->sets[setnum].lines[i].valid == 1 && caches->sets[setnum].lines[i].tag == tag){
      //hit 
      return read_four(setnum,i,addr);
    }
  }
  //not hit
  bool flag = false;
  //find a free line
  for(int i=0;i<caches->line_number;i++){
    if(caches->sets[setnum].lines[i].valid == 0){
      //a free line is found
      mem_read(addr>>BLOCK_WIDTH,caches->sets[setnum].lines[i].data);
      //change the valid bit
      caches->sets[setnum].lines[i].valid = 1;
      //set the tag
      caches->sets[setnum].lines[i].tag = tag;
      flag = true; // found a free line
      return read_four(setnum,i,addr);
    }
  }
  //if there is no free line pick one randomly
  if(!flag){
    int random = rand()%caches->line_number;
    //write back the picked line to the mem
    mem_write((caches->sets[setnum].lines[random].tag<<caches->width_of_setnum)+setnum,caches->sets[setnum].lines[random].data);
    //read new mem to the picked line
    mem_read(addr>>BLOCK_WIDTH,caches->sets[setnum].lines[random].data);
    //set valid bit and tag
    caches->sets[setnum].lines[random].valid = 1;
    caches->sets[setnum].lines[random].tag = tag;
    return read_four(setnum,random,addr);
  }

  return 0;
}

void cache_write(uintptr_t addr, uint32_t data, uint32_t wmask) {
}

void init_cache(int total_size_width, int associativity_width) {
  caches = (Cache*)malloc(sizeof(Cache));
  caches->line_number = 1<<associativity_width;//line number of each set
  caches->set_number = exp2(total_size_width-BLOCK_WIDTH-associativity_width);
  //set number in a cache
  caches->width_of_setnum = total_size_width-BLOCK_WIDTH-associativity_width;
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
