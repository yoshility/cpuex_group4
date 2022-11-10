type p = Lexing.position

type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
   (*位置を表す型pを追加。課題１。*)
  | Unit of p 
  | Bool of bool*p
  | Int of int*p
  | Float of float*p
  | Not of t*p
  | Neg of t*p
  | Add of t * t*p
  | Sub of t * t*p
  | Mul of t * t*p
  | Div of t * t*p
  | FNeg of t*p
  | FAdd of t * t*p
  | FSub of t * t*p
  | FMul of t * t*p
  | FDiv of t * t*p
  | Eq of t * t*p
  | LE of t * t*p
  | If of t * t * t*p
  | Let of (Id.t * Type.t) * t * t*p
  | Var of Id.t*p
  | LetRec of fundef * t*p
  | App of t * t list*p
  | Tuple of t list*p
  | LetTuple of (Id.t * Type.t) list * t * t*p
  | Array of t * t*p(*t_1個のt_2で初期化された配列*)
  | Get of t * t*p
  | Put of t * t * t*p
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec indent n =
  match n with
  | 0 -> ""
  | m -> " "^indent (m-1) 

let rec print_t outchan tt =
  let rec print_t_help  n t=(*第1引数は行の先頭からの位置を表すint*)
  match t with
  | Unit p-> Printf.fprintf outchan "Unit"
  | Bool (b,p) -> Printf.fprintf outchan "%s" (Bool.to_string b)
  | Int (a,p) -> Printf.fprintf outchan "%s" (Int.to_string a)
  | Float (a,p) -> Printf.fprintf outchan "%s" (Float.to_string a)
  | Not (t,p) -> Printf.fprintf outchan "Not ";print_t_help (n+4) t
  | Neg (t,p) -> Printf.fprintf outchan "Neg ";print_t_help (n+4) t
  | Add (a,b,p) -> Printf.fprintf outchan "Add\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Sub (a,b,p) -> Printf.fprintf outchan "Sub\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Mul (a,b,p) -> Printf.fprintf outchan "Mul\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Div (a,b,p) -> Printf.fprintf outchan "Div\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | FNeg (t,p) -> Printf.fprintf outchan "FNeg ";print_t_help (n+5) t
  | FAdd (a,b,p) -> Printf.fprintf outchan "FAdd\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FSub (a,b,p) -> Printf.fprintf outchan "FSub\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FMul (a,b,p) -> Printf.fprintf outchan "FMul\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FDiv (a,b,p) -> Printf.fprintf outchan "FDiv\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | Eq (a,b,p) -> Printf.fprintf outchan "Eq\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b
  | LE (a,b,p) -> Printf.fprintf outchan "LE\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b
  | If (a,b,c,p) -> Printf.fprintf outchan "IF\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) c
  | Let ((i,t),a,b,p) ->  Printf.fprintf outchan "Let\n%s" (indent (n+3));Printf.fprintf outchan "%s\n%s" i (indent (n+3));Type.print_t outchan t;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) a; Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Var (t,p) ->  Printf.fprintf outchan "Var %s" t
  | LetRec (f,t,p) ->  Printf.fprintf outchan "LetRec\n%s" (indent (n+6));print_fun (n+6) f;Printf.fprintf outchan "\n%s" (indent (n+6));print_t_help (n+6) t
  | App (a,l,p) -> Printf.fprintf outchan "App\n%s" (indent (n+3));print_t_help (n+3) a;List.iter (fun t -> Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) t)  l
  | Tuple (l,p) -> Printf.fprintf outchan "Tuple";List.iter (fun t -> Printf.fprintf outchan "\n%s" (indent (n+5));print_t_help (n+5) t) l
  | LetTuple (l,a,b,p) -> Printf.fprintf outchan "LetTuple";List.iter (fun (x,y)-> Printf.fprintf outchan "\n%s%s " (indent (n+8)) x;Type.print_t outchan y) l;Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) a; Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) b
  | Array (a,b,p) -> Printf.fprintf outchan "Array\n%s" (indent (n+5));print_t_help (n+5) a;Printf.fprintf outchan "\n%s" (indent (n+5));print_t_help (n+5) b
  | Get (a,b,p) -> Printf.fprintf outchan "Get\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Put (a,b,c,p) -> Printf.fprintf outchan "Put\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) c
  and
print_fun  n f =
match f.name with
  | (id,t) -> Printf.fprintf outchan "%s:" id;Type.print_t outchan t;Printf.fprintf outchan "\n%sargs:" (indent n);
  List.iter(fun (i,t) -> Printf.fprintf outchan "%s:" i;Type.print_t outchan t;Printf.fprintf outchan ", ") f.args;
  Printf.fprintf outchan "\n%s" (indent n);print_t_help (n)  f.body
in
print_t_help 0 tt

