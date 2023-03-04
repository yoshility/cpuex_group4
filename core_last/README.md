# コア
Vivado 2020.2での動作を想定しています

## フォルダ構成
```
.
├── README.md
├── cache			// メインメモリ関連
├── constraints		// ボード制約
├── core			// コア本体（デコーダ、ALU、UART他）
├── fpu_multi		// マルチサイクルFPU
├── fpu_single		// シングルサイクルFPU
├── ip				// Vivado IP(XCI)
├── memory			// 事前書き込みファイル（.mem）
├── project			// Vivado Project
├── server			// 審判サーバ関連
└── test			// テスト用ファイル
```

## ファイル構成
```
.
├── README.md
├── cache
│   ├── cache_controller.sv
│   ├── ddr2.sv
│   ├── dram_buf.sv
│   ├── dram_controller.sv
│   └── master_fifo_slave.sv
├── constraints
│   └── nexys_a7_100t.xdc
├── core
│   ├── alu.sv
│   ├── flipflop.sv
│   ├── memory.sv
│   ├── module.sv
│   ├── top.v
│   ├── uart_loopback.sv
│   ├── uart_rx.sv
│   └── uart_tx.sv
├── fpu_multi
│   ├── alu.sv
│   ├── convert.sv
│   ├── fadd.sv
│   ├── fcomp.sv
│   ├── finv.sv
│   ├── fmul.sv
│   ├── fsign.sv
│   └── sqrt.sv
├── fpu_single
│   ├── convert.sv
│   ├── fadd.sv
│   ├── fcomp.sv
│   ├── finv.sv
│   ├── fmul.sv
│   ├── fsign.sv
│   └── sqrt.sv
├── ip
│   ├── clk_wiz_0
│   │   └── clk_wiz_0.xci
│   ├── fifo_generator_0
│   │   └── fifo_generator_0.xci
│   ├── fifo_generator_1
│   │   └── fifo_generator_1.xci
│   ├── fifo_generator_2
│   │   └── fifo_generator_2.xci
│   ├── fifo_generator_3
│   │   └── fifo_generator_3.xci
│   └── mig_7series_0
│       └── mig_7series_0.xci
├── memory
│   ├── datasection.mem
│   ├── minrt_128.mem
│   ├── minrt_256.mem
│   └── sqrt_table.mem
├── server
│   ├── contest.sld
│   ├── contest_data.bin
│   ├── program.bin
│   ├── reader.py
│   └── server.py
├── project
│   ├── core_256.bit
│   ├── core_128.bit
│   ├── core_256
│   └── core_128
├── test
│   ├── b.mem
│   ├── base_data.mem
│   ├── c.mem
│   ├── test_velirator.sh
│   ├── testbench.sv
│   └── testbench_no_ddr.sv
└── tree_core.txt
```