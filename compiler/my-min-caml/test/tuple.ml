let a = Array.make 1 (1, (2, 3)) in
let i = 0 in
let b = a.(i) in
let (x, c) = b in
let (y, z) = c in
print_int x; print_int y; print_int z; print_newline ()


