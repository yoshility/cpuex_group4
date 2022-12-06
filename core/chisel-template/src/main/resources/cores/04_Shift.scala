package addsub
import chisel3._
import common.Consts._
import chisel3.util._
import common.Instructions._
//6種類のシフト演算を定義sll,srl,sra,slli,srli,srai
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
    pc_reg := pc_reg + 4.U(WORD_LEN.W)


    //**********************************
    // Instruction Decode (ID) Stage

    val rs1_addr = inst(19, 15)
    val rs2_addr = inst(24, 20)
    val wb_addr  = inst(11, 7)
    val rs1_data = Mux((rs1_addr =/= 0.U(WORD_LEN.U)), regfile(rs1_addr), 0.U(WORD_LEN.W))
    val rs2_data = Mux((rs2_addr =/= 0.U(WORD_LEN.U)), regfile(rs2_addr), 0.U(WORD_LEN.W))
    val csignals = ListLookup(inst,//MEN_Sはメモリへの書き込みあり、MEN_Xは書き込みなし、ライトバック有効信号も解読
                List(ALU_X,OP1_RS1,OP2_RS2,MEN_X,REN_X,WB_X),
            Array(
                LW ->   List(ALU_ADD,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_MEM),
                SW ->   List(ALU_ADD,OP1_RS1,OP2_IMS,MEN_S,REN_X,WB_X),
                ADD ->  List(ALU_ADD,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                ADDI -> List(ALU_ADD,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                SUB ->  List(ALU_SUB,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                AND ->  List(ALU_AND,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                OR ->   List(ALU_OR,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                XOR ->  List(ALU_XOR,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                ANDI -> List(ALU_AND,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                ORI ->  List(ALU_OR,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                XORI -> List(ALU_XOR,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                SLL ->  List(ALU_SLL,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                SRL ->  List(ALU_SRL,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                SRA ->  List(ALU_SRA,OP1_RS1,OP2_RS2,MEN_X,REN_S,WB_ALU),
                SLLI -> List(ALU_SLL,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                SRLI -> List(ALU_SRL,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU),
                SRAI -> List(ALU_SRA,OP1_RS1,OP2_IMI,MEN_X,REN_S,WB_ALU)
            )
    )
    val exe_fun :: op1_sel :: op2_sel :: mem_wen :: rf_wen :: wb_sel :: Nil = csignals
    //即値の扱い
    val imm_i = inst(31, 20)
    val imm_i_sext = Cat(Fill(20, imm_i(11)), imm_i)
    val imm_s = Cat(inst(31, 25), inst(11, 7))
    val imm_s_sext = Cat(Fill(20, imm_s(11)), imm_s)

    val op1_data = MuxCase(0.W(WORD_LEN.W), Seq(
        (inst === OP1_RS1)
    ))
    val op2_data = MuxCase(0.U(WORD_LEN.W),Seq(
        (op2_sel === OR2_RS2) -> rs2_data,
        (op2_sel === OR2_IMI) -> imm_i_sext,
        (op2_sel === OR2_IMS) -> imm_s_sext
    ))
    //**********************************
    // Execute (EX) Stage
    val alu_out = MuxCase(0.U(WORD_LEN.W),Seq(
        (exe_fun === ALU_ADD) -> (op1_data + op2_data),
        (exe_fun === ALU_SUB) -> (op1_data - op2_data),
        (exe_fun === ALU_AND) -> (op1_data & op2_data),
        (exe_fun === ALU_OR) -> (op1_data | op2_data),
        (exe_fun === ALU_XOR) -> (op1_data ^ op2_data),
        (exe_fun === ALU_SLL) -> (op1_data << op2_data)(31,0),//論理左シフト、自然にビット拡張されるため右32ビットぶんを切り出す
        (exe_fun === ALU_SRL) -> (op1_data >> op2_data).asUInt(),//論理右シフト、明示的にUInt型へ変換が必要
        (exe_fun === ALU_SRA) -> (op1_data.asSInt() >> op2_data(4,0)).asUInt() //算術右シフト
    ))

      //**********************************
    // Memory Access Stage
    
    io.dmem.addr := alu_out
    //io.dmem.wen := Mux(inst === SW, true.B, false.B)
    io.dmem.wdata := rs2_data
    io.dmem.wen := mem_wen

    //**********************************
    // Writeback (WB) Stage

    val wb_data = MuxCase(alu_out, Seq(
        (inst === WB_MEM) -> io.dmem.rdata
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