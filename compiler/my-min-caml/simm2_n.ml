open Asm
let simm_data = ref []

let rec findi env fenv labels = function
|Ans(exp) -> findi' env fenv labels  exp
|Let((x, t), (Flabel(l), p), e) -> 
  (try (findi env fenv (M.add x l labels) e)
with Not_found -> findi env fenv labels e)
|Let((x, t), (exp, p), e)  when t = Type.Float -> 
  (try (let f = findf' env fenv labels (exp, p) in 
  findi env (M.add x f fenv) labels e )
with Not_found -> findi env fenv labels e)
|Let((x, t), (exp, p), e) -> 
  (try (let n = findi' env fenv labels (exp, p) in 
  findi (M.add x n env) fenv labels e )
with Not_found -> findi env fenv labels e)
|_ -> raise Not_found
and findf env fenv labels = function
|Ans(exp) -> findf' env fenv labels  exp
|Let((x, t), (Flabel(l), p), e) -> 
  (try (findf env fenv (M.add x l labels) e)
with Not_found -> findf env fenv labels e)
|Let((x, t), (exp, p), e) when t = Type.Float -> 
  (try (let f = findf' env fenv labels (exp, p) in 
  findf env (M.add x f fenv) labels e )
with Not_found -> findf env fenv labels e)
| Let((x, t), (exp, p), e) -> 
  (try (let n = findi' env fenv labels (exp, p) in 
  findf (M.add x n env) fenv labels e )
with Not_found -> findf env fenv labels e)
| _ -> raise Not_found
and findi' env fenv labels (exp, p) = 
match exp with 
|Set(i) -> if (-4096 <= i && i < 4096) then i else raise Not_found
|SLL(x, C(i)) -> (M.find x env) lsl i
|SLL(x, V(y)) -> (M.find x env) lsl (M.find y env)
|Neg(x) -> -(M.find x env)
|Add(x, V(y)) -> M.find x env + M.find y env
|Sub(x, V(y)) -> M.find x env - M.find y env
|Mul(x, V(y)) -> M.find x env * M.find y env
|Div(x, V(y)) -> M.find x env / M.find y env
|Add(x, C(i)) -> M.find x env + i
|Sub(x, C(i)) -> M.find x env - i
|Mul(x, C(i)) -> M.find x env * i
|Div(x, C(i)) -> M.find x env / i
|IfEq(x, C(i), e1, e2) -> if (M.find x env) = i then findi env fenv labels e1 else findi env fenv labels e2
|IfLE(x, C(i), e1, e2) -> if (M.find x env) <= i then findi env fenv labels e1 else findi env fenv labels e2
|IfGE(x, C(i), e1, e2) -> if (M.find x env) >= i then findi env fenv labels e1 else findi env fenv labels e2
|IfEq(_,_, e1, e2) | IfLE(_,_, e1, e2)|IfGE(_,_, e1, e2)
|IfFEq(_,_, e1, e2)|IfFLE(_,_, e1, e2) when findi env fenv labels e1 = findi env fenv labels e2
-> findi env fenv labels e1
|IfEq(x,V(y), e1, e2) -> if (M.find x env) = (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfLE(x, V(y), e1, e2) -> if (M.find x env) <= (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfGE(x, V(y), e1, e2) -> if (M.find x env) >= (M.find y env) then findi env fenv labels e1 else findi env fenv labels e2
|IfFEq(x,y, e1, e2) -> if (M.find x fenv) = (M.find y fenv) then findi env fenv labels e1 else findi env fenv labels e2
|IfFLE(x, y, e1, e2) -> if (M.find x fenv) <= (M.find y fenv) then findi env fenv labels e1 else findi env fenv labels e2
|IofF(x) -> Float.to_int (M.find x fenv)
|Fless(x, y) -> if (M.find x fenv) < (M.find y fenv) then 1 else 0
|Fispos(x) -> if (M.find x fenv) > 0. then 1 else 0
|Fisneg(x) -> if (M.find x fenv) < 0. then 1 else 0
|Fiszero(x) -> if (M.find x fenv) = 0. then 1 else 0
| _ -> raise Not_found
and findf' env fenv labels (exp, _)=
(*labels: Id(int) -> label *)
match exp with 
|LdDF(x, 0) -> let l = M.find x labels in snd (List.find (fun (ll, _) -> ll = l) !simm_data)
|FMovD(x) -> M.find x fenv
|FNegD(x) -> 0.-.(M.find x fenv)
|FAddD(x, y) -> (M.find x fenv) +. (M.find y fenv)
|FSubD(x, y) -> (M.find x fenv) -. (M.find y fenv)
|FMulD(x, y) -> (M.find x fenv) *. (M.find y fenv)
|FDivD(x, y) -> (M.find x fenv) /. (M.find y fenv)
|IfEq(x, C(i), e1, e2) -> if (M.find x env) = i then findf env fenv labels e1 else findf env fenv labels e2
|IfLE(x, C(i), e1, e2) -> if (M.find x env) <= i then findf env fenv labels e1 else findf env fenv labels e2
|IfGE(x, C(i), e1, e2) -> if (M.find x env) >= i then findf env fenv labels e1 else findf env fenv labels e2
|IfEq(_,_, e1, e2) | IfLE(_,_, e1, e2)|IfGE(_,_, e1, e2)
|IfFEq(_,_, e1, e2)|IfFLE(_,_, e1, e2) when findf env fenv labels e1 = findf env fenv labels e2
-> findf env fenv labels e1
|IfEq(x,V(y), e1, e2) -> if (M.find x env) = (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfLE(x, V(y), e1, e2) -> if (M.find x env) <= (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfGE(x, V(y), e1, e2) -> if (M.find x env) >= (M.find y env) then findf env fenv labels e1 else findf env fenv labels e2
|IfFEq(x,y, e1, e2) -> if (M.find x fenv) = (M.find y fenv) then findf env fenv labels e1 else findf env fenv labels e2
|IfFLE(x, y, e1, e2) -> if (M.find x fenv) <= (M.find y fenv) then findf env fenv labels e1 else findf env fenv labels e2
|FofI(x) -> Float.of_int (M.find x env)
|Fabs(x) -> let f = (M.find x fenv) in if f > 0. then f else 0.-.f
|Fneg(x) -> 0.-.(M.find x fenv)
|Floor(x) -> Float.floor(M.find x fenv)
|Fsqrt(x) -> Float.sqrt(M.find x fenv)
|Fsqr(x) -> let f = (M.find x fenv) in f*.f
|Fhalf(x) -> let f = Float.floor(M.find x fenv) in f*.0.5
|_ -> raise Not_found


let rec g env fenv labels exp =  (* 命令列の13bit即値最適化 (caml2html: simm13_g) *)
try 
(match exp with 
  | Ans(exp) -> Ans(g' env fenv labels exp)
  | Let((x,t), (exp,p), e) when t = Type.Float -> 
    let f = findf' env fenv labels (exp,p) in
      let fenv' = M.add x f fenv  in
      let e' = g env fenv' labels e in  
      if List.mem x (fv e') then Let((x, t), g' env fenv' labels (exp, p), e')
      else e'
  | Let((x, t), (Flabel(l), p), e) -> (* for array access *)
      (* Format.eprintf "erased redundant SLL on %s@." x; *)
      let e' = g env fenv (M.add x l labels) e in
      if List.mem x (fv e') then Let((x, t), (Flabel(l), p), e') else e'
  | Let((x, t), (exp, p), e) -> 
    let n = findi' env fenv labels (exp, p)  in 
    let env' = M.add x n env in 
    let e' = g env' fenv labels e in  
    if List.mem x (fv e') then Let((x, t), g' env' fenv labels (exp,p), e')
    else e'
)
with Not_found -> 
  (match exp with 
   | Let(xt, exp, e) -> Let(xt, g' env fenv labels exp, g env fenv labels e)
   | _ -> assert false)
and g' env fenv labels (exp,p) = (* 各命令の13bit即値最適化 (caml2html: simm13_gprime) *)
let fs = 
match exp with
  | Add(x, V(y)) when M.mem y env && (M.find y env) = 0-> Mov(x)
  | Add(x, V(y)) when M.mem x env && (M.find x env) = 0-> Mov(y)
  | Add(x, V(y)) when M.mem y env -> Add(x, C(M.find y env))
  | Add(x, V(y)) when M.mem x env -> Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> Sub(x, C(M.find y env))
  | Sub(x, V(y)) when M.mem y env && (M.find y env) = 0-> Mov(x)
  | SLL(x, V(y)) when M.mem x env && (M.find x env) = 0-> Mov(x)
  | SLL(x, V(y)) when M.mem y env && (M.find y env) = 0-> Mov(x)
  | SLL(x, V(y)) when M.mem y env -> SLL(x, C(M.find y env))
  | Mul(x,V(y)) when M.mem y env && Float.is_integer (Float.log2 (float_of_int(M.find y env))) -> SLL(x, C(int_of_float (Float.log2 (float_of_int(M.find y env)))))
  | Mul(y,V(x)) when M.mem y env && Float.is_integer (Float.log2 (float_of_int(M.find y env))) -> SLL(x, C(int_of_float (Float.log2 (float_of_int(M.find y env)))))
  | Mul(x,V(y)) when M.mem y env  ->Mul(x,C(M.find y env))
  | Mul(y,V(x)) when M.mem y env  ->Mul(x,C(M.find y env))
  | IfEq(x, V(y), e1, e2) when M.mem x env || M.mem y env ->
    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        let y' = M.find y env in
        (if x'=y' then IfEq(reg_zero, C(0), g env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, V(reg_zero), g env fenv labels e2, Ans(Nop,p)))
      )
    else IfEq(y, C(M.find x env), g env fenv labels e1, g env fenv labels e2)
      )
  else IfEq(x, C(M.find y env), g env fenv labels e1, g env fenv labels e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env || M.mem y env ->
    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        let y' = M.find y env in
        (if x' <= y' then IfEq(reg_zero, C(0), g env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, C(0), g env fenv labels e2, Ans(Nop,p)))
      )
    else IfGE(y, C(M.find x env), g env fenv labels e1, g env fenv labels e2)
      )
  else IfLE(x, C(M.find y env), g env fenv labels e1, g env fenv labels e2)
  | IfGE(x, V(y), e1, e2) when M.mem x env || M.mem y env ->
    if M.mem x env then (
      let x' = M.find x env in
      if M.mem y env then (
        let y' = M.find y env in
        (if x' >= y' then IfEq(reg_zero, C(0), g env fenv labels e1, Ans(Nop,p)) else IfEq(reg_zero, C(0), g env fenv labels e2, Ans(Nop,p)))
      )
    else IfLE(y, C(M.find x env), g env fenv labels e1, g env fenv labels e2)
      )
  else IfGE(x, C(M.find y env), g env fenv labels e1, g env fenv labels e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env fenv labels e1, g env fenv labels e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env fenv labels e1, g env fenv labels e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env fenv labels e1, g env fenv labels e2)
  | IfFEq(x, y, e1, e2) -> when M.find
    IfFEq(x, y, g env fenv labels e1, g env fenv labels e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g env fenv labels e1, g env fenv labels e2)
  (* | IofF(x) -> when  *)
  | CArray(V(x), y) when M.mem x env -> CArray(C(M.find x env), y)
  | CFArray(V(x), y) when M.mem x env -> CFArray(C(M.find x env), y)
  | e -> e
in (fs,p)

let rec g_cont env fenv labels exp=
let exp' = g env fenv labels exp in
if exp = exp' then exp 
else
  (Printf.printf "Simm one more time\n"; 
  g_cont env fenv labels exp')


let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g_cont (M.add "x0" 0 M.empty) M.empty (M.add "l.001" 0.5 M.empty) e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
simm_data := data;
  Prog(data, List.map h fundefs, g_cont (M.add "x0" 0 M.empty) M.empty (M.add "l.001" 0.5 M.empty) e)
