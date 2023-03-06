open Syntax

let address = ref 256

let array2len_size = ref M.empty (* array -> len*size *)
let global2address = ref M.empty (* global var -> address *)
let global2type = ref M.empty (* global var -> type*)
let rec get_size var2size= function
|Float(_)|FNeg(_)|FAdd(_) | FMul(_)|FSub(_)|FMul(_)|FDiv(_) -> 4
| If(_,e,_,_) -> get_size var2size e
| Let ((x,_),e1,e2,_) -> get_size (M.add x (get_size var2size e1) var2size) e2
| Get(Var(x,_),_,_) -> snd (M.find x !array2len_size)
| Var(x,_) ->M.find x var2size
| Array(Int(n,_),e,_) ->4
| Tuple(xs,_) ->4
| _ -> 4

let rec my_malloc var2size = function
| Array(Int(len,_), x, _)-> address:=!address + (len*(get_size var2size x))
| Tuple(xs,_) 
-> address:=!address + (List.fold_left (fun n x -> my_malloc var2size x; n+ (get_size var2size x)) 0 xs)
| _ -> ()


let rec h x0 t0  var2size = function (* Recursive function to deal with Let*)
|Array(Int(len, _), e, _) ->
    my_malloc var2size e;
    let size = get_size var2size e in
    array2len_size := M.add x0 (len, size) !array2len_size;
    global2address := M.add x0 !address !global2address;
    global2type := M.add x0 t0 !global2type;
    address := len * size + !address;
| Let((x1, t), e1, e2, _) -> 
  my_malloc var2size e1;
  h x0 t0  (M.add x1 (get_size var2size e1) var2size) e2
| Tuple(xs, _) -> 
    let size = List.fold_left (fun b x -> b + (get_size var2size x)) 0 xs in
    global2address := M.add x0 !address !global2address;
    global2type := M.add x0 t0 !global2type;
    address := size + !address
| _ -> Printf.fprintf stdout "Assert false in get_global\n"


let rec record_help var2size = function
  Let((x, t), e1, e2, _) -> 
    h x t  var2size e1;
    record_help (M.add x (get_size var2size e1) var2size) e2;
 | e -> e

let rec record e = 
  (*The function of record global variables and malloc their addresses (return Unit)*)
  let e' = record_help M.empty e in
  (* List.iter (fun (key, n) -> Printf.fprintf stdout "global var %s:%d\n" key n) (List.sort (fun a b -> (snd a) - (snd b) )(M.bindings !global2address)) *)
  (* ;List.iter (fun (key, t) -> Printf.fprintf stdout "global var %s" key; Type.print_t stdout t;Printf.fprintf stdout "\n" ) (M.bindings !global2type); *)
  (* ;List.iter (fun (key, (len,size)) -> Printf.fprintf stdout "global var array %s len:%d size:%d\n" key len size ) (M.bindings !array2len_size); *)
  e