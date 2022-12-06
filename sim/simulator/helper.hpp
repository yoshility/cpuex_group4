#define INVALID 0
#define CLEAN 1
#define DIRTY 2

#define MEMORY_SIZE 1024
#define INDEX_WIDTH 2
#define OFFSET_WIDTH 6

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
void print_reg(int*);
void print_freg(float*);
int reg_num(char*);
int freg_num(char*);
long long int to_binary(int, int);
float sign(float);