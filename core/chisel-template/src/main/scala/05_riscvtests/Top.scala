package riscvtests
import chisel3._
import chisel3.util._
import common.Consts._
import common.Instructions._

/*object CpuTop extends App {
    (new chisel3.stage.ChiselStage).emitSystemVerilog(new Top(), Array("--target-dir", "generated"))
}*/
class Top extends Module {
    val io = IO(new Bundle {
        val exit = Output(Bool())
        val gp = Output(UInt(WORD_LEN.W))
    })

    val core = Module(new Core())
    val memory = Module(new Memory())

    core.io.imem <> memory.io.imem
    core.io.dmem <> memory.io.dmem
    io.gp := core.io.gp 
    io.exit := core.io.exit
}
