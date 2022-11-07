let lifting =ref false
type closure = { entry : Id.l; actual_fv : Id.t list }
type tt = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
and fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
and t = tt*KNormal.p(*位置を表す型を追加。課題１。*)
type prog = Prog of fundef list * t

let rec fv xx =
  (match fst xx with
  | Unit -> S.empty
  | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]
)
let toplevel : fundef list ref = ref []

(*(known はId.t, envはId.t, 型*)
let rec g env known xx=(* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
let fs = (match fst xx with
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
         xに自由変数がない(closureを介さずdirectに呼び出せる)
         と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* 出現していたら削除しない *)
      else
        (Format.eprintf "eliminating closure()s) %s@." x;
         fst e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys))
      in (fs,snd xx)

let partials = ref [](*部分関数を保存する環境*)

(* 関数名と型の環境env, 定義した変数の環境vars, 関数内の自由変数の環境fvs *)
let rec g_lifting env vars fvs (e,p) =
  let fs = 
  match e with
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g_lifting env vars fvs e1, g_lifting env vars fvs e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g_lifting env vars fvs e1, g_lifting env vars fvs e2)
  | KNormal.Let((x, t), e1, e2) 
  -> 
    let e1' =g_lifting env vars fvs e1 in
    let vars' = M.add x ((x,t) ,e1') vars in
    Let((x, t), e1', g_lifting (M.add x t env) vars' fvs e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
         xに自由変数がない(closureを介さずdirectに呼び出せる)
         と仮定し、追加してe1をクロージャ変換してみる *)
      let env' = M.add x t env in
      let e1' = g_lifting (M.add_list yts env')  vars fvs e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in(*自由変数の集合*)
      let zts = try List.map (fun z -> (z, M.find z env')) zs with Not_found -> failwith "line 146" in
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let fvars = try List.map (fun y -> ( M.find y vars))zs with Not_found -> failwith "line148"in
      let fvs' = M.add x fvars fvs in 
      let e2' = g_lifting env'  vars fvs' e2 in
      fst e2'
  | KNormal.App(x, ys)  when List.mem_assoc x !partials ->(*部分関数の場合*)
      let (f,args1) = try List.assoc x !partials with Not_found -> failwith "line153"in
      let args2 = args1@ys in
      if List.length (f.args) = List.length args2 then(*完全に適用された場合*)
      (Format.eprintf "directly applying %s@." x;
      (match fst f.name with Id.L(name) ->
      let fvars = 
        (try M.find name fvs with Not_found -> failwith ("line158\n")) in(*((y, t), ep)list*)  
      fst (List.fold_right (fun (yt, ep) e2 ->(Let(yt, ep ,e2),p) )fvars (AppDir(Id.L(x), args2),p))))
      else (*新しい部分関数となった場合*)
      let newname = Id.genid "p" in 
      partials := (newname, (f,args2))::(!partials);
      Var(newname)
| KNormal.App(x, ys)   when List.exists  (fun g-> (fst (g.name)) = Id.L(x)) !toplevel ->(*トップレベル関数の場合*)
      let f =  List.find (fun g-> (fst (g.name)) = Id.L(x)) !toplevel in
      (if List.length f.args = List.length ys then (*部分適用ではない場合*)
        (((match fst f.name with Id.L(name) ->
        let fvars = 
          (try M.find name fvs with Not_found -> failwith "line 170\n")in(*((y, t), ep)list*) 
      fst (List.fold_right (fun (yt, ep) e2 ->(Let(yt, ep, e2),p) )fvars (AppDir(Id.L(x), ys),p)))))
      else 
        (let newname = Id.genid "p" in
        partials := (newname, (f,ys))::(!partials);
        Var(newname)))
  | KNormal.App(x, ys) -> print_endline x;failwith "recursive or args function"
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g_lifting (M.add_list xts env) vars fvs e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)
      in (fs,p)
(*lambda liftingを行う関数*)
    let f_lifting e =
      toplevel := [];
      let e' = g_lifting M.empty M.empty M.empty e in 
      Prog(List.rev !toplevel, e')
      let partials = ref []
      (*known はId.t, envはId.t, 型, fvsは(fun (Id.t), fvs([((Id.t, 型),(e,p))のリスト]))*)
      

let f e =
  if !lifting then
    (f_lifting e) 
  else 
  (toplevel := [];
  let e' = g M.empty S.empty e in 
  Prog(List.rev !toplevel, e'))
let rec indent n =
    match n with
    | 0 -> ""
    | m -> " "^indent (m-1) 
  
let print_t outchan tt = (*Closure.t の変数を出力する関数*)
let rec print_t_help  n e=
match e with (ee, _) ->
  (
  match ee with 
  | Unit -> Printf.fprintf outchan "Unit"
  | Int a -> Printf.fprintf outchan "%s" (Int.to_string a)
  | Float a -> Printf.fprintf outchan "%s" (Float.to_string a)
  | Neg t -> Printf.fprintf outchan "Neg %s"t
  | Add (a,b) -> Printf.fprintf outchan "Add\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | Sub (a,b) -> Printf.fprintf outchan "Sub\n%s%s\n%s%s" (indent (n+3)) a (indent (n+3)) b
  | FNeg t -> Printf.fprintf outchan "FNeg %s" t
  | FAdd (a,b) -> Printf.fprintf outchan "FAdd\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FSub (a,b) -> Printf.fprintf outchan "FSub\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FMul (a,b) -> Printf.fprintf outchan "FMul\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | FDiv (a,b) -> Printf.fprintf outchan "FDiv\n%s%s\n%s%s" (indent (n+4)) a (indent (n+4)) b
  | IfEq (a,b,c,d) -> Printf.fprintf outchan "IfEq\n%s%s\n%s%s\n%s" (indent (n+4)) a (indent (n+4)) b (indent (n+4));print_t_help (n+4) c;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) d
  | IfLE (a,b,c,d) -> Printf.fprintf outchan "IfLE\n%s%s\n%s%s\n%s" (indent (n+4)) a (indent (n+4)) b (indent (n+4));print_t_help (n+4) c;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) d
  | Let ((id,t),a,b) -> Printf.fprintf outchan "Let\n%s%s " (indent (n+3)) id;Type.print_t outchan t;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Var t ->  Printf.fprintf outchan "Var %s" t
  | Tuple l -> Printf.fprintf outchan "Tuple";List.iter (fun t -> Printf.fprintf outchan "\n%s%s" (indent (n+5)) t) l
  | LetTuple (l,a,b) -> Printf.fprintf outchan "LetTuple";List.iter (fun (x,y)-> Printf.fprintf outchan "\n%s%s " (indent (n+8)) x;Type.print_t outchan y) l;Printf.fprintf outchan "\n%s%s" (indent (n+8)) a; Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) b
  | Get (a,b) -> Printf.fprintf outchan "Get\n%s%s%s%s" (indent (n+3)) a (indent (n+3)) b
  | Put (a,b,c) -> Printf.fprintf outchan "Put\n%s%s%s%s%s%s" (indent (n+3)) a (indent (n+3)) b (indent (n+3)) c
  | ExtArray L(l) -> Printf.fprintf outchan "ExtArray\n%s%s" (indent (n+8)) l
  | MakeCls ((x, t), { entry = L(f); actual_fv = l_fv }, (_, e2)) 
  -> Printf.fprintf outchan "MakeCls\n%s%s: " (indent (n+7)) x;Type.print_t outchan t; Printf.fprintf outchan "Label:%s\n%s" f (indent (n+7)); List.iter (fun s -> Printf.fprintf outchan "%s, " s) l_fv;Printf.fprintf outchan "\n%s" (indent (n+7))(*;print_t_help  (n+7) e*)
  | AppCls (t, t_list)
  -> Printf.fprintf outchan "AppCls\n%s%s" (indent (n+6)) t; List.iter (fun s -> Printf.fprintf outchan " %s," s) t_list;
  | AppDir (L(f) ,l_t) ->Printf.fprintf outchan "AppDir\n%sLabel: %s " (indent (n+6)) f; List.iter (fun s -> Printf.fprintf outchan "%s," s) l_t;
  ) in 
  print_t_help 0 tt

let print_prog outchan (Prog(_, e)) = print_t outchan e  