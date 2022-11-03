open Closure

(*env_tuple はtupleの名前とtupleの中の変数のリストの組*)
(* let rec flatten_tuple env_tuple tuple_list =
  (*idのリストの入れ子をなくす関数*)
  (*4.2*)
  match tuple_list with 
  | id :: ll -> 
    let tuples_behind = (flatten_tuple env_tuple ll) in
    (try let tuple_defined = List.assoc id env_tuple in
    (flatten_tuple env_tuple tuple_defined) @ tuples_behind
  with Not_found-> id::tuples_behind
  )
  | []-> [] *)

(*env_tupleは(id,(,))*)
let rec flatten_tuple env_tuple tlist e =
  match tlist with 
  | t1::[Tuple(tlist2)] ->
    match e with Tuple(tlist
    )
  
  
let rec eliminate_tuple id_t_tuple defined_tuple p=
  (*tupleを定義するときの定義と変数のリストを受け取って、不要なタプルの定義をなくす関数*)
  (*4.3*)
  match (id_t_tuple, defined_tuple) with
  | (id_t::names, id_d::ll)->  
    (Let (id_t, (Var(id_d),p), eliminate_tuple  names ll p),p)
  | [] ,[] -> (Unit,p)
  | _ -> assert false (*引数の数が合わない場合*)

(* let rec optimize_tuple env_tuple (e,p) =
(*Closure.t のtupleに対して最適化を行う*)
  match e with 
  | Let((id, t), (e1,p1), ep) -> 
    (match e1 with 
      (*| Tuple(tuple_list) -> (Let((id,t), (Tuple(flatten_tuple env_tuple tuple_list),p1),  optimize_tuple ((id, tuple_list)::env_tuple) ep),p)*)
      | Tuple(tuple_list) -> optimize_tuple ((id, tuple_list)::env_tuple) ep
      | _ ->  (Let((id, t), optimize_tuple env_tuple (e1,p1), optimize_tuple env_tuple ep), p))
  | LetTuple(tuple_list, id, (e, p)) ->
    (try let defined_tuple = List.assoc id env_tuple in
    eliminate_tuple  tuple_list defined_tuple p
  with Not_found -> (LetTuple(tuple_list, id, optimize_tuple env_tuple (e,p)),p)
    )
    | IfEq(id1, id2, e1, e2) -> (IfEq(id1, id2, optimize_tuple env_tuple e1, optimize_tuple env_tuple e2),p)
    | IfLE(id1, id2, e1, e2) -> (IfLE(id1, id2, optimize_tuple env_tuple e1, optimize_tuple env_tuple e2),p)
  | _ -> (e,p) *)


let rec optimize_tuple env_tuple (e,p) =
    (*Closure.t のtupleに対して最適化を行う*)
      match e with 
      | Let((id, t), e1, ep) -> 
        (match t with 
          | Tuple(tlist) ->
            let flattened = flatten_tuple env_tuple tlist e1 in
            optimize_tuple ((id, flattened)::env_tuple) ep
          | _ ->  (Let((id, t), optimize_tuple env_tuple e1, optimize_tuple env_tuple ep), p))
      | LetTuple(tuple_list, id, (e, p)) ->
        (try let (defined_tuple,p_ )= List.assoc id env_tuple in
        eliminate_tuple  tuple_list defined_tuple p
      with Not_found -> (LetTuple(tuple_list, id, optimize_tuple env_tuple (e,p)),p)
        )
        | IfEq(id1, id2, e1, e2) -> (IfEq(id1, id2, optimize_tuple env_tuple e1, optimize_tuple env_tuple e2),p)
        | IfLE(id1, id2, e1, e2) -> (IfLE(id1, id2, optimize_tuple env_tuple e1, optimize_tuple env_tuple e2),p)
      | _ -> (e,p)





let tuple_closure (Prog(fl, e)) = 
  Prog(List.map (fun f -> {name=f.name; args=f.args;formal_fv=f.formal_fv; body= optimize_tuple [] f.body }) fl, optimize_tuple [] e)
