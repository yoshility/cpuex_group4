type closure = { entry : Id.l; actual_fv : Id.t list }
type tt = (* ���������Ѵ���μ� (caml2html: closure_t) *)
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
and t = tt*KNormal.p(*���֤�ɽ�������ɲá����꣱��*)
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

let rec g env known xx=(* ���������Ѵ��롼�������� (caml2html: closure_g) *)
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
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* �ؿ�����ξ�� (caml2html: closure_letrec) *)
      (* �ؿ����let rec x y1 ... yn = e1 in e2�ξ��ϡ�
         x�˼�ͳ�ѿ����ʤ�(closure��𤵤�direct�˸ƤӽФ���)
         �Ȳ��ꤷ��known���ɲä���e1�򥯥������Ѵ����Ƥߤ� *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* �����˼�ͳ�ѿ����ʤ��ä������Ѵ����e1'���ǧ���� *)
      (* ���: e1'��x���Ȥ��ѿ��Ȥ��ƽи��������closure��ɬ��!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml����) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* ���ܤ��ä������(toplevel����)���ᤷ�ơ����������Ѵ�����ľ�� *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ��ͳ�ѿ��Υꥹ�� *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* �����Ǽ�ͳ�ѿ�z�η����������˰���env��ɬ�� *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* �ȥåץ�٥�ؿ����ɲ� *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* x���ѿ��Ȥ���e2'�˽и����뤫 *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* �и����Ƥ����������ʤ� *)
      else
        (Format.eprintf "eliminating closure(s) %s@." x;
         fst e2') (* �и����ʤ����MakeCls���� *)
  | KNormal.App(x, ys) when S.mem x known -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: closure_app) *)
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

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in 
  Prog(List.rev !toplevel, e')




let rec indent n =
    match n with
    | 0 -> ""
    | m -> " "^indent (m-1) 
  
let print_t outchan tt = (*Closure.t ���ѿ�����Ϥ���ؿ�*)
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