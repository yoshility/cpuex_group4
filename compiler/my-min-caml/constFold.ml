open KNormal

let rec memi x env =
  try (match fst(M.find x env) with 
  | Int(_)   (**) -> true 
  | ExtFunApp(x, ys) when (x = "int_of_float")||(x = "fispos")||(x = "fisneg")||(x = "fiszero")
  -> memf (List.hd ys) env
  |ExtFunApp(x, ys) when(x = "fless") -> memf (List.hd ys) env && memf (List.nth ys 1) env
  | _ -> false)
  with Not_found -> false
and memf x env =
  try (match fst(M.find x env) with |Float(_) -> true
  | ExtFunApp(x, ys)  when (x = "float_of_int") -> memi (List.hd ys) env
  |ExtFunApp(x, ys) when (x = "fabs")||(x = "fneg")||(x = "floor")||(x="sqrt")||(x="fsqr")||(x="fhalf")
  -> memf (List.hd ys) env
  | _ -> false)
  with Not_found -> false
let memt x env =
  try (match fst(M.find x env) with Tuple(_) -> true | _ -> false)
  with Not_found -> false
(* let memfofi x env =
  try (match fst(M.find x env) with ExtFunApp("float_of_int", ys) -> true | _ -> false)
with Not_found -> false
let memioff x env =
  try (match fst(M.find x env) with ExtFunApp("int_of_float", _) -> true | _ -> false)
with Not_found -> false
let memfabs x env =
  try (match fst(M.find x env) with ExtFunApp("fabs", ys) -> true | _ -> false)
with Not_found -> false
let memfneg x env =
  try (match fst(M.find x env) with ExtFunApp("fneg", ys) -> true | _ -> false)
with Not_found -> false
let memfless x env =
  try (match fst(M.find x env) with ExtFunApp("fless", ys) -> true | _ -> false)
with Not_found -> false
let memfispos x env =
  try (match fst(M.find x env) with ExtFunApp("fispos", ys) -> true | _ -> false)
with Not_found -> false
let memfisneg x env =
  try (match fst(M.find x env) with ExtFunApp("fisneg", ys) -> true | _ -> false)
with Not_found -> false
let memfiszero x env =
  try (match fst(M.find x env) with ExtFunApp("fiszero", ys) -> true | _ -> false)
with Not_found -> false
let memfloor x env =
  try (match fst(M.find x env) with ExtFunApp("floor", ys) -> true | _ -> false)
with Not_found -> false
let memsqrt x env =
  try (match fst(M.find x env) with ExtFunApp("sqrt", ys) -> true | _ -> false)
with Not_found -> false
let memfsqr x env =
  try (match fst(M.find x env) with ExtFunApp("fsqr", ys) -> true | _ -> false)
with Not_found -> false
let memfharf x env =
  try (match fst(M.find x env) with ExtFunApp("fhalf", ys) -> true | _ -> false)
with Not_found -> false *)


let rec findi x env = (match fst(M.find x env) with 
 |Int(i) ->
   (* Printf.eprintf "Const find Int\n";*)
   i  
 |ExtFunApp("int_of_float", ys) -> 
  (* Printf.eprintf "Const find IofF\n"; *)
  let f = findf (List.hd  ys) env in let n = Float.to_int f in  (if f-. (Float.of_int n) >= 0.5 then n+1 else n)
 |ExtFunApp("fless", ys) -> 
  (* Printf.eprintf "Const find fless\n"; *)
  let f = findf(List.hd ys) env in let g = findf (List.nth ys 1) env in if f < g then 1 else 0 
 |ExtFunApp("fispos", ys) -> 
  (* Printf.eprintf "Const find fispos\n"; *)
  let f = findf (List.hd  ys) env in if f > 0. then 1 else 0
 |ExtFunApp("fisneg", ys) -> 
  (* Printf.eprintf "Const find fisneg\n"; *)
  let f = findf (List.hd  ys) env in  if f < 0. then 1 else 0  
 |ExtFunApp("fiszero", ys) -> 
  (* Printf.eprintf "Const find fiszero\n"; *)
  let f = findf (List.hd  ys) env in if f = 0. then 1 else 0
  | _ -> raise Not_found)
and findf x env = (match fst(M.find x env) with 
|Float(d) -> 
  (* Printf.eprintf "Const find Float\n"; *)
  d 
|ExtFunApp("float_of_int", ys) ->
  (* Printf.eprintf "Const find fofi\n"; *)
   Float.of_int (findi (List.hd  ys) env)
|ExtFunApp("fabs", ys) -> 
  (* Printf.eprintf "Const find fabs\n"; *)
  let f = findf (List.hd  ys) env in if f >=0. then f else (0.-.f)
|ExtFunApp("fneg", ys) ->
   (* Printf.eprintf "Const find fneg\n"; *)
   let f = findf (List.hd  ys) env in  0.-.f
|ExtFunApp("floor", ys) ->
   (* Printf.eprintf "Const find floor\n"; *)
   Float.floor(findf (List.hd  ys)env )
|ExtFunApp("sqrt", ys) ->
   (* Printf.eprintf "Const find sqrt\n"; *)
   Float.sqrt (findf (List.hd  ys) env) 
|ExtFunApp("fsqr", ys) ->
   (* Printf.eprintf "Const find fsqr\n"; *)
   let f = findf (List.hd  ys) env in f*.f
|ExtFunApp("fhalf", ys) ->
    (* Printf.eprintf "Const find fhalf\n"; *)
    (findf (List.hd  ys)env)*.0.5
| _ -> raise Not_found)
let findt x env = (match fst(M.find x env) with Tuple(ys) -> ys | _ -> raise Not_found)


let rec g env xx =  (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
let fs = 
  (match fst xx with   
| Var(x) when memi x env -> Int(findi x env)
  | Var(x) when memf x env -> Float(findf x env)
  | Var(x) when memt x env -> Tuple(findt x env)
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env) (* 足し算のケース (caml2html: constfold_add) *)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> if findi x env = findi y env then fst (g env e1) else fst(g env e2)
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> if findf x env = findf y env then fst(g env e1) else fst(g env e2)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> if findi x env <= findi y env then fst(g env e1) else fst(g env e2)
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> if findf x env <= findf y env then fst(g env e1) else fst(g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
      Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
      fst(List.fold_left2
        (fun e' xt z -> (Let(xt, (Var(z),(snd xx)), e'),snd xx))
        (g env e)
        xts
        (findt y env))
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  | e -> e )
in (fs,snd xx)

let rec f e = 
  let e' = g M.empty e in
  if e' = e then (Printf.eprintf "ConstFold Finish\n"; e )else
    (Printf.eprintf "ConstFold one more time\n";f e')  
