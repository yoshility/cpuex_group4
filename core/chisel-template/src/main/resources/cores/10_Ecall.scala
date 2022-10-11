package ecall
import chisel3._
import common.Consts._
import chisel3.util._
import common.Instructions._
//Ecall命令の実装、マシンモードでの実装
class Core extends Module{
    val io = IO(new Bundle {//Bundleは複数の配線を扱う、c言語のstruct的なやつ（異なる型を扱う、.でアクセスする)
        val imem = Flipped(new ImemPortIo())
        val dmem = Flipped(new DmemPortIo())
        val exit = Output(Bool())
    })

    val regfile = Mem(32,UInt(WORD_LEN.W))//32本の32ビットレジスタ
    // Instruction Fetch (IF) Stage
  
    val pc_reg = RegInit(START_ADDR)
    io.imem.addr := pc_reg
    val inst = io.imem.inst
    val pc_plus4 = pc_reg + 4.U(WORD_LEN.W)
    val br_flg = Wire(Bool()) //後で定義するためここではWIreのみ
    val br_trg = Wire(UInt(WORD_LEN.W))
    
    val jmp_flg = (inst === JAL || inst === JALR)
    val alu_out = Wire(UInt(WORD_LEN.W))
    val pc_next = MuxCase(pc_plus4,Seq(
        br_flg -> br_trg,
        jmp_flg -> alu_out,
        (inst === ECALL) -> csr_regfile(0x305)
    ))
    pc_reg := pc_next
    //**********************************
    // Instruction Decode (ID) Stage

    val rs1_addr = inst(19, 15)
    val rs2_addr = inst(24, 20)
    val wb_addr  = inst(11, 7)
    val rs1_data = Mux((rs1_addr =/= 0.U(WORD_LEN.U)), regfile(rs1_addr), 0.U(WORD_LEN.W))
    val rs2_data = Mux((rs2_addr =/= 0.U(WORD_LEN.U)), regfile(rs2_addr), 0.U(WORD_LEN.W))
    val csignals = ListLookup(inst,//MEN_Sはメモリへの書き込みあり、MEN_Xは書き込みなし、ライトバック有効信号も解読
                List(ALU_X,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
            Array(
                LW ->   List(ALU_ADD,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_MEM,CSR_X),
                SW ->   List(ALU_ADD,OP1_RS1,OP2_IMS,MEN_S,REN_X,WB_X,CSR_X),
                ADD ->  List(ALU_ADD,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                ADDI -> List(ALU_ADD,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                SUB ->  List(ALU_SUB,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                AND ->  List(ALU_AND,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                OR ->   List(ALU_OR,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                XOR ->  List(ALU_XOR,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                ANDI -> List(ALU_AND,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                ORI ->  List(ALU_OR,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                XORI -> List(ALU_XOR,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                SLL ->  List(ALU_SLL,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                SRL ->  List(ALU_SRL,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                SRA ->  List(ALU_SRA,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU,CSR_X),
                SLLI -> List(ALU_SLL,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                SRLI -> List(ALU_SRL,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                SRAI -> List(ALU_SRA,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU,CSR_X),
                SLT  -> List(ALU_SLT,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                SLTU -> List(ALU_SLTU,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                SLTI -> List(ALU_SLT,OP1_RS1,OP2_IMI,MEN_X,REN_X,WB_X,CSR_X),
                SLTIU-> List(ALU_SLTU,OP1_RS1,OP2_IMI,MEN_X,REN_X,WB_X,CSR_X),
                BEQ  -> List(ALU_BEQ,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                BNE ->  List(ALU_BNE,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                BGE ->  List(ALU_BGE,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                BGEU -> List(ALU_BGEU,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                BLT ->  List(ALU_BLT,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                BLTU -> List(ALU_BLTU,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X,CSR_X),
                JAL -> List(ALU_ADD,OP1_PC,OP2_IMJ,MEN_X,REN_S,WB_PC,CSR_X),//レジスタへ書き込む内容はPC+4であるため
                BLTU -> List(ALU_JALR,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_PC,CSR_X),
                LUI ->  List(ALU_ADD,OP1_X,OP2_IMU,MEN_X,REN_S,WB_ALU,CSR_X),
                AUIPC ->List(ALU_ADD,OP1_RS1,OP2_IMU,MEN_X,REN_S,WB_ALU,CSR_X),
                CSRRW ->List(ALU_COPY1,OP1_RS1,OP2_X,MEN_X,REN_S,WB_CSR,CSR_W),
                CSRRWI->List(ALU_COPY1,OP1_IMZ,OP2_X,MEN_X,REN_S,WB_CSR,CSR_W),
                CSRRS ->List(ALU_COPY1,OP1_RS1,OP2_X,MEN_X,REN_S,WB_CSR,CSR_S),
                CSRRSI->List(ALU_COPY1,OP1_IMZ,OP2_X,MEN_X,REN_S,WB_CSR,CSR_S),//Set
                CSRRC ->List(ALU_COPY1,OP1_RS1,OP2_X,MEN_X,REN_S,WB_CSR,CSR_C),//Clear
                CSRRCI->List(ALU_COPY1,OP1_IMZ,OP2_X,MEN_X,REN_S,WB_CSR,CSR_C),
                ECALL ->List(ALU_X,OP1_X,OP2_X,MEN_X,REN_X,WB_X,CSR_E)
            )
    )
    val exe_fun :: op1_sel :: op2_sel :: mem_wen :: rf_wen :: wb_sel :: csr_cmd :: Nil = csignals
    //即値の扱い
    //I形式
    val imm_i = inst(31, 20)
    val imm_i_sext = Cat(Fill(20, imm_i(11)), imm_i)
    //I形式
    val imm_s = Cat(inst(31, 25), inst(11, 7))
    val imm_s_sext = Cat(Fill(20, imm_s(11)), imm_s)
    //B形式
    val imm_b = Cat(inst(31),inst(7),inst(30,25),inst(11,8))
    val imm_b_sext = Cat(Fill(19,imm_b(11)),imm_b,0.U(1.U)) //imm_b(０)画で定義されていないため
    //J形式
    val imm_j = Cat(inst(31),inst(19,12),inst(20),inst(30,21))
    val imm_j_sext = Ct(Fill(11,imm_j(11)),imm_j,0.U(1.U))
    //U形式
    val imm_u = inst(31,12)
    val imm_u_shifted = Cat(imm_u,Fill(12,0.U)) 

    val imm_z = inst(19,15)
    val imm_z_uext = Cat(Fill(27,0.U),imm_z)
    val op1_data = MuxCase(0.W(WORD_LEN.W), Seq(
        (op1_sel === OP1_RS1) -> rs1_data,
        (op1_sel === OP1_PC) -> pc_reg
    ))
    val op2_data = MuxCase(0.U(WORD_LEN.W),Seq(
        (op2_sel === OR2_RS2) -> rs2_data,
        (op2_sel === OR2_IMI) -> imm_i_sext,
        (op2_sel === OR2_IMS) -> imm_s_sext,
        (op2_sel === OR2_IMJ) -> imm_j_sext,
        (op2_sel === OR2_IMU) -> imm_u_shifted
    ))
    //**********************************
    // Execute (EX) Stage
    alu_out := MuxCase(0.U(WORD_LEN.W),Seq(
        (exe_fun === ALU_ADD) -> (op1_data + op2_data),
        (exe_fun === ALU_SUB) -> (op1_data - op2_data),
        (exe_fun === ALU_AND) -> (op1_data & op2_data),
        (exe_fun === ALU_OR) -> (op1_data | op2_data),
        (exe_fun === ALU_XOR) -> (op1_data ^ op2_data),
        (exe_fun === ALU_SLL) -> (op1_data << op2_data)(31,0),//論理左シフト、自然にビット拡張されるため右32ビットぶんを切り出す
        (exe_fun === ALU_SRL) -> (op1_data >> op2_data).asUInt(),//論理右シフト、明示的にUInt型へ変換が必要
        (exe_fun === ALU_SRA) -> (op1_data.asSInt() >> op2_data(4,0)).asUInt(), //算術右シフト
        (exe_fun === ALU_SLT) -> (op1_data.asSInt() < op2_data.asSInt()).asUInt(),
        (exe_fun === ALU_SLTU) ->(op1_data < op2_data).asUInt(),
        (exe_fun === ALU_JALR)-> (op1_data + op2_data) & ~1.U(WORD_LEN.W),        
        (exe_fun === ALU_COPY1) -> op1_data
    ))
    br_flg := MuxCase(false.B,Seq(
        (exe_fun === ALU_BEQ) -> (op1_data === op2_data),
        (exe_fun === ALU_BNE) -> !(op1_data === op2_data),
        (exe_fun === ALU_BLT) -> (op1_data.asUInt() < op2_data.asUInt()),
        (exe_fun === ALU_BGE) -> !(op1_data.asUInt() < op2_data.asUInt()),
        (exe_fun === ALU_BLTU) -> (op1_data < op2_data),
        (exe_fun === ALU_BGEU) -> !(op1_data < op2_data),
    )) 
    br_trg := pc_reg + imm_b_sext
      //**********************************
    // Memory Access Stage
    
    io.dmem.addr := alu_out
    //io.dmem.wen := Mux(inst === SW, true.B, false.B)
    io.dmem.wdata := rs2_data
    io.dmem.wen := mem_wen
    //csrレジスタの定義
    val csr_regfile = Mem(4096,UInt(WORD_LEN.W))
    val csr_addr = Mux(csr_cmd === CSR_E,0x342.U(CSR_ADDR_LEN.W), inst(31,20))
    //csrレジスタの読みだし
    val csr_rdata = csr_regfile(csr_addr)

    //csrレジスタの書き出し
    val csr_wdata = MuxCase(0.U(WORD_LEN.W),Seq(
        (csr_cmd === CSR_W) -> op1_data,
        (csr_cmd === CSR_S) -> (csr_rdata | op1_data),
        (csr_cmd === CSR_C) -> (csr_rdata & ~op1_data),
        (csr_cmd === CSR_E) -> 11.U(WORD_LEN.W) // マシンモードからのECALL
    ))
    when (csr_cmd > 0.U) {
        csr_regfile(csr_addr) := csr_wdata
    }
    //**********************************
    // Writeback (WB) Stage

    val wb_data = MuxCase(alu_out, Seq(
        (wb_sel === WB_MEM) -> io.dmem.rdata,
        (wb_sel === WB_PC) -> pc_plus4,
        (wb_sel === WB_CSR) -> csr_rdata
    ))

    when (rf_wen === REN_S) {
        regfile(wb_addr) := wb_data
    }
    //**********************************
    // Debug
    io.exit := (inst === 0xc0001073L.U(WORD_LEN.W))
    printf(p"pc_reg     : 0x${Hexadecimal(pc_reg)}\n")
    printf(p"inst       : 0x${Hexadecimal(inst)}\n")
    printf(p"wb_addr    : wb_addr\n")
    printf(p"rs1_addr   : rs1_addr\n")
    printf(p"rs2_addr   : rs2_addr\n")
    printf(p"rs1_data   : 0x${Hexadecimal(rs1_data)}=${rs1_data}\n")
    printf(p"rs2_data   : 0x${Hexadecimal(rs2_data)}=${rs2_data}\n")
    printf(p"wb_data    : 0x${Hexadecimal(wb_data)}\n")
    printf(p"dmem.addr  : io.dmem.addr\n")
    printf(p"dmem.rdata : ${io.dmem.rdata}\n")
    printf("---------\n")
}