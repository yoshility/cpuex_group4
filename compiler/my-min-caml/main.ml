let limit = ref 1000
let verbose = ref false
let id = ref ""

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim2.f (Cse.cse (ConstFold.f (Inline.f (Assoc.f (Beta.f e) )))) in
  (* let e' = ConstFold.f (Inline.f e) in *)
  if e = e' then (Format.eprintf "iteration finished.\n";e )else
  iter (n - 1) e'
let rec iter2 n e = 
  Format.eprintf "iteration2 %d@." n;
  if n = 0 then e else
  let e' = Peephole.f (Simm2.f  (Simm.f e)) in
  if e = e' then (Format.eprintf "iteration2 finished.\n";e )else
  iter2 (n - 1) e'
let lexbuf outchan o_regalloc o_simm o_virtual o_closure o_iterated o_normalized o_typed buf =(* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan (  
    let reg_alloc =RegAlloc.f(
      let simm =Simm2.f ( 
        let virt = Virtual.f (
          let cls = Closure.f(
            let iterated = iter !limit (
              let normalized = Alpha.f (KNormal.f(
                let typed = Record_global.record(Typing.f (Parser.exp Lexer.token buf))
              in Syntax.print_t o_typed typed; typed ))
            in KNormal.print_t o_normalized normalized; normalized) 
          in KNormal.print_t o_iterated iterated; iterated)
        in Closure.print_prog o_closure cls; cls)
      in Asm.print_prog o_virtual virt;virt)
     in let simm2 = iter2 100 simm in Asm.print_prog o_simm simm2;simm2 )
  in Asm.print_prog o_regalloc reg_alloc; reg_alloc)
  
             
let string s = lexbuf stdout stdout stdout stdout stdout stdout stdout stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let f = f^(!id) in
  let buf =Lexing.from_channel inchan in
  let outchan = open_out (f ^".s") in
  if !verbose then( 
    let o_typed = open_out (f ^ ".typed") in
    let o_normalized = open_out (f ^ ".normalized") in
    let o_closure = open_out (f ^ ".closure") in
    let o_iterated = open_out (f ^ ".iterated") in
    let o_virtual = open_out (f ^ ".virtual") in
    let o_simm = open_out (f ^ ".simm") in
    let o_regalloc = open_out (f ^ ".regalloc") in
    try
      lexbuf outchan o_regalloc o_simm o_virtual o_closure o_iterated o_normalized o_typed buf;
      close_in inchan;
      close_out outchan;close_out o_regalloc;close_out o_simm;close_out o_virtual;
      close_out o_closure;close_out o_iterated;close_out o_normalized;close_out o_typed
    with 
    |e -> 
      (close_out outchan;close_out o_regalloc;close_out o_simm;close_out o_virtual;
      close_out o_closure;close_out o_iterated;close_out o_normalized;close_out o_typed; raise e))
  else(
    let null = open_out("/dev/null") in
    try
      lexbuf outchan null null null null null null null buf;
      close_in inchan;
      close_out outchan; close_out null
    with 
    |e -> 
      (close_in inchan; close_out outchan; close_out null; raise e))


let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-lifting", Arg.Unit(fun () -> Closure.lifting := true), "lambda lifting");
     ("-type_check_c", Arg.Unit(fun () -> Closure.type_check_c := true), "type check of closure");
     ("-no_typing", Arg.Unit(fun () -> Typing.typing := false), "type check of min-caml");
     ("-verbose", Arg.Unit(fun () -> verbose := true), "visualization for debug");
     ("-id", Arg.String(fun s -> id := s), "output id")
     ]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
      (List.iter (fun f -> ignore (file f)) !files)

  

