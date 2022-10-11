type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t(*t_1個のt_2で初期化された配列*)
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec indent n =
  match n with
  | 0 -> ""
  | m -> " "^indent (m-1) 

let rec print_t outchan tt =
  let rec print_t_help  n t=(*第1引数は行の先頭からの位置を表すint*)
  match t with
  | Unit -> Printf.fprintf outchan "Unit"
  | Bool b -> Printf.fprintf outchan "%s" (Bool.to_string b)
  | Int a -> Printf.fprintf outchan "%s" (Int.to_string a)
  | Float a -> Printf.fprintf outchan "%s" (Float.to_string a)
  | Not t -> Printf.fprintf outchan "Not ";print_t_help (n+4) t
  | Neg t -> Printf.fprintf outchan "Neg ";print_t_help (n+4) t
  | Add (a,b) -> Printf.fprintf outchan "Add\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Sub (a,b) -> Printf.fprintf outchan "Sub\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | FNeg t -> Printf.fprintf outchan "FNeg ";print_t_help (n+5) t
  | FAdd (a,b) -> Printf.fprintf outchan "FAdd\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FSub (a,b) -> Printf.fprintf outchan "FSub\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FMul (a,b) -> Printf.fprintf outchan "FMul\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | FDiv (a,b) -> Printf.fprintf outchan "FDiv\n%s" (indent (n+4));print_t_help (n+4) a;Printf.fprintf outchan "\n%s" (indent (n+4));print_t_help (n+4) b
  | Eq (a,b) -> Printf.fprintf outchan "Eq\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b
  | LE (a,b) -> Printf.fprintf outchan "LE\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b
  | If (a,b,c) -> Printf.fprintf outchan "IF\n%s" (indent (n+2));print_t_help (n+2) a;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) b;Printf.fprintf outchan "\n%s" (indent (n+2));print_t_help (n+2) c
  | Let ((i,t),a,b) ->  Printf.fprintf outchan "Let\n%s" (indent (n+3));Printf.fprintf outchan "%s\n%s" i (indent (n+3));Type.print_t outchan t;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) a; Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Var t ->  Printf.fprintf outchan "Var %s" t
  | LetRec (f,t) ->  Printf.fprintf outchan "LetRec\n%s" (indent (n+6));print_fun (n+6) f;Printf.fprintf outchan "\n%s" (indent (n+6));print_t_help (n+6) t
  | App (a,l) -> Printf.fprintf outchan "App\n%s" (indent (n+3));print_t_help (n+3) a;List.iter (fun t -> Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) t)  l
  | Tuple l -> Printf.fprintf outchan "Tuple";List.iter (fun t -> Printf.fprintf outchan "\n%s" (indent (n+5));print_t_help (n+5) t) l
  | LetTuple (l,a,b) -> Printf.fprintf outchan "LetTuple";List.iter (fun (x,y)-> Printf.fprintf outchan "\n%s%s " (indent (n+8)) x;Type.print_t outchan y) l;Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) a; Printf.fprintf outchan "\n%s" (indent (n+8));print_t_help (n+8) b
  | Array (a,b) -> Printf.fprintf outchan "Array\n%s" (indent (n+5));print_t_help (n+5) a;Printf.fprintf outchan "\n%s" (indent (n+5));print_t_help (n+5) b
  | Get (a,b) -> Printf.fprintf outchan "Get\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b
  | Put (a,b,c) -> Printf.fprintf outchan "Put\n%s" (indent (n+3));print_t_help (n+3) a;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) b;Printf.fprintf outchan "\n%s" (indent (n+3));print_t_help (n+3) c
  and
print_fun  n f =
match f.name with
  | (id,t) -> Printf.fprintf outchan "%s:" id;Type.print_t outchan t;Printf.fprintf outchan "\n%sargs:" (indent n);
  List.iter(fun (i,t) -> Printf.fprintf outchan "%s:" i;Type.print_t outchan t;Printf.fprintf outchan ", ") f.args;
  Printf.fprintf outchan "\n%s" (indent n);print_t_help (n)  f.body
in
print_t_help 0 tt

