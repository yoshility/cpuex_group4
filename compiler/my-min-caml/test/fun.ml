let a = Array.make 2 1 in
a.(1) <- 3;
let x = a.(0) in
let y = a.(1) in
let z = (fun s t -> s + t) x y in
print_int z;
print_newline ()