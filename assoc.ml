(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f xx=(* �ͥ��Ȥ���let�δ��� (caml2html: assoc_f) *)
  let fs = 
    (match fst xx with 
  | IfEq(x, y, e1, e2) -> IfEq(x, y, f e1, f e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, f e1, f e2)
  | Let(xt, e1, e2) -> (* let�ξ��? (caml2html: assoc_let) *)
      let rec insert tt= 
      match fst tt with 
        | Let(yt, e3, e4) -> (Let(yt, e3, insert e4),snd tt)
        | LetRec(fundefs, e) -> (LetRec(fundefs, insert e),snd tt)
        | LetTuple(yts, z, e) -> (LetTuple(yts, z, insert e),snd tt)
        | e -> (Let(xt, (e,snd tt), f e2),snd tt) in
      fst (insert (f e1))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, f e)
  | e -> e) in
  (fs,snd xx)
