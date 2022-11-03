open Closure

let rec get_idlist env (e,p) =
  (*型がtupleのときだけ呼ばれる。tuple内の変数のリストを返す*)
  match e with
  | Let((id,ty),(b,p), c) ->
    (match ty with
    | Type.Tuple(_) -> 
  (let bb= get_idlist env (b,p) in
  get_idlist ((id, bb)::env) c)
    | _ -> get_idlist (env) c)
  | Tuple(idlist) ->
    (let idlist2 = (List.map 
    (fun id -> 
      try List.assoc id env 
    with Not_found -> [id]) idlist) in
  List.concat idlist2 )
  | LetTuple(idtlist,id,e2) ->
    (let  idlist = (try List.assoc id env 
  with Not_found -> [id]) in
  let idlist2 = List.map2 (fun (i,_) ii->(i,[ii]) )idtlist idlist in
  get_idlist (idlist2@env) e2)
  | Var(i) -> [i]
  | _ -> [] 

  let rec get_tlist t =
    (*型を平坦化する*) 
   match t with 
   | Type.Tuple(tlist) ->
   ( match tlist with 
    | []-> []
    | t1::ll -> (get_tlist t1)@(get_tlist(Type.Tuple(ll))))
   | _ -> [t]

let rec flatten_type t =
  match t with 
  |Type.Tuple(tlist) -> Type.Tuple(get_tlist (Type.Tuple(tlist)))
  |Array(t) -> Array(flatten_type t)
  |Fun(l,tt) -> Fun(List.map flatten_type l ,flatten_type tt)
  |Var(r) -> 
    (match !r with
    | None -> ()
    | Some t -> r:=Some (flatten_type t))
    ;Var(r)
  |_ -> t


let rec take l n =
  (*配列lをn個の配列とそれ以外の配列に分ける関数*)
  match n with
  | 0 -> ([],l)
  | _ ->(
    match l with 
    | a::ll -> 
      let (l1,l2) = take ll(n-1) in (a::l1,l2)
    | _ -> ([],[])
  )
 let rec get_tuple itlist idlist env (e, p)=
  match itlist with
  | [] -> (e,p) 
  | (id, t)::ll ->
    (match t with 
    |Type.Tuple(_) 
    ->let tt = flatten_type t in
      (match tt with 
      |Type.Tuple(l) -> 
        let idlist2 = List.map 
        (fun id -> try List.assoc id env with Not_found -> [id]) idlist in
        let idlist3 = List.concat idlist2 in
        print_int (List.length l);let (idlist4,idlist5) = take idlist3 (List.length l) in
        (Let((id,tt) ,(Tuple(idlist4),p),get_tuple ll idlist5 env (e ,p)),p)
      |_ -> assert false)
    |_->(
      match idlist with
      | id2::idlist2 
      -> (Let ((id,t) ,(Var(id2),p),get_tuple ll idlist2 env (e, p) ),p)
      | _ -> print_endline id;print_int (List.length itlist);assert false
    ))
    

let rec flatten_args args tupleargs= 
  match args with
  | [] -> ([],tupleargs)
  | (id,t)::arg1 ->
    match t with
    | Type.Tuple(_) -> 
      let tt = flatten_type t in
      (match tt with 
      |Type.Tuple(tlist)->
      let rec help1 n l = 
        (match l with
        | [] -> []
        | t1::ll -> (id ^(string_of_int n),t1)::(help1 (n+1) ll))
      in 
      let tuple = (help1 0 tlist) in
      let (args2, tupleargs2) = flatten_args arg1 tupleargs in
      (tuple@args, (id,tuple)::tupleargs2)
      | _ -> assert false)
    | _ -> let (args2, tupleargs2) = flatten_args arg1 tupleargs in
    ((id,t)::(args2), tupleargs2)


let rec g env (t,p) =
  match t with
  | Tuple(idlist) -> 
    let idlist2 = (List.map 
    (fun id -> 
      try List.assoc id env 
    with Not_found -> [id]) idlist) in
  let idlist_f = List.concat idlist2 in (Tuple(idlist_f) ,p)

  | Let((id,ty), e1,e2) ->
    (match ty with
    | Type.Tuple(_) -> 
      let ty2= flatten_type ty in
      (match e1 with
      | (Get(_),_) -> (Let((id,ty2),g env e1, g env e2),p)
      | _ ->
      let idlist = get_idlist env e1 in
      (Let((id,ty2),g env e1, g ((id,idlist)::env) e2),p))
    | Type.Array(Type.Tuple(l)) -> 
      let ty2 = Type.Array(flatten_type (Type.Tuple(l))) in
      (Let((id,ty2),g env e1, g env e2),p)
    | _ ->
      (Let((id,ty),g env  e1, g env  e2),p))
  | LetTuple(itlist, id, e) ->        
    (try let idlist = List.assoc id env  in get_tuple itlist idlist env e
    with Not_found ->  (t,p))
  | AppDir(f, idlist) ->
    let idlist2 = (List.map 
    (fun id -> 
      try List.assoc id env 
    with Not_found -> [id]) idlist) in
  let idlist3 = List.concat idlist2 in 
    (AppDir(f, idlist3),p)
  | AppCls(f, idlist) ->
      let idlist2 = (List.map 
      (fun id -> 
        try List.assoc id env 
      with Not_found -> [id]) idlist) in
    let idlist3 = List.concat idlist2 in 
      (AppCls(f, idlist3),p)
  | _ -> (t,p)

let f (Prog(fl,e)) =
  Prog(List.map (fun f -> 
    let (args0, tupleargs) = flatten_args f.args [] in
    let (fv, tupleargs2) =  flatten_args f.formal_fv tupleargs in
    let nenv = List.map (fun (x,l) -> (x,(List.map (fun (s,_)-> s) l)) ) tupleargs2 in
    let newbody = g nenv f.body in
    {name=f.name; args=args0;formal_fv=fv; body= newbody }) fl, g [] e)

