open Asm
let simm_data = ref []


let rec findi env fenv labels = 
function
|Ans(exp) -> 
  (* Format.eprintf "Call findi ans\n";flush_all(); *)
  findi' env fenv labels  exp
|Let((x, t), (Flabel(l), p), e) -> 
  (* Format.eprintf "Call findi flabel ans\n"; *)
   (findi env fenv (M.add x l labels) e)
|Let((x, t), (exp, p), e)  when t = Type.Float -> 
  (* Format.eprintf "Call findi float ans\n"; *)
   (let f = findf' env fenv labels (exp, p) in 
  findi env (M.add x f fenv) labels e )
(* with Not_found -> findi env fenv labels e) *)
|Let((x, t), (exp, p), e) -> 
  (* Format.eprintf "Call findi int ans\n";  *)
  let n = findi' env fenv labels (exp, p) in 
  findi (M.add x n env) fenv labels e 
(* with Not_found -> findi env fenv labels e *)
|_ -> 
  (* Format.eprintf "Call findi ans\n";flush_all(); *)
  raise Not_found
and findf env fenv labels = function
|Ans(exp) -> 
  (* Format.eprintf "Call findf ans\n";flush_all(); *)
  findf' env fenv labels  exp
|Let((x, t), (Flabel(l), p), e) -> 
  (* Format.eprintf "Call findf flabel ans\n";flush_all(); *)
  findf env fenv (M.add x l labels) e
|Let((x, t), (exp, p), e) when t = Type.Float -> 
  (* Format.eprintf "Call findf float\n";flush_all(); *)
  let f = findf' env fenv labels (exp, p) in 
  findf env (M.add x f fenv) labels e 
(* with Not_found -> findf env fenv labels e) *)
| Let((x, t), (exp, p), e) -> 
  (* Format.eprintf "Call findf int\n";flush_all(); *)
  let n = findi' env fenv labels (exp, p) in 
  findf (M.add x n env) fenv labels e 
(* with Not_found -> findf env fenv labels e) *)
| _ -> 
  (* Format.eprintf "Call findf notfound\n";flush_all(); *)
  raise Not_found
and findi' env fenv labels (exp, p) = 
match exp with 
|Set(i) ->
  (* Format.eprintf "Call set findi %d\n" i; flush_all(); *)
  if (-4096 <= i && i < 4096) then i else raise Not_found
|SLL(x, C(i)) -> 
  (* Format.eprintf "Call sll findi'\n";flush_all(); *)
  (M.find x env) lsl i
|SLL(x, V(y)) -> 
  (* Format.eprintf "Call sll2 findi'\n";flush_all(); *)
M.find x env lsl (M.find y env)
|Neg(x) ->
  (* Format.eprintf "Call neg findi'\n"; flush_all(); *)
-(M.find x env)
|Add(x, V(y)) ->
   (* Format.eprintf "Call add findi'\n";flush_all(); *)
   M.find x env + M.find y env
|Sub(x, V(y)) -> 
  (* Format.eprintf "Call sub findi'\n";flush_all(); *)
  M.find x env - M.find y env
|Mul(x, V(y)) -> 
  (* Format.eprintf "Call mul findi'\n";flush_all(); *)
  M.find x env * M.find y env
|Div(x, V(y)) -> 
  (* Format.eprintf "Call div findi'\n";flush_all(); *)
  M.find x env / M.find y env
|Add(x, C(i)) -> 
  (* Format.eprintf "Call add findi'\n";flush_all(); *)
  M.find x env + i
|Sub(x, C(i)) -> 
  (* Format.eprintf "Call sub findi'\n";flush_all(); *)
  M.find x env - i
|Mul(x, C(i)) -> 
  (* Format.eprintf "Call mul findi'\n";flush_all();  *)
  M.find x env * i
|Div(x, C(i)) -> 
  (* Format.eprintf "Call div findi'\n";flush_all(); *)
  M.find x env / i
|IfEq(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call eq findi'\n";flush_all(); *)
  if (M.find x env) = i then findi env fenv labels e1 else findi env fenv labels e2
|IfLE(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call le findi'\n";flush_all(); *)
  if (M.find x env) <= i then findi env fenv labels e1 else findi env fenv labels e2
|IfGE(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call ge findi'\n";flush_all(); *)
  if (M.find x env) >= i then findi env fenv labels e1 else findi env fenv labels e2
|IfEq(_,_, e1, e2) | IfLE(_,_, e1, e2)|IfGE(_,_, e1, e2)
|IfFEq(_,_, e1, e2)|IfFLE(_,_, e1, e2) when (findi env fenv labels e1) = (findi env fenv labels e2)
-> 
  (* Format.eprintf "Call = findi'\n";flush_all(); *)
  findi env fenv labels e1
|IfEq(x,V(y), e1, e2) -> 
  (* Format.eprintf "Call eq2 findi'\n";flush_all(); *)
  if (M.find x env) = (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfLE(x, V(y), e1, e2) -> 
  (* Format.eprintf "Call le2 findi'\n";flush_all(); *)
  if (M.find x env) <= (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfGE(x, V(y), e1, e2) -> 
  (* Format.eprintf "Call ge2 findi'\n";flush_all(); *)
  if (M.find x env) >= (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfFEq(x,y, e1, e2) -> 
  (* Format.eprintf "Call feq2 findi'\n";flush_all(); *)
  if (M.find x fenv) = (M.find y fenv) then findi env fenv labels e1 else findi env fenv labels e2
|IfFLE(x, y, e1, e2) -> 
  (* Format.eprintf "Call fle2 findi'\n";flush_all(); *)
  if (M.find x fenv) <= (M.find y fenv) then findi env fenv labels e1 else findi env fenv labels e2
|IofF(x) -> 
  (* Format.eprintf "Call ioff findi'\n";flush_all(); *)
  Float.to_int (M.find x fenv)
|Fless(x, y) -> 
  (* Format.eprintf "Call less findi'\n";flush_all(); *)
  if (M.find x fenv) < (M.find y fenv) then 1 else 0
|Fispos(x) ->
  (* Format.eprintf "Call fispos findi'\n";flush_all();  *)
  if (M.find x fenv) > 0. then 1 else 0
|Fisneg(x) -> 
  (* Format.eprintf "Call fisneg findi'\n";flush_all(); *)
  if (M.find x fenv) < 0. then 1 else 0
|Fiszero(x) -> 
  (* Format.eprintf "Call fiszero findi'\n";flush_all(); *)
  if (M.find x fenv) = 0. then 1 else 0
| _ -> 
  (* Format.eprintf "Call findi' notfound\n";flush_all(); *)
  raise Not_found
and findf' env fenv labels (exp, _)=
(* Format.eprintf "Call findf'\n";flush_all(); *)
(*labels: Id(int) -> label *)
match exp with 
|LdDF(x, 0) -> let l = M.find x labels in snd (List.find (fun (ll, _) -> ll = l) !simm_data)
|FMovD(x) -> M.find x fenv
|FNegD(x) -> 0.-.(M.find x fenv)
|FAddD(x, y) -> (M.find x fenv) +. (M.find y fenv)
|FSubD(x, y) -> (M.find x fenv) -. (M.find y fenv)
|FMulD(x, y) -> (M.find x fenv) *. (M.find y fenv)
|FDivD(x, y) -> (M.find x fenv) /. (M.find y fenv)
|IfEq(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call eq findf'\n";flush_all(); *)
  if (M.find x env) = i then findf env fenv labels e1 else findf env fenv labels e2
|IfLE(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call le findf'\n";flush_all(); *)
  if (M.find x env) <= i then findf env fenv labels e1 else findf env fenv labels e2
|IfGE(x, C(i), e1, e2) -> 
  (* Format.eprintf "Call ge findf'\n";flush_all(); *)
  if (M.find x env) >= i then findf env fenv labels e1 else findf env fenv labels e2
|IfEq(_,_, e1, e2) | IfLE(_,_, e1, e2)|IfGE(_,_, e1, e2)
|IfFEq(_,_, e1, e2)|IfFLE(_,_, e1, e2) when (findf env fenv labels e1) = (findf env fenv labels e2)
-> 
  (* Format.eprintf "Call feq findf'\n"; *)
  findf env fenv labels e1
|IfEq(x,V(y), e1, e2) -> 
  (* Format.eprintf "Call eq findf'2\n";flush_all(); *)
  if (M.find x env) = (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfLE(x, V(y), e1, e2) 
-> 
  (* Format.eprintf "Call le2 findf'\n";flush_all(); *)
if (M.find x env) <= (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfGE(x, V(y), e1, e2) ->
  (* Format.eprintf "Call ge2 findf'\n"; flush_all(); *)
  if (M.find x env) >= (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfFEq(x,y, e1, e2) -> 
  (* Format.eprintf "Call feq2 findf'\n";flush_all(); *)
  if (M.find x fenv) = (M.find y fenv) then findf env fenv labels e1 else findf env fenv labels e2
|IfFLE(x, y, e1, e2) ->
  (* Format.eprintf "Call fle2 findf'\n";flush_all();  *)
  if (M.find x fenv) <= (M.find y fenv) then findf env fenv labels e1 else findf env fenv labels e2
|FofI(x) -> 
  (* Format.eprintf "Call fofi findf'\n";flush_all(); *)
  Float.of_int (M.find x env)
|Fabs(x) -> 
  (* Format.eprintf "Call fabs findf'\n";flush_all(); *)
  let f = (M.find x fenv) in if f > 0. then f else 0.-.f
|Fneg(x) -> 
  (* Format.eprintf "Call fneg findf'\n";flush_all();  *)
  0.-.(M.find x fenv)
|Floor(x) -> 
  (* Format.eprintf "Call floor findf'\n";flush_all(); *)
  Float.floor(M.find x fenv)
|Fsqrt(x) -> 
  (* Format.eprintf "Call fsqrt findf'\n";flush_all(); *)
  Float.sqrt(M.find x fenv)
|Fsqr(x) -> 
  (* Format.eprintf "Call fsqr findf'\n";flush_all(); *)
  let f = (M.find x fenv) in f*.f
|Fhalf(x) -> let f = Float.floor(M.find x fenv) in f*.0.5
|_ -> 
  
  (* Format.eprintf "Call notfound findf'\n";flush_all(); *)
   raise Not_found


let rec g  env fenv labels exp =  (* 命令列の13bit即値最適化 (caml2html: simm13_g) *)
(* Format.eprintf "Call g\n";flush_all(); *)
try 
(match exp with 
  | Ans(exp) -> 
    (* Format.eprintf "Ans g\n";flush_all(); *)
    Ans(g'  env fenv labels exp)
  | Let((x,t), (exp,p), e) when t = Type.Float -> 
    (* Format.eprintf "Float g\n";flush_all(); *)
    let f = findf' env fenv labels (exp,p) in
      let fenv' = M.add x f fenv  in
      let e' = g  env fenv' labels e in  
      if List.mem x (fv e') || (effect_exp  exp) then Let((x, t), g'  env fenv' labels (exp, p), e')
      else e'
  | Let((x, t), (Flabel(l), p), e) -> 
    (* Format.eprintf "Flabel g\n";flush_all(); *)
      let e' = g  env fenv (M.add x l labels) e in
      if List.mem x (fv e') then Let((x, t), (Flabel(l), p), e') else e'
  | Let((x, t), (exp, p), e) ->  
    (* Format.eprintf "Int g\n";flush_all(); *)
    let n = findi' env fenv labels (exp, p)  in 
    let env' = M.add x n env in 
    let e' = g  env' fenv labels e in  
    if List.mem x (fv e') then Let((x, t), g'  env' fenv labels (exp,p), e')
    else ( e')
)
with Not_found ->  
  (* Format.eprintf "Not_found g\n";flush_all(); *)
  (match exp with 
   | Let(xt, exp, e) -> Let(xt, g'  env fenv labels exp, g  env fenv labels e)
   | _ -> assert false)
and g'  env fenv labels (exp,p) = (* 各命令の13bit即値最適化 (caml2html: simm13_gprime) *)
flush_all();let fs = 
match exp with
  | Add(x, V(y)) when M.mem y env && (M.find y env) = 0-> 
    (* Format.eprintf "Add 1\n";flush_all(); *)
    Mov(x)
  | Add(x, V(y)) when M.mem x env && (M.find x env) = 0-> 
    (* Format.eprintf "Add 2\n";flush_all(); *)
    Mov(y)
  | Add(x, V(y)) when M.mem y env -> 
    (* Format.eprintf "Add 3\n";flush_all(); *)
    Add(x, C(M.find y env))
  | Add(x, V(y)) when M.mem x env ->
    (* Format.eprintf "Add 4\n";flush_all(); *)
     Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> 
    (* Format.eprintf "Sub 1\n";flush_all(); *)
    Sub(x, C(M.find y env))
  | Sub(x, V(y)) when M.mem y env && (M.find y env) = 0-> 
    (* Format.eprintf "Sub 2\n";flush_all(); *)
    Mov(x)
  | SLL(x, V(y)) when M.mem x env && (M.find x env) = 0->
    (* Format.eprintf "SLL 1\n";flush_all(); *)
     Mov(x)
  | SLL(x, V(y)) when M.mem y env && (M.find y env) = 0-> 
    (* Format.eprintf "SLL 2\n";flush_all(); *)
    Mov(x)
  | SLL(x, V(y)) when M.mem y env -> 
    (* Format.eprintf "SLL 1\n";flush_all(); *)
    SLL(x, C(M.find y env))
  | Mul(x,V(y)) when M.mem y env && Float.is_integer (Float.log2 (float_of_int(M.find y env))) ->
    (* Format.eprintf "Mul 2\n";flush_all(); *)
     SLL(x, C(int_of_float (Float.log2 (float_of_int(M.find y env)))))
  | Mul(y,V(x)) when M.mem y env && Float.is_integer (Float.log2 (float_of_int(M.find y env))) -> 
    (* Format.eprintf "Mul 3\n";flush_all(); *)
    SLL(x, C(int_of_float (Float.log2 (float_of_int(M.find y env)))))
  | Mul(x,V(y)) when M.mem y env  ->
    (* Format.eprintf "Mul 4\n";flush_all(); *)
    Mul(x,C(M.find y env))
  | Mul(y,V(x)) when M.mem y env  ->
    (* Format.eprintf "Mul 5\n";flush_all(); *)
    Mul(x,C(M.find y env))
  | IfEq(x, V(y), e1, e2) when M.mem x env || M.mem y env -> 
    (* Format.eprintf "IfEq 1\n";flush_all(); *)
    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        let y' = M.find y env in
        (if x'=y' then IfEq(reg_zero, C(0), g  env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, V(reg_zero), g  env fenv labels e2, Ans(Nop,p)))
      )
    else IfEq(y, C(M.find x env), g  env fenv labels e1, g  env fenv labels e2)
      )
  else IfEq(x, C(M.find y env), g  env fenv labels e1, g  env fenv labels e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env || M.mem y env ->
    (* Format.eprintf "IfLE\n";flush_all(); *)
    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        (* Format.eprintf "IfLExy\n";flush_all(); *)
        let y' = M.find y env in
        (if x' <= y' then IfEq(reg_zero, C(0), g  env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, C(0), g  env fenv labels e2, Ans(Nop,p)))
      )
    else (
      (* Format.eprintf "IfLEx\n";flush_all(); *)
      IfGE(y, C(M.find x env), g  env fenv labels e1, g  env fenv labels e2))
      )
  else (
    (* Format.eprintf "IfLEy\n";flush_all(); *)
    IfLE(x, C(M.find y env), g  env fenv labels e1, g  env fenv labels e2))
  | IfGE(x, V(y), e1, e2) when M.mem x env || M.mem y env ->
    (* Format.eprintf "IfGE\n";flush_all(); *)

    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        let y' = M.find y env in
        (if x' >= y' then IfEq(reg_zero, C(0), g  env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, C(0), g  env fenv labels e2, Ans(Nop,p)))
      )
    else IfLE(y, C(M.find x env), g  env fenv labels e1, g  env fenv labels e2)
      )
  else IfGE(x, C(M.find y env), g  env fenv labels e1, g   env fenv labels e2)
  | IfEq(x, y', e1, e2) -> 
    (* Format.eprintf "IfEq 2\n";flush_all(); *)
    IfEq(x, y', g  env fenv labels e1, g  env fenv labels e2)
  | IfLE(x, y', e1, e2) -> 
    (* Format.eprintf "IfLE 2\n";flush_all(); *)
    IfLE(x, y', g  env fenv labels e1, g  env fenv labels e2)
  | IfGE(x, y', e1, e2) ->
    (* Format.eprintf "IfGE 2\n";flush_all(); *)
     IfGE(x, y', g  env fenv labels e1, g  env fenv labels e2)
  | IfFEq(x, y, e1, e2) -> 
    (* Format.eprintf "IfFEq 1\n";flush_all(); *)

    IfFEq(x, y, g  env fenv labels e1, g  env fenv labels e2)
  | IfFLE(x, y, e1, e2) -> 
    (* Format.eprintf "IfFLE 1\n";flush_all(); *)
    IfFLE(x, y, g  env fenv labels e1, g  env fenv labels e2)
  | IofF(x) when M.mem x fenv -> 
    (* Format.eprintf "IofF\n";flush_all(); *)
     Set(Float.to_int (M.find x fenv))
  | CArray(V(x), y) when M.mem x env -> 
    (* Format.eprintf "CArray 1\n";flush_all(); *)
    CArray(C(M.find x env), y)
  | CFArray(V(x), y) when M.mem x env -> 
    (* Format.eprintf "CFArray 1\n";flush_all(); *)
    CFArray(C(M.find x env), y)
  | e -> 
    (* Format.eprintf "No change\n";flush_all(); *)
    e
in (fs,p)

let rec g_cont  env fenv labels exp=
let exp' = g  env fenv labels exp in
if exp = exp' then exp 
else
  (Printf.eprintf "Simm2 one more time\n"; 
  g_cont  env fenv labels exp')


let h  { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g_cont  (M.add "x0" 0 M.empty) M.empty  M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
Format.eprintf "Start Simm2\n";flush_all(); simm_data := data;
let fundefs' = List.map h fundefs in
let e' = g_cont  (M.add "x0" 0 M.empty) M.empty  M.empty e in 

  Prog(data, List.map h  fundefs', e')
