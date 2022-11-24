open Syntax

let rec divide l n =(*listを分割する関数*)
  let rec divide_help n l1 l2 =
    match l2 with 
    |[] -> (l1,l2) 
    |_ -> 
      if n = List.length l1 then (l1,l2)
      else divide_help n (l1@[List.hd l2]) (List.tl l2) 
    in divide_help n [] l
let rec g env e =
  match e with
  | Not(e,p) -> Not(g env e, p)
  | Neg(e,p) ->
      Neg(g env e, p)
  | Add(e1, e2,p) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      Add(g env e1, g env e2,p)
  | Sub(e1, e2,p) ->
    Sub(g env e1, g env e2,p)
  | Mul(e1, e2,p) ->
    Mul(g env e1, g env e2,p)
| Div(e1, e2,p) ->
  Div(g env e1, g env e2,p)
| FNeg(e,p) ->
      FNeg(g env e, p)
  | FAdd(e1, e2,p) ->
    FAdd(g env e1, g env e2,p)
  | FSub(e1, e2,p) ->
    FSub(g env e1, g env e2,p)
  | FMul(e1, e2,p) ->
    FMul(g env e1, g env e2,p)
  | FDiv(e1, e2,p) ->
    FDiv(g env e1, g env e2,p)
  | Eq (e1,e2,p) -> Eq(g env e1, g env e2, p) 
  | LE (e1,e2,p)  -> LE (g env e1, g env e2, p)
  | If(e1,e2,e3,p) -> If(g env e1, g env e2, g env e3,p)
  | Let((x, t), e1, e2,p) ->
      Let((x, t), g env e1, g env e2,p)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2,p) ->
      let body' = g env e1 in
      let env' = M.add x { name = (x, t); args = yts; body = body' } env in
      LetRec({ name = (x, t); args = yts; body = body' }, g env' e2,p)
  | App(Var(f,p1), e2s,p) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
  let e2s' = List.map (g env) e2s in
  App(Var(f,p1), e2s',p)
  | App(e1, e2s,p) ->
      (match g env e1 with
      | Var(f,p1) -> 
      let f0 =M.find f env in
        (match snd(f0.name) with 
      | Type.Fun(argt, t) ->
        let arg_n = List.length e2s in 
        if List.length f0.args = arg_n then
          App(Var(f,p1), List.map (g env) e2s,p)
        else let newvar = Id.genid f in
        let par_arg = snd (divide f0.args arg_n) in
        let par_arg_t = snd(divide argt arg_n) in
        LetRec({name = (newvar, Type.Fun(par_arg_t, t)); args = par_arg; body = App(Var(f,p1),e2s@(List.map (fun a -> Var(fst a,p1)) par_arg) ,p)}, Var(newvar, p1), p)
      | Type.Var(_) -> 
        let arg_n = List.length e2s in 
        if List.length f0.args = arg_n then
          App(Var(f,p1), List.map (g env) e2s,p)
        else let newvar = Id.genid f in
        let par_arg = snd (divide f0.args arg_n) in
        LetRec({name = (newvar, Type.gentyp()); args = par_arg; body = App(Var(f,p1),e2s@(List.map (fun a -> Var(fst a,p1)) par_arg) ,p)}, Var(newvar, p1), p)
      | _ -> Type.print_t stdout (snd(f0.name)); assert false) 
      | _ -> App(g env e1, List.map (g env) e2s, p)        
        )
  | Tuple(es,p) ->
      Tuple(List.map (g env) es, p)
  | LetTuple(xts, e1, e2,p) ->
    LetTuple(xts, g env e1, g env e2,p)
  | Array(e1, e2,p) ->
    Array(g env e1,g env e2,p)
  | Get(e1, e2,p) ->
    Get(g env e1, g env e2,p)
  | Put(e1, e2, e3,p) ->
    Put(g env e1, g env e2, g env e3,p)
  | e -> e

  let f e = g M.empty e