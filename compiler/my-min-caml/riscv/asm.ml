(* SPARC assembly with a few virtual instructions *)
let pc = ref 0
let print_asm  oc s = pc := !pc + 4 ; Printf.fprintf oc s

let  labelnum = ref M.empty
let  addresses = ref M.empty
let getlabelnum s = try ((M.find s !labelnum)) with Not_found -> (Printf.printf "error with %s\n" s  ; raise Not_found) 
let setlabelnum s  d = labelnum := (M.add s d (!labelnum))
let getaddress s = Printf.printf "%s:%d\n" s  (M.find s !addresses)  ;M.find s !addresses 
let setaddress s  d = addresses := (M.add s d (!addresses))
let effect_cls = ref[]

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp' = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop(**)
  | Set of int
  | SetL of Id.l
  | Flabel of Id.l
  | Mov of Id.t(**)
  | Neg of Id.t(**)
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | Ld of Id.t * int
  | St of Id.t * Id.t * int
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * int
  | StDF of Id.t * Id.t * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
  |IofF of Id.t  | FofI of Id.t | Fabs of Id.t | Fneg of Id.t | Fless of Id.t * Id.t | Fispos of Id.t 
  | Fisneg of Id.t | Fiszero of Id.t |Floor of Id.t | Fsqrt of Id.t |Fsqr of Id.t 
  | Fhalf of  Id.t | RInt |RFloat | PInt of Id.t | Pchar of Id.t | Pline
  | CArray of id_or_imm * Id.t | CFArray of id_or_imm * Id.t
  and  exp = exp'*KNormal.p(*位置を表す型を追加。課題１。*)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
let rec effect_exp  = function
|Save _ |St _ |StDF _ | RInt _ | RFloat _ | PInt _ | Pchar _ | Pline |CArray _ | CFArray _ 
-> true
|IfEq(_, _, e1, e2)|IfLE(_, _,e1, e2)|IfGE(_, _, e1, e2) |IfFEq(_, _, e1, e2)|IfFLE(_, _, e1, e2)
-> effect  e1 || effect  e2
|CallCls(x,_,_) -> true
  (* List.mem x !effect_cls *)
|CallDir (Id.L(x),_,_) -> true
(* -> let fundef = List.find (fun {name=L(f); args = _; fargs =_ ; body = e; ret = _} -> f = x)  in
effect  fundef.body *)
|_ -> false 
and effect  e =
match e with
|Ans(exp) -> effect_exp  (fst exp)
|Let(_, exp, e) -> effect  e || effect_exp  (fst exp) 

type prog = Prog of (Id.l * float) list * fundef list * t
let rec indent n =
  match n with
  | 0 -> ""
  | m -> " "^indent (m-1)
let rec print_exp outchan n = function
|Nop -> Printf.fprintf outchan "%sNop" (indent n)
|Set(i) -> Printf.fprintf outchan "%sSet %d" (indent n) i
|SetL(L(l)) -> Printf.fprintf outchan "%sSetL %s" (indent n) l
|Flabel(L(l)) -> Printf.fprintf outchan "%sFlabel %s" (indent n) l
|Mov(x) -> Printf.fprintf outchan "%sMov %s" (indent n) x
|Neg(x) -> Printf.fprintf outchan "%sNeg %s" (indent n) x
|Add(x, V(y)) -> Printf.fprintf outchan "%sAdd %s %s" (indent n) x y
|Add(x, C(i)) -> Printf.fprintf outchan "%sAddi %s %d" (indent n) x i
|Sub(x, V(y)) -> Printf.fprintf outchan "%sSub %s %s" (indent n) x y
|Sub(x, C(i)) -> Printf.fprintf outchan "%sSubi %s %d" (indent n) x i
|Mul(x, V(y)) -> Printf.fprintf outchan "%sMul %s %s" (indent n) x y
|Mul(x, C(i)) -> Printf.fprintf outchan "%sMuli %s %d" (indent n) x i
|Div(x, V(y)) -> Printf.fprintf outchan "%sDiv %s %s" (indent n) x y
|Div(x, C(i)) -> Printf.fprintf outchan "%sDivi %s %d" (indent n) x i
|SLL(x, V(y)) -> Printf.fprintf outchan "%sSLL %s %s" (indent n) x y
|SLL(x, C(i)) -> Printf.fprintf outchan "%sSLLi %s %d" (indent n) x i
|Ld(x, i) -> Printf.fprintf outchan "%sLd %s %d" (indent n) x i
|St(x,y,i) -> Printf.fprintf outchan "%sSt %s %s %d" (indent n) x y i
|FMovD(x) -> Printf.fprintf outchan "%sFMovD %s" (indent n) x
|FNegD(x) -> Printf.fprintf outchan "%sFNegD %s" (indent n) x
|FAddD(x, y) -> Printf.fprintf outchan "%sFAddD %s %s" (indent n) x y
|FSubD(x, y) -> Printf.fprintf outchan "%sFSubD %s %s" (indent n) x y
|FMulD(x, y) -> Printf.fprintf outchan "%sFMulD %s %s" (indent n) x y
|FDivD(x, y) -> Printf.fprintf outchan "%sFDivD %s %s" (indent n) x y
|LdDF(x, i) -> Printf.fprintf outchan "%sLdDF %s %d" (indent n) x i
|StDF(x,y,i) -> Printf.fprintf outchan "%sStDF %s %s %d" (indent n) x y i
|IfEq(x,V(y),e1, e2) ->
  Printf.fprintf outchan "%sIfEq %s %s then\n" (indent n) x y;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfEq(x,C(i),e1, e2) ->
  Printf.fprintf outchan "%sIfEq %s %d then\n" (indent n) x i;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfLE(x,V(y),e1, e2) ->
  Printf.fprintf outchan "%sIfLE %s %s then\n" (indent n) x y;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfLE(x,C(i),e1, e2) ->
  Printf.fprintf outchan "%sIfLE %s %d then\n" (indent n) x i;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfGE(x,V(y),e1, e2) ->
  Printf.fprintf outchan "%sIfGE %s %s then\n" (indent n) x y;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfGE(x,C(i),e1, e2) ->
  Printf.fprintf outchan "%sIfGE %s %d then\n" (indent n) x i;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfFEq(x,y,e1, e2) ->
  Printf.fprintf outchan "%sIfFEq %s %s then\n" (indent n) x y;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|IfFLE(x,y,e1, e2) ->
  Printf.fprintf outchan "%sIfFEq %s %s then\n" (indent n) x y;
  print_t outchan n e1;Printf.fprintf outchan "%selse\n" (indent n);
  print_t outchan n e2;
|CallCls(x, args, fargs) ->
  Printf.fprintf outchan "%sCallCls %s\n%sargs: " (indent n) x(indent n);
  List.iter (fun arg ->Printf.fprintf outchan "%s, " arg) args;
  Printf.fprintf outchan "\n%sfargs: " (indent n);
  List.iter (fun arg ->Printf.fprintf outchan "%s, " arg) fargs;
|CallDir(L(x), args, fargs) ->
  Printf.fprintf outchan "%sCallDir %s\n%sargs: " (indent n) x(indent n);
  List.iter (fun arg ->Printf.fprintf outchan "%s, " arg) args;
  Printf.fprintf outchan "\n%sfargs: " (indent n);
  List.iter (fun arg ->Printf.fprintf outchan "%s, " arg) fargs;
|Save(x, y) -> Printf.fprintf outchan "%sSave %s %s" (indent n) x y
|Restore(x) -> Printf.fprintf outchan "%sRestore %s" (indent n) x
|IofF(x) ->Printf.fprintf outchan "%sIofF %s" (indent n) x
|FofI(x) ->Printf.fprintf outchan "%sFofI %s" (indent n) x
|Fabs(x) ->Printf.fprintf outchan "%sFabs %s" (indent n) x
|Fneg(x) ->Printf.fprintf outchan "%sFneg %s" (indent n) x
|Fless(x,y) ->Printf.fprintf outchan "%sFless %s %s" (indent n) x y
|Fispos(x) ->Printf.fprintf outchan "%sFispos %s" (indent n) x
|Fisneg(x) ->Printf.fprintf outchan "%sFisneg %s" (indent n) x
|Fiszero(x) ->Printf.fprintf outchan "%sFiszero %s" (indent n) x
|Floor(x) ->Printf.fprintf outchan "%sFloor %s" (indent n) x
|Fsqrt(x) ->Printf.fprintf outchan "%sFsqrt %s" (indent n) x
|Fsqr(x) ->Printf.fprintf outchan "%sFsqr %s" (indent n) x
|Fhalf(x) ->Printf.fprintf outchan "%sFhalf %s" (indent n) x
|RInt ->Printf.fprintf outchan "%sRInt" (indent n) 
|RFloat ->Printf.fprintf outchan "%sRFloat" (indent n) 
|PInt(x) ->Printf.fprintf outchan "%sPInt %s" (indent n) x
|Pchar(x) ->Printf.fprintf outchan "%sPchar %s" (indent n) x
|Pline ->Printf.fprintf outchan "%sPline" (indent n)
|CArray(V(x),y) ->Printf.fprintf outchan "%sCArray %s %s" (indent n) x y
|CArray(C(i),y) ->Printf.fprintf outchan "%sCArray %d %s" (indent n) i y
|CFArray(V(x), y) ->Printf.fprintf outchan "%sCFArray %s %s" (indent n) x y
|CFArray(C(i),y) ->Printf.fprintf outchan "%sCFArray %d %s" (indent n) i y
|Comment _ -> () 
and print_t_help oc n e=
  (match e with 
  |Ans((exp',p)) ->
    Printf.fprintf oc "%sAns\n" (indent n);
    print_exp oc n exp'
  |Let(((x,t), (exp',p), ee))->
    Printf.fprintf oc "%sLet %s =\n" (indent n) x;
    print_exp oc n exp';
    Printf.fprintf oc "\n%sin\n" (indent n);
    print_t_help oc (n+1) ee)
and print_t oc n ex = print_t_help oc n ex

let print_fundef oc {name=L(l); args=args; fargs=fargs;body=body;ret=ret} =
  Printf.fprintf oc "fundef: %s\nargs: " l;
  List.iter (fun arg -> Printf.fprintf oc "%s, " arg) args;
  Printf.fprintf oc "\nfargs: ";
  List.iter (fun arg -> Printf.fprintf oc "%s, " arg) fargs;
  Printf.fprintf oc "\nbody: ";
  print_t oc 0 body

let print_prog  oc (Prog(data,fundefs,e)) = 
List.iter (fun fundef -> print_fundef oc fundef;Printf.fprintf oc "\n") fundefs;
print_t oc 0 e

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| 
  "a0"; "a1"; "a2"; "a3"; "a4"; "a5"; "a6"; "a7";
  "s0";
  "s1";"s2";"s3";"s4";"s5";"s6";"s7";"s8";"s9";
  "x3";"x4";
  "t1"; "t2"; "t3"; "t4"; "t5"; "t6"; 
  |]
let fregs = 
  (* Array.init 31 (fun i -> Printf.sprintf "f%d" (i * 2)) *)
  [| "fa0"; "fa1"; "fa2"; "fa3"; "fa4"; "fa5"; "fa6"; "fa7"; 
  "ft0"; "ft1"; "ft2"; "ft3"; "ft4"; "ft5"; "ft6"; "ft7"; "ft8"; "ft9"; "ft10"; "ft11"; 
  "fs0"; "fs1"; "fs2"; "fs3"; "fs4"; "fs5"; "fs6"; "fs7"; "fs8"; "fs9"; "fs10"; 
  "fs11";
  |]
let allregs = (Array.to_list regs)
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 2) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_tm = regs.(Array.length regs - 3) (* temporary 2 *)
let reg_tm2 = regs.(Array.length regs - 4) (* temporary 2 *)
let reg_tm3 = regs.(Array.length regs - 5) (* temporary 2 *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_zero = "x0" (* zero register *)
let reg_sp = "sp" (* stack pointer x2*)(*スタックの先頭（アドレス最小を表す）*)
let reg_hp = "hp" (* heap pointer t0 (caml2html: sparcasm_reghp) *)

let reg_ra = "ra" (* return address x1*)
let is_reg x = (
  (* Str.string_match (Str.regexp "?f[a,t,s]+[0-9]") x 0  *)
  Array.mem x regs|| Array.mem x fregs
||x= reg_zero || x= reg_sp ||x= reg_hp || x= reg_ra || x = reg_cl  || x = reg_ra
)


(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys
  (* | x :: ys -> ( remove_and_uniq (S.add x xs) ys ) @[x] *)

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) | Flabel(_) | RInt  |RFloat| Pline-> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) | Ld(x, _) | LdDF(x, _) 
  | Fisneg(x) | Fiszero(x) | Floor(x) | Fsqrt(x) | Fsqr(x) | Fhalf(x) | PInt(x) | Pchar(x) 
  | IofF(x) | FofI(x) | Fabs(x) | Fneg(x) | Fispos(x) -> [x]
  | Add(x, y') | Sub(x, y') | SLL(x, y')  |CArray(y', x) |CFArray(y',x) 
  | Mul(x,y') | Div(x,y') -> x :: fv_id_or_imm y'
  |St(x, y, _) | StDF(x, y, _)| FAddD(x, y)  
  | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) | Fless(x, y)-> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
  and fv = function
  | Ans(exp) -> fv_exp (fst exp)
  | Let((x, t), exp, e) ->
      fv_exp (fst exp) @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

(* let align i = (if i mod 8 = 0 then i else i + 4) *)
let align i = i
let get_position t =(*位置を取り出す関数*)
  match t with
  | Ans ((_,p)) -> p
  | Let (_,exp,_) -> snd exp

let rec live = function
|Ans(exp) -> fv_exp (fst exp)
|Let((x,_), exp, e) -> remove_and_uniq (S.remove x (S.of_list (live e))) (fv_exp (fst exp))