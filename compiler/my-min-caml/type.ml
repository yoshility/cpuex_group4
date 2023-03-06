type t = (* MinCaml�η���ɽ������ǡ����� (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None) (* ���������ѿ����� *)

let rec print_t outchan t =(*�����Ѥδؿ������꣱*)
  (match t with
  | Unit -> Printf.fprintf outchan "type Unit"
  | Bool -> Printf.fprintf outchan "type Bool"
  | Int -> Printf.fprintf outchan "type Int"
  | Float -> Printf.fprintf outchan "type Float"
  | Fun (l,t) -> (Printf.fprintf outchan "type Fun:";List.iter (fun tt -> print_t outchan tt;Printf.fprintf outchan ",")  l; Printf.fprintf outchan "->";print_t outchan t)
  | Tuple l -> (Printf.fprintf outchan "type Tuple(";List.iter (fun tt -> print_t outchan tt;Printf.fprintf outchan ",")  l);Printf.fprintf outchan ")"
  | Array t -> (Printf.fprintf outchan "type Array "; print_t outchan t)
  | Var r -> (Printf.fprintf outchan "type Var ";
              match !r with
              | None -> Printf.fprintf outchan "type None"
              | Some tt -> print_t outchan tt))