(* SPARC assembly with a few virtual instructions *)
let pc = ref 0
let heapaddress = ref 0
let print_asm  oc s = pc := !pc + 4 ; Printf.fprintf oc s
let  labelnum = ref M.empty
let  addresses = ref M.empty
let getlabelnum s = try ((M.find s !labelnum)) with Not_found -> (Printf.printf "error with %s\n" s  ; raise Not_found) 
let setlabelnum s  d = labelnum := (M.add s d (!labelnum))
let getaddress s = Printf.printf "%s:%d\n" s  (M.find s !addresses)  ;M.find s !addresses 
let setaddress s  d = addresses := (M.add s d (!addresses))


type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp' = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop(**)
  | Set of int
  | SetL of Id.l
  | Address of Id.t
  | Mov of Id.t(**)
  | Neg of Id.t(**)
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | SLL of Id.t * id_or_imm
  | Ld of Id.t * int
  | St of Id.t * Id.t * int(*?*)
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
  and  exp = exp'*KNormal.p(*位置を表す型を追加。課題１。*)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "a0"; "a1"; "a2"; "a3"; "a4"; "a5"; "a6"; "a7";
  (* [| "a2"; "a3"; "a4"; "a5"; "a6"; "a7"; *)
  (* "t0";  *)
  "s1";"s2";"s3";"s4";"s5";"s6";"s7";"s8";"s9";
  "t1"; "t2"; "t3"; "t4"; "t5"; "t6"; 
  |]
let fregs = 
  (* Array.init 31 (fun i -> Printf.sprintf "f%d" (i * 2)) *)
  [| "fa0"; "fa1"; "fa2"; "fa3"; "fa4"; "fa5"; "fa6"; "fa7"; 
  "ft0"; "ft1"; "ft2"; "ft3"; "ft4"; "ft5"; "ft6"; "ft7"; "ft8"; "ft9"; "ft10"; "ft11"; 
  "fs0"; "fs1"; "fs2"; "fs3"; "fs4"; "fs5"; "fs6"; "fs7"; "fs8"; "fs9"; "fs10"; 
  |]
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_tm = regs.(Array.length regs - 3) (* temporary 2 *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_zero = "x0" (* zero register *)
let reg_sp = "sp" (* stack pointer *)
let reg_hp = "t0" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "ra" (* return address *)
let is_reg x = (
  (* Str.string_match (Str.regexp "?f[a,t,s]+[0-9]") x 0  *)
  Array.mem x regs|| Array.mem x fregs
||x= reg_zero || x= reg_sp ||x= reg_hp || x= reg_ra 
)

let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "f%d" (i * 2))
      (Printf.sprintf "f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) | Ld(x, _) | LdDF(x, _)|Address(x)  -> [x]
  | Add(x, y') | Sub(x, y') | SLL(x, y')  -> x :: fv_id_or_imm y'
  | Mul(x,y) | Div(x,y)| St(x, y, _) | StDF(x, y, _)| FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
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

let align i = (if i mod 8 = 0 then i else i + 4)
let get_position t =(*位置を取り出す関数*)
  match t with
  | Ans ((_,p)) -> p
  | Let (_,exp,_) -> snd exp