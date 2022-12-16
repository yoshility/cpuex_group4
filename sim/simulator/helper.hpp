#define INVALID 0
#define CLEAN 1
#define DIRTY 2

#define MEMORY_SIZE         8188
#define INST_MEMORY_SIZE    20000
#define INDEX_WIDTH         2
#define OFFSET_WIDTH        6
#define WAY_NUM             2

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
void print_reg(int*);
void print_freg(float*);
int reg_num(char*, int);
int freg_num(char*, int);
long long int to_binary(int, int);
float sign(float);