-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Feb 10 11:19:49 2023
-- Host        : SH-dl1 running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/zakio/pipe_fpu/cache/ip/fifo_generator_1/fifo_generator_1_stub.vhdl
-- Design      : fifo_generator_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_generator_1 is
  Port ( 
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end fifo_generator_1;

architecture stub of fifo_generator_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,rd_clk,din[127:0],wr_en,rd_en,dout[127:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_7,Vivado 2022.2";
begin
end;
