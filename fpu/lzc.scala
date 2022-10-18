package fetch

import chisel3._
import common.Consts._
import common.Instructions._
import chisel3.util._

class lzc8 extends Module {
	val io = IO(new Bundle{
		val obj = Input(UInt(8.W))
		val v = Output(UInt(1.W))
		val z2 = Output(UInt(1.W))
		val z1 = Output(UInt(1.W))
		val z0 = Output(UInt(1.W))
		val cnt = Output(UInt(4.W))
	})

	io.v  := ~(obj(7) | obj(6) | obj(5) | obj(4) | obj(3) | obj(2) | obj(1) | obj(0))
	io.z2 := ~(obj(7) | obj(6) | obj(5) | obj(4))
	io.z1 := ~(obj(7) | obj(6) | ((~obj(5)) & (~obj(4)) & (obj(3) + obj(2))))
	io.z0 := ~(obj(7) | ((~obj(6)) & obj(5)) | ((~obj(6)) & (~obj(4)) & obj(3)) | ((~obj(6)) & (~obj(4)) & (~obj(2)) & obj(1))
}

class lzc32 extends Module {
	val io = IO(new Bundle{
		val obj = Input(UInt(32.W))
		val v = Output(UInt(1.W))
		val z4 = Output(UInt(1.W))
		val z3 = Output(UInt(1.W))
		val z2 = Output(UInt(1.W))
		val z1 = Output(UInt(1.W))
		val z0 = Output(UInt(1.W))
	})

	val lzc8_0 = Module(new lzc8())
	val lzc8_1 = Module(new lzc8())
	val lzc8_2 = Module(new lzc8())
	val lzc8_3 = Module(new lzc8())

	lzc8_0.io.obj = io.obj(7,0)
	lzc8_0.io.obj = io.obj(15,8)
	lzc8_0.io.obj = io.obj(23,16)
	lzc8_0.io.obj = io.obj(31,24)

	io.v  := ~(lzc8_0.v + lzc8_1.v + lzc8_2.v + lzc8_3.v)
	io.z4 := lzc8_2.v + lzc8_3.v
	io.z3 := (lzc8_1.v & ~lzc8_2.v) | lzc8_3.v
	io.z2 := (~((lzc8_0.z2 & lzc8_1.v) | lzc8_1.z2) | ~(lzc8_2.v + lzc8_3.v)) & ~((lzc8_2.z2 & lzc8_3.v) | ~lzc8_3.z2)
	io.z1 := (~((lzc8_0.z1 & lzc8_1.v) | lzc8_1.z1) | ~(lzc8_2.v + lzc8_3.v)) & ~((lzc8_2.z1 & lzc8_3.v) | ~lzc8_3.z1)
	io.z0 := (~((lzc8_0.z0 & lzc8_1.v) | lzc8_1.z0) | ~(lzc8_2.v + lzc8_3.v)) & ~((lzc8_2.z0 & lzc8_3.v) | ~lzc8_3.z0)
}