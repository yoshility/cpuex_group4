let a = Array.make 2 1 in
a.(1) <- 3;
let x = a.(0) in
let y = a.(1) in
let rec f x y = x + y in
let g = f x in
print_int (g y);
print_newline ()