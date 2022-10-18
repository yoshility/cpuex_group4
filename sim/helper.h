#define OP_ADD   110011
#define OP_ADDI   10011
#define OP_BGE  1100011
#define OP_JALR 1100111
#define OP_JAL  1101111

#define F7_ADD 0

#define F3_ADD  000
#define F3_ADDI 000
#define F3_BGE  101
#define F3_JALR 000


char* eliminate_comma(char*);
int reg(char*);

long long int imm_11_0(char*);
long long int imm_12_10_5(long long int);
int imm_4_1_11(long long int);
unsigned long long int imm_20_10_1_11_19_12(long long int);