// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Feb 10 11:22:34 2023
// Host        : SH-dl1 running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zakio/pipe_fpu/cache/ip/fifo_generator_0/fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *)
module fifo_generator_0(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,rd_clk,din[155:0],wr_en,rd_en,dout[155:0],full,empty" */;
  input wr_clk;
  input rd_clk;
  input [155:0]din;
  input wr_en;
  input rd_en;
  output [155:0]dout;
  output full;
  output empty;
endmodule
