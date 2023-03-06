type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp' = (* ��İ�Ĥ�̿����б����뼰 (caml2html: sparcasm_exp) *)
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
| IfGE of Id.t * id_or_imm * t * t (* �����оΤǤϤʤ��Τ�ɬ�� *)
| IfFEq of Id.t * Id.t * t * t
| IfFLE of Id.t * Id.t * t * t
(* closure address, integer arguments, and float arguments *)
| CallCls of Id.t * Id.t list * Id.t list
| CallDir of Id.l * Id.t list * Id.t list
| Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ (caml2html: sparcasm_save) *)
| Restore of Id.t (* �����å��ѿ������ͤ����� (caml2html: sparcasm_restore) *)
|IofF of Id.t  | FofI of Id.t | Fabs of Id.t | Fneg of Id.t | Fless of Id.t * Id.t | Fispos of Id.t 
  | Fisneg of Id.t | Fiszero of Id.t |Floor of Id.t | Fsqrt of Id.t |Fsqr of Id.t 
  | Fhalf of  Id.t | RInt |RFloat | PInt of Id.t | Pchar of Id.t | Pline
  | CArray of id_or_imm * Id.t | CFArray of id_or_imm * Id.t
and  exp = exp'*KNormal.p(*���֤�ɽ�������ɲá����꣱��*)
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
val reg_tm2 : Id.t
val reg_tm3 : Id.t
val reg_ra : Id.t
val reg_hp : Id.t
(* val reg_fp : Id.t *)
val reg_sp : Id.t
val is_reg : Id.t -> bool
(* val co_freg : Id.t -> Id.t *)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
val get_position : t -> KNormal.p
val pc : int ref
(* val addresses : int M.t ref *)
(* val heapaddress : int ref *)
val print_asm : out_channel -> ('a, out_channel, unit) format-> 'a
val print_prog : out_channel -> prog -> unit
val getlabelnum : string -> int
val setlabelnum : string -> int -> unit
val getaddress : string -> int
val setaddress : string -> int -> unit

val live : t -> Id.t list
val effect_cls:Id.t list ref
val effect:  t -> bool
val effect_exp:  exp' -> bool