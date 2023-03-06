open KNormal
(*fenv: funs with no effect*)


let rec g  xx=   (* 不要定義削除ルーチン本体 (caml2html: elim_f) *)
let fs = (match fst xx with   
| IfEq(x, y, e1, e2) -> IfEq(x, y, g  e1, g  e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g  e1, g  e2)
  | Let((x, t), e1, e2) -> (* letの場合 (caml2html: elim_let) *)
      let e1' = g  e1 in
      let e2' = g  e2 in
      if effect  e1' || S.mem x (fv e2') then Let((x, t), e1', e2') else
      (
        (* Format.eprintf "eliminating variable %s@." x; *)
       fst e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recの場合 (caml2html: elim_letrec) *)    
  let e1' = g  e1 in
  let e2' = 
  if (effect  e1') then g  e2 else (g  e2) in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = e1' }, e2')
      else
        (
          (* Format.eprintf "eliminating function %s@." x; *)
         fst e2')
  | LetTuple(xts, y, e) ->
      let xs = List.map fst xts in
      let e' = g  e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e') else
      (
        (* Format.eprintf "eliminating variables %s@." (Id.pp_list xs); *)
       fst e')
  | e -> e) in
  (fs, snd xx)

let rec f x = 
  let xx = g  x in
  if xx = x then (Printf.eprintf "Elim2 Finished\n"; xx )
  else (Printf.eprintf "Elim2 One More time\n"; f xx)
