open Asm

let rec g env = function (* 命令列の13bit即値最適化 (caml2html: simm13_g) *)
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), (Set(i),p), e) when -4096 <= i && i < 4096 ->
      (* Format.eprintf "found simm13 %s = %d@." x i; *)
      let e' = g (M.add x i env) e in
      if List.mem x (fv e') then Let((x, t), (Set(i),p), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, (SLL(y, C(i)),p), e) when M.mem y env -> (* for array access *)
      (* Format.eprintf "erased redundant SLL on %s@." x; *)
      g env (Let(xt, (Set((M.find y env) lsl i),p), e))
  | Let(xt, exp, e) -> Let(xt, g' env exp, g env e)
and g' env (exp,p) = (* 各命令の13bit即値最適化 (caml2html: simm13_gprime) *)
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
  | IfEq(x, V(y), e1, e2) when M.mem y env -> IfEq(x, C(M.find y env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem y env -> IfLE(x, C(M.find y env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem y env -> IfGE(x, C(M.find y env), g env e1, g env e2)
  | IfEq(x, V(y), e1, e2) when M.mem x env -> IfEq(y, C(M.find x env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env -> IfGE(y, C(M.find x env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem x env -> IfLE(y, C(M.find x env), g env e1, g env e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env e1, g env e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env e1, g env e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env e1, g env e2)
  | IfFEq(x, y, e1, e2) -> IfFEq(x, y, g env e1, g env e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g env e1, g env e2)
  | CArray(V(x), y) when M.mem x env -> CArray(C(M.find x env), y)
  | CFArray(V(x), y) when M.mem x env -> CFArray(C(M.find x env), y)
  | e -> e
in (fs,p)

(* let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e) *)

  let rec g_cont env  e=
  let e' = g env e in
  if e = e' then e else g_cont env e'
  
  
  let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
    { name = l; args = xs; fargs = ys; body = g_cont  M.empty e; ret = t }
  
  let f (Prog(data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
  (* simm_data := data; *)
    Prog(data, List.map h fundefs, g_cont  M.empty e)