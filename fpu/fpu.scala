package fetch

import chisel3._
import common.Consts._
import common.Instructions._
import chisel3.util._

class Fpu extends Module {
	val io = IO(new Bundle{
		val func = Input(UInt())
	})
}