# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall
OCAMLLDFLAGS=-warn-error -31

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top
## [自分（住井）用の注]
## ・OCamlMakefileや古いGNU Makeのバグ(?)で上のような定義が必要(??)
## ・OCamlMakefileではdebug-codeとnative-codeのそれぞれで
##   .mliがコンパイルされてしまうので、両方ともdefault:の右辺に入れると
##   再make時に（.mliが変更されているので）.mlも再コンパイルされる
clean:: nobackup

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parser.mly lexer.mll typing.mli typing.ml record_global.mli record_global.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml elim2.mli elim2.ml\
closure.mli closure.ml  flatten_tuple.mli flatten_tuple.ml asm.mli asm.ml virtual.mli virtual.ml \
simm.mli simm.ml simm2.mli simm2.ml peephole.mli peephole.ml regAlloc.mli regAlloc.ml emit.mli emit.ml cse.mli cse.ml cse2.mli cse2.ml solve_partial.mli solve_partial.ml\
main.mli main.ml

# ↓テストプログラムが増えたら、これも増やす
TESTS = print sum-tail gcd sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat adder-pe closure_5 array\
tuple tuple2 type_bug1 type_bug2 sum-e sum-tail test_overload partial mytest mytest2 \
print no_stop fun fib-e cse_test cse_test2 cse_test3 easy_test fib_c fib1 manyargs \
closure_test adder-te

do_test: $(TESTS:%=test/%.cmp)
do_test_s: $(TESTS:%=test/%_.s)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp) $(TESTS:%=test/%_.ml) \
$(TESTS:%=test/%.typed) $(TESTS:%=test/%.normalized)  $(TESTS:%=test/%.closure)$(TESTS:%=test/%.iterated) \
$(TESTS:%=test/%.virtual) $(TESTS:%=test/%.simm) $(TESTS:%=test/%.regalloc) \
$(TESTS:%=test/%_.s) $(TESTS:%=test/_%) $(TESTS:%=test/%_.res) $(TESTS:%=test/%_.ans) $(TESTS:%=test/%_.cmp)  \
$(TESTS:%=test/%_.typed) $(TESTS:%=test/%_.normalized)  $(TESTS:%=test/%_.closure)$(TESTS:%=test/%_.iterated) \
$(TESTS:%=test/%_.virtual) $(TESTS:%=test/%_.simm) $(TESTS:%=test/%_.regalloc) \

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$*
test/%_.s: $(RESULT) test/%.ml linker.py 
	# python3 linker.py test/$*.s test/$*_.s ./libmincaml.S
	python3 concat.py  ../cpuex-v1.4/raytracer/globals.ml riscv/lib.ml test/$*.ml test/$*_.ml
	./$(RESULT) test/$*_
test/%: test/%.s libmincaml.S stub.c
	$(CC) $(CFLAGS) -m32 $^ -lm -o $@
test/%.res: test/%
	$< > $@
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@
../minrt.s: $(RESULT) ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/globals.ml concat.py linker.py #./libmincaml.S
	python3 concat.py  ../cpuex-v1.4/raytracer/globals.ml riscv/lib.ml ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/minrt_.ml
	./$(RESULT) -inline 100 -iter 9999 ../cpuex-v1.4/raytracer/minrt_
	# ./$(RESULT) -inline 50 -iter 9999 ../cpuex-v1.4/raytracer/minrt_
	# python3 linker.py ../cpuex-v1.4/raytracer/minrt_.s ../cpuex-v1.4/raytracer/minrt__.s ./libmincaml.S
	rm ../cpuex-v1.4/raytracer/minrt_.ml
	mv ../cpuex-v1.4/raytracer/minrt_.s ../minrt.s
	# cp ../cpuex-v1.4/raytracer/minrt__.s ../minrt.s
	cp ../minrt.s ../../sim/test/minrt.s

../minrt_verbose.s: $(RESULT) ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/globals.ml concat.py linker.py #./libmincaml.S
	python3 concat.py  ../cpuex-v1.4/raytracer/globals.ml riscv/lib.ml ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/minrt_.ml
	./$(RESULT) -inline 100 -iter 9999 -verbose ../cpuex-v1.4/raytracer/minrt_
	# ./$(RESULT) -inline 50 -iter 9999 ../cpuex-v1.4/raytracer/minrt_
	# python3 linker.py ../cpuex-v1.4/raytracer/minrt_.s ../cpuex-v1.4/raytracer/minrt__.s ./libmincaml.S
	rm ../cpuex-v1.4/raytracer/minrt_.ml
	mv ../cpuex-v1.4/raytracer/minrt_.s ../minrt.s
	# cp ../cpuex-v1.4/raytracer/minrt__.s ../minrt.s
	cp ../minrt.s ../../sim/test/minrt.s

../minrt_lib.s: $(RESULT) ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/globals.ml concat.py linker.py ./libmincaml.S
	python3 concat.py ../cpuex-v1.4/raytracer/globals.ml no ../cpuex-v1.4/raytracer/minrt.ml ../cpuex-v1.4/raytracer/minrt_.ml
	./$(RESULT) -inline 100 -iter 9999 ../cpuex-v1.4/raytracer/minrt_
	python3 linker.py ../cpuex-v1.4/raytracer/minrt_.s ../cpuex-v1.4/raytracer/minrt__.s ./libmincaml.S
	rm ../cpuex-v1.4/raytracer/minrt_.ml
	rm ../cpuex-v1.4/raytracer/minrt_.s
	mv ../cpuex-v1.4/raytracer/minrt__.s ../minrt.s
	cp ../minrt.s ../../sim/test/minrt.s


	

min-caml.html: main.mli main.ml id.ml m.ml s.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
		alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
		inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
		closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
		simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml flatten_tuple.mli flatten_tuple.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile