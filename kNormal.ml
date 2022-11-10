(* give names to intermediate values (K-normalization) *)
type p = Lexing.position

type tt = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }
and t = tt*p(*位置を表す型を追加。課題１。*)
let rec indent n =
  match n with
  | 0 -> ""
  | m -> " "^indent (m-1) 


let rec print_t outchan tt =(*出力用の関数。課題１*)
  let rec print_t_help  n x=(*第1引数は行の先頭からの位置を表すint*)
  match x with (ttt,_)->
    (match ttt with
  | Unit -> Printf.fprintf outchan "Unit"
  | Int a -> Printf.fprintf outchan "%s" (Int.to_string a)
  | Float a -> Printf.fprintf outchan "%s" (Float.to_string a)
  | Neg t -> Printf.fprintf outchan "Neg %s"t
  | Add (a,b) -> Printf.fprintf outchan "Add\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | Sub (a,b) -> Printf.fprintf outchan "Sub\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | Mul (a,b) -> Printf.fprintf outchan "Mul\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | Div (a,b) -> Printf.fprintf outchan "Div\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | FNeg t -> Printf.fprintf outchan "FNeg %s" t
  | FAdd (a,b) -> Printf.fprintf outchan "FAdd\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FSub (a,b) -> Printf.fprintf outchan "FSub\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FMul (a,b) -> Printf.fprintf outchan "FMul\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FDiv (a,b) -> Printf.fprintf outchan "FDiv\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | IfEq (a,b,c,d) -> Printf.fprintf outchan "IfEq\n%s%s\n%s%s\n%s" (indent (n+4)) a (indent (n+4)) b (indent (n+4));print_t_help (n+4) c;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) d
  | IfLE (a,b,c,d) -> Printf.fprintf outchan "IfLE\n%s%s\n%s%s\n%s" (indent (n+4)) a (indent (n+4)) b (indent (n+4));print_t_help (n+4) c;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) d
  | Let ((id,t),a,b) -> Printf.fprintf outchan "Let\n%s%s " (indent (n+3)) id;Type.print_t outchan t;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Var t ->  Printf.fprintf outchan "Var %s" t
  | LetRec (f,t) ->  Printf.fprintf outchan "LetRec\n%s" (indent (n+6));print_fun (n+6) f;Printf.fprintf outchan "\n%s" (indent (n+6));print_t_help (n+6) t
  | App (a,l) -> Printf.fprintf outchan "App\n%s%s" (indent (n+3)) a;List.iter (fun t -> Printf.fprintf outchan "\n%s%s" (indent (n+3)) t)  l
  | Tuple l -> Printf.fprintf outchan "Tuple";List.iter (fun t -> Printf.fprintf outchan "\n%s%s" (indent (n+5)) t) l
  | LetTuple (l,a,b) -> Printf.fprintf outchan "LetTuple";List.iter (fun (x,y)-> Printf.fprintf outchan "\n%s%s " (indent (n+8)) x;Type.print_t outchan y) l;Printf.fprintf outchan "\n%s%s" (indent (n+8)) a; Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) b
  | Get (a,b) -> Printf.fprintf outchan "Get\n%s%s%s%s" (indent (n+3)) a (indent (n+3)) b
  | Put (a,b,c) -> Printf.fprintf outchan "Put\n%s%s%s%s%s%s" (indent (n+3)) a (indent (n+3)) b (indent (n+3)) c
  | ExtArray t -> Printf.fprintf outchan "ExtArray\n%s%s" (indent (n+8)) t
  | ExtFunApp (t,l) -> Printf.fprintf outchan "ExtFunApp\n%s%s" (indent (n+8)) t;List.iter (fun t->Printf.fprintf outchan "\n%s%s" (indent (n+8)) t) l)
  and
print_fun  n f =
match f.name with
  | (id,t) -> Printf.fprintf outchan "%s:" id;Type.print_t outchan t;Printf.fprintf outchan "\n%sargs:" (indent n);
  List.iter(fun (i,t) -> Printf.fprintf outchan "%s:" i;Type.print_t outchan t;Printf.fprintf outchan ", ") f.args;
  
  Printf.fprintf outchan "\n%s" (indent n);print_t_help (n)  f.body
in
print_t_help 0 tt



let rec fv s= 
  match fst s with (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) |Mul(x,y)|Div(x,y)| FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match fst e with
  | Var(x) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      (Let((x, t), e, e'),snd e), t'

let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit(p) -> (Unit,p), Type.Unit
  | Syntax.Bool(b,p) -> (Int(if b then 1 else 0),p), Type.Int (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i,p) -> (Int(i),p), Type.Int
  | Syntax.Float(d,p) -> (Float(d),p), Type.Float
  | Syntax.Not(e,p) -> g env (Syntax.If(e, Syntax.Bool(false,p), Syntax.Bool(true,p),p))
  | Syntax.Neg(e,p) ->
      insert_let (g env e)
        (fun x -> (Neg(x),p), Type.Int)
  | Syntax.Add(e1, e2,p) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Add(x, y),p), Type.Int))
  | Syntax.Sub(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Sub(x, y),p), Type.Int))
  | Syntax.Mul(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Mul(x, y),p), Type.Int))
| Syntax.Div(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Div(x, y),p), Type.Int))  
| Syntax.FNeg(e,p) ->
      insert_let (g env e)
        (fun x -> (FNeg(x),p), Type.Float)
  | Syntax.FAdd(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FAdd(x, y),p), Type.Float))
  | Syntax.FSub(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FSub(x, y),p), Type.Float))
  | Syntax.FMul(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FMul(x, y),p), Type.Float))
  | Syntax.FDiv(e1, e2,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FDiv(x, y),p), Type.Float))
  | Syntax.Eq (_,_,p)| Syntax.LE (_,_,p) as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true,p), Syntax.Bool(false,p),p))
  | Syntax.If(Syntax.Not(e1,__LINE_OF__), e2, e3,p) -> g env (Syntax.If(e1, e3, e2,p)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2,_), e3, e4,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfEq(x, y, e3', e4'),p), t3))
  | Syntax.If(Syntax.LE(e1, e2,_), e3, e4,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              (IfLE(x, y, e3', e4'),p), t3))
  | Syntax.If(e1, e2, e3,p) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false,p),p), e3, e2,p)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2,p) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      (Let((x, t), e1', e2'),p), t2
  | Syntax.Var(x,p) when M.mem x env -> (Var(x),p), M.find x env
  | Syntax.Var(x,p) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> (ExtArray x,p), t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2,p) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      (LetRec({ name = (x, t); args = yts; body = e1' }, e2'),p), t2
  | Syntax.App(Syntax.Var(f,_), e2s,p) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> (ExtFunApp(f, xs),p), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | p -> assert false)
  | Syntax.App(e1, e2s,p) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> (App(f, xs),p), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | p -> assert false)
  | Syntax.Tuple(es,p) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> (Tuple(xs),p), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2,p) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          (LetTuple(xts, y, e2'),p), t2)
  | Syntax.Array(e1, e2,p) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              (ExtFunApp(l, [x; y]),p), Type.Array(t2)))
  | Syntax.Get(e1, e2,p) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> (Get(x, y),p), t))
      | p -> assert false)
  | Syntax.Put(e1, e2, e3,p) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> (Put(x, y, z),p), Type.Unit)))

let f e = 
  let pp=
  (match e with 
  | Syntax.Unit  p ->p
  | Syntax.Bool  (_,p)->p
  | Syntax.Int  (_,p)->p
  | Syntax.Float  (_,p)->p
  | Syntax.Not  (_,p)->p
  | Syntax.Neg  (_,p)->p
  | Syntax.Add  (_ , _,p)->p
  | Syntax.Sub  (_ , _,p)->p
  | Syntax.Mul  (_ , _,p)->p
  | Syntax.Div  (_ , _,p)->p
  | Syntax.FNeg  (_,p)->p
  | Syntax.FAdd  (_ , _,p)->p
  | Syntax.FSub  (_ , _,p)->p
  | Syntax.FMul  (_ , _,p)->p
  | Syntax.FDiv  (_ , _,p)->p
  | Syntax.Eq  (_ , _,p)->p
  | Syntax.LE  (_ , _,p)->p
  | Syntax.If  (_ , _ , _,p)->p
  | Syntax.Let  (_ , _ , _,p)->p
  | Syntax.Var  (_,p)->p
  | Syntax.LetRec  (_, _,p)->p
  | Syntax.App  (_ , _,p)->p
  | Syntax.Tuple  (_,p)->p
  | Syntax.LetTuple  (_ , _ , _,p)->p
  | Syntax.Array  (_ , _,p)->p(*t_1個のt_2で初期化された配列*)
  | Syntax.Get  (_ , _,p)->p
  | Syntax.Put  (_ , _ , _,p)->p)
in 
  (fst (fst(g M.empty e)) ,pp)
