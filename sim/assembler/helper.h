#define OP_ADD   (110011)
#define OP_ADDI   (10011)
#define OP_SUB   (110011)
#define OP_BGE  (1100011)
#define OP_JALR (1100111)
#define OP_JAL  (1101111)
#define OP_BEQ  (1100011)
#define OP_AND   (110011)
#define OP_FMUL (1010011)
#define OP_FDIV (1010011)
#define OP_LW        (11)
#define OP_SW    (100011)
#define OP_BLT  (1100011)

#define F7_ADD        (0)
#define F7_SUB   (100000)
#define F7_AND        (0)
#define F7_FMUL    (1000)
#define F7_FDIV    (1100)

#define F3_ADDI     (000)
#define F3_ADD      (000)
#define F3_SUB      (000)
#define F3_BGE      (101)
#define F3_JALR     (000)
#define F3_BEQ      (000)
#define F3_AND      (111)
#define F3_FMUL     (000)
#define F3_FDIV     (000)
#define F3_LW        (10)
#define F3_SW        (10)
#define F3_BLT      (100)

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
int reg(char*);

long long int imm_11_0(char*);
long long int imm_11_5(char*);
int imm_4_0(char*);
long long int imm_12_10_5(long long int);
int imm_4_1_11(long long int);
unsigned long long int imm_20_10_1_11_19_12(long long int);