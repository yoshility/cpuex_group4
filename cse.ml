open KNormal
  
let rec equal (ap,bp) =(*aとbが同じ部分式かどうかを判定する関数*)
let a=fst ap in
let b=fst bp in
match (a,b) with
  | (Add(x1,y1),Add(x2,y2)) 
  |(FAdd(x1,y1),FAdd(x2,y2)) |(FMul(x1,y1),FMul(x2,y2))
->(x1=x2 && y1=y2) ||(x1=y2 && y1=x2)
  | (Sub(x1,y1),Sub(x2,y2)) |(FDiv(x1,y1),FDiv(x2,y2))
  | (FSub(x1,y1),FSub(x2,y2))
->(x1=x2 && y1=y2)
  |(Int(n1),Int(n2)) ->n1=n2
  |(Float(n1),Float(n2)) ->n1=n2
  |(Neg(x1),Neg(x2))|(FNeg(x1),FNeg(x2))|(Var(x1),Var(x2))
  |(ExtArray(x1),ExtArray(x2))
  ->x1=x2
  |(App(x1,l1),App(x2,l2)) |(ExtFunApp(x1,l1),ExtFunApp(x2,l2))
  -> x1=x2 && List.equal(fun a b -> a=b )l1 l2
  |(IfEq (a1,b1,c1,d1),IfEq (a2,b2,c2,d2))|(IfLE (a1,b1,c1,d1),IfLE (a2,b2,c2,d2))
  -> a1=a2 && b1=b2 && equal(c1,c2)&& equal(d1,d2)
  |(Tuple l1, Tuple l2) 
  -> List.equal(fun a b -> a=b )l1 l2
  |_ ->false 

let elim env' x' =
  let p = snd x' in
  let rec elim_sub env x= (*envですでに定義された部分式をxから削除する, env:(t, Id.t)list*)
  match env with 
  |[] -> x
  |(t, id)::ll ->
    if equal (x,t) then (Var(id),p)
    else elim_sub ll x
  in elim_sub env' x'
  
 
    
let rec cse_help env normalized =
  let x = fst normalized in
  let p = snd normalized in
  let x'=
  match x with 
    | Let ((id,t),e1,e2) ->
      let e1'= cse_help env e1 in
      Let((id,t), e1',cse_help ((e1',id)::env) e2)
    | LetTuple(l,id,e) ->
      let ll = List.map(fun x ->fst x) l in
      LetTuple(l,id,cse_help(((Tuple(ll),p),id)::env) e )
    | IfEq(a,b,c,d)
    -> IfEq(a,b,cse_help env c,cse_help env d)
    |IfLE(a,b,c,d) 
    -> IfLE(a,b,cse_help env c,cse_help env d)
    |_ -> fst (elim env normalized)
    in (x',p)

let cse normalized = cse_help [] normalized