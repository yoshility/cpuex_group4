OCOPT = -ccopt -O2
OCAMLBASE=/home/tomy/.opam/4.13.1/bin
OCAMLC=$(OCAMLBASE)/ocamlc
OCAMLOPT=$(OCAMLBASE)/ocamlopt

all: native

clean:
	rm -f *.cm? *.o

native: minrt
bytecode: minrt_b

.SUFFIXES: .ml .mli .cmo .cmi .cmx

.ml.cmo:
	$(OCAMLC) -g -c

.ml.cmx:
	$(OCAMLOPT) -c $(OCOPT) -pp ./preprocess.sh $<

.mli.cmi:
	$(OCAMLC) -g -c -nopervasives -pp ./preprocess.sh $<

minrt.cmx: globals.cmx miniMLRuntime.cmx
minrt.cmo: globals.cmo miniMLRuntime.cmi
globals.cmx: miniMLRuntime.cmx
globals.cmo: miniMLRuntime.cmi

minrt_b: minrt.cmo globals.cmo miniMLRuntime.cmo
	$(OCAMLC) -g -o minrt_b miniMLRuntime.cmo globals.cmo minrt.cmo

minrt: minrt.cmx globals.cmx miniMLRuntime.cmx
	$(OCAMLOPT) -o minrt miniMLRuntime.cmx globals.cmx minrt.cmx

miniMLRuntime.cmi: miniMLRuntime.mli
	$(OCAMLC) -c miniMLRuntime.mli

miniMLRuntime.cmx: miniMLRuntime.ml miniMLRuntime.cmi
	$(OCAMLOPT) -c $(OCOPT) miniMLRuntime.ml

miniMLRuntime.cmo: miniMLRuntime.ml miniMLRuntime.cmi
	$(OCAMLC) -g -c miniMLRuntime.ml

rt: rt.cmx miniMLRuntime.cmx
	$(OCAMLOPT) -o rt miniMLRuntime.cmx rt.cmx

rt_b: rt.cmo miniMLRuntime.cmo
	$(OCAMLC) -o rt_b miniMLRuntime.cmo rt.cmo
