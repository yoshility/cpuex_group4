package fetch

import chisel3._
import common.Consts._
import common.Instructions._
import chisel3.util._

class FPU extends Module {
	val io = IO(new Bundle{
		val func = Input(UInt(EXE_FUN_LEN.W))
		val op1 = Input(SInt(FLOAT_LEN.W))
		val op2 = Input(SInt(FLOAT_LEN.W))
		val res = Output(SInt(FLOAT_LEN.W))
	})
}
