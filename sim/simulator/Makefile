CC 		= g++

# 低速版シミュ
inst: sim_inst.cpp helper.cpp z3
	$(CC) -Wall -O3 -o sim sim_inst.cpp helper.cpp

# 低速版シミュのコピー
copy: sim_copy.cpp helper.cpp z3
	$(CC) -Wall -O3 -o sim sim_copy.cpp helper.cpp

# 高速版シミュ
accel: sim_accel.cpp helper.cpp
	$(CC) -Wall -O3 -o sim_accel sim_accel.cpp helper.cpp

# コンパイラ用シミュ
compiler: sim_compiler.cpp helper.cpp
	$(CC) -Wall -O3 -I/home/tomy/boost_1_81_0/local/include -o sim_compiler sim_compiler.cpp helper.cpp

clean:
	rm -f sim sim_compiler