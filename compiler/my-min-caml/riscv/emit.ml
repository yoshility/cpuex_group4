open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty  (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref []   (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)(*型を追加*)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem (x, Type.Int) !stackmap) then
    stackmap := !stackmap @ [(x, Type.Int)]
let savef x =
  stackset := S.add x !stackset;
  (* if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x]) *)
    if not (List.mem (x, Type.Float) !stackmap) then
    stackmap := !stackmap @ [(x, Type.Float)]
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = fst y -> (0,snd y) :: List.map (fun (x,t) -> (succ x, t)) (loc zs)
    | y :: zs -> List.map (fun (x,t) -> (succ x, t)) (loc zs) in
  loc !stackmap
let offset x =  try 4 * fst (List.hd (locate x)) with e -> Printf.printf "error hd %s\n" x; raise e
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
  | dest, Let((x, t), (Add(z, C(n)),p), Ans((Ld(y,i),_))) when (x=z && z=y) ->
    g oc (dest, Ans(Ld(y, n+i),p))
  | dest, Let((x, t), (Add(z, C(n)),p), Ans((LdDF(y,i),_))) when (x=z && z=y) ->
    g oc (dest, Ans(LdDF(y, n+i),p))

 
  | dest, Let((x, t), (Add(z, C(n)),p), Ans((St(w,y,i),_))) when (x=z && z=y) ->
    g oc (dest, Ans(St(w, y, n+i),p))
  | dest, Let((x, t), (Add(z, C(n)),p), Ans((StDF(w,y,i),_))) when (x=z && z=y) ->
    g oc (dest, Ans(StDF(w, y, n+i),p))



  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc (tail, (exp,p))=  (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
match (tail,exp) with
(* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> (print_asm oc "\taddi\t%s, x0, %d\n" x i)
  | NonTail(x), Flabel(Id.L(y)) 
  -> print_asm oc "\tluil\t%s, %s\n" x y;
     print_asm oc "\tsrli\t%s, %s, %d\n" x x 1;
     print_asm oc "\taddil\t%s, %s, %s\n" x x y
   | NonTail(x), SetL(Id.L(y)) 
  -> 
    let labelnum = getlabelnum y in
    if labelnum < 2048 then
      (print_asm oc "\taddi\t%s, x0, %d # labal %s\n"  x labelnum y)
    else
      (print_asm oc "\tlui\t%s, %d # label %s\n" x (labelnum/2048) y;
      print_asm oc "\tsrli\t%s, %s, %d\n" x x 1;
      print_asm oc "\taddi\t%s, %s, %d\n" x x (labelnum mod 2048))
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> print_asm oc "\taddi\t%s, %s 0\n"  x y 
  | NonTail(x), Neg(y) -> print_asm oc "\tsub\t%s, x0, %s\n" x y
  | NonTail(x), Add(y, z') 
  -> (match z' with 
  |V(t) -> print_asm oc "\tadd\t%s, %s, %s\n" x y t
  |C(i) -> 
     if i=0 && x = y then ()
     else (if i < 2048 then
    (print_asm oc "\taddi\t%s, %s, %d\n" x y i)
    else 
      (print_asm oc "\tlui\t%s, %d\n" x (i/2048);
      print_asm oc "\tsrli\t%s, %s, %d\n" x x 1;
      print_asm oc "\taddi\t%s, %s, %d\n" x x (i mod 2048);
      print_asm oc "\tadd\t%s, %s, %s\n" x x y)
    ))
  | NonTail(x), Sub(y, z') 
  -> (match z' with 
  |V(t) -> print_asm oc "\tsub\t%s, %s, %s\n" x y t
  |C(i) -> print_asm oc "\taddi\t%s, %s, %d\n" x y (-i))
  | NonTail(x), Mul(y, z') ->  
    (match z' with 
    |V(z) ->(print_asm oc "\tmul\t%s, %s, %s\n" x y z)
    |C(i) ->
      if i = 0 then (print_asm oc "\taddi\t%s, %s, %d\n" x reg_zero i)
      else (
      print_asm oc "\taddi\t%s, %s, %d\n" reg_tm reg_zero i;
      print_asm oc "\tmul\t%s, %s, %s\n" x y reg_tm
      ))
  | NonTail(x), Div(y, z') ->  
    (match z' with 
    |V(z) -> (print_asm oc "\tdiv\t%s, %s, %s\n" x y z)
    |C(i) -> (
      print_asm oc "\taddi\t%s, %s, %d\n" reg_tm reg_zero i  ;
    print_asm oc "\tdiv\t%s, %s, %s\n" x y reg_tm))
  | NonTail(x), SLL(y, z') 
  -> (match z' with 
  |V(t) -> (print_asm oc "\tsll\t%s, %s, %s\n" x y t)
  |C(i) ->( print_asm oc "\tslli\t%s, %s, %d\n" x y i))
  | NonTail(x), Ld(y, i) -> print_asm oc "\tlw\t%s, %d(%s)\n" x  i y
  | NonTail(_), St(x, y, i) ->print_asm oc "\tsw\t%s,%d(%s) \n" x i y  
  | NonTail(x), FMovD(y) when x = y -> ()
  | NonTail(x), FMovD(y)  -> print_asm oc "\tfsgnj\t%s, %s, %s\n"  x y y 
  | NonTail(x), FNegD(y) ->print_asm oc "\tfsgnjx\t%s, %s, %s\n"  x y y;
  | NonTail(x), FAddD(y, z) -> print_asm oc "\tfadd\t%s, %s, %s\n" x y z
  | NonTail(x), FSubD(y, z) -> print_asm oc "\tfsub\t%s, %s, %s\n" x y z
  | NonTail(x), FMulD(y, z) -> print_asm oc "\tfmul\t%s, %s, %s\n" x y z
  | NonTail(x), FDivD(y, z) -> print_asm oc "\tfdiv\t%s, %s, %s\n" x y z
  | NonTail(x), LdDF(y, i)  -> print_asm oc "\tflw\t%s, %d(%s)\n" x  i y
  | NonTail(_), StDF(x, y, i) -> print_asm oc "\tfsw\t%s, %d(%s) \n" x i y
  | NonTail(_), Comment(s) -> print_asm oc "\t# %s\n" s
   (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      print_asm oc "\tsw\t%s, -%d(%s) # Save %s\n" x (offset y) reg_sp y
      (* print_asm oc "\taddi\t%s, %s, -4\n" reg_sp reg_sp  *)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      print_asm oc "\tfsw\t%s, -%d(%s)\n" x (offset y) reg_sp
      (* print_asm oc "\taddi\t%s, %s, -8\n" reg_sp reg_sp  *)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()(*���Ǥ�save�Ѥ�*)
    (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      print_asm oc "\tlw\t%s, -%d(%s) # Restore %s\n" x (offset y) reg_sp y
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      print_asm oc "\tflw\t%s, -%d(%s)\n" x (offset y) reg_sp
  | NonTail(x), IofF(y) ->
    print_asm oc "\tfcvtws\t%s, %s\n" x y
  | NonTail(x), FofI(y) ->
    print_asm oc "\tfcvtsw\t%s, %s\n" x y
  | NonTail(x), Fabs(y) ->
    print_asm oc "\tfsgnjx\t%s, %s, %s\n" x y y
  | NonTail(x), Fneg(y) ->
    print_asm oc "\tfsgnjn\t%s, %s, %s\n" x y y
  | NonTail(x), Fless(y,z) ->
    print_asm oc "\tflt\t%s, %s, %s\n" x y z
  | NonTail(x), Fispos(y) ->
    print_asm oc "\tfsgnjn\t%s, %s, %s\n" reg_fsw y y;
    print_asm oc "\tflt\t%s, %s, %s\n" x reg_fsw y
  | NonTail(x), Fisneg(y) ->
    print_asm oc "\tfsgnjn\t%s, %s, %s\n" reg_fsw y y;
    print_asm oc "\tflt\t%s, %s, %s\n" x y reg_fsw
  | NonTail(x), Fiszero(y) ->
    print_asm oc "\tfsgnjn\t%s, %s, %s\n" reg_fsw y y;
    print_asm oc "\tfeq\t%s, %s, %s\n" x reg_fsw y
  | NonTail(x), Floor(y) ->
    print_asm oc "\tfcvtws\t%s, %s\n" reg_sw y;
    print_asm oc "\tfcvtsw\t%s, %s\n" reg_fsw reg_sw;
    print_asm oc "\tflt\t%s, %s, %s\n" reg_tm y reg_fsw;
    print_asm oc "\tsub\t%s, %s, %s\n" reg_sw reg_sw reg_tm;
    print_asm oc "\tfcvtsw\t%s, %s\n" x reg_sw
  | NonTail(x), Fsqrt(y) ->
    print_asm oc "\tfsqrt\t%s, %s\n" x y
  | NonTail(x), Fsqr(y) ->
    print_asm oc "\tfmul\t%s, %s, %s\n" x y y
  | NonTail(x), Fhalf(y) ->
    print_asm oc "\tluil\t%s, l.001\n" reg_sw ;
    print_asm oc "\tsrli\t%s, %s, %d\n" reg_sw reg_sw 1 ;
    print_asm oc "\taddil\t%s, %s, l.001\n" reg_sw reg_sw;  
    print_asm oc "\tflw\t%s, %d(%s)\n" reg_fsw 0 reg_sw;  
    print_asm oc "\tfmul\t%s, %s, %s\n" x y reg_fsw   
  | NonTail(x), RInt ->
    print_asm oc "\tlw\t%s, %d(s10)\n" x 0 ;
    print_asm oc "\taddi\t%s, %s, %d\n" reg_zero reg_zero 0 (* temporary for core*)
  | NonTail(x), RFloat ->
    print_asm oc "\tflw\t%s, %d(s11)\n" x 0 ;
    print_asm oc "\taddi\t%s, %s, %d\n" reg_zero reg_zero 0 (* temporary for core*)
  | NonTail(_), PInt(y) ->
    
    print_asm oc "\taddi\t%s, %s, %d\n" reg_tm reg_zero 10;
    print_asm oc "\tdiv\t%s, %s, %s\n" reg_sw y reg_tm; (* /10**)
    print_asm oc "\tmul\t%s, %s, %s\n" reg_tm2 reg_tm reg_sw; 
    print_asm oc "\tsub\t%s, %s, %s\n" y y reg_tm2;(* n1 *) 
    print_asm oc "\tdiv\t%s, %s, %s\n" reg_tm3 reg_sw reg_tm;(* n3 *) 
    print_asm oc "\taddi\t%s, %s, %d\n" reg_tm2 reg_tm3 48;(* n3 *) 
    print_asm oc "\tsw\t%s, %d(s11)\n" reg_tm2 0;
    print_asm oc "\tmul\t%s, %s, %s\n" reg_tm2 reg_tm3 reg_tm;
    print_asm oc "\tsub\t%s, %s, %s\n" reg_sw reg_sw reg_tm2;(*n2*)
    print_asm oc "\taddi\t%s, %s, %d\n" reg_sw reg_sw 48;(*n2*)
    print_asm oc "\tsw\t%s, %d(s11)\n" reg_sw 0;
    print_asm oc "\taddi\t%s, %s, %d\n" reg_sw y 48;(*n2*)
    print_asm oc "\tsw\t%s, %d(s11)\n" reg_sw 0;
  | NonTail(_), Pchar(y) ->
    print_asm oc "\tsw\t%s, %d(s11)\n" y 0 
  | NonTail(_), Pline ->
    print_asm oc "\taddi\t%s, %s, %d\n" reg_sw reg_zero 10;
    print_asm oc "\tsw\t%s, %d(s11)\n" reg_sw 0 
  | NonTail(z), CArray(x',y) ->
    (let loop = Id.genid "create_array_loop" in
    let loop_end = Id.genid2 "create_array_end" in
    match x' with
    | V(x) ->
    (print_asm oc "\taddi\t%s, %s, %d\n" reg_sw reg_hp 0 ;
    Printf.fprintf oc "%s:\n" loop;
    print_asm oc "\tbeq\t%s, %s, %s\n" x reg_zero loop_end;
    print_asm oc "\tsw\t%s, %d(%s)\n" y 0 reg_hp;
    print_asm oc "\taddi\t%s, %s, %d\n" reg_hp reg_hp 4;
    print_asm oc "\taddi\t%s, %s, -%d\n" x x 1;
    print_asm oc "\tjal\t%s, %s\n" reg_zero loop;
    Printf.fprintf oc "%s:\n" loop_end;
    print_asm oc "\taddi\t%s, %s, %d\n" z reg_sw 0)
    | C(i) ->
      (
      if i = 0 then (print_asm oc "\taddi\t%s, %s, %d\n" z reg_hp 0)
      else 
      (for i = 0 to (i-1) do
        print_asm oc "\tsw\t%s, %d(%s)\n" y (i*4) reg_hp;
      done;
      print_asm oc "\taddi\t%s, %s, %d\n" z reg_hp 0;
      print_asm oc "\taddi\t%s, %s, %d\n" reg_hp reg_hp (4*i))))
   | NonTail(z), CFArray(x',y) ->
    (let loop = Id.genid "create_float_array_loop" in
    let loop_end = Id.genid2 "create_float_array_end" in
    match x' with 
    | V(x) ->
      (print_asm oc "\taddi\t%s, %s, %d\n" reg_sw reg_hp 0 ;
      Printf.fprintf oc "%s:\n" loop;
      print_asm oc "\tbeq	%s, %s, %s\n" x reg_zero loop_end;
      print_asm oc "\tfsw	%s, %d(%s)\n" y 0 reg_hp;
      print_asm oc "\taddi %s, %s, %d\n" reg_hp reg_hp 4;
      print_asm oc "\taddi %s, %s, -%d\n" x x 1;
      print_asm oc "\tjal	%s, %s\n" reg_zero loop;
      Printf.fprintf oc "%s:\n" loop_end;
      print_asm oc "\taddi\t%s, %s, %d\n" z reg_sw 0)
    | C(i) ->
      (
      if i = 0 then (print_asm oc "\taddi\t%s, %s, %d\n" z reg_hp 0)
      else 
      (for i = 0 to (i-1) do
        print_asm oc "\tfsw\t%s, %d(%s)\n" y (i*4) reg_hp;
      done;
      print_asm oc "\taddi\t%s, %s, %d\n" z reg_hp 0;
      print_asm oc "\taddi\t%s, %s, %d\n" reg_hp reg_hp (4*i)
      )))
    (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
 | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ | PInt _ | Pchar _ | Pline as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      (*print_asm oc "\taddi\tx0, x0, 0\n"*)
  | Tail, (Set _ | SetL _ | Flabel _| Mov _ | Neg _ | Add _ | Sub _ |Mul _ | Div _| SLL _ | Ld _ 
  |IofF _  | Fless _ | Fispos _ | Fisneg _ | Fiszero _   | RInt | CArray _ | CFArray _
  as exp) ->
      g' oc (NonTail(regs.(0)), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      (*print_asm oc "\taddi\tx0, x0, 0\n"*)
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ 
  | FofI _ | Fabs _ | Fneg _ | Fsqrt _ 
  |Fsqr _ | Fhalf _ |RFloat |Floor _
  as exp) ->
      g' oc (NonTail(fregs.(0)), (exp,p));
      print_asm oc "\tjalr\tx0, ra, 0\n";
      (*print_asm oc "\taddi\tx0, x0, 0\n"*)
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [(i, Type.Int)] -> g' oc (NonTail(regs.(0)), (exp,p))
      | [(i, Type.Float)] -> g' oc (NonTail(fregs.(0)), (exp,p))
      | _ -> assert false);
      print_asm oc "\tjalr\tx0, ra, 0\n";
      (*print_asm oc "\taddi\tx0, x0, 0\n"*)
  | Tail, IfEq(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
      g'_tail_if oc x y e1 e2 "be" "bne"
  | Tail, IfLE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
      g'_tail_if oc y x  e1 e2 "bg" "blt"
  | Tail, IfGE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
      g'_tail_if oc x y e1 e2 "bg" "blt"
  | Tail, IfFEq(x, y, e1, e2) ->
      print_asm oc "\tfeq\t%s, %s, %s\n" reg_sw  x y;
      (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
      g'_tail_if oc reg_sw reg_zero e1 e2 "bne" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
    print_asm oc "\tfle\t%s, %s, %s\n" reg_sw  x y;
    (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
    g'_tail_if oc reg_sw reg_zero  e1 e2 "bne" "beq"
| NonTail(z), IfEq(x, y', e1, e2) ->
  let y = 
  (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
      g'_non_tail_if oc (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfLE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
      g'_non_tail_if oc (NonTail(z)) y x e1 e2 "bg" "blt"
  | NonTail(z), IfGE(x, y', e1, e2) ->
    let y = 
    (match y' with 
    | V(yy)-> yy
    | C(i)-> 
      (
        if i = 0 then reg_zero
    else 
      ( 
        print_asm oc "\taddi\t%s, x0, %d\n" reg_sw  i;
      reg_sw)
    )) in
    g'_non_tail_if oc (NonTail(z)) x y e1 e2 "bg" "blt"
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    print_asm oc "\tfeq\t%s, %s, %s\n" reg_sw  x y;
    (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
    g'_non_tail_if oc (NonTail(z)) reg_sw reg_zero e1 e2 "bne" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
    print_asm oc "\tfle\t%s, %s, %s\n" reg_sw  x y;
      (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
      g'_non_tail_if oc (NonTail(z)) reg_sw reg_zero e1 e2 "bne" "beq"
   (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) ->  (* 末尾呼び出し (caml2html: emit_tailcall) *)
  (if is_reg x then (g'_args oc [(x, reg_cl)] ys zs)
  else (
  g'_args oc [] ys zs;
  print_asm oc "\taddi\t%s, x0, %d" reg_cl (getlabelnum x)
  ));
      print_asm oc "\tlw\t%s, 0(%s) \n" reg_sw reg_cl;
      print_asm oc "\tjalr\tx0, %s, 0 \n" reg_sw;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      (* print_asm oc "\tjal\tra, %s\n" x; *)
      print_asm oc "\tjal\tx0, %s \n" x;
      (* (*print_asm oc "\taddi\tx0, x0, 0\n"*) *)
  | NonTail(a), CallCls(x, ys, zs) ->
    (* print_asm oc "\t#\tCallCls \n"; *)
    (if is_reg x then (g'_args oc [(x, reg_cl)] ys zs)
    else (
    g'_args oc [] ys zs;
    print_asm oc "\taddi\t%s, x0, %d" reg_cl (getlabelnum x)
    ));
      
      let ss = stacksize () in
      print_asm oc "\tlw\t%s, 0(%s)\n" reg_sw reg_cl;
      (* print_asm oc "\tsw\t%s, -%d(%s)\n" reg_cl (ss+4) reg_sp;*)
      print_asm oc "\tsw\t%s, -%d(%s)\n" reg_ra (ss) reg_sp;
      print_asm oc "\taddi\t%s, %s, -%d\n" reg_sp reg_sp (ss+4);      
      print_asm oc "\tjalr\t%s, %s, 0 # CallCls %s\n" reg_ra reg_sw x;
      print_asm oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp (ss+4);      
      print_asm oc "\tlw\t%s, -%d(%s)\n" reg_ra (ss) reg_sp;
      (*print_asm oc "\tlw\t%s, -%d(%s)\n" reg_cl (ss+4) reg_sp;*)
      if List.mem a allregs && a <> regs.(0) then
        print_asm oc "\taddi\t%s, %s, 0\n"  a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (print_asm oc "\tfsgnj\t%s, %s, %s\n"  a fregs.(0) fregs.(0);
         (* print_asm oc "\tfsgnj\t%s, %s\n"  (co_freg a) (co_freg fregs.(0)) *)
         )
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      (* print_asm oc "\tsw\t%s, -%d(%s)\n" reg_cl (ss+4) reg_sp;*)
      print_asm oc "\tsw\t%s, -%d(%s)\n" reg_ra (ss) reg_sp;
      print_asm oc "\taddi\t%s, %s, -%d\n" reg_sp reg_sp (ss+4);      
      print_asm oc "\tjal\t%s, %s\n" reg_ra x;
      print_asm oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp (ss+4);      
      print_asm oc "\tlw\t%s, -%d(%s)\n" reg_ra (ss) reg_sp;
      (*print_asm oc "\tlw\t%s, -%d(%s)\n" reg_cl (ss+4) reg_sp;*)

      (* print_asm oc "\taddi\t%s, %s, %d\t# delay slot\n" reg_fp reg_fp ss ;
      print_asm oc "\taddi\t%s, %s, -%d\n" reg_fp reg_fp ss;
      print_asm oc "\tlw\t%s, %d(%s)\n"  reg_ra (ss - 4) reg_fp; *)
      if List.mem a allregs && a <> regs.(0) then
        print_asm oc "\taddi\t%s, %s, 0\n" a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
        (print_asm oc "\tfsgnj\t%s, %s, %s\n"  a fregs.(0) fregs.(0);
         (* print_asm oc "\tfsgnj\t%s, %s\n"  (co_freg a) (co_freg fregs.(0)) *)
         )
and count_helper = function
  | Nop | Comment _-> 0
  | Set _ | Mov _ | Neg _ | Add _ | Sub _ | Mul _ | Div _
  | SLL _ | Ld _ | St _ | FMovD _| FNegD _ | FAddD _ 
  | FSubD _ | FMulD _ | FDivD _ | LdDF _ | StDF _ | IofF _
  | FofI _ | Fabs _ | Fneg _ | Fless _ | Fsqrt _ 
  | RInt | RFloat | PInt _ | Pchar _ | Save _ | Restore _ | Fsqr _  -> 4
  | Fispos _ | Fisneg _ | Fiszero _ | Pline -> 4*2
  | Flabel _ -> 4*3
  | Floor _ |Fhalf _ -> 4*5
  | SetL _ | CArray _ | CFArray _-> 4*6
  | IfEq(_,_,e1,e2) | IfLE(_,_,e1,e2) | IfGE(_,_,e1,e2) 
  | IfFEq(_,_,e1,e2) | IfFLE(_,_,e1,e2)-> (count e1) + (count e2) + 4*3 
  | CallCls(_, ys, zs) | CallDir(_, ys, zs) -> (List.length(ys) + List.length(zs) + 7)*4 
and count = function 
  | Ans(exp) -> count_helper (fst exp)
  | Let((x, _), exp, e) -> (count_helper (fst exp)) + (count e) + 4
and g'_tail_if oc x y e1 e2 b bn = 
if ((count e1) < 4088) then
  (let b_else = Id.genid (b ^ "_else") in
  print_asm oc "\t%s\t%s, %s, %s # size : %d\n" bn x y b_else (count e1);
  (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
  let stackset_back = !stackset in
  g oc (Tail, e1);
  (* print_asm oc "\t # tail then end:\n"; *)
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2);
  (* print_asm oc "\t # tail else end:\n" *))
else 
  (
    let b_else = Id.genid (b ^ "_else") in
  let b_sub = Id.genid (b ^ "_sub") in 
  print_asm oc "\t%s\t%s, %s, %s # size : %d\n" bn x y b_else (count e1);
  print_asm oc "\tjal\tx0, %s\n" b_sub;
  Printf.fprintf oc "%s:\n" b_else;
  let stackset_back = !stackset in
  g oc (Tail, e2);
  Printf.fprintf oc "%s:\n" b_sub;
  stackset := stackset_back;
  g oc (Tail, e1);

  )

and g'_non_tail_if oc dest x y e1 e2 b bn =
if ((count e1) < 4088) then
  (
    let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  print_asm oc "\t%s\t%s, %s, %s # size : %d\n" bn x y b_else (count e1);
      (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  print_asm oc "\tjal\tx0, %s\n" b_cont;
    (* (*print_asm oc "\taddi\tx0, x0, 0\n"*); *)
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2)
else 
  (
    let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  let b_sub = Id.genid (b ^ "_sub") in 
  print_asm oc "\t%s\t%s, %s, %s # size : %d\n" bn x y b_else (count e1);
  print_asm oc "\tjal\tx0, %s\n" b_sub;
  Printf.fprintf oc "%s:\n" b_else;
  let stackset_back = !stackset in
  g oc (dest, e2);
  print_asm oc "\tjal\tx0, %s\n" b_cont;
  let stackset2 = !stackset in
  Printf.fprintf oc "%s:\n" b_sub;
  stackset := stackset_back;
  g oc (dest, e1);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset1 = !stackset in
  stackset := S.inter stackset1 stackset2
  )
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) 
    -> if y <> r then 
      (print_asm oc "\taddi\t%s, %s, 0\n" r y) 
  else ())
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      if z <> fr then 
        (print_asm oc "\tfsgnj\t%s, %s, %s\n" fr z z) 
    else ()
      (* print_asm oc "\tfsgnj\t%s, %s\n" (co_freg fr) (co_freg z) *)
      )
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s: # %d\n" x !pc;(* pc を利用するように変更*)
  setlabelnum x (!pc);
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  (* pc :=3280; *)
  (*計算式: libmincaml.Sの行数*4-484*)
  (*libmincaml.S:941*)
  pc := 0;
  (* labelnumの初期値。ライブラリ関数などに注意。(771-43-71)*4=2628? *)
   (*pc := 0; labelnumの初期値。ライブラリ関数などに注意。(771-43-71)*4=2628? *)
  Format.eprintf "generating assembly...@."; 
  Printf.fprintf oc(* print_asm oc*) ".section\t\".rodata\"\n"; 
  Printf.fprintf oc(* print_asm oc*) ".align\t8\n"; 
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      (* print_asm oc "\t.long\t0x%lx\n" (getlo d)) *)
    )
    data;
    Printf.fprintf oc(* print_asm oc*) ".section\t\".text\"\n"; 
  List.iter (fun fundef -> h oc fundef) fundefs;
  print_asm oc ".global\tmin_caml_start\n";
  print_asm oc "min_caml_start:\n";
  print_asm oc "\taddi\t%s, %s, 1\n" reg_sw reg_zero; 
  print_asm oc "\tslli\t%s, %s, 23\n" reg_sp reg_sw; 
  (* print_asm oc "\taddi\t%s, %s, 8188\n"reg_fp reg_zero;  *)
  (* let hp = !Record_global.address in  *)
  let hp = 256 in 
  Printf.fprintf stdout "Initial hp:%d\n" hp;
  if hp > 2047 then
  (
    print_asm oc "\tlui\t%s, %d\n" reg_hp (hp/2048);
    print_asm oc "\tsrli\t%s, %s, %d\n" reg_hp reg_hp 1;
    print_asm oc "\taddi\t%s, %s, %d\n" reg_hp reg_hp  (hp mod 2048) )
  else 
    (print_asm oc "\taddi\t%s, %s, %d\n" reg_hp reg_zero  hp); 
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e);
  print_asm oc "\tjalr\tx0, ra, 0\n";