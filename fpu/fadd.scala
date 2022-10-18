package fetch

import chisel3._
import common.Consts._
import common.Instructions._
import chisel3.util._

class fadd extends Module {
	val io = IO(new Bundle{
		val op1 = Input(SInt(FLOAT_LEN.W)) 	//operand1
		val op2 = Input(SInt(FLOAT_LEN.W)) 	//operand2
		val add = Input(UInt(1.W))					//add or sub
		val res = Output(SInt(FLOAT_LEN.W)) //result
		val ovf = Output(UInt(1.W)) 				//overflow
	})
	var s1, s2, sb, ss = Wire(UInt(SIGN_LEN.W))			//sign
	var e1, e2, eb, es = Wire(UInt(EXPO_LEN.W))			//exponent
	var f1, f2 = Wire(UInt(FRAC_LEN.W))			//fraction
	var q1, q2 = Wire(UInt(EXPO_LEN.W))			//unbiased exponent
	var c1, c2, cb, cs= Wire(UInt((FRAC_LEN+2.U).W))			//1.fraction with carry-bit

	s1 = op1(31)
	e1 = op1(30,23)
	f1 = op1(22,0)
	s2 = op2(31)
	e2 = op2(30,23)
	f2 = op2(22,0)
	c1 = 1.U(2.W) ## f1
	c2 = 1.U(2.W) ## f2

	var e2i = Wire(UInt(EXPO_LEN.W))	//inversed e2
	var de = Wire(UInt(EXPO_LEN.W))		//difference of exponent
	e2i = Fill(8,1.U) - e2
	de = (1.U ## e1) + (1.U ## e2i)

	sb :: eb :: cb :: ss :: es :: cs :: Nil =
		if (de(7) === 1.U || (de === 0.U && c1 > c2))
					 s1 :: e1 :: c1 :: s2 :: e2 :: c2 :: Nil
			else s2 :: e2 :: c2 :: s1 :: e1 :: c1 :: Nil

	var css = Wire(UInt((FRAC_LEN+33.U).W))
	css = cs >> (de & 31.W(8.W))

	var calc = Wire(UInt(1.W))			//calculation
	var cr = Wire(UInt((FRAC_LEN+33.U).W)) //result of calculation of fraction
	calc = if ((s1 === s2) ^ add) 0.U else 1.U
	cr = if (calc === 1.U) (cb ## 0.U(2.W)) + css(55,29) else (cb ## 0.U(2.W)) - css(55,29)

	io.ovf := if (cr(26) === 1 && es === 255.U) 1 else 0

	var lzc = WireDefault(26.U(5.W))
	for (i <- 0 to 25) {
		lzc = if (cr(FRAC_LEN+33-1 - i) === 1 && lzc === 26) i.U(5.W)
	}
	cr = cr << lzc
	var gb, rb = Wire(UInt(1.W))
	gb = cr(FRAC_LEN+33-1 - 26)
	rb = cr(FRAC_LEN+33-1 - 27, 0).orR

	var cra = Wire(UInt((FRAC_LEN + 2).W)) //adjusted result of calucuration
	cra = if (gb && (cr(FRAC_LEN+33-1 - 25) || rb)) cr(FRAC_LEN+33-1, FRAC_LEN+33-1 - 25) + 1 else cr(FRAC_LEN+33-1, FRAC_LEN+33-1 - 25)



}
