open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty  (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref []   (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in(*pad��alignment�Τ��ᡩ*)
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t  (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function   (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc (tail, (exp,p))=  (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
match (tail,exp) with
(* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> (print_asm oc "\taddi\t%s, x0, %d\n" x i)
  | NonTail(x), Address(y) -> Printf.printf "Address of %s\n" y;(print_asm oc "\taddi\t%s, x0, %d # address\n" x (Asm.getaddress y))
  | NonTail(x), SetL(Id.L(y)) 
  -> 
    let labelnum = getlabelnum y in
    print_asm oc "\taddi\t%s, x0, %d\n"  reg_sw labelnum;
    print_asm oc "\taddi\t%s, %s, 0 # SETL\n"  x reg_sw  (*closure のアドレス*)
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> print_asm oc "\taddi\t%s, %s 0\n"  x y 
  | NonTail(x), Neg(y) -> print_asm oc "\tsub\t%s, x0, %s\n" x y
  | NonTail(x), Add(y, z') 
  -> (match z' with 
  |V(t) -> print_asm oc "\tadd\t%s, %s, %s\n" x y t
  |C(i) -> print_asm oc "\taddi\t%s, %s, %d\n" x y i)
  | NonTail(x), Sub(y, z') 
  -> (match z' with 
  |V(t) -> print_asm oc "\tsub\t%s, %s, %s\n" x y t
  |C(i) -> print_asm oc "\taddi\t%s, %s, %d\n" x y (-i))
  | NonTail(x), Mul(y, z) ->  print_asm oc "\tmul\t%s, %s, %s\n" x y z
  | NonTail(x), Div(y, z) ->  print_asm oc "\tdiv\t%s, %s, %s\n" x y z
  | NonTail(x), SLL(y, z') 
  -> (match z' with 
  |V(t) -> print_asm oc "\tsll\t%s, %s, %s\n" x y t
  |C(i) -> print_asm oc "\tslli\t%s, %s, %d\n" x y i)
  | NonTail(x), Ld(y, i) -> print_asm oc "\tlw\t%s, %d(%s)\n" x  i y
  | NonTail(_), St(x, y, i) ->print_asm oc "\tsw\t%s,%d(%s) # ST\n" x i y  
  | NonTail(x), FMovD(y) when x = y -> ()
  | NonTail(x), FMovD(y)  -> print_asm oc "\tfsgnj\t%s, %s, %s\n"  x y y 
  | NonTail(x), FNegD(y) ->print_asm oc "\tfsgnjx\t%s, %s, %s\n"  x y y;
  | NonTail(x), FAddD(y, z) -> print_asm oc "\tfadd\t%s, %s, %s\n" x y z
  | NonTail(x), FSubD(y, z) -> print_asm oc "\tfsub\t%s, %s, %s\n" x y z
  | NonTail(x), FMulD(y, z) -> print_asm oc "\tfmul\t%s, %s, %s\n" x y z
  | NonTail(x), FDivD(y, z) -> print_asm oc "\tfdiv\t%s, %s, %s\n" x y z
  | NonTail(x), LdDF(y, i)  -> print_asm oc "\tflw\t%s, %d(%s)\n" x  i y
  | NonTail(_), StDF(x, y, i) -> print_asm oc "\tfsw\t%s, %d(%s) # STDF\n" x i y
  | NonTail(_), Comment(s) -> print_asm oc "\t# %s\n" s
   (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      print_asm oc "\tsw\t%s, %d(%s)\n" x (offset y) reg_sp 
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      print_asm oc "\tsw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()(*���Ǥ�save�Ѥ�*)
    (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      print_asm oc "\tlw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      print_asm oc "\tlw\t%s, %d(%s)\n" x (offset y) reg_sp
 (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
 | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      print_asm oc "\taddi\tx0, x0, 0\n"
  | Tail, (Set _ | SetL _ | Address _| Mov _ | Neg _ | Add _ | Sub _ |Mul _ | Div _| SLL _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      print_asm oc "\taddi\tx0, x0, 0\n"
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ as exp) ->
      g' oc (NonTail(fregs.(0)), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      print_asm oc "\taddi\tx0, x0, 0\n"
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), (exp,p))
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), (exp,p))
      | _ -> assert false);
      print_asm oc "\tjalr\tx0, ra, 0\n";
      print_asm oc "\taddi\tx0, x0, 0\n"
  | Tail, IfEq(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
      g'_tail_if oc x y e1 e2 "be" "bne"
  | Tail, IfLE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
      g'_tail_if oc y x  e1 e2 "bg" "blt"
  | Tail, IfGE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
      g'_tail_if oc x y e1 e2 "bg" "blt"
  | Tail, IfFEq(x, y, e1, e2) ->
      print_asm oc "\tfeq\t%s, %s, %s\n" reg_sw  x y;
      print_asm oc "\taddi\tx0, x0, 0\n";
      g'_tail_if oc reg_sw reg_zero e1 e2 "bne" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
    print_asm oc "\tfle\t%s, %s, %s\n" reg_sw  x y;
    print_asm oc "\taddi\tx0, x0, 0\n";
    g'_tail_if oc reg_sw reg_zero  e1 e2 "bne" "beq"
| NonTail(z), IfEq(x, y', e1, e2) ->
  let y = 
  (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
      g'_non_tail_if oc (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfLE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
      g'_non_tail_if oc (NonTail(z)) y x e1 e2 "bg" "blt"
  | NonTail(z), IfGE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
    reg_sw) in
    g'_non_tail_if oc (NonTail(z)) x y e1 e2 "bg" "blt"
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    print_asm oc "\tfeq\t%s, %s, %s\n" reg_sw  x y;
    print_asm oc "\taddi\tx0, x0, 0\n";
    g'_non_tail_if oc (NonTail(z)) reg_sw reg_zero e1 e2 "bne" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
    print_asm oc "\tfle\t%s, %s, %s\n" reg_sw  x y;
      print_asm oc "\taddi\tx0, x0, 0\n";
      g'_non_tail_if oc (NonTail(z)) reg_sw reg_zero e1 e2 "bne" "beq"
   (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) ->  (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      print_asm oc "\tlw\t%s, 0(%s) # CallCls\n" reg_sw reg_cl;
      print_asm oc "\tjalr\tx0, %s, 0 # CallCls\n" reg_sw;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      print_asm oc "\tjal\tra, %s\n" x;
      (* print_asm oc "\taddi\tx0, x0, 0\n" *)
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      print_asm oc "\tlw\t%s, 0(%s)\n" reg_sw reg_cl;
      print_asm oc "\taddi\tsp, sp, -24 # callcls\n" ;
      print_asm oc "\tsw\t%s, 16(sp)\n" reg_cl;
      print_asm oc "\tsw\tra, 8(sp)\n" ;
      print_asm oc "\tsw\tfp, 0(sp)\n" ;
      print_asm oc "\tjalr\tra, %s, 0\n" reg_sw;
      print_asm oc "\tlw\t%s, 16(sp)\n" reg_cl;
      print_asm oc "\tlw\tra, 8(sp)\n" ;
      print_asm oc "\tlw\tfp, 0(sp)\n" ;
      print_asm oc "\taddi\tsp, sp, 16 # callcls end\n" ;
      if List.mem a allregs && a <> regs.(0) then
        print_asm oc "\taddi\t%s, %s, 0# callcls end\n"  a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (print_asm oc "\tfsgnj\t%s, %s # callcls end\n"  a fregs.(0);
         (* print_asm oc "\tfsgnj\t%s, %s\n"  (co_freg a) (co_freg fregs.(0)) *)
         )
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      (* print_asm oc "\tsw\t%s, %d(%s)\n"  reg_ra (ss - 4) reg_sp; *)
      (* print_asm oc "\t#\t%s\n"  x; *)
      (* print_asm oc "\taddi\tra, %s, 0\n" reg_sw;call ?? *)
      print_asm oc "\taddi\tsp, sp, -24\n" ;
      print_asm oc "\tsw\t%s, 16(sp)\n" reg_cl;
      print_asm oc "\tsw\tra, 8(sp)\n" ;
      print_asm oc "\tsw\tfp, 0(sp)\n" ;
      print_asm oc "\tjal\tra, %s\n" x;(*call ??*)
      print_asm oc "\tlw\t%s, 16(sp)\n" reg_cl;
      print_asm oc "\tlw\tra, 8(sp)\n" ;
      print_asm oc "\tlw\tfp, 0(sp)\n" ;
      print_asm oc "\taddi\tsp, sp, 24\n" ;
      (* print_asm oc "\taddi\t%s, %s, %d\t# delay slot\n" reg_sp reg_sp ss ;
      print_asm oc "\taddi\t%s, %s, -%d\n" reg_sp reg_sp ss;
      print_asm oc "\tlw\t%s, %d(%s)\n"  reg_ra (ss - 4) reg_sp; *)
      if List.mem a allregs && a <> regs.(0) then
        print_asm oc "\taddi\t%s, %s, 0\n" a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (print_asm oc "\tfsgnj\t%s, %s\n"  a fregs.(0);
         (* print_asm oc "\tfsgnj\t%s, %s\n"  (co_freg a) (co_freg fregs.(0)) *)
         )
and g'_tail_if oc x y e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  print_asm oc "\t%s\t%s, %s, %s\n" bn x y b_else;
  (* print_asm oc "\taddi\tx0, x0, 0\n"; *)
  let stackset_back = !stackset in
  g oc (Tail, e1);
  (* print_asm oc "\t # tail then end:\n"; *)
  print_asm oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2);
  (* print_asm oc "\t # tail else end:\n" *)
and g'_non_tail_if oc dest x y e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  print_asm oc "\t%s\t%s, %s, %s\n" bn x y b_else;
      print_asm oc "\taddi\tx0, x0, 0\n";
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  print_asm oc "\tjal\tx0, %s\n" b_cont;
    print_asm oc "\taddi\tx0, x0, 0\n";
  print_asm oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  print_asm oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> print_asm oc "\taddi\t%s, %s, 0\n" r y)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      print_asm oc "\tfsgnj\t%s, %s\n" fr z;
      (* print_asm oc "\tfsgnj\t%s, %s\n" (co_freg fr) (co_freg z) *)
      )
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;(* pc を利用するように変更*)
  setlabelnum x (!pc);
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  pc := 0;(*labelnumの初期値。ライブラリ関数などに注意。*)
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc(* print_asm oc*) ".section\t\".rodata\"\n"; 
  Printf.fprintf oc(* print_asm oc*) ".align\t8\n"; 
  List.iter
    (fun (Id.L(x), d) ->
      print_asm oc "%s:\t! %f\n" x d;
      print_asm oc "\t.long\t0x%lx\n" (gethi d);
      print_asm oc "\t.long\t0x%lx\n" (getlo d))
    data;
    Printf.fprintf oc(* print_asm oc*) ".section\t\".text\"\n"; 
  List.iter (fun fundef -> h oc fundef) fundefs;
  print_asm oc ".global\tmin_caml_start\n";
  print_asm oc "min_caml_start:\n";
  print_asm oc "\taddi\tsp, x0, 256\n"; 
  print_asm oc "\taddi\tt0, x0, 10\n"; 
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e);
  print_asm oc "\tjalr\tx0, ra, 0\n";
