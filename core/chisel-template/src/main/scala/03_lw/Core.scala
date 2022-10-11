package lw

import chisel3._
import common.Consts._
import chisel3.util._
import common.Instructions._
//CPU内の処理を追加
class Core extends Module {
  val io = IO(new Bundle {
    val imem = Flipped(new ImemPortIo())
    val dmem = Flipped(new DmemPortIo()) //追加した
    val exit = Output(Bool())
  })
  val regfile = Mem(32, UInt(WORD_LEN.W))


  //**********************************
  // Instruction Fetch (IF) Stage

  val pc_reg = RegInit(START_ADDR)
  pc_reg := pc_reg + 4.U(WORD_LEN.W)
  io.imem.addr := pc_reg
  val inst = io.imem.inst
  //Decode stage
  //レジスタの解読
  val rs1_addr = inst(19,15)
  val rs2_addr = inst(24,20)
  val wb_addr = inst(11,7)
  val imm_i = inst(31,20) //i形式命令の即値を取り出す
  val imm_i_sext = Cat(Fill(20,imm_i(11)),imm_i) //offsetを上位ビットで埋めて符号拡張する,IDステージ
  //レジスタファイルの読みだし、trueならrs1_addrをfalseなら0を格納する
  val rs1_data = Mux((rs1_addr=/= 0.U(WORD_LEN.W)),regfile(rs1_addr),0.U(WORD_LEN.W))
  val rs2_data = Mux((rs2_addr=/= 0.U(WORD_LEN.W)),regfile(rs2_addr),0.U(WORD_LEN.W))
  //EXステージでメモリアドレスを計算
  val alu_out = MuxCase(0.U(WORD_LEN.W),Seq(
    (inst === LW) -> (rs1_data + imm_i_sext)
  ))
  //MEMステージでアドレスをメモリポートに接続させる
  io.dmem.addr := alu_out //読みだしたデータをどう処理するかはコアの実装次第であるため常時つなげておいてよい

  //WBステージ
  val wb_data = io.dmem.rdata
  when (inst === LW){
    regfile(wb_addr) := wb_data
  } 
  

  //**********************************
  // Debug
  
  printf(p"pc_reg : 0x${Hexadecimal(pc_reg)}\n")
  printf(p"inst   : 0x${Hexadecimal(inst)}\n")
  printf(p"rs1_addr : $rs1_addr\n")
  printf(p"rs2_addr : $rs2_addr\n")
  printf(p"wb_addr : $wb_addr\n")
  printf(p"wb_data   : 0x${Hexadecimal(wb_data)}\n")
  printf(p"dmem.addr : ${io.dmem.addr}\n")
  printf(p"rs1_data : 0x${Hexadecimal(rs1_data)}\n")
  printf(p"rs2_data   : 0x${Hexadecimal(rs2_data)}\n")
  printf("-------------------\n")
  io.exit := (inst === 0x22222222.U(WORD_LEN.W))
}