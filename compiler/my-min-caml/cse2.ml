open KNormal

let vequal env x y =
  try (let s = List.find (fun xs-> List.mem x (fst xs) ) env in (List.mem y (fst s)))
with Not_found -> false

let vmem env x =
  List.mem (fun xs -> List.mem x (fst xs)) env


(*env : List of (List of variables which hold equality, exp), 先頭以外の定義は削除*)
let rec equal env ap bp =(*aとbが同じ部分式かどうかを判定する関数*)
let a=fst ap in
let b=fst bp in
match (a,b) with
  | (Add(x1,y1),Add(x2,y2)) 
  |(FAdd(x1,y1),FAdd(x2,y2)) |(FMul(x1,y1),FMul(x2,y2))
->(vequal env x1 x2 && vequal env y1 y2) ||(vequal env x1 y2&& vequal env x2 y1)
  | (Sub(x1,y1),Sub(x2,y2)) |(FDiv(x1,y1),FDiv(x2,y2))
  | (FSub(x1,y1),FSub(x2,y2))
->(vequal env x1 x2 && vequal env y1 y2)
  |(Int(n1),Int(n2)) ->n1=n2
  |(Float(n1),Float(n2)) ->n1=n2
  |(Neg(x1),Neg(x2))|(FNeg(x1),FNeg(x2))|(Var(x1),Var(x2))
  |(ExtArray(x1),ExtArray(x2))
  ->vequal env x1 x2
  |(App(x1,l1),App(x2,l2)) |(ExtFunApp(x1,l1),ExtFunApp(x2,l2))
  -> vequal env x1 x2 && List.equal(fun a b -> vequal env a b)l1 l2
  |(IfEq (a1,b1,c1,d1),IfEq (a2,b2,c2,d2))|(IfLE (a1,b1,c1,d1),IfLE (a2,b2,c2,d2))
  -> (vequal env a1 a2) && (vequal env b1 b2) && (equal env c1 c2) && (equal env d1 d2)
  |(Tuple l1, Tuple l2) 
  -> List.equal(fun a b -> vequal env a b )l1 l2
  |_ ->false 

let elim env x =
  let p = snd x in
  if List.exists (fun xs -> equal env x (snd xs)) env then(
    (Var(List.hd  (fst (List.find (fun xs -> equal env x (snd xs)) env))),snd x)
  )
else x
    
let rec cse_help env normalized =
  let x = fst normalized in
  let p = snd normalized in
  let x'=
  match x with 
    | Let((id,t),e1,e2) ->
      (let e1'= cse_help env  e1 in
      if (List.exists (fun xs -> equal env e1' (snd xs)) env) && not (effect e1) then(
        let xs' = List.find (fun xs -> equal env e1' (snd xs)) env in
        fst (cse_help (( (fst xs')@[id] ,snd xs')::env)  e2)
      )
      else (
        Let((id,t),e1',cse_help (( [id] ,e1')::env)  e2)
      ))
    | LetTuple(l,id,e) ->
      (try (
        let xs'= List.find (fun xs -> List.mem id (fst xs)) env in
        (match fst (snd xs') with
          |Tuple(ll) -> 
            (let newenv = List.map2 (
              fun o (n,_) -> let xs' = List.find (fun xs -> List.mem o (fst xs)) env in ((fst xs')@[n], snd xs')
              ) ll l in LetTuple(l, id , ( cse_help  (([id],(Tuple(ll),p))::(newenv@env)) e)))
          | _ -> Printf.eprintf "Maybe error tuple1 in CSE2\n"; assert false
        )
      ) 
    with Not_found -> Printf.eprintf "Maybe error tuple2 in CSE2\n"; raise Not_found)
    |Tuple(l) ->
      (let ll = (List.map ( fun x -> let s = List.find (fun xs -> List.mem x (fst xs)) env in List.hd (fst s)) l )
    in Tuple(ll) )
    | Neg(x) -> let s = List.find (fun xs -> List.mem x (fst xs)) env in Neg(List.hd (fst s))
    | FNeg(x) -> let s = List.find (fun xs -> List.mem x (fst xs)) env in Neg(List.hd (fst s))
    | Add(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      Add(List.hd (fst sx), List.hd (fst sy))
    | Sub(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      Sub(List.hd (fst sx), List.hd (fst sy))
    | Mul(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      Mul(List.hd (fst sx), List.hd (fst sy))
    | Div(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      Div(List.hd (fst sx), List.hd (fst sy))
    | FAdd(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      FAdd(List.hd (fst sx), List.hd (fst sy))
    | FSub(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      FSub(List.hd (fst sx), List.hd (fst sy))
    | FMul(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      FMul(List.hd (fst sx), List.hd (fst sy))
    | FDiv(x,y) -> 
      let sx = List.find (fun xs -> List.mem x (fst xs)) env in 
      let sy = List.find (fun xs -> List.mem y (fst xs)) env in 
      FDiv(List.hd (fst sx), List.hd (fst sy))
    | App(x, l) ->
      let ll = List.map ( fun x -> (if x = "Td261.6755" then Printf.eprintf "Find Compiler" else ()); 
      let s = List.find (fun xs -> List.mem x (fst xs)) env in List.hd (fst s)) l
    in let x' = try ( List.hd (fst ( List.find (fun xs -> List.mem x (fst xs)) env))) with Not_found -> x in 
    App(x', ll)
    |ExtFunApp(x,l) ->
      let ll = List.map ( fun x -> (if x = "Td261.6755" then Printf.eprintf "Find Compiler" else ());
      let s = List.find (fun xs -> List.mem x (fst xs)) env in List.hd (fst s)) l
    in let x' = try ( List.hd (fst ( List.find (fun xs -> List.mem x (fst xs)) env))) with Not_found -> x in 
    ExtFunApp(x', ll)
    | IfEq(a,b,c,d)
    ->  IfEq(a,b,cse_help env  c,cse_help env  d)
    |IfLE(a,b,c,d) 
    -> IfLE(a,b,cse_help env  c,cse_help env  d)
    |_ -> fst(elim env normalized)
    in (x',p)

let rec cse normalized = 
  let e' = cse_help []  normalized in
  if e' = normalized then (Printf.eprintf "CSE2 finished\n"; e' )else (Printf.eprintf "CSE2 one more time\n"; cse_help [] e')