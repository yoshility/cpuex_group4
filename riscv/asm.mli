type id_or_imm = V of Id.t | C of int
type t =
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
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_zero : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_tm : Id.t
val reg_ra : Id.t
val reg_hp : Id.t
val reg_fp : Id.t
val reg_sp : Id.t
val is_reg : Id.t -> bool
(* val co_freg : Id.t -> Id.t *)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
val get_position : t -> KNormal.p
val pc : int ref
val addresses : int M.t ref
val heapaddress : int ref
val print_asm : out_channel -> ('a, out_channel, unit) format-> 'a
val getlabelnum : string -> int
val setlabelnum : string -> int -> unit
val getaddress : string -> int
val setaddress : string -> int -> unit
