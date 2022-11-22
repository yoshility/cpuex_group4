// 必要なファイルのインクルード
#include <iostream>
#include <verilated.h>
#include <random>
#include "obj_dir/Vfadd.h"

int time_counter = 0;

int main(int argc, char **argv) {
	// Verilatorのコマンド解析
	// DUTモジュールのインスタンス化
	// DUTモジュールのインタフェースの初期化
	Verilated::commandArgs(argc,argv);

	Vfadd *dut = new Vfadd();
	dut->reset_n = 0;
	dut->clk = 0;

	while (time_counter < 100) {
    dut->eval();
    time_counter++;
  }
	dut->reset_n = 1;

	while文 {
//     クロックを1サイクルずつ進めていく記述
	if ((time_counter % 5) == 0) {
		dut->clk = !dut->clk; // Toggle clock
	}
	if ((time_counter % 10) == 0) {
		cycle ++;
	}
//     DUTを評価（回路を実行する）記述
	if (cycle % 5 == 0) {
		dut->x1 = 1;   // Assert En
	}
//     DUTインタフェースを評価する処理
	dut->eval();
	time_counter++;
	}

	// 終了
}