let rec i x = x in 
let z = 4 in 
let rec f x = i (z - 5) in
let a = 
if z< 6 then (i, f 7) else (f, 8) in
print_int(3)