let limit = ref 1000

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  (* let e' = ConstFold.f (Inline.f e) in *)
  if e = e' then e else
  iter (n - 1) e'

let lexbuf outchan out_parsed out_before_cse out_after_cse before_flatten after_flatten l =(* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let parsed = Parser.exp Lexer.token l in
  let normalized = KNormal.f(Typing.f parsed) in
  Syntax.print_t out_parsed parsed;(*中間結果の出力。課題１。*)
  (* KNormal.print_t out_before_cse normalized;
  let cse = Cse.cse normalized in(*共通部分式削除。課題２。*)
  KNormal.print_t out_after_cse cse; *)
  let cls = Closure.f normalized  in
  Closure.print_prog before_flatten cls;
  (*tupleの平坦化、4.2,3*)
  let cls2 = Flatten_tuple.f cls in
  Closure.print_prog after_flatten cls2;
  (* Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
          (Closure.f
  (iter !limit 
     (Alpha.f
        cse)))
          ))) *)
          Emit.f outchan 
    (RegAlloc.f
       (* (Simm.f *)
          (Virtual.f
          cls2))

          
             
  
let debug_closure outchan  l =(* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let parsed = Parser.exp Lexer.token l in
  let normalized = KNormal.f(Typing.f parsed) in
  KNormal.print_t outchan normalized





let string s = lexbuf stdout stdout stdout stdout stdout stdout(Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  let out_parsed = open_out (f ^ ".parsed") in
  let out_before_cse = open_out (f ^ ".before_CSE") in
  let out_after_cse = open_out (f ^ ".after_CSE") in
  let closure_before = open_out (f ^ ".before_flatten") in
  let closure_after = open_out (f ^ ".after_flatten") in
  let buf =Lexing.from_channel inchan in
  try
    lexbuf outchan out_parsed  out_before_cse out_after_cse closure_before closure_after buf;
    close_in inchan;
    close_out outchan;
  with 
  |e -> 
    (close_in inchan; close_out outchan; 
  raise e)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files

