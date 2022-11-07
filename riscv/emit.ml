open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in(*padはalignmentのため？*)
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

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\taddi\t%s, x0, %d\n" x i
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\taddi\t%s, %s, 0\n"  x y  
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> Printf.fprintf oc "\taddi\t%s, %s 0\n"  x y 
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t%s, x0, %s\n" x y
  | NonTail(x), Add(y, z') 
  -> (match z' with 
  |V(t) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" x y t
  |C(i) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" x y i)
  | NonTail(x), Sub(y, z') 
  -> match z' with 
  |V(t) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" x y t
  |C(i) -> Printf.fprintf oc "\tsubi\t%s, %s, %d\n" x y i
  | NonTail(x), SLL(y, z') 
  -> (match z' with 
  |V(t) -> Printf.fprintf oc "\tsll\t%s, %s, %s\n" x y t
  |C(i) -> Printf.fprintf oc "\tslli\t%s, %s, %d\n" x y i)
  | NonTail(x), Ld(y, z') 
  -> (match z' with   
  |V(t) -> Printf.fprintf oc "\tlw\t%s, %s, %s\n" x y t 
  |C(i) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x  i y)
  | NonTail(_), St(x, y, z') 
  -> (match z' with   
  |V(t) -> Printf.fprintf oc "\tsw\t%s, %s, %s\n" x y t 
  |C(i) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x  i y)
  | NonTail(x), FMovD(y) when x = y -> ()
  | NonTail(x), FMovD(y)  -> Printf.fprintf oc "\tfsgnj.s\t%s, %s %s\n"  x y y 
  | NonTail(x), FNegD(y) ->Printf.fprintf oc "\tfsgnjx.s\t%s, %s\n"  x y y;
  | NonTail(x), FAddD(y, z) -> Printf.fprintf oc "\tfadd.s\t%s, %s, %s\n" x y z
  | NonTail(x), FSubD(y, z) -> Printf.fprintf oc "\tfsub.s\t%s, %s, %s\n" x y z
  | NonTail(x), FMulD(y, z) -> Printf.fprintf oc "\tfmul.s\t%s, %s, %s\n" x y z
  | NonTail(x), FDivD(y, z) -> Printf.fprintf oc "\tfdiv.s\t%s, %s, %s\n" x y z
  | NonTail(x), LdDF(y, z') 
  -> (match z' with   
  |V(t) -> Printf.fprintf oc "\tflw\t%s, %s, %s\n" x y t 
  |C(i) -> Printf.fprintf oc "\tflw\t%s, %d(%s)\n" x  i y)
  | NonTail(_), StDF(x, y, z') 
  -> (match z' with   
  |V(t) -> Printf.fprintf oc "\tfsw\t%s, %s, %s\n" x y t 
  |C(i) -> Printf.fprintf oc "\tfsw\t%s, %d(%s)\n" x  i y)
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()(*すでにsave済み*)
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x (offset y) reg_sp
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjalr x0, x1, 0\n";
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | SLL _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjalr x0, x1, 0\n";
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tjalr x0, x1, 0\n";
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjalr x0, x1, 0\n";
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | Tail, IfEq(x, y', e1, e2) ->
      g'_tail_if oc x (pp_id_or_imm y') e1 e2 "be" "bne"
  | Tail, IfLE(x, y', e1, e2) ->
      g'_tail_if (pp_id_or_imm y') x  oc e1 e2 "bg" "blt"
  | Tail, IfGE(x, y', e1, e2) ->
      g'_tail_if oc x (pp_id_or_imm y') e1 e2 "bg" "blt"
  | Tail, IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tfeq.s\t%s, %s, %s\n" reg_sw  x y;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
      g'_tail_if reg_sw x0 oc e1 e2 "bne" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
    Printf.fprintf oc "\tfle.s\t%s, %s, %s\n" reg_sw  x y;
    Printf.fprintf oc "\taddi\tx0, x0, 0\n"
    g'_tail_if reg_sw x0 oc e1 e2 "bne" "beq"
| NonTail(z), IfEq(x, y', e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) x (pp_id_or_imm y') e1 e2 "be" "bne"
  | NonTail(z), IfLE(x, y', e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) (pp_id_or_imm y') x  oc e1 e2 "bg" "blt"
  | NonTail(z), IfGE(x, y', e1, e2) ->
    g'_non_tail_if oc (NonTail(z)) x (pp_id_or_imm y') e1 e2 "bg" "blt"
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    Printf.fprintf oc "\tfeq.s\t%s, %s, %s\n" reg_sw  x y;
    Printf.fprintf oc "\taddi\tx0, x0, 0\n"
    g'_non_tail_if oc (NonTail(z)) reg_sw x0 oc e1 e2 "bne" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
    Printf.fprintf oc "\tfle.s\t%s, %s, %s\n" reg_sw  x y;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
      g'_non_tail_if oc (NonTail(z)) reg_sw x0 oc e1 e2 "bne" "beq"
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)(*ここから*)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tld\t[%s + 0], %s\n" reg_cl reg_sw;
      Printf.fprintf oc "\tjmp\t%s\n" reg_sw;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tb\t%s\n" x;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tld\t[%s + 0], %s\n" reg_cl reg_sw;
      Printf.fprintf oc "\tcall\t%s\n" reg_sw;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tcall\t%s\n" x;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
and g'_tail_if oc x y e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x y b_else;
  Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest x y e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x y b_else;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tb\t%s\n" b_cont;
      Printf.fprintf oc "\taddi\tx0, x0, 0\n"
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmov\t%s, %s\n" y r)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tfmovs\t%s, %s\n" z fr;
      Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg z) (co_freg fr))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t! %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".section\t\".text\"\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".global\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n"; (* from gcc; why 112? *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("%g0"), e);
  Printf.fprintf oc "\tret\n";
  Printf.fprintf oc "\trestore\n"
