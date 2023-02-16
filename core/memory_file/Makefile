SOURCE = ../core_file/testbench_no_ddr.sv ../core_file/top.v ../core_file/module.sv ../core_file/uart_rx.sv ../core_file/uart_tx.sv ../core_file/flipflop.sv ../core_file/uart_loopback.sv ../core_file/alu.sv ../core_file/memory.sv ../fpu/fadd.sv ../fpu/fmul.sv ../fpu/convert.sv ../fpu/finv.sv  ../fpu/fsign.sv ../fpu/sqrt.sv ../fpu/fcomp.sv
all: testbench
	xelab -debug typical testbench_no_ddr -s testbench_no_ddr.sim
testbench : 
	xvlog -sv $(SOURCE)
