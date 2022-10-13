open Asm
open Lexing

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
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align (List.length !stackmap * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> "$" ^ string_of_int i

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
let rec g oc p= function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc p (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc p(NonTail(x), exp);
      g oc p (dest, e)
and g' oc p (d,e)=  (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  let p = snd e in
  match (d,fst e) with
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\tmovl\t$%d, %s # %d\n" i x p.pos_lnum
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\tmovl\t$%s, %s # %d\n" y x p.pos_lnum
  | NonTail(x), Mov(y) ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s # %d\n" y x p.pos_lnum
  | NonTail(x), Neg(y) ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s # %d\n" y x p.pos_lnum;
      Printf.fprintf oc "\tnegl\t%s # %d\n" x p.pos_lnum
  | NonTail(x), Add(y, z') ->
      if V(x) = z' then
        Printf.fprintf oc "\taddl\t%s, %s # %d\n" y x p.pos_lnum
      else
        (if x <> y then Printf.fprintf oc "\tmovl\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\taddl\t%s, %s # %d\n" (pp_id_or_imm z') x p.pos_lnum)
  | NonTail(x), Sub(y, z') ->
      if V(x) = z' then
        (Printf.fprintf oc "\tsubl\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\tnegl\t%s # %d\n" x p.pos_lnum)
      else
        (if x <> y then Printf.fprintf oc "\tmovl\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\tsubl\t%s, %s # %d\n" (pp_id_or_imm z') x p.pos_lnum)
  | NonTail(x), Ld(y, V(z), i) -> Printf.fprintf oc "\tmovl\t(%s,%s,%d), %s # %d\n" y z i x p.pos_lnum
  | NonTail(x), Ld(y, C(j), i) -> Printf.fprintf oc "\tmovl\t%d(%s), %s # %d\n" (j * i) y x p.pos_lnum
  | NonTail(_), St(x, y, V(z), i) -> Printf.fprintf oc "\tmovl\t%s, (%s,%s,%d) # %d\n" x y z i p.pos_lnum
  | NonTail(_), St(x, y, C(j), i) -> Printf.fprintf oc "\tmovl\t%s, %d(%s) # %d\n" x (j * i) y p.pos_lnum
  | NonTail(x), FMovD(y) ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum
  | NonTail(x), FNegD(y) ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
      Printf.fprintf oc "\txorpd\tmin_caml_fnegd, %s # %d\n" x p.pos_lnum
  | NonTail(x), FAddD(y, z) ->
      if x = z then
        Printf.fprintf oc "\taddsd\t%s, %s # %d\n" y x p.pos_lnum
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\taddsd\t%s, %s # %d\n" z x p.pos_lnum)
  | NonTail(x), FSubD(y, z) ->
      if x = z then (* [XXX] ugly *)
        let ss = stacksize () in
        Printf.fprintf oc "\tmovsd\t%s, %d(%s) # %d\n" z ss reg_sp p.pos_lnum;
        if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
        Printf.fprintf oc "\tsubsd\t%d(%s), %s # %d\n" ss reg_sp x p.pos_lnum
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\tsubsd\t%s, %s # %d\n" z x p.pos_lnum)
  | NonTail(x), FMulD(y, z) ->
      if x = z then
        Printf.fprintf oc "\tmulsd\t%s, %s # %d\n" y x p.pos_lnum
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\tmulsd\t%s, %s # %d\n" z x p.pos_lnum)
  | NonTail(x), FDivD(y, z) ->
      if x = z then (* [XXX] ugly *)
        let ss = stacksize () in
        Printf.fprintf oc "\tmovsd\t%s, %d(%s) # %d\n" z ss reg_sp p.pos_lnum;
        if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
        Printf.fprintf oc "\tdivsd\t%d(%s), %s # %d\n" ss reg_sp x p.pos_lnum
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" y x p.pos_lnum;
         Printf.fprintf oc "\tdivsd\t%s, %s # %d\n" z x p.pos_lnum)
  | NonTail(x), LdDF(y, V(z), i) -> Printf.fprintf oc "\tmovsd\t(%s,%s,%d), %s # %d\n" y z i x p.pos_lnum
  | NonTail(x), LdDF(y, C(j), i) -> Printf.fprintf oc "\tmovsd\t%d(%s), %s # %d\n" (j * i) y x p.pos_lnum
  | NonTail(_), StDF(x, y, V(z), i) -> Printf.fprintf oc "\tmovsd\t%s, (%s,%s,%d) # %d\n" x y z i p.pos_lnum
  | NonTail(_), StDF(x, y, C(j), i) -> Printf.fprintf oc "\tmovsd\t%s, %d(%s) # %d\n" x (j * i) y p.pos_lnum
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s # %d\n" s p.pos_lnum
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tmovl\t%s, %d(%s) # %d\n" x (offset y) reg_sp p.pos_lnum
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tmovsd\t%s, %d(%s) # %d\n" x (offset y) reg_sp p.pos_lnum
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tmovl\t%d(%s), %s # %d\n" (offset y) reg_sp x p.pos_lnum
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tmovsd\t%d(%s), %s # %d\n" (offset y) reg_sp x p.pos_lnum
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc p (NonTail(Id.gentmp Type.Unit), (exp,p));
      Printf.fprintf oc "\tret # %d\n" p.pos_lnum;
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Ld _ as exp) ->
      g' oc p (NonTail(regs.(0)), (exp,p));
      Printf.fprintf oc "\tret # %d\n" p.pos_lnum;
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _  as exp) ->
      g' oc p (NonTail(fregs.(0)), (exp,p));
      Printf.fprintf oc "\tret # %d\n" p.pos_lnum;
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc p (NonTail(regs.(0)), (exp,p))
      | [i; j] when i + 1 = j -> g' oc p (NonTail(fregs.(0)), (exp,p))
      | _ -> assert false);
      Printf.fprintf oc "\tret # %d\n"  p.pos_lnum;
  | Tail, IfEq(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_tail_if oc e1 e2 "je" "jne" p
  | Tail, IfLE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_tail_if oc e1 e2 "jle" "jg" p
  | Tail, IfGE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_tail_if oc e1 e2 "jge" "jl" p
  | Tail, IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s # %d\n" y x p.pos_lnum;
      g'_tail_if oc e1 e2 "je" "jne" p
  | Tail, IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s # %d\n" y x p.pos_lnum;
      g'_tail_if oc e1 e2 "jbe" "ja" p
  | NonTail(z), IfEq(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne" p
  | NonTail(z), IfLE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jle" "jg" p
  | NonTail(z), IfGE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s # %d\n" (pp_id_or_imm y') x p.pos_lnum;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jge" "jl" p
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s # %d\n" y x p.pos_lnum;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne" p
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s # %d\n" y x p.pos_lnum;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jbe" "ja" p
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tjmp\t*(%s) # %d\n" reg_cl p.pos_lnum;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tjmp\t%s # %d\n" x p.pos_lnum;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s # %d\n" ss reg_sp p.pos_lnum;
      Printf.fprintf oc "\tcall\t*(%s) # %d\n" reg_cl p.pos_lnum;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s # %d\n" ss reg_sp p.pos_lnum;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s # %d\n" regs.(0) a p.pos_lnum
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" fregs.(0) a p.pos_lnum
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s # %d\n" ss reg_sp p.pos_lnum;
      Printf.fprintf oc "\tcall\t%s # %d\n" x p.pos_lnum;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s # %d\n" ss reg_sp p.pos_lnum;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s # %d\n" regs.(0) a p.pos_lnum
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s # %d\n" fregs.(0) a p.pos_lnum
and g'_tail_if oc e1 e2 b bn p=
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc p(Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc p (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn p =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc p (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjmp\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc p (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  assert (List.length ys <= Array.length regs - List.length x_reg_cl);
  assert (List.length zs <= Array.length fregs);
  let sw = Printf.sprintf "%d(%s)" (stacksize ()) reg_sp in
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmovl\t%s, %s\n" y r)
    (shuffle sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmovsd\t%s, %s\n" z fr)
    (shuffle sw zfrs)

let h oc p { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc p (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  let p = get_position e in
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".data\n";
  Printf.fprintf oc ".balign\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".text\n";
  List.iter (fun fundef -> h oc p fundef) fundefs;
  Printf.fprintf oc ".globl\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc ".globl\t_min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # for cygwin\n";
  Printf.fprintf oc "\tpushl\t%%eax\n";
  Printf.fprintf oc "\tpushl\t%%ebx\n";
  Printf.fprintf oc "\tpushl\t%%ecx\n";
  Printf.fprintf oc "\tpushl\t%%edx\n";
  Printf.fprintf oc "\tpushl\t%%esi\n";
  Printf.fprintf oc "\tpushl\t%%edi\n";
  Printf.fprintf oc "\tpushl\t%%ebp\n";
  Printf.fprintf oc "\tmovl\t32(%%esp),%s\n" reg_sp;
  Printf.fprintf oc "\tmovl\t36(%%esp),%s\n" regs.(0);
  Printf.fprintf oc "\tmovl\t%s,%s\n" regs.(0) reg_hp;
  stackset := S.empty;
  stackmap := [];
  g oc p (NonTail(regs.(0)), e);
  Printf.fprintf oc "\tpopl\t%%ebp\n";
  Printf.fprintf oc "\tpopl\t%%edi\n";
  Printf.fprintf oc "\tpopl\t%%esi\n";
  Printf.fprintf oc "\tpopl\t%%edx\n";
  Printf.fprintf oc "\tpopl\t%%ecx\n";
  Printf.fprintf oc "\tpopl\t%%ebx\n";
  Printf.fprintf oc "\tpopl\t%%eax\n";
  Printf.fprintf oc "\tret\n";
