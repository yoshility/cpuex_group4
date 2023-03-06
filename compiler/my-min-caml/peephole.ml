open Asm

let g_exp exp = match fst exp with
| _ -> exp

let rec g = function
| Ans(exp) -> Ans(g_exp exp)
|Let((x,_),exp, e) when not(List.mem x (fv e)) && not (effect_exp (fst exp))-> g e
|Let((x, t), (Add(z, C(n)),p), Ans((Ld(y,i),_)))when (x=z && z=y) ->
  Ans(Ld(y, n+i),p)
|Let((x, t), (Add(z, C(n)),p), Ans((LdDF(y,i),_))) when (x=z && z=y) ->
  Ans(LdDF(y, n+i),p)
| Let((x, t), (Add(z, C(n)),p), Ans((St(w,y,i),_))) when (x=z && z=y) ->
  Ans(St(w, y, n+i),p)
|Let((x, t), (Add(z, C(n)),p), Ans((StDF(w,y,i),_))) when (x=z && z=y) ->
  Ans(StDF(w, y, n+i),p)
|Let((x, _), (Add(z, C(n)),p), Let((w,t), (Ld(y,i),_),e)) when (x=z && z=y && not (List.mem x (fv e))) ->
  Let((w, t), (Ld(z, n+i),p), g e)
|Let((x, _), (Add(z, C(n)),p), Let((w,t), (LdDF(y,i),_),e)) when (x=z && z=y && not (List.mem x (fv e))) ->
  Let((w, t), (LdDF(z, n+i),p), g e)
|Let((x, _), (Add(z, C(n)),p), Let((v,t), (St(w,y,i),_),e)) when (x=z && z=y && not (List.mem x (fv e))) ->
  Let((v, t), (St(w, y, n+i),p), g e)
|Let((x, _), (Add(z, C(n)),p), Let((v,t), (StDF(w,y,i),_),e)) when (x=z && z=y && not (List.mem x (fv e))) ->
  Let((v, t), (StDF(w, z, n+i),p), g e)
| Let((x,t),(Mov(y),p), e) when x = y-> g e 
|  Let((x, _), (Add(z, C(n)),p), e) when n = 0 && x = z-> g e 
| Let((x,t),exp, e) -> Let((x,t), g_exp exp, g e)

let rec g_cont exp =
  let exp'=g exp in
  if exp = exp' then exp 
  else (Printf.eprintf "Peephole one more time\n"; 
  g_cont exp')

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
{ name = l; args = xs; fargs = ys; body = g_cont e; ret = t }

let f (Prog(data, fundefs, e)) =
  Format.eprintf "Start Peephole\n";flush_all(); 
  let fundefs' = List.map h fundefs in
  let e' = g_cont  e in 
    Prog(data, List.map h fundefs', e')