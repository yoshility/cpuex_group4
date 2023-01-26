#define OP_ADD      (110011)
#define OP_ADDI     (10011)
#define OP_SUB      (110011)
#define OP_MUL      (110011)
#define OP_DIV      (110011)
#define OP_BGE      (1100011)
#define OP_JALR     (1100111)
#define OP_JAL      (1101111)
#define OP_BEQ      (1100011)
#define OP_AND      (110011)
#define OP_LW       (11)
#define OP_SW       (100011)
#define OP_BLT      (1100011)
#define OP_BNE      (1100011)
#define OP_LUI      (110111)
#define OP_ORI      (10011)
#define OP_FADD     (1010011)
#define OP_FSUB     (1010011)
#define OP_FMUL     (1010011)
#define OP_FDIV     (1010011)
#define OP_FLW      (111)
#define OP_FSW      (100111)
#define OP_SLT      (110011)
#define OP_FSQRT    (1010011)
#define OP_FSGNJN   (1010011)
#define OP_FSGNJX   (1010011)
#define OP_FSGNJ    (1010011)
#define OP_FCVTSW   (1010011)
#define OP_FCVTWS   (1010011)
#define OP_FEQ      (1010011)
#define OP_FLT      (1010011)
#define OP_FLE      (1010011)
#define OP_SLLI     (10011)
#define OP_SRLI     (10011)

#define F7_ADD      (0)
#define F7_SUB      (100000)
#define F7_MUL      (1)
#define F7_DIV      (1)
#define F7_AND      (0)
#define F7_FADD     (0)
#define F7_FSUB     (100)
#define F7_FMUL     (1000)
#define F7_FDIV     (1100)
#define F7_SLT      (0)
#define F7_FSQRT    (101100)
#define F7_FSGNJN   (10000)
#define F7_FSGNJX   (10000)
#define F7_FSGNJ    (10000)
#define F7_FCVTSW   (1101000)
#define F7_FCVTWS   (1100000)
#define F7_FEQ      (1010000)
#define F7_FLT      (1010000)
#define F7_FLE      (1010000)

#define F3_ADDI     (0)
#define F3_ADD      (0)
#define F3_SUB      (0)
#define F3_MUL      (0)
#define F3_DIV      (100)
#define F3_BGE      (101)
#define F3_JALR     (0)
#define F3_BEQ      (0)
#define F3_AND      (111)
#define F3_LW       (10)
#define F3_SW       (10)
#define F3_BLT      (100)
#define F3_BNE      (1)
#define F3_FADD     (0)
#define F3_FSUB     (0)
#define F3_FMUL     (0)
#define F3_FDIV     (0)
#define F3_FLW      (10)
#define F3_FSW      (10)
#define F3_SLT      (10)
#define F3_FSQRT    (0)
#define F3_FSGNJN   (1)
#define F3_FSGNJX   (10)
#define F3_FSGNJ    (0)
#define F3_FCVTSW   (0)
#define F3_FCVTWS   (0)
#define F3_FEQ      (10)
#define F3_FLT      (1)
#define F3_FLE      (0)
#define F3_SLLI     (1)
#define F3_ORI      (110)
#define F3_SB       (0)
#define F3_SRLI     (101)

char* eliminate_comma_and_comment(char*);
char* eliminate_colon(char*);
long long int to_binary(int, int);
void print_binary(FILE*, long long int);
int reg(char*, int);
int freg(char*);
void addi_large_imm(FILE*, int*, char*, int, long long int, int, int);

long long int imm_11_0(char*);
long long int imm_11_5(char*);
int imm_4_0(char*);
long long int imm_12_10_5(long long int);
int imm_4_1_11(long long int);
unsigned long long int imm_31_12(char*);
unsigned long long int imm_20_10_1_11_19_12(long long int);